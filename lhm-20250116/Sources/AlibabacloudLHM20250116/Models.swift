import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AddDataCheckConfigRequest : Tea.TeaModel {
    public var isFullTableCount: Int32?

    public var sourceColumns: String?

    public var sourceGroupClause: String?

    public var sourceHint: String?

    public var sourcePartition: String?

    public var sourceTable: String?

    public var sourceWhereClause: String?

    public var targetColumns: String?

    public var targetGroupClause: String?

    public var targetHint: String?

    public var targetPartition: String?

    public var targetTable: String?

    public var targetWhereClause: String?

    public var taskConfigInfo: String?

    public var taskId: Int64?

    public var totalCountThreshold: Double?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.isFullTableCount != nil {
            map["isFullTableCount"] = self.isFullTableCount!
        }
        if self.sourceColumns != nil {
            map["sourceColumns"] = self.sourceColumns!
        }
        if self.sourceGroupClause != nil {
            map["sourceGroupClause"] = self.sourceGroupClause!
        }
        if self.sourceHint != nil {
            map["sourceHint"] = self.sourceHint!
        }
        if self.sourcePartition != nil {
            map["sourcePartition"] = self.sourcePartition!
        }
        if self.sourceTable != nil {
            map["sourceTable"] = self.sourceTable!
        }
        if self.sourceWhereClause != nil {
            map["sourceWhereClause"] = self.sourceWhereClause!
        }
        if self.targetColumns != nil {
            map["targetColumns"] = self.targetColumns!
        }
        if self.targetGroupClause != nil {
            map["targetGroupClause"] = self.targetGroupClause!
        }
        if self.targetHint != nil {
            map["targetHint"] = self.targetHint!
        }
        if self.targetPartition != nil {
            map["targetPartition"] = self.targetPartition!
        }
        if self.targetTable != nil {
            map["targetTable"] = self.targetTable!
        }
        if self.targetWhereClause != nil {
            map["targetWhereClause"] = self.targetWhereClause!
        }
        if self.taskConfigInfo != nil {
            map["taskConfigInfo"] = self.taskConfigInfo!
        }
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        if self.totalCountThreshold != nil {
            map["totalCountThreshold"] = self.totalCountThreshold!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["isFullTableCount"] as? Int32 {
            self.isFullTableCount = value
        }
        if let value = dict["sourceColumns"] as? String {
            self.sourceColumns = value
        }
        if let value = dict["sourceGroupClause"] as? String {
            self.sourceGroupClause = value
        }
        if let value = dict["sourceHint"] as? String {
            self.sourceHint = value
        }
        if let value = dict["sourcePartition"] as? String {
            self.sourcePartition = value
        }
        if let value = dict["sourceTable"] as? String {
            self.sourceTable = value
        }
        if let value = dict["sourceWhereClause"] as? String {
            self.sourceWhereClause = value
        }
        if let value = dict["targetColumns"] as? String {
            self.targetColumns = value
        }
        if let value = dict["targetGroupClause"] as? String {
            self.targetGroupClause = value
        }
        if let value = dict["targetHint"] as? String {
            self.targetHint = value
        }
        if let value = dict["targetPartition"] as? String {
            self.targetPartition = value
        }
        if let value = dict["targetTable"] as? String {
            self.targetTable = value
        }
        if let value = dict["targetWhereClause"] as? String {
            self.targetWhereClause = value
        }
        if let value = dict["taskConfigInfo"] as? String {
            self.taskConfigInfo = value
        }
        if let value = dict["taskId"] as? Int64 {
            self.taskId = value
        }
        if let value = dict["totalCountThreshold"] as? Double {
            self.totalCountThreshold = value
        }
    }
}

public class AddDataCheckConfigResponseBody : Tea.TeaModel {
    public var data: Int64?

    public var errCode: String?

    public var errMessage: String?

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
            map["data"] = self.data!
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? Int64 {
            self.data = value
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class AddDataCheckConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddDataCheckConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AddDataCheckConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AddDataCheckTaskRequest : Tea.TeaModel {
    public var checkTemplateId: String?

    public var checkType: Int32?

    public var dstDsId: String?

    public var dstDsName: String?

    public var dstDsType: String?

    public var srcDsId: String?

    public var srcDsName: String?

    public var srcDsType: String?

    public var taskMode: Int32?

    public var taskName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.checkTemplateId != nil {
            map["checkTemplateId"] = self.checkTemplateId!
        }
        if self.checkType != nil {
            map["checkType"] = self.checkType!
        }
        if self.dstDsId != nil {
            map["dstDsId"] = self.dstDsId!
        }
        if self.dstDsName != nil {
            map["dstDsName"] = self.dstDsName!
        }
        if self.dstDsType != nil {
            map["dstDsType"] = self.dstDsType!
        }
        if self.srcDsId != nil {
            map["srcDsId"] = self.srcDsId!
        }
        if self.srcDsName != nil {
            map["srcDsName"] = self.srcDsName!
        }
        if self.srcDsType != nil {
            map["srcDsType"] = self.srcDsType!
        }
        if self.taskMode != nil {
            map["taskMode"] = self.taskMode!
        }
        if self.taskName != nil {
            map["taskName"] = self.taskName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["checkTemplateId"] as? String {
            self.checkTemplateId = value
        }
        if let value = dict["checkType"] as? Int32 {
            self.checkType = value
        }
        if let value = dict["dstDsId"] as? String {
            self.dstDsId = value
        }
        if let value = dict["dstDsName"] as? String {
            self.dstDsName = value
        }
        if let value = dict["dstDsType"] as? String {
            self.dstDsType = value
        }
        if let value = dict["srcDsId"] as? String {
            self.srcDsId = value
        }
        if let value = dict["srcDsName"] as? String {
            self.srcDsName = value
        }
        if let value = dict["srcDsType"] as? String {
            self.srcDsType = value
        }
        if let value = dict["taskMode"] as? Int32 {
            self.taskMode = value
        }
        if let value = dict["taskName"] as? String {
            self.taskName = value
        }
    }
}

public class AddDataCheckTaskResponseBody : Tea.TeaModel {
    public var data: Int64?

    public var errCode: String?

    public var errMessage: String?

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
            map["data"] = self.data!
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? Int64 {
            self.data = value
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class AddDataCheckTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddDataCheckTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AddDataCheckTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AddDataCheckTemplateRequest : Tea.TeaModel {
    public class BasicMetricRules : Tea.TeaModel {
        public var checkMethods: String?

        public var controlFloatPrecision: Int32?

        public var dataTypeClassify: Int32?

        public var dataTypeGroup: Int32?

        public var dataTypeList: [String]?

        public var dataTypes: String?

        public var diffTolerateType: Int32?

        public var diffTolerateValues: [String: Any]?

        public var enableDecimalScale: Int32?

        public var filterColumnName: String?

        public var filterColumns: String?

        public var floatPrecision: Int32?

        public var ignoreDecimalDiff: Int32?

        public var ignoreDecimalScaleSuffixZero: Int32?

        public var ignoreEmptyDiff: Int32?

        public var ignoreNumericZero: Int32?

        public var ignoreStringEmpty: Int32?

        public var ignoreZeroDiff: Int32?

        public var isCountCheck: Int32?

        public var ruleId: String?

        public var setDecimalScale: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.checkMethods != nil {
                map["checkMethods"] = self.checkMethods!
            }
            if self.controlFloatPrecision != nil {
                map["controlFloatPrecision"] = self.controlFloatPrecision!
            }
            if self.dataTypeClassify != nil {
                map["dataTypeClassify"] = self.dataTypeClassify!
            }
            if self.dataTypeGroup != nil {
                map["dataTypeGroup"] = self.dataTypeGroup!
            }
            if self.dataTypeList != nil {
                map["dataTypeList"] = self.dataTypeList!
            }
            if self.dataTypes != nil {
                map["dataTypes"] = self.dataTypes!
            }
            if self.diffTolerateType != nil {
                map["diffTolerateType"] = self.diffTolerateType!
            }
            if self.diffTolerateValues != nil {
                map["diffTolerateValues"] = self.diffTolerateValues!
            }
            if self.enableDecimalScale != nil {
                map["enableDecimalScale"] = self.enableDecimalScale!
            }
            if self.filterColumnName != nil {
                map["filterColumnName"] = self.filterColumnName!
            }
            if self.filterColumns != nil {
                map["filterColumns"] = self.filterColumns!
            }
            if self.floatPrecision != nil {
                map["floatPrecision"] = self.floatPrecision!
            }
            if self.ignoreDecimalDiff != nil {
                map["ignoreDecimalDiff"] = self.ignoreDecimalDiff!
            }
            if self.ignoreDecimalScaleSuffixZero != nil {
                map["ignoreDecimalScaleSuffixZero"] = self.ignoreDecimalScaleSuffixZero!
            }
            if self.ignoreEmptyDiff != nil {
                map["ignoreEmptyDiff"] = self.ignoreEmptyDiff!
            }
            if self.ignoreNumericZero != nil {
                map["ignoreNumericZero"] = self.ignoreNumericZero!
            }
            if self.ignoreStringEmpty != nil {
                map["ignoreStringEmpty"] = self.ignoreStringEmpty!
            }
            if self.ignoreZeroDiff != nil {
                map["ignoreZeroDiff"] = self.ignoreZeroDiff!
            }
            if self.isCountCheck != nil {
                map["isCountCheck"] = self.isCountCheck!
            }
            if self.ruleId != nil {
                map["ruleId"] = self.ruleId!
            }
            if self.setDecimalScale != nil {
                map["setDecimalScale"] = self.setDecimalScale!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["checkMethods"] as? String {
                self.checkMethods = value
            }
            if let value = dict["controlFloatPrecision"] as? Int32 {
                self.controlFloatPrecision = value
            }
            if let value = dict["dataTypeClassify"] as? Int32 {
                self.dataTypeClassify = value
            }
            if let value = dict["dataTypeGroup"] as? Int32 {
                self.dataTypeGroup = value
            }
            if let value = dict["dataTypeList"] as? [String] {
                self.dataTypeList = value
            }
            if let value = dict["dataTypes"] as? String {
                self.dataTypes = value
            }
            if let value = dict["diffTolerateType"] as? Int32 {
                self.diffTolerateType = value
            }
            if let value = dict["diffTolerateValues"] as? [String: Any] {
                self.diffTolerateValues = value
            }
            if let value = dict["enableDecimalScale"] as? Int32 {
                self.enableDecimalScale = value
            }
            if let value = dict["filterColumnName"] as? String {
                self.filterColumnName = value
            }
            if let value = dict["filterColumns"] as? String {
                self.filterColumns = value
            }
            if let value = dict["floatPrecision"] as? Int32 {
                self.floatPrecision = value
            }
            if let value = dict["ignoreDecimalDiff"] as? Int32 {
                self.ignoreDecimalDiff = value
            }
            if let value = dict["ignoreDecimalScaleSuffixZero"] as? Int32 {
                self.ignoreDecimalScaleSuffixZero = value
            }
            if let value = dict["ignoreEmptyDiff"] as? Int32 {
                self.ignoreEmptyDiff = value
            }
            if let value = dict["ignoreNumericZero"] as? Int32 {
                self.ignoreNumericZero = value
            }
            if let value = dict["ignoreStringEmpty"] as? Int32 {
                self.ignoreStringEmpty = value
            }
            if let value = dict["ignoreZeroDiff"] as? Int32 {
                self.ignoreZeroDiff = value
            }
            if let value = dict["isCountCheck"] as? Int32 {
                self.isCountCheck = value
            }
            if let value = dict["ruleId"] as? String {
                self.ruleId = value
            }
            if let value = dict["setDecimalScale"] as? Int32 {
                self.setDecimalScale = value
            }
        }
    }
    public class ComplexMetricRules : Tea.TeaModel {
        public var checkMethods: String?

        public var controlFloatPrecision: Int32?

        public var dataTypeClassify: Int32?

        public var dataTypeGroup: Int32?

        public var dataTypeList: [String]?

        public var dataTypes: String?

        public var diffTolerateType: Int32?

        public var diffTolerateValues: [String: Any]?

        public var enableDecimalScale: Int32?

        public var filterColumnName: String?

        public var filterColumns: String?

        public var floatPrecision: Int32?

        public var ignoreDecimalDiff: Int32?

        public var ignoreDecimalScaleSuffixZero: Int32?

        public var ignoreEmptyDiff: Int32?

        public var ignoreNumericZero: Int32?

        public var ignoreStringEmpty: Int32?

        public var ignoreZeroDiff: Int32?

        public var isCountCheck: Int32?

        public var ruleId: String?

        public var setDecimalScale: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.checkMethods != nil {
                map["checkMethods"] = self.checkMethods!
            }
            if self.controlFloatPrecision != nil {
                map["controlFloatPrecision"] = self.controlFloatPrecision!
            }
            if self.dataTypeClassify != nil {
                map["dataTypeClassify"] = self.dataTypeClassify!
            }
            if self.dataTypeGroup != nil {
                map["dataTypeGroup"] = self.dataTypeGroup!
            }
            if self.dataTypeList != nil {
                map["dataTypeList"] = self.dataTypeList!
            }
            if self.dataTypes != nil {
                map["dataTypes"] = self.dataTypes!
            }
            if self.diffTolerateType != nil {
                map["diffTolerateType"] = self.diffTolerateType!
            }
            if self.diffTolerateValues != nil {
                map["diffTolerateValues"] = self.diffTolerateValues!
            }
            if self.enableDecimalScale != nil {
                map["enableDecimalScale"] = self.enableDecimalScale!
            }
            if self.filterColumnName != nil {
                map["filterColumnName"] = self.filterColumnName!
            }
            if self.filterColumns != nil {
                map["filterColumns"] = self.filterColumns!
            }
            if self.floatPrecision != nil {
                map["floatPrecision"] = self.floatPrecision!
            }
            if self.ignoreDecimalDiff != nil {
                map["ignoreDecimalDiff"] = self.ignoreDecimalDiff!
            }
            if self.ignoreDecimalScaleSuffixZero != nil {
                map["ignoreDecimalScaleSuffixZero"] = self.ignoreDecimalScaleSuffixZero!
            }
            if self.ignoreEmptyDiff != nil {
                map["ignoreEmptyDiff"] = self.ignoreEmptyDiff!
            }
            if self.ignoreNumericZero != nil {
                map["ignoreNumericZero"] = self.ignoreNumericZero!
            }
            if self.ignoreStringEmpty != nil {
                map["ignoreStringEmpty"] = self.ignoreStringEmpty!
            }
            if self.ignoreZeroDiff != nil {
                map["ignoreZeroDiff"] = self.ignoreZeroDiff!
            }
            if self.isCountCheck != nil {
                map["isCountCheck"] = self.isCountCheck!
            }
            if self.ruleId != nil {
                map["ruleId"] = self.ruleId!
            }
            if self.setDecimalScale != nil {
                map["setDecimalScale"] = self.setDecimalScale!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["checkMethods"] as? String {
                self.checkMethods = value
            }
            if let value = dict["controlFloatPrecision"] as? Int32 {
                self.controlFloatPrecision = value
            }
            if let value = dict["dataTypeClassify"] as? Int32 {
                self.dataTypeClassify = value
            }
            if let value = dict["dataTypeGroup"] as? Int32 {
                self.dataTypeGroup = value
            }
            if let value = dict["dataTypeList"] as? [String] {
                self.dataTypeList = value
            }
            if let value = dict["dataTypes"] as? String {
                self.dataTypes = value
            }
            if let value = dict["diffTolerateType"] as? Int32 {
                self.diffTolerateType = value
            }
            if let value = dict["diffTolerateValues"] as? [String: Any] {
                self.diffTolerateValues = value
            }
            if let value = dict["enableDecimalScale"] as? Int32 {
                self.enableDecimalScale = value
            }
            if let value = dict["filterColumnName"] as? String {
                self.filterColumnName = value
            }
            if let value = dict["filterColumns"] as? String {
                self.filterColumns = value
            }
            if let value = dict["floatPrecision"] as? Int32 {
                self.floatPrecision = value
            }
            if let value = dict["ignoreDecimalDiff"] as? Int32 {
                self.ignoreDecimalDiff = value
            }
            if let value = dict["ignoreDecimalScaleSuffixZero"] as? Int32 {
                self.ignoreDecimalScaleSuffixZero = value
            }
            if let value = dict["ignoreEmptyDiff"] as? Int32 {
                self.ignoreEmptyDiff = value
            }
            if let value = dict["ignoreNumericZero"] as? Int32 {
                self.ignoreNumericZero = value
            }
            if let value = dict["ignoreStringEmpty"] as? Int32 {
                self.ignoreStringEmpty = value
            }
            if let value = dict["ignoreZeroDiff"] as? Int32 {
                self.ignoreZeroDiff = value
            }
            if let value = dict["isCountCheck"] as? Int32 {
                self.isCountCheck = value
            }
            if let value = dict["ruleId"] as? String {
                self.ruleId = value
            }
            if let value = dict["setDecimalScale"] as? Int32 {
                self.setDecimalScale = value
            }
        }
    }
    public class DsEngineRels : Tea.TeaModel {
        public var dsEngineId: String?

        public var dsType: String?

        public var engineTypes: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dsEngineId != nil {
                map["dsEngineId"] = self.dsEngineId!
            }
            if self.dsType != nil {
                map["dsType"] = self.dsType!
            }
            if self.engineTypes != nil {
                map["engineTypes"] = self.engineTypes!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["dsEngineId"] as? String {
                self.dsEngineId = value
            }
            if let value = dict["dsType"] as? String {
                self.dsType = value
            }
            if let value = dict["engineTypes"] as? [String] {
                self.engineTypes = value
            }
        }
    }
    public class FulltextRule : Tea.TeaModel {
        public var checkMode: Int32?

        public var columnEqualCmpType: Int32?

        public var columnEqualCmpValues: String?

        public var columnIsCosine: Int32?

        public var columnIsIgnoreNull: Int32?

        public var columnIsIgnoreZero: Int32?

        public var columnIsSamples: Int32?

        public var columnSamplesType: Int32?

        public var columnSamplesValue: Int32?

        public var columnSizeCmpType: Int32?

        public var columnSizeCmpValues: String?

        public var isPrimaryKeyCheck: Int32?

        public var lineCheckType: Int32?

        public var lineIsPrintAll: Int32?

        public var lineIsSamples: Int32?

        public var lineSamplesType: Int32?

        public var lineSamplesValue: Int32?

        public var ruleId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.checkMode != nil {
                map["checkMode"] = self.checkMode!
            }
            if self.columnEqualCmpType != nil {
                map["columnEqualCmpType"] = self.columnEqualCmpType!
            }
            if self.columnEqualCmpValues != nil {
                map["columnEqualCmpValues"] = self.columnEqualCmpValues!
            }
            if self.columnIsCosine != nil {
                map["columnIsCosine"] = self.columnIsCosine!
            }
            if self.columnIsIgnoreNull != nil {
                map["columnIsIgnoreNull"] = self.columnIsIgnoreNull!
            }
            if self.columnIsIgnoreZero != nil {
                map["columnIsIgnoreZero"] = self.columnIsIgnoreZero!
            }
            if self.columnIsSamples != nil {
                map["columnIsSamples"] = self.columnIsSamples!
            }
            if self.columnSamplesType != nil {
                map["columnSamplesType"] = self.columnSamplesType!
            }
            if self.columnSamplesValue != nil {
                map["columnSamplesValue"] = self.columnSamplesValue!
            }
            if self.columnSizeCmpType != nil {
                map["columnSizeCmpType"] = self.columnSizeCmpType!
            }
            if self.columnSizeCmpValues != nil {
                map["columnSizeCmpValues"] = self.columnSizeCmpValues!
            }
            if self.isPrimaryKeyCheck != nil {
                map["isPrimaryKeyCheck"] = self.isPrimaryKeyCheck!
            }
            if self.lineCheckType != nil {
                map["lineCheckType"] = self.lineCheckType!
            }
            if self.lineIsPrintAll != nil {
                map["lineIsPrintAll"] = self.lineIsPrintAll!
            }
            if self.lineIsSamples != nil {
                map["lineIsSamples"] = self.lineIsSamples!
            }
            if self.lineSamplesType != nil {
                map["lineSamplesType"] = self.lineSamplesType!
            }
            if self.lineSamplesValue != nil {
                map["lineSamplesValue"] = self.lineSamplesValue!
            }
            if self.ruleId != nil {
                map["ruleId"] = self.ruleId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["checkMode"] as? Int32 {
                self.checkMode = value
            }
            if let value = dict["columnEqualCmpType"] as? Int32 {
                self.columnEqualCmpType = value
            }
            if let value = dict["columnEqualCmpValues"] as? String {
                self.columnEqualCmpValues = value
            }
            if let value = dict["columnIsCosine"] as? Int32 {
                self.columnIsCosine = value
            }
            if let value = dict["columnIsIgnoreNull"] as? Int32 {
                self.columnIsIgnoreNull = value
            }
            if let value = dict["columnIsIgnoreZero"] as? Int32 {
                self.columnIsIgnoreZero = value
            }
            if let value = dict["columnIsSamples"] as? Int32 {
                self.columnIsSamples = value
            }
            if let value = dict["columnSamplesType"] as? Int32 {
                self.columnSamplesType = value
            }
            if let value = dict["columnSamplesValue"] as? Int32 {
                self.columnSamplesValue = value
            }
            if let value = dict["columnSizeCmpType"] as? Int32 {
                self.columnSizeCmpType = value
            }
            if let value = dict["columnSizeCmpValues"] as? String {
                self.columnSizeCmpValues = value
            }
            if let value = dict["isPrimaryKeyCheck"] as? Int32 {
                self.isPrimaryKeyCheck = value
            }
            if let value = dict["lineCheckType"] as? Int32 {
                self.lineCheckType = value
            }
            if let value = dict["lineIsPrintAll"] as? Int32 {
                self.lineIsPrintAll = value
            }
            if let value = dict["lineIsSamples"] as? Int32 {
                self.lineIsSamples = value
            }
            if let value = dict["lineSamplesType"] as? Int32 {
                self.lineSamplesType = value
            }
            if let value = dict["lineSamplesValue"] as? Int32 {
                self.lineSamplesValue = value
            }
            if let value = dict["ruleId"] as? String {
                self.ruleId = value
            }
        }
    }
    public class MetricRules : Tea.TeaModel {
        public var checkMethods: String?

        public var controlFloatPrecision: Int32?

        public var dataTypeClassify: Int32?

        public var dataTypeGroup: Int32?

        public var dataTypeList: [String]?

        public var dataTypes: String?

        public var diffTolerateType: Int32?

        public var diffTolerateValues: [String: Any]?

        public var enableDecimalScale: Int32?

        public var filterColumnName: String?

        public var filterColumns: String?

        public var floatPrecision: Int32?

        public var ignoreDecimalDiff: Int32?

        public var ignoreDecimalScaleSuffixZero: Int32?

        public var ignoreEmptyDiff: Int32?

        public var ignoreNumericZero: Int32?

        public var ignoreStringEmpty: Int32?

        public var ignoreZeroDiff: Int32?

        public var isCountCheck: Int32?

        public var ruleId: String?

        public var setDecimalScale: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.checkMethods != nil {
                map["checkMethods"] = self.checkMethods!
            }
            if self.controlFloatPrecision != nil {
                map["controlFloatPrecision"] = self.controlFloatPrecision!
            }
            if self.dataTypeClassify != nil {
                map["dataTypeClassify"] = self.dataTypeClassify!
            }
            if self.dataTypeGroup != nil {
                map["dataTypeGroup"] = self.dataTypeGroup!
            }
            if self.dataTypeList != nil {
                map["dataTypeList"] = self.dataTypeList!
            }
            if self.dataTypes != nil {
                map["dataTypes"] = self.dataTypes!
            }
            if self.diffTolerateType != nil {
                map["diffTolerateType"] = self.diffTolerateType!
            }
            if self.diffTolerateValues != nil {
                map["diffTolerateValues"] = self.diffTolerateValues!
            }
            if self.enableDecimalScale != nil {
                map["enableDecimalScale"] = self.enableDecimalScale!
            }
            if self.filterColumnName != nil {
                map["filterColumnName"] = self.filterColumnName!
            }
            if self.filterColumns != nil {
                map["filterColumns"] = self.filterColumns!
            }
            if self.floatPrecision != nil {
                map["floatPrecision"] = self.floatPrecision!
            }
            if self.ignoreDecimalDiff != nil {
                map["ignoreDecimalDiff"] = self.ignoreDecimalDiff!
            }
            if self.ignoreDecimalScaleSuffixZero != nil {
                map["ignoreDecimalScaleSuffixZero"] = self.ignoreDecimalScaleSuffixZero!
            }
            if self.ignoreEmptyDiff != nil {
                map["ignoreEmptyDiff"] = self.ignoreEmptyDiff!
            }
            if self.ignoreNumericZero != nil {
                map["ignoreNumericZero"] = self.ignoreNumericZero!
            }
            if self.ignoreStringEmpty != nil {
                map["ignoreStringEmpty"] = self.ignoreStringEmpty!
            }
            if self.ignoreZeroDiff != nil {
                map["ignoreZeroDiff"] = self.ignoreZeroDiff!
            }
            if self.isCountCheck != nil {
                map["isCountCheck"] = self.isCountCheck!
            }
            if self.ruleId != nil {
                map["ruleId"] = self.ruleId!
            }
            if self.setDecimalScale != nil {
                map["setDecimalScale"] = self.setDecimalScale!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["checkMethods"] as? String {
                self.checkMethods = value
            }
            if let value = dict["controlFloatPrecision"] as? Int32 {
                self.controlFloatPrecision = value
            }
            if let value = dict["dataTypeClassify"] as? Int32 {
                self.dataTypeClassify = value
            }
            if let value = dict["dataTypeGroup"] as? Int32 {
                self.dataTypeGroup = value
            }
            if let value = dict["dataTypeList"] as? [String] {
                self.dataTypeList = value
            }
            if let value = dict["dataTypes"] as? String {
                self.dataTypes = value
            }
            if let value = dict["diffTolerateType"] as? Int32 {
                self.diffTolerateType = value
            }
            if let value = dict["diffTolerateValues"] as? [String: Any] {
                self.diffTolerateValues = value
            }
            if let value = dict["enableDecimalScale"] as? Int32 {
                self.enableDecimalScale = value
            }
            if let value = dict["filterColumnName"] as? String {
                self.filterColumnName = value
            }
            if let value = dict["filterColumns"] as? String {
                self.filterColumns = value
            }
            if let value = dict["floatPrecision"] as? Int32 {
                self.floatPrecision = value
            }
            if let value = dict["ignoreDecimalDiff"] as? Int32 {
                self.ignoreDecimalDiff = value
            }
            if let value = dict["ignoreDecimalScaleSuffixZero"] as? Int32 {
                self.ignoreDecimalScaleSuffixZero = value
            }
            if let value = dict["ignoreEmptyDiff"] as? Int32 {
                self.ignoreEmptyDiff = value
            }
            if let value = dict["ignoreNumericZero"] as? Int32 {
                self.ignoreNumericZero = value
            }
            if let value = dict["ignoreStringEmpty"] as? Int32 {
                self.ignoreStringEmpty = value
            }
            if let value = dict["ignoreZeroDiff"] as? Int32 {
                self.ignoreZeroDiff = value
            }
            if let value = dict["isCountCheck"] as? Int32 {
                self.isCountCheck = value
            }
            if let value = dict["ruleId"] as? String {
                self.ruleId = value
            }
            if let value = dict["setDecimalScale"] as? Int32 {
                self.setDecimalScale = value
            }
        }
    }
    public class NullRules : Tea.TeaModel {
        public var dataTypeGroup: Int32?

        public var nullValues: String?

        public var ruleId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dataTypeGroup != nil {
                map["dataTypeGroup"] = self.dataTypeGroup!
            }
            if self.nullValues != nil {
                map["nullValues"] = self.nullValues!
            }
            if self.ruleId != nil {
                map["ruleId"] = self.ruleId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["dataTypeGroup"] as? Int32 {
                self.dataTypeGroup = value
            }
            if let value = dict["nullValues"] as? String {
                self.nullValues = value
            }
            if let value = dict["ruleId"] as? String {
                self.ruleId = value
            }
        }
    }
    public class WeakContentRule : Tea.TeaModel {
        public var filterColumnExpression: String?

        public var filterColumnTypes: [String]?

        public var ruleId: String?

        public var weakContentAlgorithm: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.filterColumnExpression != nil {
                map["filterColumnExpression"] = self.filterColumnExpression!
            }
            if self.filterColumnTypes != nil {
                map["filterColumnTypes"] = self.filterColumnTypes!
            }
            if self.ruleId != nil {
                map["ruleId"] = self.ruleId!
            }
            if self.weakContentAlgorithm != nil {
                map["weakContentAlgorithm"] = self.weakContentAlgorithm!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["filterColumnExpression"] as? String {
                self.filterColumnExpression = value
            }
            if let value = dict["filterColumnTypes"] as? [String] {
                self.filterColumnTypes = value
            }
            if let value = dict["ruleId"] as? String {
                self.ruleId = value
            }
            if let value = dict["weakContentAlgorithm"] as? String {
                self.weakContentAlgorithm = value
            }
        }
    }
    public var basicMetricRules: [AddDataCheckTemplateRequest.BasicMetricRules]?

    public var checkType: Int32?

    public var complexMetricRules: [AddDataCheckTemplateRequest.ComplexMetricRules]?

    public var dsEngineRels: [AddDataCheckTemplateRequest.DsEngineRels]?

    public var fulltextRule: AddDataCheckTemplateRequest.FulltextRule?

    public var metricRules: [AddDataCheckTemplateRequest.MetricRules]?

    public var nullRules: [AddDataCheckTemplateRequest.NullRules]?

    public var requestId: String?

    public var templateDesc: String?

    public var templateName: String?

    public var tenantId: String?

    public var weakContentRule: AddDataCheckTemplateRequest.WeakContentRule?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.fulltextRule?.validate()
        try self.weakContentRule?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.basicMetricRules != nil {
            var tmp : [Any] = []
            for k in self.basicMetricRules! {
                tmp.append(k.toMap())
            }
            map["basicMetricRules"] = tmp
        }
        if self.checkType != nil {
            map["checkType"] = self.checkType!
        }
        if self.complexMetricRules != nil {
            var tmp : [Any] = []
            for k in self.complexMetricRules! {
                tmp.append(k.toMap())
            }
            map["complexMetricRules"] = tmp
        }
        if self.dsEngineRels != nil {
            var tmp : [Any] = []
            for k in self.dsEngineRels! {
                tmp.append(k.toMap())
            }
            map["dsEngineRels"] = tmp
        }
        if self.fulltextRule != nil {
            map["fulltextRule"] = self.fulltextRule?.toMap()
        }
        if self.metricRules != nil {
            var tmp : [Any] = []
            for k in self.metricRules! {
                tmp.append(k.toMap())
            }
            map["metricRules"] = tmp
        }
        if self.nullRules != nil {
            var tmp : [Any] = []
            for k in self.nullRules! {
                tmp.append(k.toMap())
            }
            map["nullRules"] = tmp
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.templateDesc != nil {
            map["templateDesc"] = self.templateDesc!
        }
        if self.templateName != nil {
            map["templateName"] = self.templateName!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        if self.weakContentRule != nil {
            map["weakContentRule"] = self.weakContentRule?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["basicMetricRules"] as? [Any?] {
            var tmp : [AddDataCheckTemplateRequest.BasicMetricRules] = []
            for v in value {
                if v != nil {
                    var model = AddDataCheckTemplateRequest.BasicMetricRules()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.basicMetricRules = tmp
        }
        if let value = dict["checkType"] as? Int32 {
            self.checkType = value
        }
        if let value = dict["complexMetricRules"] as? [Any?] {
            var tmp : [AddDataCheckTemplateRequest.ComplexMetricRules] = []
            for v in value {
                if v != nil {
                    var model = AddDataCheckTemplateRequest.ComplexMetricRules()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.complexMetricRules = tmp
        }
        if let value = dict["dsEngineRels"] as? [Any?] {
            var tmp : [AddDataCheckTemplateRequest.DsEngineRels] = []
            for v in value {
                if v != nil {
                    var model = AddDataCheckTemplateRequest.DsEngineRels()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.dsEngineRels = tmp
        }
        if let value = dict["fulltextRule"] as? [String: Any?] {
            var model = AddDataCheckTemplateRequest.FulltextRule()
            model.fromMap(value)
            self.fulltextRule = model
        }
        if let value = dict["metricRules"] as? [Any?] {
            var tmp : [AddDataCheckTemplateRequest.MetricRules] = []
            for v in value {
                if v != nil {
                    var model = AddDataCheckTemplateRequest.MetricRules()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.metricRules = tmp
        }
        if let value = dict["nullRules"] as? [Any?] {
            var tmp : [AddDataCheckTemplateRequest.NullRules] = []
            for v in value {
                if v != nil {
                    var model = AddDataCheckTemplateRequest.NullRules()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.nullRules = tmp
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["templateDesc"] as? String {
            self.templateDesc = value
        }
        if let value = dict["templateName"] as? String {
            self.templateName = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
        if let value = dict["weakContentRule"] as? [String: Any?] {
            var model = AddDataCheckTemplateRequest.WeakContentRule()
            model.fromMap(value)
            self.weakContentRule = model
        }
    }
}

public class AddDataCheckTemplateResponseBody : Tea.TeaModel {
    public var data: String?

    public var errCode: String?

    public var errMessage: String?

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
            map["data"] = self.data!
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? String {
            self.data = value
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class AddDataCheckTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddDataCheckTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AddDataCheckTemplateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AddMetaDataComponentRequest : Tea.TeaModel {
    public var categoryType: String?

    public var componentType: Int32?

    public var dsConfig: String?

    public var dsDesc: String?

    public var dsId: String?

    public var dsName: String?

    public var dsStatus: Int32?

    public var dsType: String?

    public var dsVersion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.categoryType != nil {
            map["categoryType"] = self.categoryType!
        }
        if self.componentType != nil {
            map["componentType"] = self.componentType!
        }
        if self.dsConfig != nil {
            map["dsConfig"] = self.dsConfig!
        }
        if self.dsDesc != nil {
            map["dsDesc"] = self.dsDesc!
        }
        if self.dsId != nil {
            map["dsId"] = self.dsId!
        }
        if self.dsName != nil {
            map["dsName"] = self.dsName!
        }
        if self.dsStatus != nil {
            map["dsStatus"] = self.dsStatus!
        }
        if self.dsType != nil {
            map["dsType"] = self.dsType!
        }
        if self.dsVersion != nil {
            map["dsVersion"] = self.dsVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["categoryType"] as? String {
            self.categoryType = value
        }
        if let value = dict["componentType"] as? Int32 {
            self.componentType = value
        }
        if let value = dict["dsConfig"] as? String {
            self.dsConfig = value
        }
        if let value = dict["dsDesc"] as? String {
            self.dsDesc = value
        }
        if let value = dict["dsId"] as? String {
            self.dsId = value
        }
        if let value = dict["dsName"] as? String {
            self.dsName = value
        }
        if let value = dict["dsStatus"] as? Int32 {
            self.dsStatus = value
        }
        if let value = dict["dsType"] as? String {
            self.dsType = value
        }
        if let value = dict["dsVersion"] as? String {
            self.dsVersion = value
        }
    }
}

public class AddMetaDataComponentResponseBody : Tea.TeaModel {
    public var data: Int64?

    public var errCode: String?

    public var errMessage: String?

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
            map["data"] = self.data!
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? Int64 {
            self.data = value
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class AddMetaDataComponentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddMetaDataComponentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AddMetaDataComponentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateExecuteSqlConversionRequest : Tea.TeaModel {
    public class SourceSqlScript : Tea.TeaModel {
        public class TableMappingList : Tea.TeaModel {
            public var id: Int64?

            public var sourceSchema: String?

            public var sourceTableName: String?

            public var targetTableName: String?

            public var targetType: String?

            public var taskId: Int64?

            public var tenantId: String?

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
                if self.id != nil {
                    map["id"] = self.id!
                }
                if self.sourceSchema != nil {
                    map["sourceSchema"] = self.sourceSchema!
                }
                if self.sourceTableName != nil {
                    map["sourceTableName"] = self.sourceTableName!
                }
                if self.targetTableName != nil {
                    map["targetTableName"] = self.targetTableName!
                }
                if self.targetType != nil {
                    map["targetType"] = self.targetType!
                }
                if self.taskId != nil {
                    map["taskId"] = self.taskId!
                }
                if self.tenantId != nil {
                    map["tenantId"] = self.tenantId!
                }
                if self.uid != nil {
                    map["uid"] = self.uid!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["id"] as? Int64 {
                    self.id = value
                }
                if let value = dict["sourceSchema"] as? String {
                    self.sourceSchema = value
                }
                if let value = dict["sourceTableName"] as? String {
                    self.sourceTableName = value
                }
                if let value = dict["targetTableName"] as? String {
                    self.targetTableName = value
                }
                if let value = dict["targetType"] as? String {
                    self.targetType = value
                }
                if let value = dict["taskId"] as? Int64 {
                    self.taskId = value
                }
                if let value = dict["tenantId"] as? String {
                    self.tenantId = value
                }
                if let value = dict["uid"] as? String {
                    self.uid = value
                }
            }
        }
        public var errorMessage: String?

        public var finishTime: String?

        public var scriptId: Int64?

        public var scriptName: String?

        public var scriptTransformStatus: String?

        public var sqlResultContent: String?

        public var sqlSourceContent: String?

        public var tableMappingList: [CreateExecuteSqlConversionRequest.SourceSqlScript.TableMappingList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.errorMessage != nil {
                map["errorMessage"] = self.errorMessage!
            }
            if self.finishTime != nil {
                map["finishTime"] = self.finishTime!
            }
            if self.scriptId != nil {
                map["scriptId"] = self.scriptId!
            }
            if self.scriptName != nil {
                map["scriptName"] = self.scriptName!
            }
            if self.scriptTransformStatus != nil {
                map["scriptTransformStatus"] = self.scriptTransformStatus!
            }
            if self.sqlResultContent != nil {
                map["sqlResultContent"] = self.sqlResultContent!
            }
            if self.sqlSourceContent != nil {
                map["sqlSourceContent"] = self.sqlSourceContent!
            }
            if self.tableMappingList != nil {
                var tmp : [Any] = []
                for k in self.tableMappingList! {
                    tmp.append(k.toMap())
                }
                map["tableMappingList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["errorMessage"] as? String {
                self.errorMessage = value
            }
            if let value = dict["finishTime"] as? String {
                self.finishTime = value
            }
            if let value = dict["scriptId"] as? Int64 {
                self.scriptId = value
            }
            if let value = dict["scriptName"] as? String {
                self.scriptName = value
            }
            if let value = dict["scriptTransformStatus"] as? String {
                self.scriptTransformStatus = value
            }
            if let value = dict["sqlResultContent"] as? String {
                self.sqlResultContent = value
            }
            if let value = dict["sqlSourceContent"] as? String {
                self.sqlSourceContent = value
            }
            if let value = dict["tableMappingList"] as? [Any?] {
                var tmp : [CreateExecuteSqlConversionRequest.SourceSqlScript.TableMappingList] = []
                for v in value {
                    if v != nil {
                        var model = CreateExecuteSqlConversionRequest.SourceSqlScript.TableMappingList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tableMappingList = tmp
            }
        }
    }
    public var sourceDialect: String?

    public var sourceSqlScript: [CreateExecuteSqlConversionRequest.SourceSqlScript]?

    public var targetDialect: String?

    public var taskDescription: String?

    public var taskName: String?

    public var type: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.sourceDialect != nil {
            map["sourceDialect"] = self.sourceDialect!
        }
        if self.sourceSqlScript != nil {
            var tmp : [Any] = []
            for k in self.sourceSqlScript! {
                tmp.append(k.toMap())
            }
            map["sourceSqlScript"] = tmp
        }
        if self.targetDialect != nil {
            map["targetDialect"] = self.targetDialect!
        }
        if self.taskDescription != nil {
            map["taskDescription"] = self.taskDescription!
        }
        if self.taskName != nil {
            map["taskName"] = self.taskName!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["sourceDialect"] as? String {
            self.sourceDialect = value
        }
        if let value = dict["sourceSqlScript"] as? [Any?] {
            var tmp : [CreateExecuteSqlConversionRequest.SourceSqlScript] = []
            for v in value {
                if v != nil {
                    var model = CreateExecuteSqlConversionRequest.SourceSqlScript()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.sourceSqlScript = tmp
        }
        if let value = dict["targetDialect"] as? String {
            self.targetDialect = value
        }
        if let value = dict["taskDescription"] as? String {
            self.taskDescription = value
        }
        if let value = dict["taskName"] as? String {
            self.taskName = value
        }
        if let value = dict["type"] as? Int32 {
            self.type = value
        }
    }
}

public class CreateExecuteSqlConversionResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var taskId: Int64?

        public override init() {
            super.init()
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
                map["taskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["taskId"] as? Int64 {
                self.taskId = value
            }
        }
    }
    public var data: CreateExecuteSqlConversionResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

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
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = CreateExecuteSqlConversionResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateExecuteSqlConversionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateExecuteSqlConversionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateExecuteSqlConversionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateSqlExecJobRequest : Tea.TeaModel {
    public var concurrency: Int32?

    public var taskId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.concurrency != nil {
            map["concurrency"] = self.concurrency!
        }
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["concurrency"] as? Int32 {
            self.concurrency = value
        }
        if let value = dict["taskId"] as? Int64 {
            self.taskId = value
        }
    }
}

public class CreateSqlExecJobResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var execJobId: Int64?

        public var message: String?

        public var success: Bool?

        public var taskId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.execJobId != nil {
                map["execJobId"] = self.execJobId!
            }
            if self.message != nil {
                map["message"] = self.message!
            }
            if self.success != nil {
                map["success"] = self.success!
            }
            if self.taskId != nil {
                map["taskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["execJobId"] as? Int64 {
                self.execJobId = value
            }
            if let value = dict["message"] as? String {
                self.message = value
            }
            if let value = dict["success"] as? Bool {
                self.success = value
            }
            if let value = dict["taskId"] as? Int64 {
                self.taskId = value
            }
        }
    }
    public var data: CreateSqlExecJobResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

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
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = CreateSqlExecJobResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateSqlExecJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSqlExecJobResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateSqlExecJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteDataCheckConfigRequest : Tea.TeaModel {
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
        if self.id != nil {
            map["id"] = self.id!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["id"] as? Int64 {
            self.id = value
        }
    }
}

public class DeleteDataCheckConfigResponseBody : Tea.TeaModel {
    public var errCode: String?

    public var errMessage: String?

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
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteDataCheckConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDataCheckConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteDataCheckConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteDataCheckTaskRequest : Tea.TeaModel {
    public var taskIds: [Int64]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.taskIds != nil {
            map["taskIds"] = self.taskIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["taskIds"] as? [Int64] {
            self.taskIds = value
        }
    }
}

public class DeleteDataCheckTaskResponseBody : Tea.TeaModel {
    public var errCode: String?

    public var errMessage: String?

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
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteDataCheckTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDataCheckTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteDataCheckTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteDataCheckTemplateRequest : Tea.TeaModel {
    public var templateIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.templateIds != nil {
            map["templateIds"] = self.templateIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["templateIds"] as? [String] {
            self.templateIds = value
        }
    }
}

public class DeleteDataCheckTemplateResponseBody : Tea.TeaModel {
    public var errCode: String?

    public var errMessage: String?

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
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteDataCheckTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDataCheckTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteDataCheckTemplateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EditTaskPopRequest : Tea.TeaModel {
    public var concurrency: Int32?

    public var dqlTestDatasourceName: String?

    public var sourceDialect: String?

    public var targetDialect: String?

    public var taskId: Int64?

    public var taskName: String?

    public var taskType: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.concurrency != nil {
            map["concurrency"] = self.concurrency!
        }
        if self.dqlTestDatasourceName != nil {
            map["dqlTestDatasourceName"] = self.dqlTestDatasourceName!
        }
        if self.sourceDialect != nil {
            map["sourceDialect"] = self.sourceDialect!
        }
        if self.targetDialect != nil {
            map["targetDialect"] = self.targetDialect!
        }
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        if self.taskName != nil {
            map["taskName"] = self.taskName!
        }
        if self.taskType != nil {
            map["taskType"] = self.taskType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["concurrency"] as? Int32 {
            self.concurrency = value
        }
        if let value = dict["dqlTestDatasourceName"] as? String {
            self.dqlTestDatasourceName = value
        }
        if let value = dict["sourceDialect"] as? String {
            self.sourceDialect = value
        }
        if let value = dict["targetDialect"] as? String {
            self.targetDialect = value
        }
        if let value = dict["taskId"] as? Int64 {
            self.taskId = value
        }
        if let value = dict["taskName"] as? String {
            self.taskName = value
        }
        if let value = dict["taskType"] as? Int32 {
            self.taskType = value
        }
    }
}

public class EditTaskPopResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var fileUploadParseId: Int64?

        public var id: Int64?

        public var message: String?

        public var success: Bool?

        public var taskId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fileUploadParseId != nil {
                map["fileUploadParseId"] = self.fileUploadParseId!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.message != nil {
                map["message"] = self.message!
            }
            if self.success != nil {
                map["success"] = self.success!
            }
            if self.taskId != nil {
                map["taskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["fileUploadParseId"] as? Int64 {
                self.fileUploadParseId = value
            }
            if let value = dict["id"] as? Int64 {
                self.id = value
            }
            if let value = dict["message"] as? String {
                self.message = value
            }
            if let value = dict["success"] as? Bool {
                self.success = value
            }
            if let value = dict["taskId"] as? Int64 {
                self.taskId = value
            }
        }
    }
    public var data: EditTaskPopResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

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
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = EditTaskPopResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class EditTaskPopResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EditTaskPopResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = EditTaskPopResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ExecDataCheckDownloadReportRequest : Tea.TeaModel {
    public var batchId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.batchId != nil {
            map["batchId"] = self.batchId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["batchId"] as? Int64 {
            self.batchId = value
        }
    }
}

public class ExecDataCheckDownloadReportResponseBody : Tea.TeaModel {
    public var data: String?

    public var errCode: String?

    public var errMessage: String?

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
            map["data"] = self.data!
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? String {
            self.data = value
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class ExecDataCheckDownloadReportResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExecDataCheckDownloadReportResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ExecDataCheckDownloadReportResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ExecDataCheckGenerateReportRequest : Tea.TeaModel {
    public var batchId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.batchId != nil {
            map["batchId"] = self.batchId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["batchId"] as? Int64 {
            self.batchId = value
        }
    }
}

public class ExecDataCheckGenerateReportResponseBody : Tea.TeaModel {
    public var errCode: String?

    public var errMessage: String?

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
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class ExecDataCheckGenerateReportResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExecDataCheckGenerateReportResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ExecDataCheckGenerateReportResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ExecDataCheckReRunRequest : Tea.TeaModel {
    public var batchId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.batchId != nil {
            map["batchId"] = self.batchId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["batchId"] as? Int64 {
            self.batchId = value
        }
    }
}

public class ExecDataCheckReRunResponseBody : Tea.TeaModel {
    public var data: Int64?

    public var errCode: String?

    public var errMessage: String?

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
            map["data"] = self.data!
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? Int64 {
            self.data = value
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class ExecDataCheckReRunResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExecDataCheckReRunResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ExecDataCheckReRunResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ExecDataCheckRunRequest : Tea.TeaModel {
    public var batchId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.batchId != nil {
            map["batchId"] = self.batchId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["batchId"] as? Int64 {
            self.batchId = value
        }
    }
}

public class ExecDataCheckRunResponseBody : Tea.TeaModel {
    public var errCode: String?

    public var errMessage: String?

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
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class ExecDataCheckRunResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExecDataCheckRunResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ExecDataCheckRunResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ExecDataCheckRunFailedRequest : Tea.TeaModel {
    public var batchId: Int64?

    public var type: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.batchId != nil {
            map["batchId"] = self.batchId!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["batchId"] as? Int64 {
            self.batchId = value
        }
        if let value = dict["type"] as? Int32 {
            self.type = value
        }
    }
}

public class ExecDataCheckRunFailedResponseBody : Tea.TeaModel {
    public var data: Int64?

    public var errCode: String?

    public var errMessage: String?

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
            map["data"] = self.data!
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? Int64 {
            self.data = value
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class ExecDataCheckRunFailedResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExecDataCheckRunFailedResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ExecDataCheckRunFailedResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ExecDataCheckSaveTaskRequest : Tea.TeaModel {
    public var checkGlobalParams: String?

    public var fullTableCount: Int32?

    public var sourceGlobalParams: String?

    public var startImmediately: Int32?

    public var targetGlobalParams: String?

    public var taskId: Int64?

    public var totalCountThreshold: Double?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.checkGlobalParams != nil {
            map["checkGlobalParams"] = self.checkGlobalParams!
        }
        if self.fullTableCount != nil {
            map["fullTableCount"] = self.fullTableCount!
        }
        if self.sourceGlobalParams != nil {
            map["sourceGlobalParams"] = self.sourceGlobalParams!
        }
        if self.startImmediately != nil {
            map["startImmediately"] = self.startImmediately!
        }
        if self.targetGlobalParams != nil {
            map["targetGlobalParams"] = self.targetGlobalParams!
        }
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        if self.totalCountThreshold != nil {
            map["totalCountThreshold"] = self.totalCountThreshold!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["checkGlobalParams"] as? String {
            self.checkGlobalParams = value
        }
        if let value = dict["fullTableCount"] as? Int32 {
            self.fullTableCount = value
        }
        if let value = dict["sourceGlobalParams"] as? String {
            self.sourceGlobalParams = value
        }
        if let value = dict["startImmediately"] as? Int32 {
            self.startImmediately = value
        }
        if let value = dict["targetGlobalParams"] as? String {
            self.targetGlobalParams = value
        }
        if let value = dict["taskId"] as? Int64 {
            self.taskId = value
        }
        if let value = dict["totalCountThreshold"] as? Double {
            self.totalCountThreshold = value
        }
    }
}

public class ExecDataCheckSaveTaskResponseBody : Tea.TeaModel {
    public var data: Int64?

    public var errCode: String?

    public var errMessage: String?

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
            map["data"] = self.data!
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? Int64 {
            self.data = value
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class ExecDataCheckSaveTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExecDataCheckSaveTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ExecDataCheckSaveTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ExecDataCheckSqlPreviewRequest : Tea.TeaModel {
    public var checkColumn: String?

    public var dataSourceId: String?

    public var engineId: String?

    public var fullTableName: String?

    public var partitionCondition: String?

    public var taskId: Int64?

    public var whereClause: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.checkColumn != nil {
            map["checkColumn"] = self.checkColumn!
        }
        if self.dataSourceId != nil {
            map["dataSourceId"] = self.dataSourceId!
        }
        if self.engineId != nil {
            map["engineId"] = self.engineId!
        }
        if self.fullTableName != nil {
            map["fullTableName"] = self.fullTableName!
        }
        if self.partitionCondition != nil {
            map["partitionCondition"] = self.partitionCondition!
        }
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        if self.whereClause != nil {
            map["whereClause"] = self.whereClause!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["checkColumn"] as? String {
            self.checkColumn = value
        }
        if let value = dict["dataSourceId"] as? String {
            self.dataSourceId = value
        }
        if let value = dict["engineId"] as? String {
            self.engineId = value
        }
        if let value = dict["fullTableName"] as? String {
            self.fullTableName = value
        }
        if let value = dict["partitionCondition"] as? String {
            self.partitionCondition = value
        }
        if let value = dict["taskId"] as? Int64 {
            self.taskId = value
        }
        if let value = dict["whereClause"] as? String {
            self.whereClause = value
        }
    }
}

public class ExecDataCheckSqlPreviewResponseBody : Tea.TeaModel {
    public var data: String?

    public var errCode: String?

    public var errMessage: String?

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
            map["data"] = self.data!
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? String {
            self.data = value
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class ExecDataCheckSqlPreviewResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExecDataCheckSqlPreviewResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ExecDataCheckSqlPreviewResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ExecDataCheckStopRequest : Tea.TeaModel {
    public var batchId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.batchId != nil {
            map["batchId"] = self.batchId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["batchId"] as? Int64 {
            self.batchId = value
        }
    }
}

public class ExecDataCheckStopResponseBody : Tea.TeaModel {
    public var errCode: String?

    public var errMessage: String?

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
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class ExecDataCheckStopResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExecDataCheckStopResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ExecDataCheckStopResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ExecDataCheckToggleRequest : Tea.TeaModel {
    public class Params : Tea.TeaModel {
        public var id: Int64?

        public var isScheduled: Int32?

        public var lastBatchId: Int64?

        public override init() {
            super.init()
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
            if self.isScheduled != nil {
                map["isScheduled"] = self.isScheduled!
            }
            if self.lastBatchId != nil {
                map["lastBatchId"] = self.lastBatchId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["id"] as? Int64 {
                self.id = value
            }
            if let value = dict["isScheduled"] as? Int32 {
                self.isScheduled = value
            }
            if let value = dict["lastBatchId"] as? Int64 {
                self.lastBatchId = value
            }
        }
    }
    public var params: [ExecDataCheckToggleRequest.Params]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.params != nil {
            var tmp : [Any] = []
            for k in self.params! {
                tmp.append(k.toMap())
            }
            map["params"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["params"] as? [Any?] {
            var tmp : [ExecDataCheckToggleRequest.Params] = []
            for v in value {
                if v != nil {
                    var model = ExecDataCheckToggleRequest.Params()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.params = tmp
        }
    }
}

public class ExecDataCheckToggleResponseBody : Tea.TeaModel {
    public var errCode: String?

    public var errMessage: String?

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
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class ExecDataCheckToggleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExecDataCheckToggleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ExecDataCheckToggleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ExecMetaDataComponentNameRequest : Tea.TeaModel {
    public var dsName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dsName != nil {
            map["dsName"] = self.dsName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["dsName"] as? String {
            self.dsName = value
        }
    }
}

public class ExecMetaDataComponentNameResponseBody : Tea.TeaModel {
    public var data: Bool?

    public var errCode: String?

    public var errMessage: String?

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
            map["data"] = self.data!
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? Bool {
            self.data = value
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class ExecMetaDataComponentNameResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExecMetaDataComponentNameResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ExecMetaDataComponentNameResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ExecSqlTransSingleScriptTranslateRequest : Tea.TeaModel {
    public var sourceDialect: String?

    public var sourceSqlScript: String?

    public var tableMapping: [String]?

    public var targetDialect: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.sourceDialect != nil {
            map["sourceDialect"] = self.sourceDialect!
        }
        if self.sourceSqlScript != nil {
            map["sourceSqlScript"] = self.sourceSqlScript!
        }
        if self.tableMapping != nil {
            map["tableMapping"] = self.tableMapping!
        }
        if self.targetDialect != nil {
            map["targetDialect"] = self.targetDialect!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["sourceDialect"] as? String {
            self.sourceDialect = value
        }
        if let value = dict["sourceSqlScript"] as? String {
            self.sourceSqlScript = value
        }
        if let value = dict["tableMapping"] as? [String] {
            self.tableMapping = value
        }
        if let value = dict["targetDialect"] as? String {
            self.targetDialect = value
        }
    }
}

public class ExecSqlTransSingleScriptTranslateResponseBody : Tea.TeaModel {
    public var data: String?

    public var errCode: String?

    public var errMessage: String?

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
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? String {
            self.data = value
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? String {
            self.success = value
        }
    }
}

public class ExecSqlTransSingleScriptTranslateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExecSqlTransSingleScriptTranslateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ExecSqlTransSingleScriptTranslateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ExecWorkflowConnectivityRequest : Tea.TeaModel {
    public var dsConfig: String?

    public var dsName: String?

    public var dsType: String?

    public var dsVersion: String?

    public var id: Int64?

    public var isModified: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dsConfig != nil {
            map["dsConfig"] = self.dsConfig!
        }
        if self.dsName != nil {
            map["dsName"] = self.dsName!
        }
        if self.dsType != nil {
            map["dsType"] = self.dsType!
        }
        if self.dsVersion != nil {
            map["dsVersion"] = self.dsVersion!
        }
        if self.id != nil {
            map["id"] = self.id!
        }
        if self.isModified != nil {
            map["isModified"] = self.isModified!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["dsConfig"] as? String {
            self.dsConfig = value
        }
        if let value = dict["dsName"] as? String {
            self.dsName = value
        }
        if let value = dict["dsType"] as? String {
            self.dsType = value
        }
        if let value = dict["dsVersion"] as? String {
            self.dsVersion = value
        }
        if let value = dict["id"] as? Int64 {
            self.id = value
        }
        if let value = dict["isModified"] as? Bool {
            self.isModified = value
        }
    }
}

public class ExecWorkflowConnectivityResponseBody : Tea.TeaModel {
    public var data: Bool?

    public var errCode: String?

    public var errMessage: String?

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
            map["data"] = self.data!
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? Bool {
            self.data = value
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class ExecWorkflowConnectivityResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExecWorkflowConnectivityResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ExecWorkflowConnectivityResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetBwmMigrationSubmitInstanceListRequest : Tea.TeaModel {
    public var pageIndex: Int32?

    public var pageSize: Int32?

    public var status: Int32?

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
        if self.pageIndex != nil {
            map["pageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["pageIndex"] as? Int32 {
            self.pageIndex = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["status"] as? Int32 {
            self.status = value
        }
        if let value = dict["taskId"] as? String {
            self.taskId = value
        }
    }
}

public class GetBwmMigrationSubmitInstanceListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var detail: String?

        public var gmtConvert: String?

        public var instanceId: String?

        public var instanceName: String?

        public var srcMetaGmtUpdate: String?

        public var srcMetaInfo: String?

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
            if self.detail != nil {
                map["detail"] = self.detail!
            }
            if self.gmtConvert != nil {
                map["gmtConvert"] = self.gmtConvert!
            }
            if self.instanceId != nil {
                map["instanceId"] = self.instanceId!
            }
            if self.instanceName != nil {
                map["instanceName"] = self.instanceName!
            }
            if self.srcMetaGmtUpdate != nil {
                map["srcMetaGmtUpdate"] = self.srcMetaGmtUpdate!
            }
            if self.srcMetaInfo != nil {
                map["srcMetaInfo"] = self.srcMetaInfo!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["detail"] as? String {
                self.detail = value
            }
            if let value = dict["gmtConvert"] as? String {
                self.gmtConvert = value
            }
            if let value = dict["instanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["instanceName"] as? String {
                self.instanceName = value
            }
            if let value = dict["srcMetaGmtUpdate"] as? String {
                self.srcMetaGmtUpdate = value
            }
            if let value = dict["srcMetaInfo"] as? String {
                self.srcMetaInfo = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
        }
    }
    public var data: [GetBwmMigrationSubmitInstanceListResponseBody.Data]?

    public var empty: Bool?

    public var errCode: String?

    public var errMessage: String?

    public var notEmpty: Bool?

    public var pageIndex: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int32?

    public var totalPages: Int32?

    public override init() {
        super.init()
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
            map["data"] = tmp
        }
        if self.empty != nil {
            map["empty"] = self.empty!
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.notEmpty != nil {
            map["notEmpty"] = self.notEmpty!
        }
        if self.pageIndex != nil {
            map["pageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        if self.totalPages != nil {
            map["totalPages"] = self.totalPages!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [Any?] {
            var tmp : [GetBwmMigrationSubmitInstanceListResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = GetBwmMigrationSubmitInstanceListResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["empty"] as? Bool {
            self.empty = value
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["notEmpty"] as? Bool {
            self.notEmpty = value
        }
        if let value = dict["pageIndex"] as? Int32 {
            self.pageIndex = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["totalCount"] as? Int32 {
            self.totalCount = value
        }
        if let value = dict["totalPages"] as? Int32 {
            self.totalPages = value
        }
    }
}

public class GetBwmMigrationSubmitInstanceListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetBwmMigrationSubmitInstanceListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetBwmMigrationSubmitInstanceListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetBwmMigrationTaskWriterResultPackageRequest : Tea.TeaModel {
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
            map["instanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["instanceId"] as? String {
            self.instanceId = value
        }
    }
}

public class GetBwmMigrationTaskWriterResultPackageResponseBody : Tea.TeaModel {
    public var data: String?

    public var errCode: String?

    public var errMessage: String?

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
            map["data"] = self.data!
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? String {
            self.data = value
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class GetBwmMigrationTaskWriterResultPackageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetBwmMigrationTaskWriterResultPackageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetBwmMigrationTaskWriterResultPackageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetBwmMigrationTaskWriterWorkflowListRequest : Tea.TeaModel {
    public var instanceId: String?

    public var pageIndex: Int32?

    public var pageSize: Int32?

    public var workflowName: String?

    public override init() {
        super.init()
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
            map["instanceId"] = self.instanceId!
        }
        if self.pageIndex != nil {
            map["pageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.workflowName != nil {
            map["workflowName"] = self.workflowName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["instanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["pageIndex"] as? Int32 {
            self.pageIndex = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["workflowName"] as? String {
            self.workflowName = value
        }
    }
}

public class GetBwmMigrationTaskWriterWorkflowListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var cron: String?

        public var id: Int32?

        public var submitDetail: String?

        public var submitStatus: String?

        public var targetWorkflowId: String?

        public var targetWorkflowName: String?

        public var taskNodeCount: Int32?

        public var workflowId: String?

        public var workflowName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cron != nil {
                map["cron"] = self.cron!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.submitDetail != nil {
                map["submitDetail"] = self.submitDetail!
            }
            if self.submitStatus != nil {
                map["submitStatus"] = self.submitStatus!
            }
            if self.targetWorkflowId != nil {
                map["targetWorkflowId"] = self.targetWorkflowId!
            }
            if self.targetWorkflowName != nil {
                map["targetWorkflowName"] = self.targetWorkflowName!
            }
            if self.taskNodeCount != nil {
                map["taskNodeCount"] = self.taskNodeCount!
            }
            if self.workflowId != nil {
                map["workflowId"] = self.workflowId!
            }
            if self.workflowName != nil {
                map["workflowName"] = self.workflowName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["cron"] as? String {
                self.cron = value
            }
            if let value = dict["id"] as? Int32 {
                self.id = value
            }
            if let value = dict["submitDetail"] as? String {
                self.submitDetail = value
            }
            if let value = dict["submitStatus"] as? String {
                self.submitStatus = value
            }
            if let value = dict["targetWorkflowId"] as? String {
                self.targetWorkflowId = value
            }
            if let value = dict["targetWorkflowName"] as? String {
                self.targetWorkflowName = value
            }
            if let value = dict["taskNodeCount"] as? Int32 {
                self.taskNodeCount = value
            }
            if let value = dict["workflowId"] as? String {
                self.workflowId = value
            }
            if let value = dict["workflowName"] as? String {
                self.workflowName = value
            }
        }
    }
    public var data: [GetBwmMigrationTaskWriterWorkflowListResponseBody.Data]?

    public var empty: Bool?

    public var errCode: String?

    public var errMessage: String?

    public var notEmpty: Bool?

    public var pageIndex: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var totalCount: Int32?

    public var totalPages: Int32?

    public override init() {
        super.init()
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
            map["data"] = tmp
        }
        if self.empty != nil {
            map["empty"] = self.empty!
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.notEmpty != nil {
            map["notEmpty"] = self.notEmpty!
        }
        if self.pageIndex != nil {
            map["pageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        if self.totalPages != nil {
            map["totalPages"] = self.totalPages!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [Any?] {
            var tmp : [GetBwmMigrationTaskWriterWorkflowListResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = GetBwmMigrationTaskWriterWorkflowListResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["empty"] as? Bool {
            self.empty = value
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["notEmpty"] as? Bool {
            self.notEmpty = value
        }
        if let value = dict["pageIndex"] as? Int32 {
            self.pageIndex = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["totalCount"] as? Int32 {
            self.totalCount = value
        }
        if let value = dict["totalPages"] as? Int32 {
            self.totalPages = value
        }
    }
}

public class GetBwmMigrationTaskWriterWorkflowListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetBwmMigrationTaskWriterWorkflowListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetBwmMigrationTaskWriterWorkflowListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetBwmMigrationWorkflowSubmitStartRequest : Tea.TeaModel {
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
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["taskId"] as? String {
            self.taskId = value
        }
    }
}

public class GetBwmMigrationWorkflowSubmitStartResponseBody : Tea.TeaModel {
    public var data: Int64?

    public var errCode: String?

    public var errMessage: String?

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
            map["data"] = self.data!
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? Int64 {
            self.data = value
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class GetBwmMigrationWorkflowSubmitStartResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetBwmMigrationWorkflowSubmitStartResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetBwmMigrationWorkflowSubmitStartResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetCronExecTimeRequest : Tea.TeaModel {
    public var cronRule: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cronRule != nil {
            map["cronRule"] = self.cronRule!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["cronRule"] as? String {
            self.cronRule = value
        }
    }
}

public class GetCronExecTimeResponseBody : Tea.TeaModel {
    public var data: [String]?

    public var errCode: String?

    public var errMessage: String?

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
            map["data"] = self.data!
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String] {
            self.data = value
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class GetCronExecTimeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCronExecTimeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetCronExecTimeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDataCheckConfigRequest : Tea.TeaModel {
    public var taskId: Int64?

    public override init() {
        super.init()
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
            map["taskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["taskId"] as? Int64 {
            self.taskId = value
        }
    }
}

public class GetDataCheckConfigResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var algorithm: Int32?

        public var batchSize: Int32?

        public var checkType: Int32?

        public var comparator: String?

        public var extra: String?

        public var groupCountThreshold: Double?

        public var id: Int64?

        public var isFullTableCount: Int32?

        public var isSkipped: Int32?

        public var metricType: String?

        public var sourceCheckAllColumn: Int32?

        public var sourceColumns: String?

        public var sourceCompareKey: String?

        public var sourceDataSource: String?

        public var sourceGroupClause: String?

        public var sourceHint: String?

        public var sourceId: String?

        public var sourcePartition: String?

        public var sourceSql: String?

        public var sourceTable: String?

        public var sourceType: String?

        public var sourceWhereClause: String?

        public var targetCheckAllColumn: Int32?

        public var targetColumns: String?

        public var targetCompareKey: String?

        public var targetDataSource: String?

        public var targetGroupClause: String?

        public var targetHint: String?

        public var targetId: String?

        public var targetPartition: String?

        public var targetSql: String?

        public var targetTable: String?

        public var targetType: String?

        public var targetWhereClause: String?

        public var taskConfigInfo: String?

        public var taskId: Int64?

        public var totalCountThreshold: Double?

        public override init() {
            super.init()
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
                map["algorithm"] = self.algorithm!
            }
            if self.batchSize != nil {
                map["batchSize"] = self.batchSize!
            }
            if self.checkType != nil {
                map["checkType"] = self.checkType!
            }
            if self.comparator != nil {
                map["comparator"] = self.comparator!
            }
            if self.extra != nil {
                map["extra"] = self.extra!
            }
            if self.groupCountThreshold != nil {
                map["groupCountThreshold"] = self.groupCountThreshold!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.isFullTableCount != nil {
                map["isFullTableCount"] = self.isFullTableCount!
            }
            if self.isSkipped != nil {
                map["isSkipped"] = self.isSkipped!
            }
            if self.metricType != nil {
                map["metricType"] = self.metricType!
            }
            if self.sourceCheckAllColumn != nil {
                map["sourceCheckAllColumn"] = self.sourceCheckAllColumn!
            }
            if self.sourceColumns != nil {
                map["sourceColumns"] = self.sourceColumns!
            }
            if self.sourceCompareKey != nil {
                map["sourceCompareKey"] = self.sourceCompareKey!
            }
            if self.sourceDataSource != nil {
                map["sourceDataSource"] = self.sourceDataSource!
            }
            if self.sourceGroupClause != nil {
                map["sourceGroupClause"] = self.sourceGroupClause!
            }
            if self.sourceHint != nil {
                map["sourceHint"] = self.sourceHint!
            }
            if self.sourceId != nil {
                map["sourceId"] = self.sourceId!
            }
            if self.sourcePartition != nil {
                map["sourcePartition"] = self.sourcePartition!
            }
            if self.sourceSql != nil {
                map["sourceSql"] = self.sourceSql!
            }
            if self.sourceTable != nil {
                map["sourceTable"] = self.sourceTable!
            }
            if self.sourceType != nil {
                map["sourceType"] = self.sourceType!
            }
            if self.sourceWhereClause != nil {
                map["sourceWhereClause"] = self.sourceWhereClause!
            }
            if self.targetCheckAllColumn != nil {
                map["targetCheckAllColumn"] = self.targetCheckAllColumn!
            }
            if self.targetColumns != nil {
                map["targetColumns"] = self.targetColumns!
            }
            if self.targetCompareKey != nil {
                map["targetCompareKey"] = self.targetCompareKey!
            }
            if self.targetDataSource != nil {
                map["targetDataSource"] = self.targetDataSource!
            }
            if self.targetGroupClause != nil {
                map["targetGroupClause"] = self.targetGroupClause!
            }
            if self.targetHint != nil {
                map["targetHint"] = self.targetHint!
            }
            if self.targetId != nil {
                map["targetId"] = self.targetId!
            }
            if self.targetPartition != nil {
                map["targetPartition"] = self.targetPartition!
            }
            if self.targetSql != nil {
                map["targetSql"] = self.targetSql!
            }
            if self.targetTable != nil {
                map["targetTable"] = self.targetTable!
            }
            if self.targetType != nil {
                map["targetType"] = self.targetType!
            }
            if self.targetWhereClause != nil {
                map["targetWhereClause"] = self.targetWhereClause!
            }
            if self.taskConfigInfo != nil {
                map["taskConfigInfo"] = self.taskConfigInfo!
            }
            if self.taskId != nil {
                map["taskId"] = self.taskId!
            }
            if self.totalCountThreshold != nil {
                map["totalCountThreshold"] = self.totalCountThreshold!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["algorithm"] as? Int32 {
                self.algorithm = value
            }
            if let value = dict["batchSize"] as? Int32 {
                self.batchSize = value
            }
            if let value = dict["checkType"] as? Int32 {
                self.checkType = value
            }
            if let value = dict["comparator"] as? String {
                self.comparator = value
            }
            if let value = dict["extra"] as? String {
                self.extra = value
            }
            if let value = dict["groupCountThreshold"] as? Double {
                self.groupCountThreshold = value
            }
            if let value = dict["id"] as? Int64 {
                self.id = value
            }
            if let value = dict["isFullTableCount"] as? Int32 {
                self.isFullTableCount = value
            }
            if let value = dict["isSkipped"] as? Int32 {
                self.isSkipped = value
            }
            if let value = dict["metricType"] as? String {
                self.metricType = value
            }
            if let value = dict["sourceCheckAllColumn"] as? Int32 {
                self.sourceCheckAllColumn = value
            }
            if let value = dict["sourceColumns"] as? String {
                self.sourceColumns = value
            }
            if let value = dict["sourceCompareKey"] as? String {
                self.sourceCompareKey = value
            }
            if let value = dict["sourceDataSource"] as? String {
                self.sourceDataSource = value
            }
            if let value = dict["sourceGroupClause"] as? String {
                self.sourceGroupClause = value
            }
            if let value = dict["sourceHint"] as? String {
                self.sourceHint = value
            }
            if let value = dict["sourceId"] as? String {
                self.sourceId = value
            }
            if let value = dict["sourcePartition"] as? String {
                self.sourcePartition = value
            }
            if let value = dict["sourceSql"] as? String {
                self.sourceSql = value
            }
            if let value = dict["sourceTable"] as? String {
                self.sourceTable = value
            }
            if let value = dict["sourceType"] as? String {
                self.sourceType = value
            }
            if let value = dict["sourceWhereClause"] as? String {
                self.sourceWhereClause = value
            }
            if let value = dict["targetCheckAllColumn"] as? Int32 {
                self.targetCheckAllColumn = value
            }
            if let value = dict["targetColumns"] as? String {
                self.targetColumns = value
            }
            if let value = dict["targetCompareKey"] as? String {
                self.targetCompareKey = value
            }
            if let value = dict["targetDataSource"] as? String {
                self.targetDataSource = value
            }
            if let value = dict["targetGroupClause"] as? String {
                self.targetGroupClause = value
            }
            if let value = dict["targetHint"] as? String {
                self.targetHint = value
            }
            if let value = dict["targetId"] as? String {
                self.targetId = value
            }
            if let value = dict["targetPartition"] as? String {
                self.targetPartition = value
            }
            if let value = dict["targetSql"] as? String {
                self.targetSql = value
            }
            if let value = dict["targetTable"] as? String {
                self.targetTable = value
            }
            if let value = dict["targetType"] as? String {
                self.targetType = value
            }
            if let value = dict["targetWhereClause"] as? String {
                self.targetWhereClause = value
            }
            if let value = dict["taskConfigInfo"] as? String {
                self.taskConfigInfo = value
            }
            if let value = dict["taskId"] as? Int64 {
                self.taskId = value
            }
            if let value = dict["totalCountThreshold"] as? Double {
                self.totalCountThreshold = value
            }
        }
    }
    public var data: [GetDataCheckConfigResponseBody.Data]?

    public var errCode: String?

    public var errMessage: String?

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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [Any?] {
            var tmp : [GetDataCheckConfigResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = GetDataCheckConfigResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class GetDataCheckConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDataCheckConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetDataCheckConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDataCheckReportOverviewRequest : Tea.TeaModel {
    public var batchId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.batchId != nil {
            map["batchId"] = self.batchId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["batchId"] as? Int64 {
            self.batchId = value
        }
    }
}

public class GetDataCheckReportOverviewResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var batchId: Int64?

        public var checkColumnCount: Int64?

        public var checkPtCount: Int64?

        public var checkResult: Int32?

        public var checkRowCount: Int64?

        public var checkRowPassCount: Int64?

        public var checkRowPassExport: String?

        public var checkSqlNum: Int64?

        public var checkTableNum: Int64?

        public var checkTemplateId: String?

        public var checkTemplateName: String?

        public var checkType: Int32?

        public var dstDsName: String?

        public var dstDsType: String?

        public var errorTableNum: Int64?

        public var passColumnCount: Int64?

        public var passColumnRate: Double?

        public var passProcess: Double?

        public var passProcessExport: String?

        public var passPtNum: Int64?

        public var passPtProcessExport: String?

        public var passTableNum: Int64?

        public var ptPassProcess: Double?

        public var reportGenerateMessage: String?

        public var reportStatus: Int32?

        public var reportTime: String?

        public var reportTitle: String?

        public var skipPtNum: Int64?

        public var skipTableNum: Int32?

        public var srcDsName: String?

        public var srcDsType: String?

        public var taskCreateTime: String?

        public var taskId: Int64?

        public var taskModifyTime: String?

        public var taskName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.batchId != nil {
                map["batchId"] = self.batchId!
            }
            if self.checkColumnCount != nil {
                map["checkColumnCount"] = self.checkColumnCount!
            }
            if self.checkPtCount != nil {
                map["checkPtCount"] = self.checkPtCount!
            }
            if self.checkResult != nil {
                map["checkResult"] = self.checkResult!
            }
            if self.checkRowCount != nil {
                map["checkRowCount"] = self.checkRowCount!
            }
            if self.checkRowPassCount != nil {
                map["checkRowPassCount"] = self.checkRowPassCount!
            }
            if self.checkRowPassExport != nil {
                map["checkRowPassExport"] = self.checkRowPassExport!
            }
            if self.checkSqlNum != nil {
                map["checkSqlNum"] = self.checkSqlNum!
            }
            if self.checkTableNum != nil {
                map["checkTableNum"] = self.checkTableNum!
            }
            if self.checkTemplateId != nil {
                map["checkTemplateId"] = self.checkTemplateId!
            }
            if self.checkTemplateName != nil {
                map["checkTemplateName"] = self.checkTemplateName!
            }
            if self.checkType != nil {
                map["checkType"] = self.checkType!
            }
            if self.dstDsName != nil {
                map["dstDsName"] = self.dstDsName!
            }
            if self.dstDsType != nil {
                map["dstDsType"] = self.dstDsType!
            }
            if self.errorTableNum != nil {
                map["errorTableNum"] = self.errorTableNum!
            }
            if self.passColumnCount != nil {
                map["passColumnCount"] = self.passColumnCount!
            }
            if self.passColumnRate != nil {
                map["passColumnRate"] = self.passColumnRate!
            }
            if self.passProcess != nil {
                map["passProcess"] = self.passProcess!
            }
            if self.passProcessExport != nil {
                map["passProcessExport"] = self.passProcessExport!
            }
            if self.passPtNum != nil {
                map["passPtNum"] = self.passPtNum!
            }
            if self.passPtProcessExport != nil {
                map["passPtProcessExport"] = self.passPtProcessExport!
            }
            if self.passTableNum != nil {
                map["passTableNum"] = self.passTableNum!
            }
            if self.ptPassProcess != nil {
                map["ptPassProcess"] = self.ptPassProcess!
            }
            if self.reportGenerateMessage != nil {
                map["reportGenerateMessage"] = self.reportGenerateMessage!
            }
            if self.reportStatus != nil {
                map["reportStatus"] = self.reportStatus!
            }
            if self.reportTime != nil {
                map["reportTime"] = self.reportTime!
            }
            if self.reportTitle != nil {
                map["reportTitle"] = self.reportTitle!
            }
            if self.skipPtNum != nil {
                map["skipPtNum"] = self.skipPtNum!
            }
            if self.skipTableNum != nil {
                map["skipTableNum"] = self.skipTableNum!
            }
            if self.srcDsName != nil {
                map["srcDsName"] = self.srcDsName!
            }
            if self.srcDsType != nil {
                map["srcDsType"] = self.srcDsType!
            }
            if self.taskCreateTime != nil {
                map["taskCreateTime"] = self.taskCreateTime!
            }
            if self.taskId != nil {
                map["taskId"] = self.taskId!
            }
            if self.taskModifyTime != nil {
                map["taskModifyTime"] = self.taskModifyTime!
            }
            if self.taskName != nil {
                map["taskName"] = self.taskName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["batchId"] as? Int64 {
                self.batchId = value
            }
            if let value = dict["checkColumnCount"] as? Int64 {
                self.checkColumnCount = value
            }
            if let value = dict["checkPtCount"] as? Int64 {
                self.checkPtCount = value
            }
            if let value = dict["checkResult"] as? Int32 {
                self.checkResult = value
            }
            if let value = dict["checkRowCount"] as? Int64 {
                self.checkRowCount = value
            }
            if let value = dict["checkRowPassCount"] as? Int64 {
                self.checkRowPassCount = value
            }
            if let value = dict["checkRowPassExport"] as? String {
                self.checkRowPassExport = value
            }
            if let value = dict["checkSqlNum"] as? Int64 {
                self.checkSqlNum = value
            }
            if let value = dict["checkTableNum"] as? Int64 {
                self.checkTableNum = value
            }
            if let value = dict["checkTemplateId"] as? String {
                self.checkTemplateId = value
            }
            if let value = dict["checkTemplateName"] as? String {
                self.checkTemplateName = value
            }
            if let value = dict["checkType"] as? Int32 {
                self.checkType = value
            }
            if let value = dict["dstDsName"] as? String {
                self.dstDsName = value
            }
            if let value = dict["dstDsType"] as? String {
                self.dstDsType = value
            }
            if let value = dict["errorTableNum"] as? Int64 {
                self.errorTableNum = value
            }
            if let value = dict["passColumnCount"] as? Int64 {
                self.passColumnCount = value
            }
            if let value = dict["passColumnRate"] as? Double {
                self.passColumnRate = value
            }
            if let value = dict["passProcess"] as? Double {
                self.passProcess = value
            }
            if let value = dict["passProcessExport"] as? String {
                self.passProcessExport = value
            }
            if let value = dict["passPtNum"] as? Int64 {
                self.passPtNum = value
            }
            if let value = dict["passPtProcessExport"] as? String {
                self.passPtProcessExport = value
            }
            if let value = dict["passTableNum"] as? Int64 {
                self.passTableNum = value
            }
            if let value = dict["ptPassProcess"] as? Double {
                self.ptPassProcess = value
            }
            if let value = dict["reportGenerateMessage"] as? String {
                self.reportGenerateMessage = value
            }
            if let value = dict["reportStatus"] as? Int32 {
                self.reportStatus = value
            }
            if let value = dict["reportTime"] as? String {
                self.reportTime = value
            }
            if let value = dict["reportTitle"] as? String {
                self.reportTitle = value
            }
            if let value = dict["skipPtNum"] as? Int64 {
                self.skipPtNum = value
            }
            if let value = dict["skipTableNum"] as? Int32 {
                self.skipTableNum = value
            }
            if let value = dict["srcDsName"] as? String {
                self.srcDsName = value
            }
            if let value = dict["srcDsType"] as? String {
                self.srcDsType = value
            }
            if let value = dict["taskCreateTime"] as? String {
                self.taskCreateTime = value
            }
            if let value = dict["taskId"] as? Int64 {
                self.taskId = value
            }
            if let value = dict["taskModifyTime"] as? String {
                self.taskModifyTime = value
            }
            if let value = dict["taskName"] as? String {
                self.taskName = value
            }
        }
    }
    public var data: GetDataCheckReportOverviewResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

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
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetDataCheckReportOverviewResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class GetDataCheckReportOverviewResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDataCheckReportOverviewResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetDataCheckReportOverviewResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDataCheckReportStatusRequest : Tea.TeaModel {
    public var batchId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.batchId != nil {
            map["batchId"] = self.batchId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["batchId"] as? Int64 {
            self.batchId = value
        }
    }
}

public class GetDataCheckReportStatusResponseBody : Tea.TeaModel {
    public var data: Int32?

    public var errCode: String?

    public var errMessage: String?

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
            map["data"] = self.data!
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? Int32 {
            self.data = value
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class GetDataCheckReportStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDataCheckReportStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetDataCheckReportStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDataCheckTaskConfigRequest : Tea.TeaModel {
    public var taskId: Int64?

    public override init() {
        super.init()
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
            map["taskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["taskId"] as? Int64 {
            self.taskId = value
        }
    }
}

public class GetDataCheckTaskConfigResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class DataCheckConfig : Tea.TeaModel {
            public var algorithm: Int32?

            public var batchId: Int64?

            public var batchSize: Int32?

            public var checkType: Int32?

            public var comparator: String?

            public var extra: Any?

            public var groupCountThreshold: Double?

            public var id: Int64?

            public var isFullTableCount: Int32?

            public var isSkipped: Int32?

            public var metricType: String?

            public var sourceColumns: String?

            public var sourceCompareKey: String?

            public var sourceDataSource: String?

            public var sourceGroupClause: String?

            public var sourceHint: String?

            public var sourceId: String?

            public var sourcePartition: String?

            public var sourceSql: String?

            public var sourceTable: String?

            public var sourceType: String?

            public var sourceWhereClause: String?

            public var targetColumns: String?

            public var targetCompareKey: String?

            public var targetDataSource: String?

            public var targetGroupClause: String?

            public var targetHint: String?

            public var targetId: String?

            public var targetPartition: String?

            public var targetSql: String?

            public var targetTable: String?

            public var targetType: String?

            public var targetWhereClause: String?

            public var taskConfigId: Int64?

            public var taskConfigInfo: String?

            public var token: String?

            public var totalCountThreshold: Double?

            public override init() {
                super.init()
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
                    map["algorithm"] = self.algorithm!
                }
                if self.batchId != nil {
                    map["batchId"] = self.batchId!
                }
                if self.batchSize != nil {
                    map["batchSize"] = self.batchSize!
                }
                if self.checkType != nil {
                    map["checkType"] = self.checkType!
                }
                if self.comparator != nil {
                    map["comparator"] = self.comparator!
                }
                if self.extra != nil {
                    map["extra"] = self.extra!
                }
                if self.groupCountThreshold != nil {
                    map["groupCountThreshold"] = self.groupCountThreshold!
                }
                if self.id != nil {
                    map["id"] = self.id!
                }
                if self.isFullTableCount != nil {
                    map["isFullTableCount"] = self.isFullTableCount!
                }
                if self.isSkipped != nil {
                    map["isSkipped"] = self.isSkipped!
                }
                if self.metricType != nil {
                    map["metricType"] = self.metricType!
                }
                if self.sourceColumns != nil {
                    map["sourceColumns"] = self.sourceColumns!
                }
                if self.sourceCompareKey != nil {
                    map["sourceCompareKey"] = self.sourceCompareKey!
                }
                if self.sourceDataSource != nil {
                    map["sourceDataSource"] = self.sourceDataSource!
                }
                if self.sourceGroupClause != nil {
                    map["sourceGroupClause"] = self.sourceGroupClause!
                }
                if self.sourceHint != nil {
                    map["sourceHint"] = self.sourceHint!
                }
                if self.sourceId != nil {
                    map["sourceId"] = self.sourceId!
                }
                if self.sourcePartition != nil {
                    map["sourcePartition"] = self.sourcePartition!
                }
                if self.sourceSql != nil {
                    map["sourceSql"] = self.sourceSql!
                }
                if self.sourceTable != nil {
                    map["sourceTable"] = self.sourceTable!
                }
                if self.sourceType != nil {
                    map["sourceType"] = self.sourceType!
                }
                if self.sourceWhereClause != nil {
                    map["sourceWhereClause"] = self.sourceWhereClause!
                }
                if self.targetColumns != nil {
                    map["targetColumns"] = self.targetColumns!
                }
                if self.targetCompareKey != nil {
                    map["targetCompareKey"] = self.targetCompareKey!
                }
                if self.targetDataSource != nil {
                    map["targetDataSource"] = self.targetDataSource!
                }
                if self.targetGroupClause != nil {
                    map["targetGroupClause"] = self.targetGroupClause!
                }
                if self.targetHint != nil {
                    map["targetHint"] = self.targetHint!
                }
                if self.targetId != nil {
                    map["targetId"] = self.targetId!
                }
                if self.targetPartition != nil {
                    map["targetPartition"] = self.targetPartition!
                }
                if self.targetSql != nil {
                    map["targetSql"] = self.targetSql!
                }
                if self.targetTable != nil {
                    map["targetTable"] = self.targetTable!
                }
                if self.targetType != nil {
                    map["targetType"] = self.targetType!
                }
                if self.targetWhereClause != nil {
                    map["targetWhereClause"] = self.targetWhereClause!
                }
                if self.taskConfigId != nil {
                    map["taskConfigId"] = self.taskConfigId!
                }
                if self.taskConfigInfo != nil {
                    map["taskConfigInfo"] = self.taskConfigInfo!
                }
                if self.token != nil {
                    map["token"] = self.token!
                }
                if self.totalCountThreshold != nil {
                    map["totalCountThreshold"] = self.totalCountThreshold!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["algorithm"] as? Int32 {
                    self.algorithm = value
                }
                if let value = dict["batchId"] as? Int64 {
                    self.batchId = value
                }
                if let value = dict["batchSize"] as? Int32 {
                    self.batchSize = value
                }
                if let value = dict["checkType"] as? Int32 {
                    self.checkType = value
                }
                if let value = dict["comparator"] as? String {
                    self.comparator = value
                }
                if let value = dict["extra"] as? Any {
                    self.extra = value
                }
                if let value = dict["groupCountThreshold"] as? Double {
                    self.groupCountThreshold = value
                }
                if let value = dict["id"] as? Int64 {
                    self.id = value
                }
                if let value = dict["isFullTableCount"] as? Int32 {
                    self.isFullTableCount = value
                }
                if let value = dict["isSkipped"] as? Int32 {
                    self.isSkipped = value
                }
                if let value = dict["metricType"] as? String {
                    self.metricType = value
                }
                if let value = dict["sourceColumns"] as? String {
                    self.sourceColumns = value
                }
                if let value = dict["sourceCompareKey"] as? String {
                    self.sourceCompareKey = value
                }
                if let value = dict["sourceDataSource"] as? String {
                    self.sourceDataSource = value
                }
                if let value = dict["sourceGroupClause"] as? String {
                    self.sourceGroupClause = value
                }
                if let value = dict["sourceHint"] as? String {
                    self.sourceHint = value
                }
                if let value = dict["sourceId"] as? String {
                    self.sourceId = value
                }
                if let value = dict["sourcePartition"] as? String {
                    self.sourcePartition = value
                }
                if let value = dict["sourceSql"] as? String {
                    self.sourceSql = value
                }
                if let value = dict["sourceTable"] as? String {
                    self.sourceTable = value
                }
                if let value = dict["sourceType"] as? String {
                    self.sourceType = value
                }
                if let value = dict["sourceWhereClause"] as? String {
                    self.sourceWhereClause = value
                }
                if let value = dict["targetColumns"] as? String {
                    self.targetColumns = value
                }
                if let value = dict["targetCompareKey"] as? String {
                    self.targetCompareKey = value
                }
                if let value = dict["targetDataSource"] as? String {
                    self.targetDataSource = value
                }
                if let value = dict["targetGroupClause"] as? String {
                    self.targetGroupClause = value
                }
                if let value = dict["targetHint"] as? String {
                    self.targetHint = value
                }
                if let value = dict["targetId"] as? String {
                    self.targetId = value
                }
                if let value = dict["targetPartition"] as? String {
                    self.targetPartition = value
                }
                if let value = dict["targetSql"] as? String {
                    self.targetSql = value
                }
                if let value = dict["targetTable"] as? String {
                    self.targetTable = value
                }
                if let value = dict["targetType"] as? String {
                    self.targetType = value
                }
                if let value = dict["targetWhereClause"] as? String {
                    self.targetWhereClause = value
                }
                if let value = dict["taskConfigId"] as? Int64 {
                    self.taskConfigId = value
                }
                if let value = dict["taskConfigInfo"] as? String {
                    self.taskConfigInfo = value
                }
                if let value = dict["token"] as? String {
                    self.token = value
                }
                if let value = dict["totalCountThreshold"] as? Double {
                    self.totalCountThreshold = value
                }
            }
        }
        public class ScopeFilter : Tea.TeaModel {
            public var end: String?

            public var lastN: Int32?

            public var scopeFilterType: Int32?

            public var start: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.end != nil {
                    map["end"] = self.end!
                }
                if self.lastN != nil {
                    map["lastN"] = self.lastN!
                }
                if self.scopeFilterType != nil {
                    map["scopeFilterType"] = self.scopeFilterType!
                }
                if self.start != nil {
                    map["start"] = self.start!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["end"] as? String {
                    self.end = value
                }
                if let value = dict["lastN"] as? Int32 {
                    self.lastN = value
                }
                if let value = dict["scopeFilterType"] as? Int32 {
                    self.scopeFilterType = value
                }
                if let value = dict["start"] as? String {
                    self.start = value
                }
            }
        }
        public var batchId: Int64?

        public var checkGlobalParams: String?

        public var checkTemplateId: String?

        public var checkType: Int32?

        public var concurrency: Int32?

        public var cronExp: String?

        public var dataCheckConfig: [GetDataCheckTaskConfigResponseBody.Data.DataCheckConfig]?

        public var dstDsId: String?

        public var dstDsName: String?

        public var dstDsType: String?

        public var dstEngineId: String?

        public var dstEngineName: String?

        public var dstEngineType: String?

        public var executeType: Int32?

        public var fullTableCount: Int32?

        public var groupCountThreshold: Double?

        public var isBuiltin: Int32?

        public var isScheduled: Int32?

        public var isWhiteList: Int32?

        public var requestId: String?

        public var scheduleId: Int64?

        public var scopeFilter: GetDataCheckTaskConfigResponseBody.Data.ScopeFilter?

        public var sourceGlobalParams: String?

        public var srcDsId: String?

        public var srcDsName: String?

        public var srcDsType: String?

        public var srcEngineId: String?

        public var srcEngineName: String?

        public var srcEngineType: String?

        public var startImmediately: Int32?

        public var targetGlobalParams: String?

        public var taskConfigInfo: String?

        public var taskDescription: String?

        public var taskId: Int64?

        public var taskMode: Int32?

        public var taskName: String?

        public var templateName: String?

        public var tenantId: String?

        public var totalCountThreshold: Double?

        public var uid: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.scopeFilter?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.batchId != nil {
                map["batchId"] = self.batchId!
            }
            if self.checkGlobalParams != nil {
                map["checkGlobalParams"] = self.checkGlobalParams!
            }
            if self.checkTemplateId != nil {
                map["checkTemplateId"] = self.checkTemplateId!
            }
            if self.checkType != nil {
                map["checkType"] = self.checkType!
            }
            if self.concurrency != nil {
                map["concurrency"] = self.concurrency!
            }
            if self.cronExp != nil {
                map["cronExp"] = self.cronExp!
            }
            if self.dataCheckConfig != nil {
                var tmp : [Any] = []
                for k in self.dataCheckConfig! {
                    tmp.append(k.toMap())
                }
                map["dataCheckConfig"] = tmp
            }
            if self.dstDsId != nil {
                map["dstDsId"] = self.dstDsId!
            }
            if self.dstDsName != nil {
                map["dstDsName"] = self.dstDsName!
            }
            if self.dstDsType != nil {
                map["dstDsType"] = self.dstDsType!
            }
            if self.dstEngineId != nil {
                map["dstEngineId"] = self.dstEngineId!
            }
            if self.dstEngineName != nil {
                map["dstEngineName"] = self.dstEngineName!
            }
            if self.dstEngineType != nil {
                map["dstEngineType"] = self.dstEngineType!
            }
            if self.executeType != nil {
                map["executeType"] = self.executeType!
            }
            if self.fullTableCount != nil {
                map["fullTableCount"] = self.fullTableCount!
            }
            if self.groupCountThreshold != nil {
                map["groupCountThreshold"] = self.groupCountThreshold!
            }
            if self.isBuiltin != nil {
                map["isBuiltin"] = self.isBuiltin!
            }
            if self.isScheduled != nil {
                map["isScheduled"] = self.isScheduled!
            }
            if self.isWhiteList != nil {
                map["isWhiteList"] = self.isWhiteList!
            }
            if self.requestId != nil {
                map["requestId"] = self.requestId!
            }
            if self.scheduleId != nil {
                map["scheduleId"] = self.scheduleId!
            }
            if self.scopeFilter != nil {
                map["scopeFilter"] = self.scopeFilter?.toMap()
            }
            if self.sourceGlobalParams != nil {
                map["sourceGlobalParams"] = self.sourceGlobalParams!
            }
            if self.srcDsId != nil {
                map["srcDsId"] = self.srcDsId!
            }
            if self.srcDsName != nil {
                map["srcDsName"] = self.srcDsName!
            }
            if self.srcDsType != nil {
                map["srcDsType"] = self.srcDsType!
            }
            if self.srcEngineId != nil {
                map["srcEngineId"] = self.srcEngineId!
            }
            if self.srcEngineName != nil {
                map["srcEngineName"] = self.srcEngineName!
            }
            if self.srcEngineType != nil {
                map["srcEngineType"] = self.srcEngineType!
            }
            if self.startImmediately != nil {
                map["startImmediately"] = self.startImmediately!
            }
            if self.targetGlobalParams != nil {
                map["targetGlobalParams"] = self.targetGlobalParams!
            }
            if self.taskConfigInfo != nil {
                map["taskConfigInfo"] = self.taskConfigInfo!
            }
            if self.taskDescription != nil {
                map["taskDescription"] = self.taskDescription!
            }
            if self.taskId != nil {
                map["taskId"] = self.taskId!
            }
            if self.taskMode != nil {
                map["taskMode"] = self.taskMode!
            }
            if self.taskName != nil {
                map["taskName"] = self.taskName!
            }
            if self.templateName != nil {
                map["templateName"] = self.templateName!
            }
            if self.tenantId != nil {
                map["tenantId"] = self.tenantId!
            }
            if self.totalCountThreshold != nil {
                map["totalCountThreshold"] = self.totalCountThreshold!
            }
            if self.uid != nil {
                map["uid"] = self.uid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["batchId"] as? Int64 {
                self.batchId = value
            }
            if let value = dict["checkGlobalParams"] as? String {
                self.checkGlobalParams = value
            }
            if let value = dict["checkTemplateId"] as? String {
                self.checkTemplateId = value
            }
            if let value = dict["checkType"] as? Int32 {
                self.checkType = value
            }
            if let value = dict["concurrency"] as? Int32 {
                self.concurrency = value
            }
            if let value = dict["cronExp"] as? String {
                self.cronExp = value
            }
            if let value = dict["dataCheckConfig"] as? [Any?] {
                var tmp : [GetDataCheckTaskConfigResponseBody.Data.DataCheckConfig] = []
                for v in value {
                    if v != nil {
                        var model = GetDataCheckTaskConfigResponseBody.Data.DataCheckConfig()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.dataCheckConfig = tmp
            }
            if let value = dict["dstDsId"] as? String {
                self.dstDsId = value
            }
            if let value = dict["dstDsName"] as? String {
                self.dstDsName = value
            }
            if let value = dict["dstDsType"] as? String {
                self.dstDsType = value
            }
            if let value = dict["dstEngineId"] as? String {
                self.dstEngineId = value
            }
            if let value = dict["dstEngineName"] as? String {
                self.dstEngineName = value
            }
            if let value = dict["dstEngineType"] as? String {
                self.dstEngineType = value
            }
            if let value = dict["executeType"] as? Int32 {
                self.executeType = value
            }
            if let value = dict["fullTableCount"] as? Int32 {
                self.fullTableCount = value
            }
            if let value = dict["groupCountThreshold"] as? Double {
                self.groupCountThreshold = value
            }
            if let value = dict["isBuiltin"] as? Int32 {
                self.isBuiltin = value
            }
            if let value = dict["isScheduled"] as? Int32 {
                self.isScheduled = value
            }
            if let value = dict["isWhiteList"] as? Int32 {
                self.isWhiteList = value
            }
            if let value = dict["requestId"] as? String {
                self.requestId = value
            }
            if let value = dict["scheduleId"] as? Int64 {
                self.scheduleId = value
            }
            if let value = dict["scopeFilter"] as? [String: Any?] {
                var model = GetDataCheckTaskConfigResponseBody.Data.ScopeFilter()
                model.fromMap(value)
                self.scopeFilter = model
            }
            if let value = dict["sourceGlobalParams"] as? String {
                self.sourceGlobalParams = value
            }
            if let value = dict["srcDsId"] as? String {
                self.srcDsId = value
            }
            if let value = dict["srcDsName"] as? String {
                self.srcDsName = value
            }
            if let value = dict["srcDsType"] as? String {
                self.srcDsType = value
            }
            if let value = dict["srcEngineId"] as? String {
                self.srcEngineId = value
            }
            if let value = dict["srcEngineName"] as? String {
                self.srcEngineName = value
            }
            if let value = dict["srcEngineType"] as? String {
                self.srcEngineType = value
            }
            if let value = dict["startImmediately"] as? Int32 {
                self.startImmediately = value
            }
            if let value = dict["targetGlobalParams"] as? String {
                self.targetGlobalParams = value
            }
            if let value = dict["taskConfigInfo"] as? String {
                self.taskConfigInfo = value
            }
            if let value = dict["taskDescription"] as? String {
                self.taskDescription = value
            }
            if let value = dict["taskId"] as? Int64 {
                self.taskId = value
            }
            if let value = dict["taskMode"] as? Int32 {
                self.taskMode = value
            }
            if let value = dict["taskName"] as? String {
                self.taskName = value
            }
            if let value = dict["templateName"] as? String {
                self.templateName = value
            }
            if let value = dict["tenantId"] as? String {
                self.tenantId = value
            }
            if let value = dict["totalCountThreshold"] as? Double {
                self.totalCountThreshold = value
            }
            if let value = dict["uid"] as? String {
                self.uid = value
            }
        }
    }
    public var data: GetDataCheckTaskConfigResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

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
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetDataCheckTaskConfigResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class GetDataCheckTaskConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDataCheckTaskConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetDataCheckTaskConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDataCheckTaskListRequest : Tea.TeaModel {
    public var checkResult: Int32?

    public var checkType: Int32?

    public var createEndTime: String?

    public var createStartTime: String?

    public var execStatus: Int32?

    public var isScheduled: Int32?

    public var pageIndex: Int32?

    public var pageSize: Int32?

    public var taskName: String?

    public var templateName: String?

    public var updateEndTime: String?

    public var updateStartTime: String?

    public override init() {
        super.init()
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
            map["checkResult"] = self.checkResult!
        }
        if self.checkType != nil {
            map["checkType"] = self.checkType!
        }
        if self.createEndTime != nil {
            map["createEndTime"] = self.createEndTime!
        }
        if self.createStartTime != nil {
            map["createStartTime"] = self.createStartTime!
        }
        if self.execStatus != nil {
            map["execStatus"] = self.execStatus!
        }
        if self.isScheduled != nil {
            map["isScheduled"] = self.isScheduled!
        }
        if self.pageIndex != nil {
            map["pageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.taskName != nil {
            map["taskName"] = self.taskName!
        }
        if self.templateName != nil {
            map["templateName"] = self.templateName!
        }
        if self.updateEndTime != nil {
            map["updateEndTime"] = self.updateEndTime!
        }
        if self.updateStartTime != nil {
            map["updateStartTime"] = self.updateStartTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["checkResult"] as? Int32 {
            self.checkResult = value
        }
        if let value = dict["checkType"] as? Int32 {
            self.checkType = value
        }
        if let value = dict["createEndTime"] as? String {
            self.createEndTime = value
        }
        if let value = dict["createStartTime"] as? String {
            self.createStartTime = value
        }
        if let value = dict["execStatus"] as? Int32 {
            self.execStatus = value
        }
        if let value = dict["isScheduled"] as? Int32 {
            self.isScheduled = value
        }
        if let value = dict["pageIndex"] as? Int32 {
            self.pageIndex = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["taskName"] as? String {
            self.taskName = value
        }
        if let value = dict["templateName"] as? String {
            self.templateName = value
        }
        if let value = dict["updateEndTime"] as? String {
            self.updateEndTime = value
        }
        if let value = dict["updateStartTime"] as? String {
            self.updateStartTime = value
        }
    }
}

public class GetDataCheckTaskListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var checkResult: Int32?

        public var checkTableNum: Int64?

        public var checkTemplateId: String?

        public var checkType: Int32?

        public var dstDsId: String?

        public var dstDsName: String?

        public var dstDsType: String?

        public var dstEngineId: String?

        public var dstEngineName: String?

        public var dstEngineType: String?

        public var endTime: String?

        public var errorMsg: String?

        public var errorTableNum: Int64?

        public var execStatus: Int32?

        public var execTime: String?

        public var executeType: Int32?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var id: Int64?

        public var isScheduled: Int32?

        public var lastBatchId: Int64?

        public var lastFinishedId: Int64?

        public var passProcess: [String: Any]?

        public var process: Double?

        public var reportTime: String?

        public var reportTitle: String?

        public var skipTableNum: Int64?

        public var srcDsId: String?

        public var srcDsName: String?

        public var srcDsType: String?

        public var srcEngineId: String?

        public var srcEngineName: String?

        public var srcEngineType: String?

        public var startTime: String?

        public var successfulTableNum: Int64?

        public var taskDescription: String?

        public var taskMode: Int32?

        public var taskName: String?

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
            if self.checkResult != nil {
                map["checkResult"] = self.checkResult!
            }
            if self.checkTableNum != nil {
                map["checkTableNum"] = self.checkTableNum!
            }
            if self.checkTemplateId != nil {
                map["checkTemplateId"] = self.checkTemplateId!
            }
            if self.checkType != nil {
                map["checkType"] = self.checkType!
            }
            if self.dstDsId != nil {
                map["dstDsId"] = self.dstDsId!
            }
            if self.dstDsName != nil {
                map["dstDsName"] = self.dstDsName!
            }
            if self.dstDsType != nil {
                map["dstDsType"] = self.dstDsType!
            }
            if self.dstEngineId != nil {
                map["dstEngineId"] = self.dstEngineId!
            }
            if self.dstEngineName != nil {
                map["dstEngineName"] = self.dstEngineName!
            }
            if self.dstEngineType != nil {
                map["dstEngineType"] = self.dstEngineType!
            }
            if self.endTime != nil {
                map["endTime"] = self.endTime!
            }
            if self.errorMsg != nil {
                map["errorMsg"] = self.errorMsg!
            }
            if self.errorTableNum != nil {
                map["errorTableNum"] = self.errorTableNum!
            }
            if self.execStatus != nil {
                map["execStatus"] = self.execStatus!
            }
            if self.execTime != nil {
                map["execTime"] = self.execTime!
            }
            if self.executeType != nil {
                map["executeType"] = self.executeType!
            }
            if self.gmtCreate != nil {
                map["gmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["gmtModified"] = self.gmtModified!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.isScheduled != nil {
                map["isScheduled"] = self.isScheduled!
            }
            if self.lastBatchId != nil {
                map["lastBatchId"] = self.lastBatchId!
            }
            if self.lastFinishedId != nil {
                map["lastFinishedId"] = self.lastFinishedId!
            }
            if self.passProcess != nil {
                map["passProcess"] = self.passProcess!
            }
            if self.process != nil {
                map["process"] = self.process!
            }
            if self.reportTime != nil {
                map["reportTime"] = self.reportTime!
            }
            if self.reportTitle != nil {
                map["reportTitle"] = self.reportTitle!
            }
            if self.skipTableNum != nil {
                map["skipTableNum"] = self.skipTableNum!
            }
            if self.srcDsId != nil {
                map["srcDsId"] = self.srcDsId!
            }
            if self.srcDsName != nil {
                map["srcDsName"] = self.srcDsName!
            }
            if self.srcDsType != nil {
                map["srcDsType"] = self.srcDsType!
            }
            if self.srcEngineId != nil {
                map["srcEngineId"] = self.srcEngineId!
            }
            if self.srcEngineName != nil {
                map["srcEngineName"] = self.srcEngineName!
            }
            if self.srcEngineType != nil {
                map["srcEngineType"] = self.srcEngineType!
            }
            if self.startTime != nil {
                map["startTime"] = self.startTime!
            }
            if self.successfulTableNum != nil {
                map["successfulTableNum"] = self.successfulTableNum!
            }
            if self.taskDescription != nil {
                map["taskDescription"] = self.taskDescription!
            }
            if self.taskMode != nil {
                map["taskMode"] = self.taskMode!
            }
            if self.taskName != nil {
                map["taskName"] = self.taskName!
            }
            if self.templateName != nil {
                map["templateName"] = self.templateName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["checkResult"] as? Int32 {
                self.checkResult = value
            }
            if let value = dict["checkTableNum"] as? Int64 {
                self.checkTableNum = value
            }
            if let value = dict["checkTemplateId"] as? String {
                self.checkTemplateId = value
            }
            if let value = dict["checkType"] as? Int32 {
                self.checkType = value
            }
            if let value = dict["dstDsId"] as? String {
                self.dstDsId = value
            }
            if let value = dict["dstDsName"] as? String {
                self.dstDsName = value
            }
            if let value = dict["dstDsType"] as? String {
                self.dstDsType = value
            }
            if let value = dict["dstEngineId"] as? String {
                self.dstEngineId = value
            }
            if let value = dict["dstEngineName"] as? String {
                self.dstEngineName = value
            }
            if let value = dict["dstEngineType"] as? String {
                self.dstEngineType = value
            }
            if let value = dict["endTime"] as? String {
                self.endTime = value
            }
            if let value = dict["errorMsg"] as? String {
                self.errorMsg = value
            }
            if let value = dict["errorTableNum"] as? Int64 {
                self.errorTableNum = value
            }
            if let value = dict["execStatus"] as? Int32 {
                self.execStatus = value
            }
            if let value = dict["execTime"] as? String {
                self.execTime = value
            }
            if let value = dict["executeType"] as? Int32 {
                self.executeType = value
            }
            if let value = dict["gmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["gmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["id"] as? Int64 {
                self.id = value
            }
            if let value = dict["isScheduled"] as? Int32 {
                self.isScheduled = value
            }
            if let value = dict["lastBatchId"] as? Int64 {
                self.lastBatchId = value
            }
            if let value = dict["lastFinishedId"] as? Int64 {
                self.lastFinishedId = value
            }
            if let value = dict["passProcess"] as? [String: Any] {
                self.passProcess = value
            }
            if let value = dict["process"] as? Double {
                self.process = value
            }
            if let value = dict["reportTime"] as? String {
                self.reportTime = value
            }
            if let value = dict["reportTitle"] as? String {
                self.reportTitle = value
            }
            if let value = dict["skipTableNum"] as? Int64 {
                self.skipTableNum = value
            }
            if let value = dict["srcDsId"] as? String {
                self.srcDsId = value
            }
            if let value = dict["srcDsName"] as? String {
                self.srcDsName = value
            }
            if let value = dict["srcDsType"] as? String {
                self.srcDsType = value
            }
            if let value = dict["srcEngineId"] as? String {
                self.srcEngineId = value
            }
            if let value = dict["srcEngineName"] as? String {
                self.srcEngineName = value
            }
            if let value = dict["srcEngineType"] as? String {
                self.srcEngineType = value
            }
            if let value = dict["startTime"] as? String {
                self.startTime = value
            }
            if let value = dict["successfulTableNum"] as? Int64 {
                self.successfulTableNum = value
            }
            if let value = dict["taskDescription"] as? String {
                self.taskDescription = value
            }
            if let value = dict["taskMode"] as? Int32 {
                self.taskMode = value
            }
            if let value = dict["taskName"] as? String {
                self.taskName = value
            }
            if let value = dict["templateName"] as? String {
                self.templateName = value
            }
        }
    }
    public var data: [GetDataCheckTaskListResponseBody.Data]?

    public var errCode: String?

    public var errMessage: String?

    public var pageIndex: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

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
            map["data"] = tmp
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.pageIndex != nil {
            map["pageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [Any?] {
            var tmp : [GetDataCheckTaskListResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = GetDataCheckTaskListResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["pageIndex"] as? Int32 {
            self.pageIndex = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["totalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class GetDataCheckTaskListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDataCheckTaskListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetDataCheckTaskListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDataCheckTemplateRequest : Tea.TeaModel {
    public var templateId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.templateId != nil {
            map["templateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["templateId"] as? String {
            self.templateId = value
        }
    }
}

public class GetDataCheckTemplateResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class BasicMetricRules : Tea.TeaModel {
            public var checkMethods: String?

            public var dataTypeClassify: Int32?

            public var dataTypeGroup: Int32?

            public var dataTypeList: [String]?

            public var dataTypes: String?

            public var diffTolerateType: Int32?

            public var diffTolerateValues: [String: Any]?

            public var enableDecimalScale: Int32?

            public var filterColumnName: String?

            public var ignoreDecimalScaleSuffixZero: Int32?

            public var ignoreNumericZero: Int32?

            public var ignoreStringEmpty: Int32?

            public var isCountCheck: Int32?

            public var ruleId: String?

            public var setDecimalScale: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.checkMethods != nil {
                    map["checkMethods"] = self.checkMethods!
                }
                if self.dataTypeClassify != nil {
                    map["dataTypeClassify"] = self.dataTypeClassify!
                }
                if self.dataTypeGroup != nil {
                    map["dataTypeGroup"] = self.dataTypeGroup!
                }
                if self.dataTypeList != nil {
                    map["dataTypeList"] = self.dataTypeList!
                }
                if self.dataTypes != nil {
                    map["dataTypes"] = self.dataTypes!
                }
                if self.diffTolerateType != nil {
                    map["diffTolerateType"] = self.diffTolerateType!
                }
                if self.diffTolerateValues != nil {
                    map["diffTolerateValues"] = self.diffTolerateValues!
                }
                if self.enableDecimalScale != nil {
                    map["enableDecimalScale"] = self.enableDecimalScale!
                }
                if self.filterColumnName != nil {
                    map["filterColumnName"] = self.filterColumnName!
                }
                if self.ignoreDecimalScaleSuffixZero != nil {
                    map["ignoreDecimalScaleSuffixZero"] = self.ignoreDecimalScaleSuffixZero!
                }
                if self.ignoreNumericZero != nil {
                    map["ignoreNumericZero"] = self.ignoreNumericZero!
                }
                if self.ignoreStringEmpty != nil {
                    map["ignoreStringEmpty"] = self.ignoreStringEmpty!
                }
                if self.isCountCheck != nil {
                    map["isCountCheck"] = self.isCountCheck!
                }
                if self.ruleId != nil {
                    map["ruleId"] = self.ruleId!
                }
                if self.setDecimalScale != nil {
                    map["setDecimalScale"] = self.setDecimalScale!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["checkMethods"] as? String {
                    self.checkMethods = value
                }
                if let value = dict["dataTypeClassify"] as? Int32 {
                    self.dataTypeClassify = value
                }
                if let value = dict["dataTypeGroup"] as? Int32 {
                    self.dataTypeGroup = value
                }
                if let value = dict["dataTypeList"] as? [String] {
                    self.dataTypeList = value
                }
                if let value = dict["dataTypes"] as? String {
                    self.dataTypes = value
                }
                if let value = dict["diffTolerateType"] as? Int32 {
                    self.diffTolerateType = value
                }
                if let value = dict["diffTolerateValues"] as? [String: Any] {
                    self.diffTolerateValues = value
                }
                if let value = dict["enableDecimalScale"] as? Int32 {
                    self.enableDecimalScale = value
                }
                if let value = dict["filterColumnName"] as? String {
                    self.filterColumnName = value
                }
                if let value = dict["ignoreDecimalScaleSuffixZero"] as? Int32 {
                    self.ignoreDecimalScaleSuffixZero = value
                }
                if let value = dict["ignoreNumericZero"] as? Int32 {
                    self.ignoreNumericZero = value
                }
                if let value = dict["ignoreStringEmpty"] as? Int32 {
                    self.ignoreStringEmpty = value
                }
                if let value = dict["isCountCheck"] as? Int32 {
                    self.isCountCheck = value
                }
                if let value = dict["ruleId"] as? String {
                    self.ruleId = value
                }
                if let value = dict["setDecimalScale"] as? Int32 {
                    self.setDecimalScale = value
                }
            }
        }
        public class ComplexMetricRules : Tea.TeaModel {
            public var checkMethods: String?

            public var dataTypeClassify: Int32?

            public var dataTypeGroup: Int32?

            public var dataTypeList: [String]?

            public var dataTypes: String?

            public var diffTolerateType: Int32?

            public var diffTolerateValues: [String: Any]?

            public var enableDecimalScale: Int32?

            public var filterColumnName: String?

            public var ignoreDecimalScaleSuffixZero: Int32?

            public var ignoreNumericZero: Int32?

            public var ignoreStringEmpty: Int32?

            public var isCountCheck: Int32?

            public var ruleId: String?

            public var setDecimalScale: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.checkMethods != nil {
                    map["checkMethods"] = self.checkMethods!
                }
                if self.dataTypeClassify != nil {
                    map["dataTypeClassify"] = self.dataTypeClassify!
                }
                if self.dataTypeGroup != nil {
                    map["dataTypeGroup"] = self.dataTypeGroup!
                }
                if self.dataTypeList != nil {
                    map["dataTypeList"] = self.dataTypeList!
                }
                if self.dataTypes != nil {
                    map["dataTypes"] = self.dataTypes!
                }
                if self.diffTolerateType != nil {
                    map["diffTolerateType"] = self.diffTolerateType!
                }
                if self.diffTolerateValues != nil {
                    map["diffTolerateValues"] = self.diffTolerateValues!
                }
                if self.enableDecimalScale != nil {
                    map["enableDecimalScale"] = self.enableDecimalScale!
                }
                if self.filterColumnName != nil {
                    map["filterColumnName"] = self.filterColumnName!
                }
                if self.ignoreDecimalScaleSuffixZero != nil {
                    map["ignoreDecimalScaleSuffixZero"] = self.ignoreDecimalScaleSuffixZero!
                }
                if self.ignoreNumericZero != nil {
                    map["ignoreNumericZero"] = self.ignoreNumericZero!
                }
                if self.ignoreStringEmpty != nil {
                    map["ignoreStringEmpty"] = self.ignoreStringEmpty!
                }
                if self.isCountCheck != nil {
                    map["isCountCheck"] = self.isCountCheck!
                }
                if self.ruleId != nil {
                    map["ruleId"] = self.ruleId!
                }
                if self.setDecimalScale != nil {
                    map["setDecimalScale"] = self.setDecimalScale!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["checkMethods"] as? String {
                    self.checkMethods = value
                }
                if let value = dict["dataTypeClassify"] as? Int32 {
                    self.dataTypeClassify = value
                }
                if let value = dict["dataTypeGroup"] as? Int32 {
                    self.dataTypeGroup = value
                }
                if let value = dict["dataTypeList"] as? [String] {
                    self.dataTypeList = value
                }
                if let value = dict["dataTypes"] as? String {
                    self.dataTypes = value
                }
                if let value = dict["diffTolerateType"] as? Int32 {
                    self.diffTolerateType = value
                }
                if let value = dict["diffTolerateValues"] as? [String: Any] {
                    self.diffTolerateValues = value
                }
                if let value = dict["enableDecimalScale"] as? Int32 {
                    self.enableDecimalScale = value
                }
                if let value = dict["filterColumnName"] as? String {
                    self.filterColumnName = value
                }
                if let value = dict["ignoreDecimalScaleSuffixZero"] as? Int32 {
                    self.ignoreDecimalScaleSuffixZero = value
                }
                if let value = dict["ignoreNumericZero"] as? Int32 {
                    self.ignoreNumericZero = value
                }
                if let value = dict["ignoreStringEmpty"] as? Int32 {
                    self.ignoreStringEmpty = value
                }
                if let value = dict["isCountCheck"] as? Int32 {
                    self.isCountCheck = value
                }
                if let value = dict["ruleId"] as? String {
                    self.ruleId = value
                }
                if let value = dict["setDecimalScale"] as? Int32 {
                    self.setDecimalScale = value
                }
            }
        }
        public class DsEngineRels : Tea.TeaModel {
            public var dsType: String?

            public var engineTypes: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.dsType != nil {
                    map["dsType"] = self.dsType!
                }
                if self.engineTypes != nil {
                    map["engineTypes"] = self.engineTypes!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["dsType"] as? String {
                    self.dsType = value
                }
                if let value = dict["engineTypes"] as? [String] {
                    self.engineTypes = value
                }
            }
        }
        public class FulltextRule : Tea.TeaModel {
            public var checkMode: Int32?

            public var columnEqualCmpType: Int32?

            public var columnEqualCmpValues: String?

            public var columnIsCosine: Int32?

            public var columnIsIgnoreNull: Int32?

            public var columnIsIgnoreZero: Int32?

            public var columnIsSamples: Int32?

            public var columnSamplesType: Int32?

            public var columnSamplesValue: Int32?

            public var columnSizeCmpType: Int32?

            public var columnSizeCmpValues: String?

            public var isPrimaryKeyCheck: Int32?

            public var lineCheckType: Int32?

            public var lineIsPrintAll: Int32?

            public var lineIsSamples: Int32?

            public var lineSamplesType: Int32?

            public var lineSamplesValue: Int32?

            public var ruleId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.checkMode != nil {
                    map["checkMode"] = self.checkMode!
                }
                if self.columnEqualCmpType != nil {
                    map["columnEqualCmpType"] = self.columnEqualCmpType!
                }
                if self.columnEqualCmpValues != nil {
                    map["columnEqualCmpValues"] = self.columnEqualCmpValues!
                }
                if self.columnIsCosine != nil {
                    map["columnIsCosine"] = self.columnIsCosine!
                }
                if self.columnIsIgnoreNull != nil {
                    map["columnIsIgnoreNull"] = self.columnIsIgnoreNull!
                }
                if self.columnIsIgnoreZero != nil {
                    map["columnIsIgnoreZero"] = self.columnIsIgnoreZero!
                }
                if self.columnIsSamples != nil {
                    map["columnIsSamples"] = self.columnIsSamples!
                }
                if self.columnSamplesType != nil {
                    map["columnSamplesType"] = self.columnSamplesType!
                }
                if self.columnSamplesValue != nil {
                    map["columnSamplesValue"] = self.columnSamplesValue!
                }
                if self.columnSizeCmpType != nil {
                    map["columnSizeCmpType"] = self.columnSizeCmpType!
                }
                if self.columnSizeCmpValues != nil {
                    map["columnSizeCmpValues"] = self.columnSizeCmpValues!
                }
                if self.isPrimaryKeyCheck != nil {
                    map["isPrimaryKeyCheck"] = self.isPrimaryKeyCheck!
                }
                if self.lineCheckType != nil {
                    map["lineCheckType"] = self.lineCheckType!
                }
                if self.lineIsPrintAll != nil {
                    map["lineIsPrintAll"] = self.lineIsPrintAll!
                }
                if self.lineIsSamples != nil {
                    map["lineIsSamples"] = self.lineIsSamples!
                }
                if self.lineSamplesType != nil {
                    map["lineSamplesType"] = self.lineSamplesType!
                }
                if self.lineSamplesValue != nil {
                    map["lineSamplesValue"] = self.lineSamplesValue!
                }
                if self.ruleId != nil {
                    map["ruleId"] = self.ruleId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["checkMode"] as? Int32 {
                    self.checkMode = value
                }
                if let value = dict["columnEqualCmpType"] as? Int32 {
                    self.columnEqualCmpType = value
                }
                if let value = dict["columnEqualCmpValues"] as? String {
                    self.columnEqualCmpValues = value
                }
                if let value = dict["columnIsCosine"] as? Int32 {
                    self.columnIsCosine = value
                }
                if let value = dict["columnIsIgnoreNull"] as? Int32 {
                    self.columnIsIgnoreNull = value
                }
                if let value = dict["columnIsIgnoreZero"] as? Int32 {
                    self.columnIsIgnoreZero = value
                }
                if let value = dict["columnIsSamples"] as? Int32 {
                    self.columnIsSamples = value
                }
                if let value = dict["columnSamplesType"] as? Int32 {
                    self.columnSamplesType = value
                }
                if let value = dict["columnSamplesValue"] as? Int32 {
                    self.columnSamplesValue = value
                }
                if let value = dict["columnSizeCmpType"] as? Int32 {
                    self.columnSizeCmpType = value
                }
                if let value = dict["columnSizeCmpValues"] as? String {
                    self.columnSizeCmpValues = value
                }
                if let value = dict["isPrimaryKeyCheck"] as? Int32 {
                    self.isPrimaryKeyCheck = value
                }
                if let value = dict["lineCheckType"] as? Int32 {
                    self.lineCheckType = value
                }
                if let value = dict["lineIsPrintAll"] as? Int32 {
                    self.lineIsPrintAll = value
                }
                if let value = dict["lineIsSamples"] as? Int32 {
                    self.lineIsSamples = value
                }
                if let value = dict["lineSamplesType"] as? Int32 {
                    self.lineSamplesType = value
                }
                if let value = dict["lineSamplesValue"] as? Int32 {
                    self.lineSamplesValue = value
                }
                if let value = dict["ruleId"] as? String {
                    self.ruleId = value
                }
            }
        }
        public class MetricRules : Tea.TeaModel {
            public var checkMethods: String?

            public var dataTypeClassify: Int32?

            public var dataTypeGroup: Int32?

            public var dataTypeList: [String]?

            public var dataTypes: String?

            public var diffTolerateType: Int32?

            public var diffTolerateValues: [String: Any]?

            public var enableDecimalScale: Int32?

            public var filterColumnName: String?

            public var ignoreDecimalScaleSuffixZero: Int32?

            public var ignoreNumericZero: Int32?

            public var ignoreStringEmpty: Int32?

            public var isCountCheck: Int32?

            public var ruleId: String?

            public var setDecimalScale: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.checkMethods != nil {
                    map["checkMethods"] = self.checkMethods!
                }
                if self.dataTypeClassify != nil {
                    map["dataTypeClassify"] = self.dataTypeClassify!
                }
                if self.dataTypeGroup != nil {
                    map["dataTypeGroup"] = self.dataTypeGroup!
                }
                if self.dataTypeList != nil {
                    map["dataTypeList"] = self.dataTypeList!
                }
                if self.dataTypes != nil {
                    map["dataTypes"] = self.dataTypes!
                }
                if self.diffTolerateType != nil {
                    map["diffTolerateType"] = self.diffTolerateType!
                }
                if self.diffTolerateValues != nil {
                    map["diffTolerateValues"] = self.diffTolerateValues!
                }
                if self.enableDecimalScale != nil {
                    map["enableDecimalScale"] = self.enableDecimalScale!
                }
                if self.filterColumnName != nil {
                    map["filterColumnName"] = self.filterColumnName!
                }
                if self.ignoreDecimalScaleSuffixZero != nil {
                    map["ignoreDecimalScaleSuffixZero"] = self.ignoreDecimalScaleSuffixZero!
                }
                if self.ignoreNumericZero != nil {
                    map["ignoreNumericZero"] = self.ignoreNumericZero!
                }
                if self.ignoreStringEmpty != nil {
                    map["ignoreStringEmpty"] = self.ignoreStringEmpty!
                }
                if self.isCountCheck != nil {
                    map["isCountCheck"] = self.isCountCheck!
                }
                if self.ruleId != nil {
                    map["ruleId"] = self.ruleId!
                }
                if self.setDecimalScale != nil {
                    map["setDecimalScale"] = self.setDecimalScale!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["checkMethods"] as? String {
                    self.checkMethods = value
                }
                if let value = dict["dataTypeClassify"] as? Int32 {
                    self.dataTypeClassify = value
                }
                if let value = dict["dataTypeGroup"] as? Int32 {
                    self.dataTypeGroup = value
                }
                if let value = dict["dataTypeList"] as? [String] {
                    self.dataTypeList = value
                }
                if let value = dict["dataTypes"] as? String {
                    self.dataTypes = value
                }
                if let value = dict["diffTolerateType"] as? Int32 {
                    self.diffTolerateType = value
                }
                if let value = dict["diffTolerateValues"] as? [String: Any] {
                    self.diffTolerateValues = value
                }
                if let value = dict["enableDecimalScale"] as? Int32 {
                    self.enableDecimalScale = value
                }
                if let value = dict["filterColumnName"] as? String {
                    self.filterColumnName = value
                }
                if let value = dict["ignoreDecimalScaleSuffixZero"] as? Int32 {
                    self.ignoreDecimalScaleSuffixZero = value
                }
                if let value = dict["ignoreNumericZero"] as? Int32 {
                    self.ignoreNumericZero = value
                }
                if let value = dict["ignoreStringEmpty"] as? Int32 {
                    self.ignoreStringEmpty = value
                }
                if let value = dict["isCountCheck"] as? Int32 {
                    self.isCountCheck = value
                }
                if let value = dict["ruleId"] as? String {
                    self.ruleId = value
                }
                if let value = dict["setDecimalScale"] as? Int32 {
                    self.setDecimalScale = value
                }
            }
        }
        public class NullRules : Tea.TeaModel {
            public var dataTypeGroup: Int32?

            public var nullValues: String?

            public var ruleId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.dataTypeGroup != nil {
                    map["dataTypeGroup"] = self.dataTypeGroup!
                }
                if self.nullValues != nil {
                    map["nullValues"] = self.nullValues!
                }
                if self.ruleId != nil {
                    map["ruleId"] = self.ruleId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["dataTypeGroup"] as? Int32 {
                    self.dataTypeGroup = value
                }
                if let value = dict["nullValues"] as? String {
                    self.nullValues = value
                }
                if let value = dict["ruleId"] as? String {
                    self.ruleId = value
                }
            }
        }
        public class WeakContentRule : Tea.TeaModel {
            public var filterColumnExpression: String?

            public var filterColumnTypes: [String]?

            public var ruleId: String?

            public var weakContentAlgorithm: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.filterColumnExpression != nil {
                    map["filterColumnExpression"] = self.filterColumnExpression!
                }
                if self.filterColumnTypes != nil {
                    map["filterColumnTypes"] = self.filterColumnTypes!
                }
                if self.ruleId != nil {
                    map["ruleId"] = self.ruleId!
                }
                if self.weakContentAlgorithm != nil {
                    map["weakContentAlgorithm"] = self.weakContentAlgorithm!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["filterColumnExpression"] as? String {
                    self.filterColumnExpression = value
                }
                if let value = dict["filterColumnTypes"] as? [String] {
                    self.filterColumnTypes = value
                }
                if let value = dict["ruleId"] as? String {
                    self.ruleId = value
                }
                if let value = dict["weakContentAlgorithm"] as? String {
                    self.weakContentAlgorithm = value
                }
            }
        }
        public var basicMetricRules: [GetDataCheckTemplateResponseBody.Data.BasicMetricRules]?

        public var checkType: Int32?

        public var checkTypeExport: String?

        public var checkTypeName: Int32?

        public var complexMetricRules: [GetDataCheckTemplateResponseBody.Data.ComplexMetricRules]?

        public var dsEngineRels: [GetDataCheckTemplateResponseBody.Data.DsEngineRels]?

        public var fulltextRule: GetDataCheckTemplateResponseBody.Data.FulltextRule?

        public var metricRules: [GetDataCheckTemplateResponseBody.Data.MetricRules]?

        public var nullRules: [GetDataCheckTemplateResponseBody.Data.NullRules]?

        public var templateDesc: String?

        public var templateId: String?

        public var templateName: String?

        public var weakContentRule: GetDataCheckTemplateResponseBody.Data.WeakContentRule?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.fulltextRule?.validate()
            try self.weakContentRule?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.basicMetricRules != nil {
                var tmp : [Any] = []
                for k in self.basicMetricRules! {
                    tmp.append(k.toMap())
                }
                map["basicMetricRules"] = tmp
            }
            if self.checkType != nil {
                map["checkType"] = self.checkType!
            }
            if self.checkTypeExport != nil {
                map["checkTypeExport"] = self.checkTypeExport!
            }
            if self.checkTypeName != nil {
                map["checkTypeName"] = self.checkTypeName!
            }
            if self.complexMetricRules != nil {
                var tmp : [Any] = []
                for k in self.complexMetricRules! {
                    tmp.append(k.toMap())
                }
                map["complexMetricRules"] = tmp
            }
            if self.dsEngineRels != nil {
                var tmp : [Any] = []
                for k in self.dsEngineRels! {
                    tmp.append(k.toMap())
                }
                map["dsEngineRels"] = tmp
            }
            if self.fulltextRule != nil {
                map["fulltextRule"] = self.fulltextRule?.toMap()
            }
            if self.metricRules != nil {
                var tmp : [Any] = []
                for k in self.metricRules! {
                    tmp.append(k.toMap())
                }
                map["metricRules"] = tmp
            }
            if self.nullRules != nil {
                var tmp : [Any] = []
                for k in self.nullRules! {
                    tmp.append(k.toMap())
                }
                map["nullRules"] = tmp
            }
            if self.templateDesc != nil {
                map["templateDesc"] = self.templateDesc!
            }
            if self.templateId != nil {
                map["templateId"] = self.templateId!
            }
            if self.templateName != nil {
                map["templateName"] = self.templateName!
            }
            if self.weakContentRule != nil {
                map["weakContentRule"] = self.weakContentRule?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["basicMetricRules"] as? [Any?] {
                var tmp : [GetDataCheckTemplateResponseBody.Data.BasicMetricRules] = []
                for v in value {
                    if v != nil {
                        var model = GetDataCheckTemplateResponseBody.Data.BasicMetricRules()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.basicMetricRules = tmp
            }
            if let value = dict["checkType"] as? Int32 {
                self.checkType = value
            }
            if let value = dict["checkTypeExport"] as? String {
                self.checkTypeExport = value
            }
            if let value = dict["checkTypeName"] as? Int32 {
                self.checkTypeName = value
            }
            if let value = dict["complexMetricRules"] as? [Any?] {
                var tmp : [GetDataCheckTemplateResponseBody.Data.ComplexMetricRules] = []
                for v in value {
                    if v != nil {
                        var model = GetDataCheckTemplateResponseBody.Data.ComplexMetricRules()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.complexMetricRules = tmp
            }
            if let value = dict["dsEngineRels"] as? [Any?] {
                var tmp : [GetDataCheckTemplateResponseBody.Data.DsEngineRels] = []
                for v in value {
                    if v != nil {
                        var model = GetDataCheckTemplateResponseBody.Data.DsEngineRels()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.dsEngineRels = tmp
            }
            if let value = dict["fulltextRule"] as? [String: Any?] {
                var model = GetDataCheckTemplateResponseBody.Data.FulltextRule()
                model.fromMap(value)
                self.fulltextRule = model
            }
            if let value = dict["metricRules"] as? [Any?] {
                var tmp : [GetDataCheckTemplateResponseBody.Data.MetricRules] = []
                for v in value {
                    if v != nil {
                        var model = GetDataCheckTemplateResponseBody.Data.MetricRules()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.metricRules = tmp
            }
            if let value = dict["nullRules"] as? [Any?] {
                var tmp : [GetDataCheckTemplateResponseBody.Data.NullRules] = []
                for v in value {
                    if v != nil {
                        var model = GetDataCheckTemplateResponseBody.Data.NullRules()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.nullRules = tmp
            }
            if let value = dict["templateDesc"] as? String {
                self.templateDesc = value
            }
            if let value = dict["templateId"] as? String {
                self.templateId = value
            }
            if let value = dict["templateName"] as? String {
                self.templateName = value
            }
            if let value = dict["weakContentRule"] as? [String: Any?] {
                var model = GetDataCheckTemplateResponseBody.Data.WeakContentRule()
                model.fromMap(value)
                self.weakContentRule = model
            }
        }
    }
    public var data: GetDataCheckTemplateResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

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
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetDataCheckTemplateResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class GetDataCheckTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDataCheckTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetDataCheckTemplateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDataCheckTemplateListRequest : Tea.TeaModel {
    public var checkType: Int32?

    public var groupBy: String?

    public var idList: [String]?

    public var isAdmin: Bool?

    public var isBuiltin: Int32?

    public var needTotalCount: Bool?

    public var orderBy: String?

    public var orderDirection: String?

    public var pageIndex: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var templateName: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.checkType != nil {
            map["checkType"] = self.checkType!
        }
        if self.groupBy != nil {
            map["groupBy"] = self.groupBy!
        }
        if self.idList != nil {
            map["idList"] = self.idList!
        }
        if self.isAdmin != nil {
            map["isAdmin"] = self.isAdmin!
        }
        if self.isBuiltin != nil {
            map["isBuiltin"] = self.isBuiltin!
        }
        if self.needTotalCount != nil {
            map["needTotalCount"] = self.needTotalCount!
        }
        if self.orderBy != nil {
            map["orderBy"] = self.orderBy!
        }
        if self.orderDirection != nil {
            map["orderDirection"] = self.orderDirection!
        }
        if self.pageIndex != nil {
            map["pageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.templateName != nil {
            map["templateName"] = self.templateName!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["checkType"] as? Int32 {
            self.checkType = value
        }
        if let value = dict["groupBy"] as? String {
            self.groupBy = value
        }
        if let value = dict["idList"] as? [String] {
            self.idList = value
        }
        if let value = dict["isAdmin"] as? Bool {
            self.isAdmin = value
        }
        if let value = dict["isBuiltin"] as? Int32 {
            self.isBuiltin = value
        }
        if let value = dict["needTotalCount"] as? Bool {
            self.needTotalCount = value
        }
        if let value = dict["orderBy"] as? String {
            self.orderBy = value
        }
        if let value = dict["orderDirection"] as? String {
            self.orderDirection = value
        }
        if let value = dict["pageIndex"] as? Int32 {
            self.pageIndex = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["templateName"] as? String {
            self.templateName = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class GetDataCheckTemplateListShrinkRequest : Tea.TeaModel {
    public var checkType: Int32?

    public var groupBy: String?

    public var idListShrink: String?

    public var isAdmin: Bool?

    public var isBuiltin: Int32?

    public var needTotalCount: Bool?

    public var orderBy: String?

    public var orderDirection: String?

    public var pageIndex: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var templateName: String?

    public var tenantId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.checkType != nil {
            map["checkType"] = self.checkType!
        }
        if self.groupBy != nil {
            map["groupBy"] = self.groupBy!
        }
        if self.idListShrink != nil {
            map["idList"] = self.idListShrink!
        }
        if self.isAdmin != nil {
            map["isAdmin"] = self.isAdmin!
        }
        if self.isBuiltin != nil {
            map["isBuiltin"] = self.isBuiltin!
        }
        if self.needTotalCount != nil {
            map["needTotalCount"] = self.needTotalCount!
        }
        if self.orderBy != nil {
            map["orderBy"] = self.orderBy!
        }
        if self.orderDirection != nil {
            map["orderDirection"] = self.orderDirection!
        }
        if self.pageIndex != nil {
            map["pageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.templateName != nil {
            map["templateName"] = self.templateName!
        }
        if self.tenantId != nil {
            map["tenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["checkType"] as? Int32 {
            self.checkType = value
        }
        if let value = dict["groupBy"] as? String {
            self.groupBy = value
        }
        if let value = dict["idList"] as? String {
            self.idListShrink = value
        }
        if let value = dict["isAdmin"] as? Bool {
            self.isAdmin = value
        }
        if let value = dict["isBuiltin"] as? Int32 {
            self.isBuiltin = value
        }
        if let value = dict["needTotalCount"] as? Bool {
            self.needTotalCount = value
        }
        if let value = dict["orderBy"] as? String {
            self.orderBy = value
        }
        if let value = dict["orderDirection"] as? String {
            self.orderDirection = value
        }
        if let value = dict["pageIndex"] as? Int32 {
            self.pageIndex = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["templateName"] as? String {
            self.templateName = value
        }
        if let value = dict["tenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class GetDataCheckTemplateListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var checkType: Int32?

        public var checkTypeExport: String?

        public var checkTypeName: Int32?

        public var dsTypes: String?

        public var engineTypes: String?

        public var gmtModified: String?

        public var isBuiltin: Int32?

        public var isUsedByTask: Bool?

        public var templateDesc: String?

        public var templateId: String?

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
            if self.checkType != nil {
                map["checkType"] = self.checkType!
            }
            if self.checkTypeExport != nil {
                map["checkTypeExport"] = self.checkTypeExport!
            }
            if self.checkTypeName != nil {
                map["checkTypeName"] = self.checkTypeName!
            }
            if self.dsTypes != nil {
                map["dsTypes"] = self.dsTypes!
            }
            if self.engineTypes != nil {
                map["engineTypes"] = self.engineTypes!
            }
            if self.gmtModified != nil {
                map["gmtModified"] = self.gmtModified!
            }
            if self.isBuiltin != nil {
                map["isBuiltin"] = self.isBuiltin!
            }
            if self.isUsedByTask != nil {
                map["isUsedByTask"] = self.isUsedByTask!
            }
            if self.templateDesc != nil {
                map["templateDesc"] = self.templateDesc!
            }
            if self.templateId != nil {
                map["templateId"] = self.templateId!
            }
            if self.templateName != nil {
                map["templateName"] = self.templateName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["checkType"] as? Int32 {
                self.checkType = value
            }
            if let value = dict["checkTypeExport"] as? String {
                self.checkTypeExport = value
            }
            if let value = dict["checkTypeName"] as? Int32 {
                self.checkTypeName = value
            }
            if let value = dict["dsTypes"] as? String {
                self.dsTypes = value
            }
            if let value = dict["engineTypes"] as? String {
                self.engineTypes = value
            }
            if let value = dict["gmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["isBuiltin"] as? Int32 {
                self.isBuiltin = value
            }
            if let value = dict["isUsedByTask"] as? Bool {
                self.isUsedByTask = value
            }
            if let value = dict["templateDesc"] as? String {
                self.templateDesc = value
            }
            if let value = dict["templateId"] as? String {
                self.templateId = value
            }
            if let value = dict["templateName"] as? String {
                self.templateName = value
            }
        }
    }
    public var data: [GetDataCheckTemplateListResponseBody.Data]?

    public var errCode: String?

    public var errMessage: String?

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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [Any?] {
            var tmp : [GetDataCheckTemplateListResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = GetDataCheckTemplateListResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class GetDataCheckTemplateListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDataCheckTemplateListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetDataCheckTemplateListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetInnerConvertAsyncResultRequest : Tea.TeaModel {
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
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["taskId"] as? String {
            self.taskId = value
        }
    }
}

public class GetInnerConvertAsyncResultResponseBody : Tea.TeaModel {
    public var data: String?

    public var errCode: String?

    public var errMessage: String?

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
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? String {
            self.data = value
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? String {
            self.success = value
        }
    }
}

public class GetInnerConvertAsyncResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetInnerConvertAsyncResultResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetInnerConvertAsyncResultResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetInnerReadAsyncResultRequest : Tea.TeaModel {
    public var dataSourceName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataSourceName != nil {
            map["dataSourceName"] = self.dataSourceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["dataSourceName"] as? String {
            self.dataSourceName = value
        }
    }
}

public class GetInnerReadAsyncResultResponseBody : Tea.TeaModel {
    public var data: String?

    public var errCode: String?

    public var errMessage: String?

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
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? String {
            self.data = value
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? String {
            self.success = value
        }
    }
}

public class GetInnerReadAsyncResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetInnerReadAsyncResultResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetInnerReadAsyncResultResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetLhmAgentStatusRequest : Tea.TeaModel {
    public var agentType: Int32?

    public var skillName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentType != nil {
            map["agentType"] = self.agentType!
        }
        if self.skillName != nil {
            map["skillName"] = self.skillName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["agentType"] as? Int32 {
            self.agentType = value
        }
        if let value = dict["skillName"] as? String {
            self.skillName = value
        }
    }
}

public class GetLhmAgentStatusResponseBody : Tea.TeaModel {
    public var data: String?

    public var errCode: String?

    public var errMessage: String?

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
            map["data"] = self.data!
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? String {
            self.data = value
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class GetLhmAgentStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetLhmAgentStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetLhmAgentStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetLhmDWResourceGroupStatusRequest : Tea.TeaModel {
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
            map["regionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["regionId"] as? String {
            self.regionId = value
        }
    }
}

public class GetLhmDWResourceGroupStatusResponseBody : Tea.TeaModel {
    public var data: String?

    public var errCode: String?

    public var errMessage: String?

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
            map["data"] = self.data!
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? String {
            self.data = value
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class GetLhmDWResourceGroupStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetLhmDWResourceGroupStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetLhmDWResourceGroupStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetMetaOssTempKeyRequest : Tea.TeaModel {

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
    }
}

public class GetMetaOssTempKeyResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var ak: String?

        public var bucket: String?

        public var dir: String?

        public var endpoint: String?

        public var expire: Int64?

        public var policy: String?

        public var securityToken: String?

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
            if self.ak != nil {
                map["ak"] = self.ak!
            }
            if self.bucket != nil {
                map["bucket"] = self.bucket!
            }
            if self.dir != nil {
                map["dir"] = self.dir!
            }
            if self.endpoint != nil {
                map["endpoint"] = self.endpoint!
            }
            if self.expire != nil {
                map["expire"] = self.expire!
            }
            if self.policy != nil {
                map["policy"] = self.policy!
            }
            if self.securityToken != nil {
                map["securityToken"] = self.securityToken!
            }
            if self.signature != nil {
                map["signature"] = self.signature!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ak"] as? String {
                self.ak = value
            }
            if let value = dict["bucket"] as? String {
                self.bucket = value
            }
            if let value = dict["dir"] as? String {
                self.dir = value
            }
            if let value = dict["endpoint"] as? String {
                self.endpoint = value
            }
            if let value = dict["expire"] as? Int64 {
                self.expire = value
            }
            if let value = dict["policy"] as? String {
                self.policy = value
            }
            if let value = dict["securityToken"] as? String {
                self.securityToken = value
            }
            if let value = dict["signature"] as? String {
                self.signature = value
            }
        }
    }
    public var data: GetMetaOssTempKeyResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

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
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetMetaOssTempKeyResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class GetMetaOssTempKeyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetMetaOssTempKeyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetMetaOssTempKeyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetSqlConversionProgressRequest : Tea.TeaModel {
    public var taskId: Int64?

    public override init() {
        super.init()
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
            map["taskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["taskId"] as? Int64 {
            self.taskId = value
        }
    }
}

public class GetSqlConversionProgressResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var fail: Int64?

        public var finish: Int64?

        public var percent: Double?

        public var running: Int64?

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
            if self.fail != nil {
                map["fail"] = self.fail!
            }
            if self.finish != nil {
                map["finish"] = self.finish!
            }
            if self.percent != nil {
                map["percent"] = self.percent!
            }
            if self.running != nil {
                map["running"] = self.running!
            }
            if self.total != nil {
                map["total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["fail"] as? Int64 {
                self.fail = value
            }
            if let value = dict["finish"] as? Int64 {
                self.finish = value
            }
            if let value = dict["percent"] as? Double {
                self.percent = value
            }
            if let value = dict["running"] as? Int64 {
                self.running = value
            }
            if let value = dict["total"] as? Int64 {
                self.total = value
            }
        }
    }
    public var data: GetSqlConversionProgressResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

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
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetSqlConversionProgressResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class GetSqlConversionProgressResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSqlConversionProgressResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetSqlConversionProgressResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetSqlConversionResultRequest : Tea.TeaModel {
    public var page: Int32?

    public var size: Int32?

    public var taskId: Int64?

    public override init() {
        super.init()
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
            map["page"] = self.page!
        }
        if self.size != nil {
            map["size"] = self.size!
        }
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["page"] as? Int32 {
            self.page = value
        }
        if let value = dict["size"] as? Int32 {
            self.size = value
        }
        if let value = dict["taskId"] as? Int64 {
            self.taskId = value
        }
    }
}

public class GetSqlConversionResultResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class TableMappingList : Tea.TeaModel {
            public var id: Int64?

            public var sourceSchema: String?

            public var sourceTableName: String?

            public var targetTableName: String?

            public var targetType: String?

            public var taskId: Int64?

            public var tenantId: String?

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
                if self.id != nil {
                    map["id"] = self.id!
                }
                if self.sourceSchema != nil {
                    map["sourceSchema"] = self.sourceSchema!
                }
                if self.sourceTableName != nil {
                    map["sourceTableName"] = self.sourceTableName!
                }
                if self.targetTableName != nil {
                    map["targetTableName"] = self.targetTableName!
                }
                if self.targetType != nil {
                    map["targetType"] = self.targetType!
                }
                if self.taskId != nil {
                    map["taskId"] = self.taskId!
                }
                if self.tenantId != nil {
                    map["tenantId"] = self.tenantId!
                }
                if self.uid != nil {
                    map["uid"] = self.uid!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["id"] as? Int64 {
                    self.id = value
                }
                if let value = dict["sourceSchema"] as? String {
                    self.sourceSchema = value
                }
                if let value = dict["sourceTableName"] as? String {
                    self.sourceTableName = value
                }
                if let value = dict["targetTableName"] as? String {
                    self.targetTableName = value
                }
                if let value = dict["targetType"] as? String {
                    self.targetType = value
                }
                if let value = dict["taskId"] as? Int64 {
                    self.taskId = value
                }
                if let value = dict["tenantId"] as? String {
                    self.tenantId = value
                }
                if let value = dict["uid"] as? String {
                    self.uid = value
                }
            }
        }
        public var errorMessage: String?

        public var finishTime: String?

        public var scriptId: Int64?

        public var scriptName: String?

        public var scriptTransformStatus: String?

        public var sqlResultContent: String?

        public var sqlSourceContent: String?

        public var tableMappingList: [GetSqlConversionResultResponseBody.Data.TableMappingList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.errorMessage != nil {
                map["errorMessage"] = self.errorMessage!
            }
            if self.finishTime != nil {
                map["finishTime"] = self.finishTime!
            }
            if self.scriptId != nil {
                map["scriptId"] = self.scriptId!
            }
            if self.scriptName != nil {
                map["scriptName"] = self.scriptName!
            }
            if self.scriptTransformStatus != nil {
                map["scriptTransformStatus"] = self.scriptTransformStatus!
            }
            if self.sqlResultContent != nil {
                map["sqlResultContent"] = self.sqlResultContent!
            }
            if self.sqlSourceContent != nil {
                map["sqlSourceContent"] = self.sqlSourceContent!
            }
            if self.tableMappingList != nil {
                var tmp : [Any] = []
                for k in self.tableMappingList! {
                    tmp.append(k.toMap())
                }
                map["tableMappingList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["errorMessage"] as? String {
                self.errorMessage = value
            }
            if let value = dict["finishTime"] as? String {
                self.finishTime = value
            }
            if let value = dict["scriptId"] as? Int64 {
                self.scriptId = value
            }
            if let value = dict["scriptName"] as? String {
                self.scriptName = value
            }
            if let value = dict["scriptTransformStatus"] as? String {
                self.scriptTransformStatus = value
            }
            if let value = dict["sqlResultContent"] as? String {
                self.sqlResultContent = value
            }
            if let value = dict["sqlSourceContent"] as? String {
                self.sqlSourceContent = value
            }
            if let value = dict["tableMappingList"] as? [Any?] {
                var tmp : [GetSqlConversionResultResponseBody.Data.TableMappingList] = []
                for v in value {
                    if v != nil {
                        var model = GetSqlConversionResultResponseBody.Data.TableMappingList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tableMappingList = tmp
            }
        }
    }
    public var data: [GetSqlConversionResultResponseBody.Data]?

    public var errCode: String?

    public var errMessage: String?

    public var pageIndex: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

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
            map["data"] = tmp
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.pageIndex != nil {
            map["pageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [Any?] {
            var tmp : [GetSqlConversionResultResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = GetSqlConversionResultResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["pageIndex"] as? Int32 {
            self.pageIndex = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["totalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class GetSqlConversionResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSqlConversionResultResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetSqlConversionResultResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetSqlTableLineageRequest : Tea.TeaModel {
    public var defaultSchema: String?

    public var dialect: String?

    public var sourceSqlScriptBase64: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.defaultSchema != nil {
            map["defaultSchema"] = self.defaultSchema!
        }
        if self.dialect != nil {
            map["dialect"] = self.dialect!
        }
        if self.sourceSqlScriptBase64 != nil {
            map["sourceSqlScriptBase64"] = self.sourceSqlScriptBase64!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["defaultSchema"] as? String {
            self.defaultSchema = value
        }
        if let value = dict["dialect"] as? String {
            self.dialect = value
        }
        if let value = dict["sourceSqlScriptBase64"] as? String {
            self.sourceSqlScriptBase64 = value
        }
    }
}

public class GetSqlTableLineageResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var downstreamTables: [String]?

        public var errorMsg: String?

        public var success: Bool?

        public var upstreamTables: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.downstreamTables != nil {
                map["downstreamTables"] = self.downstreamTables!
            }
            if self.errorMsg != nil {
                map["errorMsg"] = self.errorMsg!
            }
            if self.success != nil {
                map["success"] = self.success!
            }
            if self.upstreamTables != nil {
                map["upstreamTables"] = self.upstreamTables!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["downstreamTables"] as? [String] {
                self.downstreamTables = value
            }
            if let value = dict["errorMsg"] as? String {
                self.errorMsg = value
            }
            if let value = dict["success"] as? Bool {
                self.success = value
            }
            if let value = dict["upstreamTables"] as? [String] {
                self.upstreamTables = value
            }
        }
    }
    public var data: GetSqlTableLineageResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

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
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetSqlTableLineageResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class GetSqlTableLineageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSqlTableLineageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetSqlTableLineageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetSqlTransTableMetaInfoRequest : Tea.TeaModel {
    public var sourceDialect: String?

    public var sourceSqlScript: String?

    public var targetDialect: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.sourceDialect != nil {
            map["sourceDialect"] = self.sourceDialect!
        }
        if self.sourceSqlScript != nil {
            map["sourceSqlScript"] = self.sourceSqlScript!
        }
        if self.targetDialect != nil {
            map["targetDialect"] = self.targetDialect!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["sourceDialect"] as? String {
            self.sourceDialect = value
        }
        if let value = dict["sourceSqlScript"] as? String {
            self.sourceSqlScript = value
        }
        if let value = dict["targetDialect"] as? String {
            self.targetDialect = value
        }
    }
}

public class GetSqlTransTableMetaInfoResponseBody : Tea.TeaModel {
    public var data: [String]?

    public var errCode: String?

    public var errMessage: String?

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
            map["data"] = self.data!
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String] {
            self.data = value
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class GetSqlTransTableMetaInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSqlTransTableMetaInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetSqlTransTableMetaInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetStepResultOverviewRequest : Tea.TeaModel {
    public var resultId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.resultId != nil {
            map["resultId"] = self.resultId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["resultId"] as? String {
            self.resultId = value
        }
    }
}

public class GetStepResultOverviewResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var checkColumnCount: Int64?

        public var dstMetricName: String?

        public var isConsistent: Int32?

        public var metricColumnCount: Int64?

        public var metricPassColumnCount: Int64?

        public var passColumnCount: Int64?

        public var resultId: String?

        public var sourcePtName: String?

        public var sourceTable: String?

        public var srcMetricName: String?

        public var status: Int32?

        public var targetPtName: String?

        public var targetTable: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.checkColumnCount != nil {
                map["checkColumnCount"] = self.checkColumnCount!
            }
            if self.dstMetricName != nil {
                map["dstMetricName"] = self.dstMetricName!
            }
            if self.isConsistent != nil {
                map["isConsistent"] = self.isConsistent!
            }
            if self.metricColumnCount != nil {
                map["metricColumnCount"] = self.metricColumnCount!
            }
            if self.metricPassColumnCount != nil {
                map["metricPassColumnCount"] = self.metricPassColumnCount!
            }
            if self.passColumnCount != nil {
                map["passColumnCount"] = self.passColumnCount!
            }
            if self.resultId != nil {
                map["resultId"] = self.resultId!
            }
            if self.sourcePtName != nil {
                map["sourcePtName"] = self.sourcePtName!
            }
            if self.sourceTable != nil {
                map["sourceTable"] = self.sourceTable!
            }
            if self.srcMetricName != nil {
                map["srcMetricName"] = self.srcMetricName!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.targetPtName != nil {
                map["targetPtName"] = self.targetPtName!
            }
            if self.targetTable != nil {
                map["targetTable"] = self.targetTable!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["checkColumnCount"] as? Int64 {
                self.checkColumnCount = value
            }
            if let value = dict["dstMetricName"] as? String {
                self.dstMetricName = value
            }
            if let value = dict["isConsistent"] as? Int32 {
                self.isConsistent = value
            }
            if let value = dict["metricColumnCount"] as? Int64 {
                self.metricColumnCount = value
            }
            if let value = dict["metricPassColumnCount"] as? Int64 {
                self.metricPassColumnCount = value
            }
            if let value = dict["passColumnCount"] as? Int64 {
                self.passColumnCount = value
            }
            if let value = dict["resultId"] as? String {
                self.resultId = value
            }
            if let value = dict["sourcePtName"] as? String {
                self.sourcePtName = value
            }
            if let value = dict["sourceTable"] as? String {
                self.sourceTable = value
            }
            if let value = dict["srcMetricName"] as? String {
                self.srcMetricName = value
            }
            if let value = dict["status"] as? Int32 {
                self.status = value
            }
            if let value = dict["targetPtName"] as? String {
                self.targetPtName = value
            }
            if let value = dict["targetTable"] as? String {
                self.targetTable = value
            }
        }
    }
    public var data: GetStepResultOverviewResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

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
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetStepResultOverviewResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class GetStepResultOverviewResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetStepResultOverviewResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetStepResultOverviewResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListDataCheckColumnResultsRequest : Tea.TeaModel {
    public var pageIndex: Int32?

    public var pageSize: Int32?

    public var resultId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageIndex != nil {
            map["pageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.resultId != nil {
            map["resultId"] = self.resultId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["pageIndex"] as? Int32 {
            self.pageIndex = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["resultId"] as? String {
            self.resultId = value
        }
    }
}

public class ListDataCheckColumnResultsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var actualThreshold: String?

        public var checkResult: Int32?

        public var checkRule: String?

        public var dstAlias: String?

        public var dstColumnName: String?

        public var dstColumnType: String?

        public var dstMetricColumn: String?

        public var dstResult: String?

        public var expectThreshold: String?

        public var isConsistent: Int32?

        public var srcAlias: String?

        public var srcColumnName: String?

        public var srcColumnType: String?

        public var srcMetricColumn: String?

        public var srcResult: String?

        public var stepId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.actualThreshold != nil {
                map["actualThreshold"] = self.actualThreshold!
            }
            if self.checkResult != nil {
                map["checkResult"] = self.checkResult!
            }
            if self.checkRule != nil {
                map["checkRule"] = self.checkRule!
            }
            if self.dstAlias != nil {
                map["dstAlias"] = self.dstAlias!
            }
            if self.dstColumnName != nil {
                map["dstColumnName"] = self.dstColumnName!
            }
            if self.dstColumnType != nil {
                map["dstColumnType"] = self.dstColumnType!
            }
            if self.dstMetricColumn != nil {
                map["dstMetricColumn"] = self.dstMetricColumn!
            }
            if self.dstResult != nil {
                map["dstResult"] = self.dstResult!
            }
            if self.expectThreshold != nil {
                map["expectThreshold"] = self.expectThreshold!
            }
            if self.isConsistent != nil {
                map["isConsistent"] = self.isConsistent!
            }
            if self.srcAlias != nil {
                map["srcAlias"] = self.srcAlias!
            }
            if self.srcColumnName != nil {
                map["srcColumnName"] = self.srcColumnName!
            }
            if self.srcColumnType != nil {
                map["srcColumnType"] = self.srcColumnType!
            }
            if self.srcMetricColumn != nil {
                map["srcMetricColumn"] = self.srcMetricColumn!
            }
            if self.srcResult != nil {
                map["srcResult"] = self.srcResult!
            }
            if self.stepId != nil {
                map["stepId"] = self.stepId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["actualThreshold"] as? String {
                self.actualThreshold = value
            }
            if let value = dict["checkResult"] as? Int32 {
                self.checkResult = value
            }
            if let value = dict["checkRule"] as? String {
                self.checkRule = value
            }
            if let value = dict["dstAlias"] as? String {
                self.dstAlias = value
            }
            if let value = dict["dstColumnName"] as? String {
                self.dstColumnName = value
            }
            if let value = dict["dstColumnType"] as? String {
                self.dstColumnType = value
            }
            if let value = dict["dstMetricColumn"] as? String {
                self.dstMetricColumn = value
            }
            if let value = dict["dstResult"] as? String {
                self.dstResult = value
            }
            if let value = dict["expectThreshold"] as? String {
                self.expectThreshold = value
            }
            if let value = dict["isConsistent"] as? Int32 {
                self.isConsistent = value
            }
            if let value = dict["srcAlias"] as? String {
                self.srcAlias = value
            }
            if let value = dict["srcColumnName"] as? String {
                self.srcColumnName = value
            }
            if let value = dict["srcColumnType"] as? String {
                self.srcColumnType = value
            }
            if let value = dict["srcMetricColumn"] as? String {
                self.srcMetricColumn = value
            }
            if let value = dict["srcResult"] as? String {
                self.srcResult = value
            }
            if let value = dict["stepId"] as? Int64 {
                self.stepId = value
            }
        }
    }
    public var data: [ListDataCheckColumnResultsResponseBody.Data]?

    public var errCode: String?

    public var errMessage: String?

    public var pageIndex: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

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
            map["data"] = tmp
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.pageIndex != nil {
            map["pageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [Any?] {
            var tmp : [ListDataCheckColumnResultsResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListDataCheckColumnResultsResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["pageIndex"] as? Int32 {
            self.pageIndex = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["totalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListDataCheckColumnResultsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDataCheckColumnResultsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListDataCheckColumnResultsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListDataCheckConfigRequest : Tea.TeaModel {
    public var pageIndex: Int32?

    public var pageSize: Int32?

    public var srcTable: String?

    public var taskId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageIndex != nil {
            map["pageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.srcTable != nil {
            map["srcTable"] = self.srcTable!
        }
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["pageIndex"] as? Int32 {
            self.pageIndex = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["srcTable"] as? String {
            self.srcTable = value
        }
        if let value = dict["taskId"] as? Int64 {
            self.taskId = value
        }
    }
}

public class ListDataCheckConfigResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var algorithm: Int32?

        public var batchSize: Int32?

        public var checkType: Int32?

        public var comparator: String?

        public var extra: String?

        public var groupCountThreshold: Double?

        public var id: Int64?

        public var isFullTableCount: Int32?

        public var isSkipped: Int32?

        public var metricType: String?

        public var sourceCheckAllColumn: Int32?

        public var sourceColumns: String?

        public var sourceCompareKey: String?

        public var sourceDataSource: String?

        public var sourceGroupClause: String?

        public var sourceHint: String?

        public var sourceId: String?

        public var sourcePartition: String?

        public var sourceSql: String?

        public var sourceTable: String?

        public var sourceType: String?

        public var sourceWhereClause: String?

        public var targetCheckAllColumn: Int32?

        public var targetColumns: String?

        public var targetCompareKey: String?

        public var targetDataSource: String?

        public var targetGroupClause: String?

        public var targetHint: String?

        public var targetId: String?

        public var targetPartition: String?

        public var targetSql: String?

        public var targetTable: String?

        public var targetType: String?

        public var targetWhereClause: String?

        public var taskConfigInfo: String?

        public var taskId: Int64?

        public var totalCountThreshold: Double?

        public override init() {
            super.init()
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
                map["algorithm"] = self.algorithm!
            }
            if self.batchSize != nil {
                map["batchSize"] = self.batchSize!
            }
            if self.checkType != nil {
                map["checkType"] = self.checkType!
            }
            if self.comparator != nil {
                map["comparator"] = self.comparator!
            }
            if self.extra != nil {
                map["extra"] = self.extra!
            }
            if self.groupCountThreshold != nil {
                map["groupCountThreshold"] = self.groupCountThreshold!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.isFullTableCount != nil {
                map["isFullTableCount"] = self.isFullTableCount!
            }
            if self.isSkipped != nil {
                map["isSkipped"] = self.isSkipped!
            }
            if self.metricType != nil {
                map["metricType"] = self.metricType!
            }
            if self.sourceCheckAllColumn != nil {
                map["sourceCheckAllColumn"] = self.sourceCheckAllColumn!
            }
            if self.sourceColumns != nil {
                map["sourceColumns"] = self.sourceColumns!
            }
            if self.sourceCompareKey != nil {
                map["sourceCompareKey"] = self.sourceCompareKey!
            }
            if self.sourceDataSource != nil {
                map["sourceDataSource"] = self.sourceDataSource!
            }
            if self.sourceGroupClause != nil {
                map["sourceGroupClause"] = self.sourceGroupClause!
            }
            if self.sourceHint != nil {
                map["sourceHint"] = self.sourceHint!
            }
            if self.sourceId != nil {
                map["sourceId"] = self.sourceId!
            }
            if self.sourcePartition != nil {
                map["sourcePartition"] = self.sourcePartition!
            }
            if self.sourceSql != nil {
                map["sourceSql"] = self.sourceSql!
            }
            if self.sourceTable != nil {
                map["sourceTable"] = self.sourceTable!
            }
            if self.sourceType != nil {
                map["sourceType"] = self.sourceType!
            }
            if self.sourceWhereClause != nil {
                map["sourceWhereClause"] = self.sourceWhereClause!
            }
            if self.targetCheckAllColumn != nil {
                map["targetCheckAllColumn"] = self.targetCheckAllColumn!
            }
            if self.targetColumns != nil {
                map["targetColumns"] = self.targetColumns!
            }
            if self.targetCompareKey != nil {
                map["targetCompareKey"] = self.targetCompareKey!
            }
            if self.targetDataSource != nil {
                map["targetDataSource"] = self.targetDataSource!
            }
            if self.targetGroupClause != nil {
                map["targetGroupClause"] = self.targetGroupClause!
            }
            if self.targetHint != nil {
                map["targetHint"] = self.targetHint!
            }
            if self.targetId != nil {
                map["targetId"] = self.targetId!
            }
            if self.targetPartition != nil {
                map["targetPartition"] = self.targetPartition!
            }
            if self.targetSql != nil {
                map["targetSql"] = self.targetSql!
            }
            if self.targetTable != nil {
                map["targetTable"] = self.targetTable!
            }
            if self.targetType != nil {
                map["targetType"] = self.targetType!
            }
            if self.targetWhereClause != nil {
                map["targetWhereClause"] = self.targetWhereClause!
            }
            if self.taskConfigInfo != nil {
                map["taskConfigInfo"] = self.taskConfigInfo!
            }
            if self.taskId != nil {
                map["taskId"] = self.taskId!
            }
            if self.totalCountThreshold != nil {
                map["totalCountThreshold"] = self.totalCountThreshold!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["algorithm"] as? Int32 {
                self.algorithm = value
            }
            if let value = dict["batchSize"] as? Int32 {
                self.batchSize = value
            }
            if let value = dict["checkType"] as? Int32 {
                self.checkType = value
            }
            if let value = dict["comparator"] as? String {
                self.comparator = value
            }
            if let value = dict["extra"] as? String {
                self.extra = value
            }
            if let value = dict["groupCountThreshold"] as? Double {
                self.groupCountThreshold = value
            }
            if let value = dict["id"] as? Int64 {
                self.id = value
            }
            if let value = dict["isFullTableCount"] as? Int32 {
                self.isFullTableCount = value
            }
            if let value = dict["isSkipped"] as? Int32 {
                self.isSkipped = value
            }
            if let value = dict["metricType"] as? String {
                self.metricType = value
            }
            if let value = dict["sourceCheckAllColumn"] as? Int32 {
                self.sourceCheckAllColumn = value
            }
            if let value = dict["sourceColumns"] as? String {
                self.sourceColumns = value
            }
            if let value = dict["sourceCompareKey"] as? String {
                self.sourceCompareKey = value
            }
            if let value = dict["sourceDataSource"] as? String {
                self.sourceDataSource = value
            }
            if let value = dict["sourceGroupClause"] as? String {
                self.sourceGroupClause = value
            }
            if let value = dict["sourceHint"] as? String {
                self.sourceHint = value
            }
            if let value = dict["sourceId"] as? String {
                self.sourceId = value
            }
            if let value = dict["sourcePartition"] as? String {
                self.sourcePartition = value
            }
            if let value = dict["sourceSql"] as? String {
                self.sourceSql = value
            }
            if let value = dict["sourceTable"] as? String {
                self.sourceTable = value
            }
            if let value = dict["sourceType"] as? String {
                self.sourceType = value
            }
            if let value = dict["sourceWhereClause"] as? String {
                self.sourceWhereClause = value
            }
            if let value = dict["targetCheckAllColumn"] as? Int32 {
                self.targetCheckAllColumn = value
            }
            if let value = dict["targetColumns"] as? String {
                self.targetColumns = value
            }
            if let value = dict["targetCompareKey"] as? String {
                self.targetCompareKey = value
            }
            if let value = dict["targetDataSource"] as? String {
                self.targetDataSource = value
            }
            if let value = dict["targetGroupClause"] as? String {
                self.targetGroupClause = value
            }
            if let value = dict["targetHint"] as? String {
                self.targetHint = value
            }
            if let value = dict["targetId"] as? String {
                self.targetId = value
            }
            if let value = dict["targetPartition"] as? String {
                self.targetPartition = value
            }
            if let value = dict["targetSql"] as? String {
                self.targetSql = value
            }
            if let value = dict["targetTable"] as? String {
                self.targetTable = value
            }
            if let value = dict["targetType"] as? String {
                self.targetType = value
            }
            if let value = dict["targetWhereClause"] as? String {
                self.targetWhereClause = value
            }
            if let value = dict["taskConfigInfo"] as? String {
                self.taskConfigInfo = value
            }
            if let value = dict["taskId"] as? Int64 {
                self.taskId = value
            }
            if let value = dict["totalCountThreshold"] as? Double {
                self.totalCountThreshold = value
            }
        }
    }
    public var data: [ListDataCheckConfigResponseBody.Data]?

    public var errCode: String?

    public var errMessage: String?

    public var pageIndex: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

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
            map["data"] = tmp
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.pageIndex != nil {
            map["pageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [Any?] {
            var tmp : [ListDataCheckConfigResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListDataCheckConfigResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["pageIndex"] as? Int32 {
            self.pageIndex = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["totalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListDataCheckConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDataCheckConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListDataCheckConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListDataCheckReportRequest : Tea.TeaModel {
    public var batchId: Int64?

    public var checkResult: Int32?

    public var jobStatus: Int32?

    public var pageIndex: Int32?

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
        if self.batchId != nil {
            map["batchId"] = self.batchId!
        }
        if self.checkResult != nil {
            map["checkResult"] = self.checkResult!
        }
        if self.jobStatus != nil {
            map["jobStatus"] = self.jobStatus!
        }
        if self.pageIndex != nil {
            map["pageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.tableName != nil {
            map["tableName"] = self.tableName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["batchId"] as? Int64 {
            self.batchId = value
        }
        if let value = dict["checkResult"] as? Int32 {
            self.checkResult = value
        }
        if let value = dict["jobStatus"] as? Int32 {
            self.jobStatus = value
        }
        if let value = dict["pageIndex"] as? Int32 {
            self.pageIndex = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["tableName"] as? String {
            self.tableName = value
        }
    }
}

public class ListDataCheckReportResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var batchId: Int64?

        public var checkColumCount: Int64?

        public var checkResult: Int32?

        public var compareRowCount: Int64?

        public var completionRate: String?

        public var diffRate: String?

        public var dstCompareColumn: String?

        public var dstHint: String?

        public var dstMetricName: String?

        public var dstSqlList: [String]?

        public var errorMsg: String?

        public var execTime: String?

        public var expDiffCount: String?

        public var finishTime: String?

        public var isSkipped: Int32?

        public var jobId: String?

        public var jobStatus: Int32?

        public var metricColumCount: Int64?

        public var metricPassColumCount: Int64?

        public var onlyDstCount: Int64?

        public var onlySrcCount: Int64?

        public var passColumCount: Int64?

        public var realDiffCount: Int64?

        public var realSameCount: Int64?

        public var resultId: String?

        public var sourceColumn: String?

        public var sourceCount: String?

        public var sourceDataSource: String?

        public var sourceError: String?

        public var sourceGroupClause: String?

        public var sourcePartition: String?

        public var sourceTable: String?

        public var sourceType: String?

        public var sourceWhereClause: String?

        public var srcCompareColumn: String?

        public var srcHint: String?

        public var srcMetricName: String?

        public var srcSqlList: [String]?

        public var targetColumn: String?

        public var targetCount: String?

        public var targetDataSource: String?

        public var targetError: String?

        public var targetGroupClause: String?

        public var targetPartition: String?

        public var targetTable: String?

        public var targetType: String?

        public var targetWhereClause: String?

        public var taskConfigId: Int64?

        public var templateName: String?

        public var threshold: Double?

        public var totalCountThreshold: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.batchId != nil {
                map["batchId"] = self.batchId!
            }
            if self.checkColumCount != nil {
                map["checkColumCount"] = self.checkColumCount!
            }
            if self.checkResult != nil {
                map["checkResult"] = self.checkResult!
            }
            if self.compareRowCount != nil {
                map["compareRowCount"] = self.compareRowCount!
            }
            if self.completionRate != nil {
                map["completionRate"] = self.completionRate!
            }
            if self.diffRate != nil {
                map["diffRate"] = self.diffRate!
            }
            if self.dstCompareColumn != nil {
                map["dstCompareColumn"] = self.dstCompareColumn!
            }
            if self.dstHint != nil {
                map["dstHint"] = self.dstHint!
            }
            if self.dstMetricName != nil {
                map["dstMetricName"] = self.dstMetricName!
            }
            if self.dstSqlList != nil {
                map["dstSqlList"] = self.dstSqlList!
            }
            if self.errorMsg != nil {
                map["errorMsg"] = self.errorMsg!
            }
            if self.execTime != nil {
                map["execTime"] = self.execTime!
            }
            if self.expDiffCount != nil {
                map["expDiffCount"] = self.expDiffCount!
            }
            if self.finishTime != nil {
                map["finishTime"] = self.finishTime!
            }
            if self.isSkipped != nil {
                map["isSkipped"] = self.isSkipped!
            }
            if self.jobId != nil {
                map["jobId"] = self.jobId!
            }
            if self.jobStatus != nil {
                map["jobStatus"] = self.jobStatus!
            }
            if self.metricColumCount != nil {
                map["metricColumCount"] = self.metricColumCount!
            }
            if self.metricPassColumCount != nil {
                map["metricPassColumCount"] = self.metricPassColumCount!
            }
            if self.onlyDstCount != nil {
                map["onlyDstCount"] = self.onlyDstCount!
            }
            if self.onlySrcCount != nil {
                map["onlySrcCount"] = self.onlySrcCount!
            }
            if self.passColumCount != nil {
                map["passColumCount"] = self.passColumCount!
            }
            if self.realDiffCount != nil {
                map["realDiffCount"] = self.realDiffCount!
            }
            if self.realSameCount != nil {
                map["realSameCount"] = self.realSameCount!
            }
            if self.resultId != nil {
                map["resultId"] = self.resultId!
            }
            if self.sourceColumn != nil {
                map["sourceColumn"] = self.sourceColumn!
            }
            if self.sourceCount != nil {
                map["sourceCount"] = self.sourceCount!
            }
            if self.sourceDataSource != nil {
                map["sourceDataSource"] = self.sourceDataSource!
            }
            if self.sourceError != nil {
                map["sourceError"] = self.sourceError!
            }
            if self.sourceGroupClause != nil {
                map["sourceGroupClause"] = self.sourceGroupClause!
            }
            if self.sourcePartition != nil {
                map["sourcePartition"] = self.sourcePartition!
            }
            if self.sourceTable != nil {
                map["sourceTable"] = self.sourceTable!
            }
            if self.sourceType != nil {
                map["sourceType"] = self.sourceType!
            }
            if self.sourceWhereClause != nil {
                map["sourceWhereClause"] = self.sourceWhereClause!
            }
            if self.srcCompareColumn != nil {
                map["srcCompareColumn"] = self.srcCompareColumn!
            }
            if self.srcHint != nil {
                map["srcHint"] = self.srcHint!
            }
            if self.srcMetricName != nil {
                map["srcMetricName"] = self.srcMetricName!
            }
            if self.srcSqlList != nil {
                map["srcSqlList"] = self.srcSqlList!
            }
            if self.targetColumn != nil {
                map["targetColumn"] = self.targetColumn!
            }
            if self.targetCount != nil {
                map["targetCount"] = self.targetCount!
            }
            if self.targetDataSource != nil {
                map["targetDataSource"] = self.targetDataSource!
            }
            if self.targetError != nil {
                map["targetError"] = self.targetError!
            }
            if self.targetGroupClause != nil {
                map["targetGroupClause"] = self.targetGroupClause!
            }
            if self.targetPartition != nil {
                map["targetPartition"] = self.targetPartition!
            }
            if self.targetTable != nil {
                map["targetTable"] = self.targetTable!
            }
            if self.targetType != nil {
                map["targetType"] = self.targetType!
            }
            if self.targetWhereClause != nil {
                map["targetWhereClause"] = self.targetWhereClause!
            }
            if self.taskConfigId != nil {
                map["taskConfigId"] = self.taskConfigId!
            }
            if self.templateName != nil {
                map["templateName"] = self.templateName!
            }
            if self.threshold != nil {
                map["threshold"] = self.threshold!
            }
            if self.totalCountThreshold != nil {
                map["totalCountThreshold"] = self.totalCountThreshold!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["batchId"] as? Int64 {
                self.batchId = value
            }
            if let value = dict["checkColumCount"] as? Int64 {
                self.checkColumCount = value
            }
            if let value = dict["checkResult"] as? Int32 {
                self.checkResult = value
            }
            if let value = dict["compareRowCount"] as? Int64 {
                self.compareRowCount = value
            }
            if let value = dict["completionRate"] as? String {
                self.completionRate = value
            }
            if let value = dict["diffRate"] as? String {
                self.diffRate = value
            }
            if let value = dict["dstCompareColumn"] as? String {
                self.dstCompareColumn = value
            }
            if let value = dict["dstHint"] as? String {
                self.dstHint = value
            }
            if let value = dict["dstMetricName"] as? String {
                self.dstMetricName = value
            }
            if let value = dict["dstSqlList"] as? [String] {
                self.dstSqlList = value
            }
            if let value = dict["errorMsg"] as? String {
                self.errorMsg = value
            }
            if let value = dict["execTime"] as? String {
                self.execTime = value
            }
            if let value = dict["expDiffCount"] as? String {
                self.expDiffCount = value
            }
            if let value = dict["finishTime"] as? String {
                self.finishTime = value
            }
            if let value = dict["isSkipped"] as? Int32 {
                self.isSkipped = value
            }
            if let value = dict["jobId"] as? String {
                self.jobId = value
            }
            if let value = dict["jobStatus"] as? Int32 {
                self.jobStatus = value
            }
            if let value = dict["metricColumCount"] as? Int64 {
                self.metricColumCount = value
            }
            if let value = dict["metricPassColumCount"] as? Int64 {
                self.metricPassColumCount = value
            }
            if let value = dict["onlyDstCount"] as? Int64 {
                self.onlyDstCount = value
            }
            if let value = dict["onlySrcCount"] as? Int64 {
                self.onlySrcCount = value
            }
            if let value = dict["passColumCount"] as? Int64 {
                self.passColumCount = value
            }
            if let value = dict["realDiffCount"] as? Int64 {
                self.realDiffCount = value
            }
            if let value = dict["realSameCount"] as? Int64 {
                self.realSameCount = value
            }
            if let value = dict["resultId"] as? String {
                self.resultId = value
            }
            if let value = dict["sourceColumn"] as? String {
                self.sourceColumn = value
            }
            if let value = dict["sourceCount"] as? String {
                self.sourceCount = value
            }
            if let value = dict["sourceDataSource"] as? String {
                self.sourceDataSource = value
            }
            if let value = dict["sourceError"] as? String {
                self.sourceError = value
            }
            if let value = dict["sourceGroupClause"] as? String {
                self.sourceGroupClause = value
            }
            if let value = dict["sourcePartition"] as? String {
                self.sourcePartition = value
            }
            if let value = dict["sourceTable"] as? String {
                self.sourceTable = value
            }
            if let value = dict["sourceType"] as? String {
                self.sourceType = value
            }
            if let value = dict["sourceWhereClause"] as? String {
                self.sourceWhereClause = value
            }
            if let value = dict["srcCompareColumn"] as? String {
                self.srcCompareColumn = value
            }
            if let value = dict["srcHint"] as? String {
                self.srcHint = value
            }
            if let value = dict["srcMetricName"] as? String {
                self.srcMetricName = value
            }
            if let value = dict["srcSqlList"] as? [String] {
                self.srcSqlList = value
            }
            if let value = dict["targetColumn"] as? String {
                self.targetColumn = value
            }
            if let value = dict["targetCount"] as? String {
                self.targetCount = value
            }
            if let value = dict["targetDataSource"] as? String {
                self.targetDataSource = value
            }
            if let value = dict["targetError"] as? String {
                self.targetError = value
            }
            if let value = dict["targetGroupClause"] as? String {
                self.targetGroupClause = value
            }
            if let value = dict["targetPartition"] as? String {
                self.targetPartition = value
            }
            if let value = dict["targetTable"] as? String {
                self.targetTable = value
            }
            if let value = dict["targetType"] as? String {
                self.targetType = value
            }
            if let value = dict["targetWhereClause"] as? String {
                self.targetWhereClause = value
            }
            if let value = dict["taskConfigId"] as? Int64 {
                self.taskConfigId = value
            }
            if let value = dict["templateName"] as? String {
                self.templateName = value
            }
            if let value = dict["threshold"] as? Double {
                self.threshold = value
            }
            if let value = dict["totalCountThreshold"] as? String {
                self.totalCountThreshold = value
            }
        }
    }
    public var data: [ListDataCheckReportResponseBody.Data]?

    public var errCode: String?

    public var errMessage: String?

    public var pageIndex: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

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
            map["data"] = tmp
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.pageIndex != nil {
            map["pageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [Any?] {
            var tmp : [ListDataCheckReportResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListDataCheckReportResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["pageIndex"] as? Int32 {
            self.pageIndex = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["totalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListDataCheckReportResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDataCheckReportResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListDataCheckReportResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListDataCheckReportInstanceRequest : Tea.TeaModel {
    public var taskId: Int64?

    public override init() {
        super.init()
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
            map["taskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["taskId"] as? Int64 {
            self.taskId = value
        }
    }
}

public class ListDataCheckReportInstanceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var batchId: String?

        public var label: String?

        public var reportTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.batchId != nil {
                map["batchId"] = self.batchId!
            }
            if self.label != nil {
                map["label"] = self.label!
            }
            if self.reportTime != nil {
                map["reportTime"] = self.reportTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["batchId"] as? String {
                self.batchId = value
            }
            if let value = dict["label"] as? String {
                self.label = value
            }
            if let value = dict["reportTime"] as? String {
                self.reportTime = value
            }
        }
    }
    public var data: [ListDataCheckReportInstanceResponseBody.Data]?

    public var errCode: String?

    public var errMessage: String?

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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [Any?] {
            var tmp : [ListDataCheckReportInstanceResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListDataCheckReportInstanceResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class ListDataCheckReportInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDataCheckReportInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListDataCheckReportInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListDataCheckReportStepRequest : Tea.TeaModel {
    public var checkResult: Int32?

    public var jobId: Int64?

    public var jobStatus: Int32?

    public var pageIndex: Int32?

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
        if self.checkResult != nil {
            map["checkResult"] = self.checkResult!
        }
        if self.jobId != nil {
            map["jobId"] = self.jobId!
        }
        if self.jobStatus != nil {
            map["jobStatus"] = self.jobStatus!
        }
        if self.pageIndex != nil {
            map["pageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["checkResult"] as? Int32 {
            self.checkResult = value
        }
        if let value = dict["jobId"] as? Int64 {
            self.jobId = value
        }
        if let value = dict["jobStatus"] as? Int32 {
            self.jobStatus = value
        }
        if let value = dict["pageIndex"] as? Int32 {
            self.pageIndex = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListDataCheckReportStepResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var boundary: String?

        public var checkColumCount: Int64?

        public var dstCount: String?

        public var dstSql: String?

        public var errMessage: String?

        public var extra: String?

        public var gmtCreate: String?

        public var gmtEnd: String?

        public var gmtModified: String?

        public var gmtStart: String?

        public var id: Int64?

        public var isConsistent: Int32?

        public var jobId: Int64?

        public var metricColumCount: Int64?

        public var metricPassColumCount: Int64?

        public var passColumCount: Int64?

        public var resultId: String?

        public var signNameList: [String]?

        public var sourcePtName: String?

        public var srcCount: String?

        public var srcSql: String?

        public var status: Int32?

        public var stepId: String?

        public var targetPtName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.boundary != nil {
                map["boundary"] = self.boundary!
            }
            if self.checkColumCount != nil {
                map["checkColumCount"] = self.checkColumCount!
            }
            if self.dstCount != nil {
                map["dstCount"] = self.dstCount!
            }
            if self.dstSql != nil {
                map["dstSql"] = self.dstSql!
            }
            if self.errMessage != nil {
                map["errMessage"] = self.errMessage!
            }
            if self.extra != nil {
                map["extra"] = self.extra!
            }
            if self.gmtCreate != nil {
                map["gmtCreate"] = self.gmtCreate!
            }
            if self.gmtEnd != nil {
                map["gmtEnd"] = self.gmtEnd!
            }
            if self.gmtModified != nil {
                map["gmtModified"] = self.gmtModified!
            }
            if self.gmtStart != nil {
                map["gmtStart"] = self.gmtStart!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.isConsistent != nil {
                map["isConsistent"] = self.isConsistent!
            }
            if self.jobId != nil {
                map["jobId"] = self.jobId!
            }
            if self.metricColumCount != nil {
                map["metricColumCount"] = self.metricColumCount!
            }
            if self.metricPassColumCount != nil {
                map["metricPassColumCount"] = self.metricPassColumCount!
            }
            if self.passColumCount != nil {
                map["passColumCount"] = self.passColumCount!
            }
            if self.resultId != nil {
                map["resultId"] = self.resultId!
            }
            if self.signNameList != nil {
                map["signNameList"] = self.signNameList!
            }
            if self.sourcePtName != nil {
                map["sourcePtName"] = self.sourcePtName!
            }
            if self.srcCount != nil {
                map["srcCount"] = self.srcCount!
            }
            if self.srcSql != nil {
                map["srcSql"] = self.srcSql!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.stepId != nil {
                map["stepId"] = self.stepId!
            }
            if self.targetPtName != nil {
                map["targetPtName"] = self.targetPtName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["boundary"] as? String {
                self.boundary = value
            }
            if let value = dict["checkColumCount"] as? Int64 {
                self.checkColumCount = value
            }
            if let value = dict["dstCount"] as? String {
                self.dstCount = value
            }
            if let value = dict["dstSql"] as? String {
                self.dstSql = value
            }
            if let value = dict["errMessage"] as? String {
                self.errMessage = value
            }
            if let value = dict["extra"] as? String {
                self.extra = value
            }
            if let value = dict["gmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["gmtEnd"] as? String {
                self.gmtEnd = value
            }
            if let value = dict["gmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["gmtStart"] as? String {
                self.gmtStart = value
            }
            if let value = dict["id"] as? Int64 {
                self.id = value
            }
            if let value = dict["isConsistent"] as? Int32 {
                self.isConsistent = value
            }
            if let value = dict["jobId"] as? Int64 {
                self.jobId = value
            }
            if let value = dict["metricColumCount"] as? Int64 {
                self.metricColumCount = value
            }
            if let value = dict["metricPassColumCount"] as? Int64 {
                self.metricPassColumCount = value
            }
            if let value = dict["passColumCount"] as? Int64 {
                self.passColumCount = value
            }
            if let value = dict["resultId"] as? String {
                self.resultId = value
            }
            if let value = dict["signNameList"] as? [String] {
                self.signNameList = value
            }
            if let value = dict["sourcePtName"] as? String {
                self.sourcePtName = value
            }
            if let value = dict["srcCount"] as? String {
                self.srcCount = value
            }
            if let value = dict["srcSql"] as? String {
                self.srcSql = value
            }
            if let value = dict["status"] as? Int32 {
                self.status = value
            }
            if let value = dict["stepId"] as? String {
                self.stepId = value
            }
            if let value = dict["targetPtName"] as? String {
                self.targetPtName = value
            }
        }
    }
    public var data: [ListDataCheckReportStepResponseBody.Data]?

    public var errCode: String?

    public var errMessage: String?

    public var pageIndex: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

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
            map["data"] = tmp
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.pageIndex != nil {
            map["pageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [Any?] {
            var tmp : [ListDataCheckReportStepResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListDataCheckReportStepResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["pageIndex"] as? Int32 {
            self.pageIndex = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["totalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListDataCheckReportStepResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDataCheckReportStepResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListDataCheckReportStepResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListDataCheckReportStepByJobIdRequest : Tea.TeaModel {
    public var jobId: String?

    public var pageIndex: Int32?

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
        if self.jobId != nil {
            map["jobId"] = self.jobId!
        }
        if self.pageIndex != nil {
            map["pageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["jobId"] as? String {
            self.jobId = value
        }
        if let value = dict["pageIndex"] as? Int32 {
            self.pageIndex = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListDataCheckReportStepByJobIdResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var boundary: String?

        public var checkColumCount: Int64?

        public var dstCount: String?

        public var dstSql: String?

        public var errMessage: String?

        public var extra: String?

        public var gmtEnd: String?

        public var gmtStart: String?

        public var isConsistent: Int32?

        public var metricColumCount: Int64?

        public var metricPassColumCount: Int64?

        public var passColumCount: Int64?

        public var resultId: String?

        public var sourcePtName: String?

        public var srcCount: String?

        public var srcSql: String?

        public var status: Int32?

        public var stepId: String?

        public var targetPtName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.boundary != nil {
                map["boundary"] = self.boundary!
            }
            if self.checkColumCount != nil {
                map["checkColumCount"] = self.checkColumCount!
            }
            if self.dstCount != nil {
                map["dstCount"] = self.dstCount!
            }
            if self.dstSql != nil {
                map["dstSql"] = self.dstSql!
            }
            if self.errMessage != nil {
                map["errMessage"] = self.errMessage!
            }
            if self.extra != nil {
                map["extra"] = self.extra!
            }
            if self.gmtEnd != nil {
                map["gmtEnd"] = self.gmtEnd!
            }
            if self.gmtStart != nil {
                map["gmtStart"] = self.gmtStart!
            }
            if self.isConsistent != nil {
                map["isConsistent"] = self.isConsistent!
            }
            if self.metricColumCount != nil {
                map["metricColumCount"] = self.metricColumCount!
            }
            if self.metricPassColumCount != nil {
                map["metricPassColumCount"] = self.metricPassColumCount!
            }
            if self.passColumCount != nil {
                map["passColumCount"] = self.passColumCount!
            }
            if self.resultId != nil {
                map["resultId"] = self.resultId!
            }
            if self.sourcePtName != nil {
                map["sourcePtName"] = self.sourcePtName!
            }
            if self.srcCount != nil {
                map["srcCount"] = self.srcCount!
            }
            if self.srcSql != nil {
                map["srcSql"] = self.srcSql!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.stepId != nil {
                map["stepId"] = self.stepId!
            }
            if self.targetPtName != nil {
                map["targetPtName"] = self.targetPtName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["boundary"] as? String {
                self.boundary = value
            }
            if let value = dict["checkColumCount"] as? Int64 {
                self.checkColumCount = value
            }
            if let value = dict["dstCount"] as? String {
                self.dstCount = value
            }
            if let value = dict["dstSql"] as? String {
                self.dstSql = value
            }
            if let value = dict["errMessage"] as? String {
                self.errMessage = value
            }
            if let value = dict["extra"] as? String {
                self.extra = value
            }
            if let value = dict["gmtEnd"] as? String {
                self.gmtEnd = value
            }
            if let value = dict["gmtStart"] as? String {
                self.gmtStart = value
            }
            if let value = dict["isConsistent"] as? Int32 {
                self.isConsistent = value
            }
            if let value = dict["metricColumCount"] as? Int64 {
                self.metricColumCount = value
            }
            if let value = dict["metricPassColumCount"] as? Int64 {
                self.metricPassColumCount = value
            }
            if let value = dict["passColumCount"] as? Int64 {
                self.passColumCount = value
            }
            if let value = dict["resultId"] as? String {
                self.resultId = value
            }
            if let value = dict["sourcePtName"] as? String {
                self.sourcePtName = value
            }
            if let value = dict["srcCount"] as? String {
                self.srcCount = value
            }
            if let value = dict["srcSql"] as? String {
                self.srcSql = value
            }
            if let value = dict["status"] as? Int32 {
                self.status = value
            }
            if let value = dict["stepId"] as? String {
                self.stepId = value
            }
            if let value = dict["targetPtName"] as? String {
                self.targetPtName = value
            }
        }
    }
    public var data: [ListDataCheckReportStepByJobIdResponseBody.Data]?

    public var errCode: String?

    public var errMessage: String?

    public var pageIndex: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

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
            map["data"] = tmp
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.pageIndex != nil {
            map["pageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [Any?] {
            var tmp : [ListDataCheckReportStepByJobIdResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListDataCheckReportStepByJobIdResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["pageIndex"] as? Int32 {
            self.pageIndex = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["totalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListDataCheckReportStepByJobIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDataCheckReportStepByJobIdResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListDataCheckReportStepByJobIdResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListDataCheckTaskHistoryRequest : Tea.TeaModel {
    public var batchId: Int64?

    public var checkResult: Int32?

    public var createEndTime: String?

    public var createStartTime: String?

    public var execEndTime: String?

    public var execStartTime: String?

    public var execStatus: Int32?

    public var finishEndTime: String?

    public var finishStartTime: String?

    public var pageIndex: Int32?

    public var pageSize: Int32?

    public var taskId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.batchId != nil {
            map["batchId"] = self.batchId!
        }
        if self.checkResult != nil {
            map["checkResult"] = self.checkResult!
        }
        if self.createEndTime != nil {
            map["createEndTime"] = self.createEndTime!
        }
        if self.createStartTime != nil {
            map["createStartTime"] = self.createStartTime!
        }
        if self.execEndTime != nil {
            map["execEndTime"] = self.execEndTime!
        }
        if self.execStartTime != nil {
            map["execStartTime"] = self.execStartTime!
        }
        if self.execStatus != nil {
            map["execStatus"] = self.execStatus!
        }
        if self.finishEndTime != nil {
            map["finishEndTime"] = self.finishEndTime!
        }
        if self.finishStartTime != nil {
            map["finishStartTime"] = self.finishStartTime!
        }
        if self.pageIndex != nil {
            map["pageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["batchId"] as? Int64 {
            self.batchId = value
        }
        if let value = dict["checkResult"] as? Int32 {
            self.checkResult = value
        }
        if let value = dict["createEndTime"] as? String {
            self.createEndTime = value
        }
        if let value = dict["createStartTime"] as? String {
            self.createStartTime = value
        }
        if let value = dict["execEndTime"] as? String {
            self.execEndTime = value
        }
        if let value = dict["execStartTime"] as? String {
            self.execStartTime = value
        }
        if let value = dict["execStatus"] as? Int32 {
            self.execStatus = value
        }
        if let value = dict["finishEndTime"] as? String {
            self.finishEndTime = value
        }
        if let value = dict["finishStartTime"] as? String {
            self.finishStartTime = value
        }
        if let value = dict["pageIndex"] as? Int32 {
            self.pageIndex = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["taskId"] as? Int64 {
            self.taskId = value
        }
    }
}

public class ListDataCheckTaskHistoryResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var batchId: Int64?

        public var biz: String?

        public var checkResult: Int32?

        public var checkTableNum: Int64?

        public var concurrency: Int64?

        public var creator: String?

        public var cronExp: String?

        public var endTime: String?

        public var errorMsg: String?

        public var errorTableNum: Int64?

        public var execStatus: Int32?

        public var execTime: String?

        public var extra: String?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var operator_: String?

        public var originBatchId: Int64?

        public var passProcess: Double?

        public var passProcessExport: String?

        public var progress: Double?

        public var reportTime: String?

        public var reportTitle: String?

        public var scheduleId: Int64?

        public var seqId: String?

        public var skipTableNum: Int32?

        public var startTime: String?

        public var successfulTableNum: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.batchId != nil {
                map["batchId"] = self.batchId!
            }
            if self.biz != nil {
                map["biz"] = self.biz!
            }
            if self.checkResult != nil {
                map["checkResult"] = self.checkResult!
            }
            if self.checkTableNum != nil {
                map["checkTableNum"] = self.checkTableNum!
            }
            if self.concurrency != nil {
                map["concurrency"] = self.concurrency!
            }
            if self.creator != nil {
                map["creator"] = self.creator!
            }
            if self.cronExp != nil {
                map["cronExp"] = self.cronExp!
            }
            if self.endTime != nil {
                map["endTime"] = self.endTime!
            }
            if self.errorMsg != nil {
                map["errorMsg"] = self.errorMsg!
            }
            if self.errorTableNum != nil {
                map["errorTableNum"] = self.errorTableNum!
            }
            if self.execStatus != nil {
                map["execStatus"] = self.execStatus!
            }
            if self.execTime != nil {
                map["execTime"] = self.execTime!
            }
            if self.extra != nil {
                map["extra"] = self.extra!
            }
            if self.gmtCreate != nil {
                map["gmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["gmtModified"] = self.gmtModified!
            }
            if self.operator_ != nil {
                map["operator"] = self.operator_!
            }
            if self.originBatchId != nil {
                map["originBatchId"] = self.originBatchId!
            }
            if self.passProcess != nil {
                map["passProcess"] = self.passProcess!
            }
            if self.passProcessExport != nil {
                map["passProcessExport"] = self.passProcessExport!
            }
            if self.progress != nil {
                map["progress"] = self.progress!
            }
            if self.reportTime != nil {
                map["reportTime"] = self.reportTime!
            }
            if self.reportTitle != nil {
                map["reportTitle"] = self.reportTitle!
            }
            if self.scheduleId != nil {
                map["scheduleId"] = self.scheduleId!
            }
            if self.seqId != nil {
                map["seqId"] = self.seqId!
            }
            if self.skipTableNum != nil {
                map["skipTableNum"] = self.skipTableNum!
            }
            if self.startTime != nil {
                map["startTime"] = self.startTime!
            }
            if self.successfulTableNum != nil {
                map["successfulTableNum"] = self.successfulTableNum!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["batchId"] as? Int64 {
                self.batchId = value
            }
            if let value = dict["biz"] as? String {
                self.biz = value
            }
            if let value = dict["checkResult"] as? Int32 {
                self.checkResult = value
            }
            if let value = dict["checkTableNum"] as? Int64 {
                self.checkTableNum = value
            }
            if let value = dict["concurrency"] as? Int64 {
                self.concurrency = value
            }
            if let value = dict["creator"] as? String {
                self.creator = value
            }
            if let value = dict["cronExp"] as? String {
                self.cronExp = value
            }
            if let value = dict["endTime"] as? String {
                self.endTime = value
            }
            if let value = dict["errorMsg"] as? String {
                self.errorMsg = value
            }
            if let value = dict["errorTableNum"] as? Int64 {
                self.errorTableNum = value
            }
            if let value = dict["execStatus"] as? Int32 {
                self.execStatus = value
            }
            if let value = dict["execTime"] as? String {
                self.execTime = value
            }
            if let value = dict["extra"] as? String {
                self.extra = value
            }
            if let value = dict["gmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["gmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["operator"] as? String {
                self.operator_ = value
            }
            if let value = dict["originBatchId"] as? Int64 {
                self.originBatchId = value
            }
            if let value = dict["passProcess"] as? Double {
                self.passProcess = value
            }
            if let value = dict["passProcessExport"] as? String {
                self.passProcessExport = value
            }
            if let value = dict["progress"] as? Double {
                self.progress = value
            }
            if let value = dict["reportTime"] as? String {
                self.reportTime = value
            }
            if let value = dict["reportTitle"] as? String {
                self.reportTitle = value
            }
            if let value = dict["scheduleId"] as? Int64 {
                self.scheduleId = value
            }
            if let value = dict["seqId"] as? String {
                self.seqId = value
            }
            if let value = dict["skipTableNum"] as? Int32 {
                self.skipTableNum = value
            }
            if let value = dict["startTime"] as? String {
                self.startTime = value
            }
            if let value = dict["successfulTableNum"] as? Int64 {
                self.successfulTableNum = value
            }
        }
    }
    public var data: [ListDataCheckTaskHistoryResponseBody.Data]?

    public var errCode: String?

    public var errMessage: String?

    public var pageIndex: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

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
            map["data"] = tmp
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.pageIndex != nil {
            map["pageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [Any?] {
            var tmp : [ListDataCheckTaskHistoryResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListDataCheckTaskHistoryResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["pageIndex"] as? Int32 {
            self.pageIndex = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["totalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListDataCheckTaskHistoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDataCheckTaskHistoryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListDataCheckTaskHistoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListMetaDataComponentPageRequest : Tea.TeaModel {
    public var categoryType: String?

    public var componentType: Int32?

    public var dsName: String?

    public var dsStatus: [Int32]?

    public var dsType: String?

    public var dsTypeList: [String]?

    public var groupBy: String?

    public var needTotalCount: String?

    public var orderBy: String?

    public var orderDirection: String?

    public var pageIndex: Int32?

    public var pageSize: Int32?

    public var srcComponentId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.categoryType != nil {
            map["categoryType"] = self.categoryType!
        }
        if self.componentType != nil {
            map["componentType"] = self.componentType!
        }
        if self.dsName != nil {
            map["dsName"] = self.dsName!
        }
        if self.dsStatus != nil {
            map["dsStatus"] = self.dsStatus!
        }
        if self.dsType != nil {
            map["dsType"] = self.dsType!
        }
        if self.dsTypeList != nil {
            map["dsTypeList"] = self.dsTypeList!
        }
        if self.groupBy != nil {
            map["groupBy"] = self.groupBy!
        }
        if self.needTotalCount != nil {
            map["needTotalCount"] = self.needTotalCount!
        }
        if self.orderBy != nil {
            map["orderBy"] = self.orderBy!
        }
        if self.orderDirection != nil {
            map["orderDirection"] = self.orderDirection!
        }
        if self.pageIndex != nil {
            map["pageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.srcComponentId != nil {
            map["srcComponentId"] = self.srcComponentId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["categoryType"] as? String {
            self.categoryType = value
        }
        if let value = dict["componentType"] as? Int32 {
            self.componentType = value
        }
        if let value = dict["dsName"] as? String {
            self.dsName = value
        }
        if let value = dict["dsStatus"] as? [Int32] {
            self.dsStatus = value
        }
        if let value = dict["dsType"] as? String {
            self.dsType = value
        }
        if let value = dict["dsTypeList"] as? [String] {
            self.dsTypeList = value
        }
        if let value = dict["groupBy"] as? String {
            self.groupBy = value
        }
        if let value = dict["needTotalCount"] as? String {
            self.needTotalCount = value
        }
        if let value = dict["orderBy"] as? String {
            self.orderBy = value
        }
        if let value = dict["orderDirection"] as? String {
            self.orderDirection = value
        }
        if let value = dict["pageIndex"] as? Int32 {
            self.pageIndex = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["srcComponentId"] as? Int64 {
            self.srcComponentId = value
        }
    }
}

public class ListMetaDataComponentPageResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ProfilingJob : Tea.TeaModel {
            public var componentId: Int64?

            public var createTime: String?

            public var id: Int64?

            public var jobDesc: String?

            public var jobName: String?

            public var lastBatchId: String?

            public var profilingEnable: Int32?

            public var profilingPermission: Int32?

            public var profilingRule: String?

            public var profilingType: Int32?

            public var schedulerToken: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.componentId != nil {
                    map["componentId"] = self.componentId!
                }
                if self.createTime != nil {
                    map["createTime"] = self.createTime!
                }
                if self.id != nil {
                    map["id"] = self.id!
                }
                if self.jobDesc != nil {
                    map["jobDesc"] = self.jobDesc!
                }
                if self.jobName != nil {
                    map["jobName"] = self.jobName!
                }
                if self.lastBatchId != nil {
                    map["lastBatchId"] = self.lastBatchId!
                }
                if self.profilingEnable != nil {
                    map["profilingEnable"] = self.profilingEnable!
                }
                if self.profilingPermission != nil {
                    map["profilingPermission"] = self.profilingPermission!
                }
                if self.profilingRule != nil {
                    map["profilingRule"] = self.profilingRule!
                }
                if self.profilingType != nil {
                    map["profilingType"] = self.profilingType!
                }
                if self.schedulerToken != nil {
                    map["schedulerToken"] = self.schedulerToken!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["componentId"] as? Int64 {
                    self.componentId = value
                }
                if let value = dict["createTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["id"] as? Int64 {
                    self.id = value
                }
                if let value = dict["jobDesc"] as? String {
                    self.jobDesc = value
                }
                if let value = dict["jobName"] as? String {
                    self.jobName = value
                }
                if let value = dict["lastBatchId"] as? String {
                    self.lastBatchId = value
                }
                if let value = dict["profilingEnable"] as? Int32 {
                    self.profilingEnable = value
                }
                if let value = dict["profilingPermission"] as? Int32 {
                    self.profilingPermission = value
                }
                if let value = dict["profilingRule"] as? String {
                    self.profilingRule = value
                }
                if let value = dict["profilingType"] as? Int32 {
                    self.profilingType = value
                }
                if let value = dict["schedulerToken"] as? String {
                    self.schedulerToken = value
                }
            }
        }
        public var componentType: Int64?

        public var createTime: String?

        public var dsConfig: String?

        public var dsDesc: String?

        public var dsId: String?

        public var dsName: String?

        public var dsStatus: Int32?

        public var dsType: String?

        public var dsVersion: String?

        public var expired: Bool?

        public var id: Int64?

        public var profilingJob: ListMetaDataComponentPageResponseBody.Data.ProfilingJob?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.profilingJob?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.componentType != nil {
                map["componentType"] = self.componentType!
            }
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.dsConfig != nil {
                map["dsConfig"] = self.dsConfig!
            }
            if self.dsDesc != nil {
                map["dsDesc"] = self.dsDesc!
            }
            if self.dsId != nil {
                map["dsId"] = self.dsId!
            }
            if self.dsName != nil {
                map["dsName"] = self.dsName!
            }
            if self.dsStatus != nil {
                map["dsStatus"] = self.dsStatus!
            }
            if self.dsType != nil {
                map["dsType"] = self.dsType!
            }
            if self.dsVersion != nil {
                map["dsVersion"] = self.dsVersion!
            }
            if self.expired != nil {
                map["expired"] = self.expired!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.profilingJob != nil {
                map["profilingJob"] = self.profilingJob?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["componentType"] as? Int64 {
                self.componentType = value
            }
            if let value = dict["createTime"] as? String {
                self.createTime = value
            }
            if let value = dict["dsConfig"] as? String {
                self.dsConfig = value
            }
            if let value = dict["dsDesc"] as? String {
                self.dsDesc = value
            }
            if let value = dict["dsId"] as? String {
                self.dsId = value
            }
            if let value = dict["dsName"] as? String {
                self.dsName = value
            }
            if let value = dict["dsStatus"] as? Int32 {
                self.dsStatus = value
            }
            if let value = dict["dsType"] as? String {
                self.dsType = value
            }
            if let value = dict["dsVersion"] as? String {
                self.dsVersion = value
            }
            if let value = dict["expired"] as? Bool {
                self.expired = value
            }
            if let value = dict["id"] as? Int64 {
                self.id = value
            }
            if let value = dict["profilingJob"] as? [String: Any?] {
                var model = ListMetaDataComponentPageResponseBody.Data.ProfilingJob()
                model.fromMap(value)
                self.profilingJob = model
            }
        }
    }
    public var data: [ListMetaDataComponentPageResponseBody.Data]?

    public var errCode: String?

    public var errMessage: String?

    public var pageIndex: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

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
            map["data"] = tmp
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.pageIndex != nil {
            map["pageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [Any?] {
            var tmp : [ListMetaDataComponentPageResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ListMetaDataComponentPageResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["pageIndex"] as? Int32 {
            self.pageIndex = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["totalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListMetaDataComponentPageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListMetaDataComponentPageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListMetaDataComponentPageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PostInnerConvertRequest : Tea.TeaModel {
    public var sqlConvertMap: [String: Any]?

    public var srcDataSourceName: String?

    public var tgtDataSourceName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.sqlConvertMap != nil {
            map["sqlConvertMap"] = self.sqlConvertMap!
        }
        if self.srcDataSourceName != nil {
            map["srcDataSourceName"] = self.srcDataSourceName!
        }
        if self.tgtDataSourceName != nil {
            map["tgtDataSourceName"] = self.tgtDataSourceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["sqlConvertMap"] as? [String: Any] {
            self.sqlConvertMap = value
        }
        if let value = dict["srcDataSourceName"] as? String {
            self.srcDataSourceName = value
        }
        if let value = dict["tgtDataSourceName"] as? String {
            self.tgtDataSourceName = value
        }
    }
}

public class PostInnerConvertResponseBody : Tea.TeaModel {
    public var data: String?

    public var errCode: String?

    public var errMessage: String?

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
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? String {
            self.data = value
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? String {
            self.success = value
        }
    }
}

public class PostInnerConvertResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PostInnerConvertResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = PostInnerConvertResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PostInnerReaderRequest : Tea.TeaModel {
    public class DataSourceDescriptor : Tea.TeaModel {
        public var dsName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dsName != nil {
                map["dsName"] = self.dsName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["dsName"] as? String {
                self.dsName = value
            }
        }
    }
    public var dataSourceDescriptor: PostInnerReaderRequest.DataSourceDescriptor?

    public var dataSourceName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.dataSourceDescriptor?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataSourceDescriptor != nil {
            map["dataSourceDescriptor"] = self.dataSourceDescriptor?.toMap()
        }
        if self.dataSourceName != nil {
            map["dataSourceName"] = self.dataSourceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["dataSourceDescriptor"] as? [String: Any?] {
            var model = PostInnerReaderRequest.DataSourceDescriptor()
            model.fromMap(value)
            self.dataSourceDescriptor = model
        }
        if let value = dict["dataSourceName"] as? String {
            self.dataSourceName = value
        }
    }
}

public class PostInnerReaderResponseBody : Tea.TeaModel {
    public var data: String?

    public var errCode: String?

    public var errMessage: String?

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
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? String {
            self.data = value
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? String {
            self.success = value
        }
    }
}

public class PostInnerReaderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PostInnerReaderResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = PostInnerReaderResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PostInnerUploadConvertPackageRequest : Tea.TeaModel {
    public var fileContentBase64: String?

    public var fileName: String?

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
        if self.fileContentBase64 != nil {
            map["fileContentBase64"] = self.fileContentBase64!
        }
        if self.fileName != nil {
            map["fileName"] = self.fileName!
        }
        if self.taskId != nil {
            map["taskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["fileContentBase64"] as? String {
            self.fileContentBase64 = value
        }
        if let value = dict["fileName"] as? String {
            self.fileName = value
        }
        if let value = dict["taskId"] as? String {
            self.taskId = value
        }
    }
}

public class PostInnerUploadConvertPackageResponseBody : Tea.TeaModel {
    public var data: String?

    public var errCode: String?

    public var errMessage: String?

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
            map["data"] = self.data!
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? String {
            self.data = value
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class PostInnerUploadConvertPackageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PostInnerUploadConvertPackageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = PostInnerUploadConvertPackageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SingleSqlDryRunRequest : Tea.TeaModel {
    public var datasourceName: String?

    public var sql: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.datasourceName != nil {
            map["datasourceName"] = self.datasourceName!
        }
        if self.sql != nil {
            map["sql"] = self.sql!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["datasourceName"] as? String {
            self.datasourceName = value
        }
        if let value = dict["sql"] as? String {
            self.sql = value
        }
    }
}

public class SingleSqlDryRunResponseBody : Tea.TeaModel {
    public var data: String?

    public var errCode: String?

    public var errMessage: String?

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
            map["data"] = self.data!
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? String {
            self.data = value
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class SingleSqlDryRunResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SingleSqlDryRunResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SingleSqlDryRunResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SyntaxCheckAndTransformSqlConversionTaskRequest : Tea.TeaModel {
    public var taskId: Int64?

    public override init() {
        super.init()
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
            map["taskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["taskId"] as? Int64 {
            self.taskId = value
        }
    }
}

public class SyntaxCheckAndTransformSqlConversionTaskResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var taskId: Int64?

        public override init() {
            super.init()
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
                map["taskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["taskId"] as? Int64 {
                self.taskId = value
            }
        }
    }
    public var data: SyntaxCheckAndTransformSqlConversionTaskResponseBody.Data?

    public var errCode: String?

    public var errMessage: String?

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
            map["data"] = self.data?.toMap()
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? [String: Any?] {
            var model = SyntaxCheckAndTransformSqlConversionTaskResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class SyntaxCheckAndTransformSqlConversionTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SyntaxCheckAndTransformSqlConversionTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SyntaxCheckAndTransformSqlConversionTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateDataCheckTaskRequest : Tea.TeaModel {
    public var checkTemplateId: String?

    public var dstDsId: String?

    public var dstDsName: String?

    public var dstDsType: String?

    public var dstEngineId: String?

    public var dstEngineName: String?

    public var dstEngineType: String?

    public var id: Int64?

    public var srcDsId: String?

    public var srcDsName: String?

    public var srcDsType: String?

    public var srcEngineId: String?

    public var srcEngineName: String?

    public var srcEngineType: String?

    public var taskDescription: String?

    public var taskName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.checkTemplateId != nil {
            map["checkTemplateId"] = self.checkTemplateId!
        }
        if self.dstDsId != nil {
            map["dstDsId"] = self.dstDsId!
        }
        if self.dstDsName != nil {
            map["dstDsName"] = self.dstDsName!
        }
        if self.dstDsType != nil {
            map["dstDsType"] = self.dstDsType!
        }
        if self.dstEngineId != nil {
            map["dstEngineId"] = self.dstEngineId!
        }
        if self.dstEngineName != nil {
            map["dstEngineName"] = self.dstEngineName!
        }
        if self.dstEngineType != nil {
            map["dstEngineType"] = self.dstEngineType!
        }
        if self.id != nil {
            map["id"] = self.id!
        }
        if self.srcDsId != nil {
            map["srcDsId"] = self.srcDsId!
        }
        if self.srcDsName != nil {
            map["srcDsName"] = self.srcDsName!
        }
        if self.srcDsType != nil {
            map["srcDsType"] = self.srcDsType!
        }
        if self.srcEngineId != nil {
            map["srcEngineId"] = self.srcEngineId!
        }
        if self.srcEngineName != nil {
            map["srcEngineName"] = self.srcEngineName!
        }
        if self.srcEngineType != nil {
            map["srcEngineType"] = self.srcEngineType!
        }
        if self.taskDescription != nil {
            map["taskDescription"] = self.taskDescription!
        }
        if self.taskName != nil {
            map["taskName"] = self.taskName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["checkTemplateId"] as? String {
            self.checkTemplateId = value
        }
        if let value = dict["dstDsId"] as? String {
            self.dstDsId = value
        }
        if let value = dict["dstDsName"] as? String {
            self.dstDsName = value
        }
        if let value = dict["dstDsType"] as? String {
            self.dstDsType = value
        }
        if let value = dict["dstEngineId"] as? String {
            self.dstEngineId = value
        }
        if let value = dict["dstEngineName"] as? String {
            self.dstEngineName = value
        }
        if let value = dict["dstEngineType"] as? String {
            self.dstEngineType = value
        }
        if let value = dict["id"] as? Int64 {
            self.id = value
        }
        if let value = dict["srcDsId"] as? String {
            self.srcDsId = value
        }
        if let value = dict["srcDsName"] as? String {
            self.srcDsName = value
        }
        if let value = dict["srcDsType"] as? String {
            self.srcDsType = value
        }
        if let value = dict["srcEngineId"] as? String {
            self.srcEngineId = value
        }
        if let value = dict["srcEngineName"] as? String {
            self.srcEngineName = value
        }
        if let value = dict["srcEngineType"] as? String {
            self.srcEngineType = value
        }
        if let value = dict["taskDescription"] as? String {
            self.taskDescription = value
        }
        if let value = dict["taskName"] as? String {
            self.taskName = value
        }
    }
}

public class UpdateDataCheckTaskResponseBody : Tea.TeaModel {
    public var data: Int64?

    public var errCode: String?

    public var errMessage: String?

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
            map["data"] = self.data!
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? Int64 {
            self.data = value
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateDataCheckTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateDataCheckTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateDataCheckTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateDataCheckTemplateRequest : Tea.TeaModel {
    public class BasicMetricRules : Tea.TeaModel {
        public var checkMethods: String?

        public var controlFloatPrecision: Int32?

        public var dataTypeClassify: Int32?

        public var dataTypeGroup: Int32?

        public var dataTypeList: [String]?

        public var dataTypes: String?

        public var diffTolerateType: Int32?

        public var diffTolerateValues: [String: Any]?

        public var enableDecimalScale: Int32?

        public var filterColumnName: String?

        public var filterColumns: String?

        public var floatPrecision: Int32?

        public var ignoreDecimalDiff: Int32?

        public var ignoreDecimalScaleSuffixZero: Int32?

        public var ignoreEmptyDiff: Int32?

        public var ignoreNumericZero: Int32?

        public var ignoreStringEmpty: Int32?

        public var ignoreZeroDiff: Int32?

        public var isCountCheck: Int32?

        public var ruleId: String?

        public var setDecimalScale: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.checkMethods != nil {
                map["checkMethods"] = self.checkMethods!
            }
            if self.controlFloatPrecision != nil {
                map["controlFloatPrecision"] = self.controlFloatPrecision!
            }
            if self.dataTypeClassify != nil {
                map["dataTypeClassify"] = self.dataTypeClassify!
            }
            if self.dataTypeGroup != nil {
                map["dataTypeGroup"] = self.dataTypeGroup!
            }
            if self.dataTypeList != nil {
                map["dataTypeList"] = self.dataTypeList!
            }
            if self.dataTypes != nil {
                map["dataTypes"] = self.dataTypes!
            }
            if self.diffTolerateType != nil {
                map["diffTolerateType"] = self.diffTolerateType!
            }
            if self.diffTolerateValues != nil {
                map["diffTolerateValues"] = self.diffTolerateValues!
            }
            if self.enableDecimalScale != nil {
                map["enableDecimalScale"] = self.enableDecimalScale!
            }
            if self.filterColumnName != nil {
                map["filterColumnName"] = self.filterColumnName!
            }
            if self.filterColumns != nil {
                map["filterColumns"] = self.filterColumns!
            }
            if self.floatPrecision != nil {
                map["floatPrecision"] = self.floatPrecision!
            }
            if self.ignoreDecimalDiff != nil {
                map["ignoreDecimalDiff"] = self.ignoreDecimalDiff!
            }
            if self.ignoreDecimalScaleSuffixZero != nil {
                map["ignoreDecimalScaleSuffixZero"] = self.ignoreDecimalScaleSuffixZero!
            }
            if self.ignoreEmptyDiff != nil {
                map["ignoreEmptyDiff"] = self.ignoreEmptyDiff!
            }
            if self.ignoreNumericZero != nil {
                map["ignoreNumericZero"] = self.ignoreNumericZero!
            }
            if self.ignoreStringEmpty != nil {
                map["ignoreStringEmpty"] = self.ignoreStringEmpty!
            }
            if self.ignoreZeroDiff != nil {
                map["ignoreZeroDiff"] = self.ignoreZeroDiff!
            }
            if self.isCountCheck != nil {
                map["isCountCheck"] = self.isCountCheck!
            }
            if self.ruleId != nil {
                map["ruleId"] = self.ruleId!
            }
            if self.setDecimalScale != nil {
                map["setDecimalScale"] = self.setDecimalScale!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["checkMethods"] as? String {
                self.checkMethods = value
            }
            if let value = dict["controlFloatPrecision"] as? Int32 {
                self.controlFloatPrecision = value
            }
            if let value = dict["dataTypeClassify"] as? Int32 {
                self.dataTypeClassify = value
            }
            if let value = dict["dataTypeGroup"] as? Int32 {
                self.dataTypeGroup = value
            }
            if let value = dict["dataTypeList"] as? [String] {
                self.dataTypeList = value
            }
            if let value = dict["dataTypes"] as? String {
                self.dataTypes = value
            }
            if let value = dict["diffTolerateType"] as? Int32 {
                self.diffTolerateType = value
            }
            if let value = dict["diffTolerateValues"] as? [String: Any] {
                self.diffTolerateValues = value
            }
            if let value = dict["enableDecimalScale"] as? Int32 {
                self.enableDecimalScale = value
            }
            if let value = dict["filterColumnName"] as? String {
                self.filterColumnName = value
            }
            if let value = dict["filterColumns"] as? String {
                self.filterColumns = value
            }
            if let value = dict["floatPrecision"] as? Int32 {
                self.floatPrecision = value
            }
            if let value = dict["ignoreDecimalDiff"] as? Int32 {
                self.ignoreDecimalDiff = value
            }
            if let value = dict["ignoreDecimalScaleSuffixZero"] as? Int32 {
                self.ignoreDecimalScaleSuffixZero = value
            }
            if let value = dict["ignoreEmptyDiff"] as? Int32 {
                self.ignoreEmptyDiff = value
            }
            if let value = dict["ignoreNumericZero"] as? Int32 {
                self.ignoreNumericZero = value
            }
            if let value = dict["ignoreStringEmpty"] as? Int32 {
                self.ignoreStringEmpty = value
            }
            if let value = dict["ignoreZeroDiff"] as? Int32 {
                self.ignoreZeroDiff = value
            }
            if let value = dict["isCountCheck"] as? Int32 {
                self.isCountCheck = value
            }
            if let value = dict["ruleId"] as? String {
                self.ruleId = value
            }
            if let value = dict["setDecimalScale"] as? Int32 {
                self.setDecimalScale = value
            }
        }
    }
    public class ComplexMetricRules : Tea.TeaModel {
        public var checkMethods: String?

        public var controlFloatPrecision: Int32?

        public var dataTypeClassify: Int32?

        public var dataTypeGroup: Int32?

        public var dataTypeList: [String]?

        public var dataTypes: String?

        public var diffTolerateType: Int32?

        public var diffTolerateValues: [String: Any]?

        public var enableDecimalScale: Int32?

        public var filterColumnName: String?

        public var filterColumns: String?

        public var floatPrecision: Int32?

        public var ignoreDecimalDiff: Int32?

        public var ignoreDecimalScaleSuffixZero: Int32?

        public var ignoreEmptyDiff: Int32?

        public var ignoreNumericZero: Int32?

        public var ignoreStringEmpty: Int32?

        public var ignoreZeroDiff: Int32?

        public var isCountCheck: Int32?

        public var ruleId: String?

        public var setDecimalScale: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.checkMethods != nil {
                map["checkMethods"] = self.checkMethods!
            }
            if self.controlFloatPrecision != nil {
                map["controlFloatPrecision"] = self.controlFloatPrecision!
            }
            if self.dataTypeClassify != nil {
                map["dataTypeClassify"] = self.dataTypeClassify!
            }
            if self.dataTypeGroup != nil {
                map["dataTypeGroup"] = self.dataTypeGroup!
            }
            if self.dataTypeList != nil {
                map["dataTypeList"] = self.dataTypeList!
            }
            if self.dataTypes != nil {
                map["dataTypes"] = self.dataTypes!
            }
            if self.diffTolerateType != nil {
                map["diffTolerateType"] = self.diffTolerateType!
            }
            if self.diffTolerateValues != nil {
                map["diffTolerateValues"] = self.diffTolerateValues!
            }
            if self.enableDecimalScale != nil {
                map["enableDecimalScale"] = self.enableDecimalScale!
            }
            if self.filterColumnName != nil {
                map["filterColumnName"] = self.filterColumnName!
            }
            if self.filterColumns != nil {
                map["filterColumns"] = self.filterColumns!
            }
            if self.floatPrecision != nil {
                map["floatPrecision"] = self.floatPrecision!
            }
            if self.ignoreDecimalDiff != nil {
                map["ignoreDecimalDiff"] = self.ignoreDecimalDiff!
            }
            if self.ignoreDecimalScaleSuffixZero != nil {
                map["ignoreDecimalScaleSuffixZero"] = self.ignoreDecimalScaleSuffixZero!
            }
            if self.ignoreEmptyDiff != nil {
                map["ignoreEmptyDiff"] = self.ignoreEmptyDiff!
            }
            if self.ignoreNumericZero != nil {
                map["ignoreNumericZero"] = self.ignoreNumericZero!
            }
            if self.ignoreStringEmpty != nil {
                map["ignoreStringEmpty"] = self.ignoreStringEmpty!
            }
            if self.ignoreZeroDiff != nil {
                map["ignoreZeroDiff"] = self.ignoreZeroDiff!
            }
            if self.isCountCheck != nil {
                map["isCountCheck"] = self.isCountCheck!
            }
            if self.ruleId != nil {
                map["ruleId"] = self.ruleId!
            }
            if self.setDecimalScale != nil {
                map["setDecimalScale"] = self.setDecimalScale!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["checkMethods"] as? String {
                self.checkMethods = value
            }
            if let value = dict["controlFloatPrecision"] as? Int32 {
                self.controlFloatPrecision = value
            }
            if let value = dict["dataTypeClassify"] as? Int32 {
                self.dataTypeClassify = value
            }
            if let value = dict["dataTypeGroup"] as? Int32 {
                self.dataTypeGroup = value
            }
            if let value = dict["dataTypeList"] as? [String] {
                self.dataTypeList = value
            }
            if let value = dict["dataTypes"] as? String {
                self.dataTypes = value
            }
            if let value = dict["diffTolerateType"] as? Int32 {
                self.diffTolerateType = value
            }
            if let value = dict["diffTolerateValues"] as? [String: Any] {
                self.diffTolerateValues = value
            }
            if let value = dict["enableDecimalScale"] as? Int32 {
                self.enableDecimalScale = value
            }
            if let value = dict["filterColumnName"] as? String {
                self.filterColumnName = value
            }
            if let value = dict["filterColumns"] as? String {
                self.filterColumns = value
            }
            if let value = dict["floatPrecision"] as? Int32 {
                self.floatPrecision = value
            }
            if let value = dict["ignoreDecimalDiff"] as? Int32 {
                self.ignoreDecimalDiff = value
            }
            if let value = dict["ignoreDecimalScaleSuffixZero"] as? Int32 {
                self.ignoreDecimalScaleSuffixZero = value
            }
            if let value = dict["ignoreEmptyDiff"] as? Int32 {
                self.ignoreEmptyDiff = value
            }
            if let value = dict["ignoreNumericZero"] as? Int32 {
                self.ignoreNumericZero = value
            }
            if let value = dict["ignoreStringEmpty"] as? Int32 {
                self.ignoreStringEmpty = value
            }
            if let value = dict["ignoreZeroDiff"] as? Int32 {
                self.ignoreZeroDiff = value
            }
            if let value = dict["isCountCheck"] as? Int32 {
                self.isCountCheck = value
            }
            if let value = dict["ruleId"] as? String {
                self.ruleId = value
            }
            if let value = dict["setDecimalScale"] as? Int32 {
                self.setDecimalScale = value
            }
        }
    }
    public class DsEngineRels : Tea.TeaModel {
        public var dsEngineId: String?

        public var dsType: String?

        public var engineTypes: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dsEngineId != nil {
                map["dsEngineId"] = self.dsEngineId!
            }
            if self.dsType != nil {
                map["dsType"] = self.dsType!
            }
            if self.engineTypes != nil {
                map["engineTypes"] = self.engineTypes!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["dsEngineId"] as? String {
                self.dsEngineId = value
            }
            if let value = dict["dsType"] as? String {
                self.dsType = value
            }
            if let value = dict["engineTypes"] as? [String] {
                self.engineTypes = value
            }
        }
    }
    public class FulltextRule : Tea.TeaModel {
        public var checkMode: Int32?

        public var columnEqualCmpType: Int32?

        public var columnEqualCmpValues: String?

        public var columnIsCosine: Int32?

        public var columnIsIgnoreNull: Int32?

        public var columnIsIgnoreZero: Int32?

        public var columnIsSamples: Int32?

        public var columnSamplesType: Int32?

        public var columnSamplesValue: Int32?

        public var columnSizeCmpType: Int32?

        public var columnSizeCmpValues: String?

        public var isPrimaryKeyCheck: Int32?

        public var lineCheckType: Int32?

        public var lineIsPrintAll: Int32?

        public var lineIsSamples: Int32?

        public var lineSamplesType: Int32?

        public var lineSamplesValue: Int32?

        public var ruleId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.checkMode != nil {
                map["checkMode"] = self.checkMode!
            }
            if self.columnEqualCmpType != nil {
                map["columnEqualCmpType"] = self.columnEqualCmpType!
            }
            if self.columnEqualCmpValues != nil {
                map["columnEqualCmpValues"] = self.columnEqualCmpValues!
            }
            if self.columnIsCosine != nil {
                map["columnIsCosine"] = self.columnIsCosine!
            }
            if self.columnIsIgnoreNull != nil {
                map["columnIsIgnoreNull"] = self.columnIsIgnoreNull!
            }
            if self.columnIsIgnoreZero != nil {
                map["columnIsIgnoreZero"] = self.columnIsIgnoreZero!
            }
            if self.columnIsSamples != nil {
                map["columnIsSamples"] = self.columnIsSamples!
            }
            if self.columnSamplesType != nil {
                map["columnSamplesType"] = self.columnSamplesType!
            }
            if self.columnSamplesValue != nil {
                map["columnSamplesValue"] = self.columnSamplesValue!
            }
            if self.columnSizeCmpType != nil {
                map["columnSizeCmpType"] = self.columnSizeCmpType!
            }
            if self.columnSizeCmpValues != nil {
                map["columnSizeCmpValues"] = self.columnSizeCmpValues!
            }
            if self.isPrimaryKeyCheck != nil {
                map["isPrimaryKeyCheck"] = self.isPrimaryKeyCheck!
            }
            if self.lineCheckType != nil {
                map["lineCheckType"] = self.lineCheckType!
            }
            if self.lineIsPrintAll != nil {
                map["lineIsPrintAll"] = self.lineIsPrintAll!
            }
            if self.lineIsSamples != nil {
                map["lineIsSamples"] = self.lineIsSamples!
            }
            if self.lineSamplesType != nil {
                map["lineSamplesType"] = self.lineSamplesType!
            }
            if self.lineSamplesValue != nil {
                map["lineSamplesValue"] = self.lineSamplesValue!
            }
            if self.ruleId != nil {
                map["ruleId"] = self.ruleId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["checkMode"] as? Int32 {
                self.checkMode = value
            }
            if let value = dict["columnEqualCmpType"] as? Int32 {
                self.columnEqualCmpType = value
            }
            if let value = dict["columnEqualCmpValues"] as? String {
                self.columnEqualCmpValues = value
            }
            if let value = dict["columnIsCosine"] as? Int32 {
                self.columnIsCosine = value
            }
            if let value = dict["columnIsIgnoreNull"] as? Int32 {
                self.columnIsIgnoreNull = value
            }
            if let value = dict["columnIsIgnoreZero"] as? Int32 {
                self.columnIsIgnoreZero = value
            }
            if let value = dict["columnIsSamples"] as? Int32 {
                self.columnIsSamples = value
            }
            if let value = dict["columnSamplesType"] as? Int32 {
                self.columnSamplesType = value
            }
            if let value = dict["columnSamplesValue"] as? Int32 {
                self.columnSamplesValue = value
            }
            if let value = dict["columnSizeCmpType"] as? Int32 {
                self.columnSizeCmpType = value
            }
            if let value = dict["columnSizeCmpValues"] as? String {
                self.columnSizeCmpValues = value
            }
            if let value = dict["isPrimaryKeyCheck"] as? Int32 {
                self.isPrimaryKeyCheck = value
            }
            if let value = dict["lineCheckType"] as? Int32 {
                self.lineCheckType = value
            }
            if let value = dict["lineIsPrintAll"] as? Int32 {
                self.lineIsPrintAll = value
            }
            if let value = dict["lineIsSamples"] as? Int32 {
                self.lineIsSamples = value
            }
            if let value = dict["lineSamplesType"] as? Int32 {
                self.lineSamplesType = value
            }
            if let value = dict["lineSamplesValue"] as? Int32 {
                self.lineSamplesValue = value
            }
            if let value = dict["ruleId"] as? String {
                self.ruleId = value
            }
        }
    }
    public class MetricRules : Tea.TeaModel {
        public var checkMethods: String?

        public var controlFloatPrecision: Int32?

        public var dataTypeClassify: Int32?

        public var dataTypeGroup: Int32?

        public var dataTypeList: [String]?

        public var dataTypes: String?

        public var diffTolerateType: Int32?

        public var diffTolerateValues: [String: Any]?

        public var enableDecimalScale: Int32?

        public var filterColumnName: String?

        public var filterColumns: String?

        public var floatPrecision: Int32?

        public var ignoreDecimalDiff: Int32?

        public var ignoreDecimalScaleSuffixZero: Int32?

        public var ignoreEmptyDiff: Int32?

        public var ignoreNumericZero: Int32?

        public var ignoreStringEmpty: Int32?

        public var ignoreZeroDiff: Int32?

        public var isCountCheck: Int32?

        public var ruleId: String?

        public var setDecimalScale: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.checkMethods != nil {
                map["checkMethods"] = self.checkMethods!
            }
            if self.controlFloatPrecision != nil {
                map["controlFloatPrecision"] = self.controlFloatPrecision!
            }
            if self.dataTypeClassify != nil {
                map["dataTypeClassify"] = self.dataTypeClassify!
            }
            if self.dataTypeGroup != nil {
                map["dataTypeGroup"] = self.dataTypeGroup!
            }
            if self.dataTypeList != nil {
                map["dataTypeList"] = self.dataTypeList!
            }
            if self.dataTypes != nil {
                map["dataTypes"] = self.dataTypes!
            }
            if self.diffTolerateType != nil {
                map["diffTolerateType"] = self.diffTolerateType!
            }
            if self.diffTolerateValues != nil {
                map["diffTolerateValues"] = self.diffTolerateValues!
            }
            if self.enableDecimalScale != nil {
                map["enableDecimalScale"] = self.enableDecimalScale!
            }
            if self.filterColumnName != nil {
                map["filterColumnName"] = self.filterColumnName!
            }
            if self.filterColumns != nil {
                map["filterColumns"] = self.filterColumns!
            }
            if self.floatPrecision != nil {
                map["floatPrecision"] = self.floatPrecision!
            }
            if self.ignoreDecimalDiff != nil {
                map["ignoreDecimalDiff"] = self.ignoreDecimalDiff!
            }
            if self.ignoreDecimalScaleSuffixZero != nil {
                map["ignoreDecimalScaleSuffixZero"] = self.ignoreDecimalScaleSuffixZero!
            }
            if self.ignoreEmptyDiff != nil {
                map["ignoreEmptyDiff"] = self.ignoreEmptyDiff!
            }
            if self.ignoreNumericZero != nil {
                map["ignoreNumericZero"] = self.ignoreNumericZero!
            }
            if self.ignoreStringEmpty != nil {
                map["ignoreStringEmpty"] = self.ignoreStringEmpty!
            }
            if self.ignoreZeroDiff != nil {
                map["ignoreZeroDiff"] = self.ignoreZeroDiff!
            }
            if self.isCountCheck != nil {
                map["isCountCheck"] = self.isCountCheck!
            }
            if self.ruleId != nil {
                map["ruleId"] = self.ruleId!
            }
            if self.setDecimalScale != nil {
                map["setDecimalScale"] = self.setDecimalScale!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["checkMethods"] as? String {
                self.checkMethods = value
            }
            if let value = dict["controlFloatPrecision"] as? Int32 {
                self.controlFloatPrecision = value
            }
            if let value = dict["dataTypeClassify"] as? Int32 {
                self.dataTypeClassify = value
            }
            if let value = dict["dataTypeGroup"] as? Int32 {
                self.dataTypeGroup = value
            }
            if let value = dict["dataTypeList"] as? [String] {
                self.dataTypeList = value
            }
            if let value = dict["dataTypes"] as? String {
                self.dataTypes = value
            }
            if let value = dict["diffTolerateType"] as? Int32 {
                self.diffTolerateType = value
            }
            if let value = dict["diffTolerateValues"] as? [String: Any] {
                self.diffTolerateValues = value
            }
            if let value = dict["enableDecimalScale"] as? Int32 {
                self.enableDecimalScale = value
            }
            if let value = dict["filterColumnName"] as? String {
                self.filterColumnName = value
            }
            if let value = dict["filterColumns"] as? String {
                self.filterColumns = value
            }
            if let value = dict["floatPrecision"] as? Int32 {
                self.floatPrecision = value
            }
            if let value = dict["ignoreDecimalDiff"] as? Int32 {
                self.ignoreDecimalDiff = value
            }
            if let value = dict["ignoreDecimalScaleSuffixZero"] as? Int32 {
                self.ignoreDecimalScaleSuffixZero = value
            }
            if let value = dict["ignoreEmptyDiff"] as? Int32 {
                self.ignoreEmptyDiff = value
            }
            if let value = dict["ignoreNumericZero"] as? Int32 {
                self.ignoreNumericZero = value
            }
            if let value = dict["ignoreStringEmpty"] as? Int32 {
                self.ignoreStringEmpty = value
            }
            if let value = dict["ignoreZeroDiff"] as? Int32 {
                self.ignoreZeroDiff = value
            }
            if let value = dict["isCountCheck"] as? Int32 {
                self.isCountCheck = value
            }
            if let value = dict["ruleId"] as? String {
                self.ruleId = value
            }
            if let value = dict["setDecimalScale"] as? Int32 {
                self.setDecimalScale = value
            }
        }
    }
    public class NullRules : Tea.TeaModel {
        public var dataTypeGroup: Int32?

        public var nullValues: String?

        public var ruleId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dataTypeGroup != nil {
                map["dataTypeGroup"] = self.dataTypeGroup!
            }
            if self.nullValues != nil {
                map["nullValues"] = self.nullValues!
            }
            if self.ruleId != nil {
                map["ruleId"] = self.ruleId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["dataTypeGroup"] as? Int32 {
                self.dataTypeGroup = value
            }
            if let value = dict["nullValues"] as? String {
                self.nullValues = value
            }
            if let value = dict["ruleId"] as? String {
                self.ruleId = value
            }
        }
    }
    public class WeakContentRule : Tea.TeaModel {
        public var filterColumnExpression: String?

        public var filterColumnTypes: [String]?

        public var ruleId: String?

        public var weakContentAlgorithm: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.filterColumnExpression != nil {
                map["filterColumnExpression"] = self.filterColumnExpression!
            }
            if self.filterColumnTypes != nil {
                map["filterColumnTypes"] = self.filterColumnTypes!
            }
            if self.ruleId != nil {
                map["ruleId"] = self.ruleId!
            }
            if self.weakContentAlgorithm != nil {
                map["weakContentAlgorithm"] = self.weakContentAlgorithm!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["filterColumnExpression"] as? String {
                self.filterColumnExpression = value
            }
            if let value = dict["filterColumnTypes"] as? [String] {
                self.filterColumnTypes = value
            }
            if let value = dict["ruleId"] as? String {
                self.ruleId = value
            }
            if let value = dict["weakContentAlgorithm"] as? String {
                self.weakContentAlgorithm = value
            }
        }
    }
    public var basicMetricRules: [UpdateDataCheckTemplateRequest.BasicMetricRules]?

    public var checkType: Int32?

    public var complexMetricRules: [UpdateDataCheckTemplateRequest.ComplexMetricRules]?

    public var dsEngineRels: [UpdateDataCheckTemplateRequest.DsEngineRels]?

    public var fulltextRule: UpdateDataCheckTemplateRequest.FulltextRule?

    public var metricRules: [UpdateDataCheckTemplateRequest.MetricRules]?

    public var nullRules: [UpdateDataCheckTemplateRequest.NullRules]?

    public var requestId: String?

    public var templateDesc: String?

    public var templateId: String?

    public var templateName: String?

    public var weakContentRule: UpdateDataCheckTemplateRequest.WeakContentRule?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.fulltextRule?.validate()
        try self.weakContentRule?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.basicMetricRules != nil {
            var tmp : [Any] = []
            for k in self.basicMetricRules! {
                tmp.append(k.toMap())
            }
            map["basicMetricRules"] = tmp
        }
        if self.checkType != nil {
            map["checkType"] = self.checkType!
        }
        if self.complexMetricRules != nil {
            var tmp : [Any] = []
            for k in self.complexMetricRules! {
                tmp.append(k.toMap())
            }
            map["complexMetricRules"] = tmp
        }
        if self.dsEngineRels != nil {
            var tmp : [Any] = []
            for k in self.dsEngineRels! {
                tmp.append(k.toMap())
            }
            map["dsEngineRels"] = tmp
        }
        if self.fulltextRule != nil {
            map["fulltextRule"] = self.fulltextRule?.toMap()
        }
        if self.metricRules != nil {
            var tmp : [Any] = []
            for k in self.metricRules! {
                tmp.append(k.toMap())
            }
            map["metricRules"] = tmp
        }
        if self.nullRules != nil {
            var tmp : [Any] = []
            for k in self.nullRules! {
                tmp.append(k.toMap())
            }
            map["nullRules"] = tmp
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.templateDesc != nil {
            map["templateDesc"] = self.templateDesc!
        }
        if self.templateId != nil {
            map["templateId"] = self.templateId!
        }
        if self.templateName != nil {
            map["templateName"] = self.templateName!
        }
        if self.weakContentRule != nil {
            map["weakContentRule"] = self.weakContentRule?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["basicMetricRules"] as? [Any?] {
            var tmp : [UpdateDataCheckTemplateRequest.BasicMetricRules] = []
            for v in value {
                if v != nil {
                    var model = UpdateDataCheckTemplateRequest.BasicMetricRules()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.basicMetricRules = tmp
        }
        if let value = dict["checkType"] as? Int32 {
            self.checkType = value
        }
        if let value = dict["complexMetricRules"] as? [Any?] {
            var tmp : [UpdateDataCheckTemplateRequest.ComplexMetricRules] = []
            for v in value {
                if v != nil {
                    var model = UpdateDataCheckTemplateRequest.ComplexMetricRules()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.complexMetricRules = tmp
        }
        if let value = dict["dsEngineRels"] as? [Any?] {
            var tmp : [UpdateDataCheckTemplateRequest.DsEngineRels] = []
            for v in value {
                if v != nil {
                    var model = UpdateDataCheckTemplateRequest.DsEngineRels()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.dsEngineRels = tmp
        }
        if let value = dict["fulltextRule"] as? [String: Any?] {
            var model = UpdateDataCheckTemplateRequest.FulltextRule()
            model.fromMap(value)
            self.fulltextRule = model
        }
        if let value = dict["metricRules"] as? [Any?] {
            var tmp : [UpdateDataCheckTemplateRequest.MetricRules] = []
            for v in value {
                if v != nil {
                    var model = UpdateDataCheckTemplateRequest.MetricRules()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.metricRules = tmp
        }
        if let value = dict["nullRules"] as? [Any?] {
            var tmp : [UpdateDataCheckTemplateRequest.NullRules] = []
            for v in value {
                if v != nil {
                    var model = UpdateDataCheckTemplateRequest.NullRules()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.nullRules = tmp
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["templateDesc"] as? String {
            self.templateDesc = value
        }
        if let value = dict["templateId"] as? String {
            self.templateId = value
        }
        if let value = dict["templateName"] as? String {
            self.templateName = value
        }
        if let value = dict["weakContentRule"] as? [String: Any?] {
            var model = UpdateDataCheckTemplateRequest.WeakContentRule()
            model.fromMap(value)
            self.weakContentRule = model
        }
    }
}

public class UpdateDataCheckTemplateResponseBody : Tea.TeaModel {
    public var errCode: String?

    public var errMessage: String?

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
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["errMessage"] = self.errMessage!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["errMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateDataCheckTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateDataCheckTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateDataCheckTemplateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
