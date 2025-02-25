import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class ConditionalRule : Tea.TeaModel {
    public var filter: EventFilter?

    public var modifyTime: String?

    public var name: String?

    public var operator_: String?

    public var sampleRate: Double?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.filter?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.filter != nil {
            map["Filter"] = self.filter?.toMap()
        }
        if self.modifyTime != nil {
            map["ModifyTime"] = self.modifyTime!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.operator_ != nil {
            map["Operator"] = self.operator_!
        }
        if self.sampleRate != nil {
            map["SampleRate"] = self.sampleRate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Filter") {
            var model = EventFilter()
            model.fromMap(dict["Filter"] as! [String: Any])
            self.filter = model
        }
        if dict.keys.contains("ModifyTime") {
            self.modifyTime = dict["ModifyTime"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Operator") {
            self.operator_ = dict["Operator"] as! String
        }
        if dict.keys.contains("SampleRate") {
            self.sampleRate = dict["SampleRate"] as! Double
        }
    }
}

public class EventFilter : Tea.TeaModel {
    public var key: String?

    public var op: String?

    public var subFilters: [EventFilter]?

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
        if self.key != nil {
            map["Key"] = self.key!
        }
        if self.op != nil {
            map["Op"] = self.op!
        }
        if self.subFilters != nil {
            var tmp : [Any] = []
            for k in self.subFilters! {
                tmp.append(k.toMap())
            }
            map["SubFilters"] = tmp
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
        if dict.keys.contains("Op") {
            self.op = dict["Op"] as! String
        }
        if dict.keys.contains("SubFilters") {
            var tmp : [EventFilter] = []
            for v in dict["SubFilters"] as! [Any] {
                var model = EventFilter()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.subFilters = tmp
        }
        if dict.keys.contains("Values") {
            self.values = dict["Values"] as! [String]
        }
    }
}

public class EventRule : Tea.TeaModel {
    public var conditional: [ConditionalRule]?

    public var enable: Bool?

    public var eventId: String?

    public var modifyTime: String?

    public var operator_: String?

    public var sampleRate: Double?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.conditional != nil {
            var tmp : [Any] = []
            for k in self.conditional! {
                tmp.append(k.toMap())
            }
            map["Conditional"] = tmp
        }
        if self.enable != nil {
            map["Enable"] = self.enable!
        }
        if self.eventId != nil {
            map["EventId"] = self.eventId!
        }
        if self.modifyTime != nil {
            map["ModifyTime"] = self.modifyTime!
        }
        if self.operator_ != nil {
            map["Operator"] = self.operator_!
        }
        if self.sampleRate != nil {
            map["SampleRate"] = self.sampleRate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Conditional") {
            var tmp : [ConditionalRule] = []
            for v in dict["Conditional"] as! [Any] {
                var model = ConditionalRule()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.conditional = tmp
        }
        if dict.keys.contains("Enable") {
            self.enable = dict["Enable"] as! Bool
        }
        if dict.keys.contains("EventId") {
            self.eventId = dict["EventId"] as! String
        }
        if dict.keys.contains("ModifyTime") {
            self.modifyTime = dict["ModifyTime"] as! String
        }
        if dict.keys.contains("Operator") {
            self.operator_ = dict["Operator"] as! String
        }
        if dict.keys.contains("SampleRate") {
            self.sampleRate = dict["SampleRate"] as! Double
        }
    }
}

public class Filter : Tea.TeaModel {
    public var key: String?

    public var operator_: String?

    public var subFilters: [Filter]?

    public var values: Any?

    public override init() {
        super.init()
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
        if self.operator_ != nil {
            map["Operator"] = self.operator_!
        }
        if self.subFilters != nil {
            var tmp : [Any] = []
            for k in self.subFilters! {
                tmp.append(k.toMap())
            }
            map["SubFilters"] = tmp
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
        if dict.keys.contains("Operator") {
            self.operator_ = dict["Operator"] as! String
        }
        if dict.keys.contains("SubFilters") {
            var tmp : [Filter] = []
            for v in dict["SubFilters"] as! [Any] {
                var model = Filter()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.subFilters = tmp
        }
        if dict.keys.contains("Values") {
            self.values = dict["Values"] as! Any
        }
    }
}

public class FullSampleItem : Tea.TeaModel {
    public var id: String?

    public var modifyTime: String?

    public var operator_: String?

    public override init() {
        super.init()
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
        if self.modifyTime != nil {
            map["ModifyTime"] = self.modifyTime!
        }
        if self.operator_ != nil {
            map["Operator"] = self.operator_!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Id") {
            self.id = dict["Id"] as! String
        }
        if dict.keys.contains("ModifyTime") {
            self.modifyTime = dict["ModifyTime"] as! String
        }
        if dict.keys.contains("Operator") {
            self.operator_ = dict["Operator"] as! String
        }
    }
}

public class SampleBase : Tea.TeaModel {
    public var fullSampleDeviceIds: [FullSampleItem]?

    public var fullSampleUsers: [FullSampleItem]?

    public var sampleMethod: String?

    public var sampleRate: Double?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fullSampleDeviceIds != nil {
            var tmp : [Any] = []
            for k in self.fullSampleDeviceIds! {
                tmp.append(k.toMap())
            }
            map["FullSampleDeviceIds"] = tmp
        }
        if self.fullSampleUsers != nil {
            var tmp : [Any] = []
            for k in self.fullSampleUsers! {
                tmp.append(k.toMap())
            }
            map["FullSampleUsers"] = tmp
        }
        if self.sampleMethod != nil {
            map["SampleMethod"] = self.sampleMethod!
        }
        if self.sampleRate != nil {
            map["SampleRate"] = self.sampleRate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FullSampleDeviceIds") {
            var tmp : [FullSampleItem] = []
            for v in dict["FullSampleDeviceIds"] as! [Any] {
                var model = FullSampleItem()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.fullSampleDeviceIds = tmp
        }
        if dict.keys.contains("FullSampleUsers") {
            var tmp : [FullSampleItem] = []
            for v in dict["FullSampleUsers"] as! [Any] {
                var model = FullSampleItem()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.fullSampleUsers = tmp
        }
        if dict.keys.contains("SampleMethod") {
            self.sampleMethod = dict["SampleMethod"] as! String
        }
        if dict.keys.contains("SampleRate") {
            self.sampleRate = dict["SampleRate"] as! Double
        }
    }
}

public class GetErrorRequest : Tea.TeaModel {
    public var appKey: Int64?

    public var bizModule: String?

    public var clientTime: Int64?

    public var did: String?

    public var force: Bool?

    public var os: String?

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
        if self.appKey != nil {
            map["AppKey"] = self.appKey!
        }
        if self.bizModule != nil {
            map["BizModule"] = self.bizModule!
        }
        if self.clientTime != nil {
            map["ClientTime"] = self.clientTime!
        }
        if self.did != nil {
            map["Did"] = self.did!
        }
        if self.force != nil {
            map["Force"] = self.force!
        }
        if self.os != nil {
            map["Os"] = self.os!
        }
        if self.uuid != nil {
            map["Uuid"] = self.uuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppKey") {
            self.appKey = dict["AppKey"] as! Int64
        }
        if dict.keys.contains("BizModule") {
            self.bizModule = dict["BizModule"] as! String
        }
        if dict.keys.contains("ClientTime") {
            self.clientTime = dict["ClientTime"] as! Int64
        }
        if dict.keys.contains("Did") {
            self.did = dict["Did"] as! String
        }
        if dict.keys.contains("Force") {
            self.force = dict["Force"] as! Bool
        }
        if dict.keys.contains("Os") {
            self.os = dict["Os"] as! String
        }
        if dict.keys.contains("Uuid") {
            self.uuid = dict["Uuid"] as! String
        }
    }
}

public class GetErrorResponseBody : Tea.TeaModel {
    public class Model : Tea.TeaModel {
        public var access: String?

        public var accessSubType: String?

        public var additionalCallbackInfo: String?

        public var additionalCrossPlatformCrashInfo: String?

        public var additionalCustomInfo: String?

        public var androidVm: String?

        public var appId: String?

        public var appKey: Int64?

        public var appVersion: String?

        public var argHash: Int64?

        public var args: String?

        public var backtrace: String?

        public var banner: String?

        public var binaryUuids: String?

        public var brand: String?

        public var browserName: String?

        public var browserVersion: String?

        public var build: String?

        public var businessCountry: String?

        public var businessErrorExtData: String?

        public var businessLogType: String?

        public var carrier: String?

        public var channel: String?

        public var city: String?

        public var clientIp: String?

        public var clientTime: Int64?

        public var colNo: String?

        public var country: String?

        public var cpuModel: String?

        public var cruxModule: String?

        public var cruxStack: String?

        public var cruxStackHash: Int64?

        public var cruxStackTrace: String?

        public var cruxStackTraceHash: Int64?

        public var customExceptionType: String?

        public var customInfo: String?

        public var dataDirectory: String?

        public var deviceId: String?

        public var deviceModel: String?

        public var did: String?

        public var digest: String?

        public var digestHash: String?

        public var domScore: String?

        public var downloadCacheDirectory: String?

        public var errorName: String?

        public var errorType: String?

        public var eventId: Int32?

        public var eventLog: String?

        public var exceptionArg1: String?

        public var exceptionArg2: String?

        public var exceptionArg3: String?

        public var exceptionCode: String?

        public var exceptionCodes: String?

        public var exceptionDetail: String?

        public var exceptionId: String?

        public var exceptionMsg: String?

        public var exceptionSubtype: String?

        public var exceptionType: String?

        public var exceptionVersion: String?

        public var exportStatus: String?

        public var externalStorageDirectory: String?

        public var featureScene: String?

        public var fileName: String?

        public var filePath: String?

        public var filename: String?

        public var flutterRoute: String?

        public var forceGround: Int32?

        public var foreGround: Int32?

        public var h5FullUrl: String?

        public var h5ShortUrl: String?

        public var hasOpenMultiProcessMode: Int32?

        public var hasSdCard: Int32?

        public var hasSgSecurityConfigKey: Int32?

        public var imei: String?

        public var imsi: String?

        public var inMainProcess: Int32?

        public var installSdCard: Int32?

        public var isBackTrace: Int32?

        public var isSpeedVersion: Int32?

        public var isp: String?

        public var jsBacktrace: String?

        public var language: String?

        public var launchedTime: String?

        public var lineNo: String?

        public var logHash: Int64?

        public var mainLog: String?

        public var memoryMap: String?

        public var moreInfo1: String?

        public var moreInfo2: String?

        public var moreInfo3: String?

        public var nativeAllThreadDump: String?

        public var nativeMaps: String?

        public var needReCluster: Int32?

        public var openedFileCount: Int32?

        public var operations: String?

        public var originData: String?

        public var originUri: String?

        public var os: String?

        public var osVersion: String?

        public var page: String?

        public var parentProcessName: String?

        public var pid: Int32?

        public var platform: String?

        public var processName: String?

        public var province: String?

        public var reason: String?

        public var reportContent: String?

        public var reportType: String?

        public var resolution: String?

        public var rootDirectory: String?

        public var runtimeExtData: String?

        public var sceneValue: String?

        public var sdkType: String?

        public var sdkVersion: String?

        public var seq: String?

        public var serverTime: Int64?

        public var sessionId: String?

        public var simpleReportContent: String?

        public var soLibBuild: String?

        public var speedFlags: String?

        public var stack: String?

        public var status: String?

        public var summary: String?

        public var symbolicFileType: String?

        public var sysLog: String?

        public var threadName: String?

        public var threads: String?

        public var tid: Int32?

        public var track: String?

        public var triggeredTime: String?

        public var uploadTime: Int64?

        public var uri: String?

        public var user: String?

        public var userId: String?

        public var userNick: String?

        public var utdid: String?

        public var uuid: String?

        public var view: String?

        public var weexFullUrl: String?

        public var weexShortUrl: String?

        public var writeLimit: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.access != nil {
                map["Access"] = self.access!
            }
            if self.accessSubType != nil {
                map["AccessSubType"] = self.accessSubType!
            }
            if self.additionalCallbackInfo != nil {
                map["AdditionalCallbackInfo"] = self.additionalCallbackInfo!
            }
            if self.additionalCrossPlatformCrashInfo != nil {
                map["AdditionalCrossPlatformCrashInfo"] = self.additionalCrossPlatformCrashInfo!
            }
            if self.additionalCustomInfo != nil {
                map["AdditionalCustomInfo"] = self.additionalCustomInfo!
            }
            if self.androidVm != nil {
                map["AndroidVm"] = self.androidVm!
            }
            if self.appId != nil {
                map["AppId"] = self.appId!
            }
            if self.appKey != nil {
                map["AppKey"] = self.appKey!
            }
            if self.appVersion != nil {
                map["AppVersion"] = self.appVersion!
            }
            if self.argHash != nil {
                map["ArgHash"] = self.argHash!
            }
            if self.args != nil {
                map["Args"] = self.args!
            }
            if self.backtrace != nil {
                map["Backtrace"] = self.backtrace!
            }
            if self.banner != nil {
                map["Banner"] = self.banner!
            }
            if self.binaryUuids != nil {
                map["BinaryUuids"] = self.binaryUuids!
            }
            if self.brand != nil {
                map["Brand"] = self.brand!
            }
            if self.browserName != nil {
                map["BrowserName"] = self.browserName!
            }
            if self.browserVersion != nil {
                map["BrowserVersion"] = self.browserVersion!
            }
            if self.build != nil {
                map["Build"] = self.build!
            }
            if self.businessCountry != nil {
                map["BusinessCountry"] = self.businessCountry!
            }
            if self.businessErrorExtData != nil {
                map["BusinessErrorExtData"] = self.businessErrorExtData!
            }
            if self.businessLogType != nil {
                map["BusinessLogType"] = self.businessLogType!
            }
            if self.carrier != nil {
                map["Carrier"] = self.carrier!
            }
            if self.channel != nil {
                map["Channel"] = self.channel!
            }
            if self.city != nil {
                map["City"] = self.city!
            }
            if self.clientIp != nil {
                map["ClientIp"] = self.clientIp!
            }
            if self.clientTime != nil {
                map["ClientTime"] = self.clientTime!
            }
            if self.colNo != nil {
                map["ColNo"] = self.colNo!
            }
            if self.country != nil {
                map["Country"] = self.country!
            }
            if self.cpuModel != nil {
                map["CpuModel"] = self.cpuModel!
            }
            if self.cruxModule != nil {
                map["CruxModule"] = self.cruxModule!
            }
            if self.cruxStack != nil {
                map["CruxStack"] = self.cruxStack!
            }
            if self.cruxStackHash != nil {
                map["CruxStackHash"] = self.cruxStackHash!
            }
            if self.cruxStackTrace != nil {
                map["CruxStackTrace"] = self.cruxStackTrace!
            }
            if self.cruxStackTraceHash != nil {
                map["CruxStackTraceHash"] = self.cruxStackTraceHash!
            }
            if self.customExceptionType != nil {
                map["CustomExceptionType"] = self.customExceptionType!
            }
            if self.customInfo != nil {
                map["CustomInfo"] = self.customInfo!
            }
            if self.dataDirectory != nil {
                map["DataDirectory"] = self.dataDirectory!
            }
            if self.deviceId != nil {
                map["DeviceId"] = self.deviceId!
            }
            if self.deviceModel != nil {
                map["DeviceModel"] = self.deviceModel!
            }
            if self.did != nil {
                map["Did"] = self.did!
            }
            if self.digest != nil {
                map["Digest"] = self.digest!
            }
            if self.digestHash != nil {
                map["DigestHash"] = self.digestHash!
            }
            if self.domScore != nil {
                map["DomScore"] = self.domScore!
            }
            if self.downloadCacheDirectory != nil {
                map["DownloadCacheDirectory"] = self.downloadCacheDirectory!
            }
            if self.errorName != nil {
                map["ErrorName"] = self.errorName!
            }
            if self.errorType != nil {
                map["ErrorType"] = self.errorType!
            }
            if self.eventId != nil {
                map["EventId"] = self.eventId!
            }
            if self.eventLog != nil {
                map["EventLog"] = self.eventLog!
            }
            if self.exceptionArg1 != nil {
                map["ExceptionArg1"] = self.exceptionArg1!
            }
            if self.exceptionArg2 != nil {
                map["ExceptionArg2"] = self.exceptionArg2!
            }
            if self.exceptionArg3 != nil {
                map["ExceptionArg3"] = self.exceptionArg3!
            }
            if self.exceptionCode != nil {
                map["ExceptionCode"] = self.exceptionCode!
            }
            if self.exceptionCodes != nil {
                map["ExceptionCodes"] = self.exceptionCodes!
            }
            if self.exceptionDetail != nil {
                map["ExceptionDetail"] = self.exceptionDetail!
            }
            if self.exceptionId != nil {
                map["ExceptionId"] = self.exceptionId!
            }
            if self.exceptionMsg != nil {
                map["ExceptionMsg"] = self.exceptionMsg!
            }
            if self.exceptionSubtype != nil {
                map["ExceptionSubtype"] = self.exceptionSubtype!
            }
            if self.exceptionType != nil {
                map["ExceptionType"] = self.exceptionType!
            }
            if self.exceptionVersion != nil {
                map["ExceptionVersion"] = self.exceptionVersion!
            }
            if self.exportStatus != nil {
                map["ExportStatus"] = self.exportStatus!
            }
            if self.externalStorageDirectory != nil {
                map["ExternalStorageDirectory"] = self.externalStorageDirectory!
            }
            if self.featureScene != nil {
                map["FeatureScene"] = self.featureScene!
            }
            if self.fileName != nil {
                map["FileName"] = self.fileName!
            }
            if self.filePath != nil {
                map["FilePath"] = self.filePath!
            }
            if self.filename != nil {
                map["Filename"] = self.filename!
            }
            if self.flutterRoute != nil {
                map["FlutterRoute"] = self.flutterRoute!
            }
            if self.forceGround != nil {
                map["ForceGround"] = self.forceGround!
            }
            if self.foreGround != nil {
                map["ForeGround"] = self.foreGround!
            }
            if self.h5FullUrl != nil {
                map["H5FullUrl"] = self.h5FullUrl!
            }
            if self.h5ShortUrl != nil {
                map["H5ShortUrl"] = self.h5ShortUrl!
            }
            if self.hasOpenMultiProcessMode != nil {
                map["HasOpenMultiProcessMode"] = self.hasOpenMultiProcessMode!
            }
            if self.hasSdCard != nil {
                map["HasSdCard"] = self.hasSdCard!
            }
            if self.hasSgSecurityConfigKey != nil {
                map["HasSgSecurityConfigKey"] = self.hasSgSecurityConfigKey!
            }
            if self.imei != nil {
                map["Imei"] = self.imei!
            }
            if self.imsi != nil {
                map["Imsi"] = self.imsi!
            }
            if self.inMainProcess != nil {
                map["InMainProcess"] = self.inMainProcess!
            }
            if self.installSdCard != nil {
                map["InstallSdCard"] = self.installSdCard!
            }
            if self.isBackTrace != nil {
                map["IsBackTrace"] = self.isBackTrace!
            }
            if self.isSpeedVersion != nil {
                map["IsSpeedVersion"] = self.isSpeedVersion!
            }
            if self.isp != nil {
                map["Isp"] = self.isp!
            }
            if self.jsBacktrace != nil {
                map["JsBacktrace"] = self.jsBacktrace!
            }
            if self.language != nil {
                map["Language"] = self.language!
            }
            if self.launchedTime != nil {
                map["LaunchedTime"] = self.launchedTime!
            }
            if self.lineNo != nil {
                map["LineNo"] = self.lineNo!
            }
            if self.logHash != nil {
                map["LogHash"] = self.logHash!
            }
            if self.mainLog != nil {
                map["MainLog"] = self.mainLog!
            }
            if self.memoryMap != nil {
                map["MemoryMap"] = self.memoryMap!
            }
            if self.moreInfo1 != nil {
                map["MoreInfo1"] = self.moreInfo1!
            }
            if self.moreInfo2 != nil {
                map["MoreInfo2"] = self.moreInfo2!
            }
            if self.moreInfo3 != nil {
                map["MoreInfo3"] = self.moreInfo3!
            }
            if self.nativeAllThreadDump != nil {
                map["NativeAllThreadDump"] = self.nativeAllThreadDump!
            }
            if self.nativeMaps != nil {
                map["NativeMaps"] = self.nativeMaps!
            }
            if self.needReCluster != nil {
                map["NeedReCluster"] = self.needReCluster!
            }
            if self.openedFileCount != nil {
                map["OpenedFileCount"] = self.openedFileCount!
            }
            if self.operations != nil {
                map["Operations"] = self.operations!
            }
            if self.originData != nil {
                map["OriginData"] = self.originData!
            }
            if self.originUri != nil {
                map["OriginUri"] = self.originUri!
            }
            if self.os != nil {
                map["Os"] = self.os!
            }
            if self.osVersion != nil {
                map["OsVersion"] = self.osVersion!
            }
            if self.page != nil {
                map["Page"] = self.page!
            }
            if self.parentProcessName != nil {
                map["ParentProcessName"] = self.parentProcessName!
            }
            if self.pid != nil {
                map["Pid"] = self.pid!
            }
            if self.platform != nil {
                map["Platform"] = self.platform!
            }
            if self.processName != nil {
                map["ProcessName"] = self.processName!
            }
            if self.province != nil {
                map["Province"] = self.province!
            }
            if self.reason != nil {
                map["Reason"] = self.reason!
            }
            if self.reportContent != nil {
                map["ReportContent"] = self.reportContent!
            }
            if self.reportType != nil {
                map["ReportType"] = self.reportType!
            }
            if self.resolution != nil {
                map["Resolution"] = self.resolution!
            }
            if self.rootDirectory != nil {
                map["RootDirectory"] = self.rootDirectory!
            }
            if self.runtimeExtData != nil {
                map["RuntimeExtData"] = self.runtimeExtData!
            }
            if self.sceneValue != nil {
                map["SceneValue"] = self.sceneValue!
            }
            if self.sdkType != nil {
                map["SdkType"] = self.sdkType!
            }
            if self.sdkVersion != nil {
                map["SdkVersion"] = self.sdkVersion!
            }
            if self.seq != nil {
                map["Seq"] = self.seq!
            }
            if self.serverTime != nil {
                map["ServerTime"] = self.serverTime!
            }
            if self.sessionId != nil {
                map["SessionId"] = self.sessionId!
            }
            if self.simpleReportContent != nil {
                map["SimpleReportContent"] = self.simpleReportContent!
            }
            if self.soLibBuild != nil {
                map["SoLibBuild"] = self.soLibBuild!
            }
            if self.speedFlags != nil {
                map["SpeedFlags"] = self.speedFlags!
            }
            if self.stack != nil {
                map["Stack"] = self.stack!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.summary != nil {
                map["Summary"] = self.summary!
            }
            if self.symbolicFileType != nil {
                map["SymbolicFileType"] = self.symbolicFileType!
            }
            if self.sysLog != nil {
                map["SysLog"] = self.sysLog!
            }
            if self.threadName != nil {
                map["ThreadName"] = self.threadName!
            }
            if self.threads != nil {
                map["Threads"] = self.threads!
            }
            if self.tid != nil {
                map["Tid"] = self.tid!
            }
            if self.track != nil {
                map["Track"] = self.track!
            }
            if self.triggeredTime != nil {
                map["TriggeredTime"] = self.triggeredTime!
            }
            if self.uploadTime != nil {
                map["UploadTime"] = self.uploadTime!
            }
            if self.uri != nil {
                map["Uri"] = self.uri!
            }
            if self.user != nil {
                map["User"] = self.user!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            if self.userNick != nil {
                map["UserNick"] = self.userNick!
            }
            if self.utdid != nil {
                map["Utdid"] = self.utdid!
            }
            if self.uuid != nil {
                map["Uuid"] = self.uuid!
            }
            if self.view != nil {
                map["View"] = self.view!
            }
            if self.weexFullUrl != nil {
                map["WeexFullUrl"] = self.weexFullUrl!
            }
            if self.weexShortUrl != nil {
                map["WeexShortUrl"] = self.weexShortUrl!
            }
            if self.writeLimit != nil {
                map["WriteLimit"] = self.writeLimit!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Access") {
                self.access = dict["Access"] as! String
            }
            if dict.keys.contains("AccessSubType") {
                self.accessSubType = dict["AccessSubType"] as! String
            }
            if dict.keys.contains("AdditionalCallbackInfo") {
                self.additionalCallbackInfo = dict["AdditionalCallbackInfo"] as! String
            }
            if dict.keys.contains("AdditionalCrossPlatformCrashInfo") {
                self.additionalCrossPlatformCrashInfo = dict["AdditionalCrossPlatformCrashInfo"] as! String
            }
            if dict.keys.contains("AdditionalCustomInfo") {
                self.additionalCustomInfo = dict["AdditionalCustomInfo"] as! String
            }
            if dict.keys.contains("AndroidVm") {
                self.androidVm = dict["AndroidVm"] as! String
            }
            if dict.keys.contains("AppId") {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("AppKey") {
                self.appKey = dict["AppKey"] as! Int64
            }
            if dict.keys.contains("AppVersion") {
                self.appVersion = dict["AppVersion"] as! String
            }
            if dict.keys.contains("ArgHash") {
                self.argHash = dict["ArgHash"] as! Int64
            }
            if dict.keys.contains("Args") {
                self.args = dict["Args"] as! String
            }
            if dict.keys.contains("Backtrace") {
                self.backtrace = dict["Backtrace"] as! String
            }
            if dict.keys.contains("Banner") {
                self.banner = dict["Banner"] as! String
            }
            if dict.keys.contains("BinaryUuids") {
                self.binaryUuids = dict["BinaryUuids"] as! String
            }
            if dict.keys.contains("Brand") {
                self.brand = dict["Brand"] as! String
            }
            if dict.keys.contains("BrowserName") {
                self.browserName = dict["BrowserName"] as! String
            }
            if dict.keys.contains("BrowserVersion") {
                self.browserVersion = dict["BrowserVersion"] as! String
            }
            if dict.keys.contains("Build") {
                self.build = dict["Build"] as! String
            }
            if dict.keys.contains("BusinessCountry") {
                self.businessCountry = dict["BusinessCountry"] as! String
            }
            if dict.keys.contains("BusinessErrorExtData") {
                self.businessErrorExtData = dict["BusinessErrorExtData"] as! String
            }
            if dict.keys.contains("BusinessLogType") {
                self.businessLogType = dict["BusinessLogType"] as! String
            }
            if dict.keys.contains("Carrier") {
                self.carrier = dict["Carrier"] as! String
            }
            if dict.keys.contains("Channel") {
                self.channel = dict["Channel"] as! String
            }
            if dict.keys.contains("City") {
                self.city = dict["City"] as! String
            }
            if dict.keys.contains("ClientIp") {
                self.clientIp = dict["ClientIp"] as! String
            }
            if dict.keys.contains("ClientTime") {
                self.clientTime = dict["ClientTime"] as! Int64
            }
            if dict.keys.contains("ColNo") {
                self.colNo = dict["ColNo"] as! String
            }
            if dict.keys.contains("Country") {
                self.country = dict["Country"] as! String
            }
            if dict.keys.contains("CpuModel") {
                self.cpuModel = dict["CpuModel"] as! String
            }
            if dict.keys.contains("CruxModule") {
                self.cruxModule = dict["CruxModule"] as! String
            }
            if dict.keys.contains("CruxStack") {
                self.cruxStack = dict["CruxStack"] as! String
            }
            if dict.keys.contains("CruxStackHash") {
                self.cruxStackHash = dict["CruxStackHash"] as! Int64
            }
            if dict.keys.contains("CruxStackTrace") {
                self.cruxStackTrace = dict["CruxStackTrace"] as! String
            }
            if dict.keys.contains("CruxStackTraceHash") {
                self.cruxStackTraceHash = dict["CruxStackTraceHash"] as! Int64
            }
            if dict.keys.contains("CustomExceptionType") {
                self.customExceptionType = dict["CustomExceptionType"] as! String
            }
            if dict.keys.contains("CustomInfo") {
                self.customInfo = dict["CustomInfo"] as! String
            }
            if dict.keys.contains("DataDirectory") {
                self.dataDirectory = dict["DataDirectory"] as! String
            }
            if dict.keys.contains("DeviceId") {
                self.deviceId = dict["DeviceId"] as! String
            }
            if dict.keys.contains("DeviceModel") {
                self.deviceModel = dict["DeviceModel"] as! String
            }
            if dict.keys.contains("Did") {
                self.did = dict["Did"] as! String
            }
            if dict.keys.contains("Digest") {
                self.digest = dict["Digest"] as! String
            }
            if dict.keys.contains("DigestHash") {
                self.digestHash = dict["DigestHash"] as! String
            }
            if dict.keys.contains("DomScore") {
                self.domScore = dict["DomScore"] as! String
            }
            if dict.keys.contains("DownloadCacheDirectory") {
                self.downloadCacheDirectory = dict["DownloadCacheDirectory"] as! String
            }
            if dict.keys.contains("ErrorName") {
                self.errorName = dict["ErrorName"] as! String
            }
            if dict.keys.contains("ErrorType") {
                self.errorType = dict["ErrorType"] as! String
            }
            if dict.keys.contains("EventId") {
                self.eventId = dict["EventId"] as! Int32
            }
            if dict.keys.contains("EventLog") {
                self.eventLog = dict["EventLog"] as! String
            }
            if dict.keys.contains("ExceptionArg1") {
                self.exceptionArg1 = dict["ExceptionArg1"] as! String
            }
            if dict.keys.contains("ExceptionArg2") {
                self.exceptionArg2 = dict["ExceptionArg2"] as! String
            }
            if dict.keys.contains("ExceptionArg3") {
                self.exceptionArg3 = dict["ExceptionArg3"] as! String
            }
            if dict.keys.contains("ExceptionCode") {
                self.exceptionCode = dict["ExceptionCode"] as! String
            }
            if dict.keys.contains("ExceptionCodes") {
                self.exceptionCodes = dict["ExceptionCodes"] as! String
            }
            if dict.keys.contains("ExceptionDetail") {
                self.exceptionDetail = dict["ExceptionDetail"] as! String
            }
            if dict.keys.contains("ExceptionId") {
                self.exceptionId = dict["ExceptionId"] as! String
            }
            if dict.keys.contains("ExceptionMsg") {
                self.exceptionMsg = dict["ExceptionMsg"] as! String
            }
            if dict.keys.contains("ExceptionSubtype") {
                self.exceptionSubtype = dict["ExceptionSubtype"] as! String
            }
            if dict.keys.contains("ExceptionType") {
                self.exceptionType = dict["ExceptionType"] as! String
            }
            if dict.keys.contains("ExceptionVersion") {
                self.exceptionVersion = dict["ExceptionVersion"] as! String
            }
            if dict.keys.contains("ExportStatus") {
                self.exportStatus = dict["ExportStatus"] as! String
            }
            if dict.keys.contains("ExternalStorageDirectory") {
                self.externalStorageDirectory = dict["ExternalStorageDirectory"] as! String
            }
            if dict.keys.contains("FeatureScene") {
                self.featureScene = dict["FeatureScene"] as! String
            }
            if dict.keys.contains("FileName") {
                self.fileName = dict["FileName"] as! String
            }
            if dict.keys.contains("FilePath") {
                self.filePath = dict["FilePath"] as! String
            }
            if dict.keys.contains("Filename") {
                self.filename = dict["Filename"] as! String
            }
            if dict.keys.contains("FlutterRoute") {
                self.flutterRoute = dict["FlutterRoute"] as! String
            }
            if dict.keys.contains("ForceGround") {
                self.forceGround = dict["ForceGround"] as! Int32
            }
            if dict.keys.contains("ForeGround") {
                self.foreGround = dict["ForeGround"] as! Int32
            }
            if dict.keys.contains("H5FullUrl") {
                self.h5FullUrl = dict["H5FullUrl"] as! String
            }
            if dict.keys.contains("H5ShortUrl") {
                self.h5ShortUrl = dict["H5ShortUrl"] as! String
            }
            if dict.keys.contains("HasOpenMultiProcessMode") {
                self.hasOpenMultiProcessMode = dict["HasOpenMultiProcessMode"] as! Int32
            }
            if dict.keys.contains("HasSdCard") {
                self.hasSdCard = dict["HasSdCard"] as! Int32
            }
            if dict.keys.contains("HasSgSecurityConfigKey") {
                self.hasSgSecurityConfigKey = dict["HasSgSecurityConfigKey"] as! Int32
            }
            if dict.keys.contains("Imei") {
                self.imei = dict["Imei"] as! String
            }
            if dict.keys.contains("Imsi") {
                self.imsi = dict["Imsi"] as! String
            }
            if dict.keys.contains("InMainProcess") {
                self.inMainProcess = dict["InMainProcess"] as! Int32
            }
            if dict.keys.contains("InstallSdCard") {
                self.installSdCard = dict["InstallSdCard"] as! Int32
            }
            if dict.keys.contains("IsBackTrace") {
                self.isBackTrace = dict["IsBackTrace"] as! Int32
            }
            if dict.keys.contains("IsSpeedVersion") {
                self.isSpeedVersion = dict["IsSpeedVersion"] as! Int32
            }
            if dict.keys.contains("Isp") {
                self.isp = dict["Isp"] as! String
            }
            if dict.keys.contains("JsBacktrace") {
                self.jsBacktrace = dict["JsBacktrace"] as! String
            }
            if dict.keys.contains("Language") {
                self.language = dict["Language"] as! String
            }
            if dict.keys.contains("LaunchedTime") {
                self.launchedTime = dict["LaunchedTime"] as! String
            }
            if dict.keys.contains("LineNo") {
                self.lineNo = dict["LineNo"] as! String
            }
            if dict.keys.contains("LogHash") {
                self.logHash = dict["LogHash"] as! Int64
            }
            if dict.keys.contains("MainLog") {
                self.mainLog = dict["MainLog"] as! String
            }
            if dict.keys.contains("MemoryMap") {
                self.memoryMap = dict["MemoryMap"] as! String
            }
            if dict.keys.contains("MoreInfo1") {
                self.moreInfo1 = dict["MoreInfo1"] as! String
            }
            if dict.keys.contains("MoreInfo2") {
                self.moreInfo2 = dict["MoreInfo2"] as! String
            }
            if dict.keys.contains("MoreInfo3") {
                self.moreInfo3 = dict["MoreInfo3"] as! String
            }
            if dict.keys.contains("NativeAllThreadDump") {
                self.nativeAllThreadDump = dict["NativeAllThreadDump"] as! String
            }
            if dict.keys.contains("NativeMaps") {
                self.nativeMaps = dict["NativeMaps"] as! String
            }
            if dict.keys.contains("NeedReCluster") {
                self.needReCluster = dict["NeedReCluster"] as! Int32
            }
            if dict.keys.contains("OpenedFileCount") {
                self.openedFileCount = dict["OpenedFileCount"] as! Int32
            }
            if dict.keys.contains("Operations") {
                self.operations = dict["Operations"] as! String
            }
            if dict.keys.contains("OriginData") {
                self.originData = dict["OriginData"] as! String
            }
            if dict.keys.contains("OriginUri") {
                self.originUri = dict["OriginUri"] as! String
            }
            if dict.keys.contains("Os") {
                self.os = dict["Os"] as! String
            }
            if dict.keys.contains("OsVersion") {
                self.osVersion = dict["OsVersion"] as! String
            }
            if dict.keys.contains("Page") {
                self.page = dict["Page"] as! String
            }
            if dict.keys.contains("ParentProcessName") {
                self.parentProcessName = dict["ParentProcessName"] as! String
            }
            if dict.keys.contains("Pid") {
                self.pid = dict["Pid"] as! Int32
            }
            if dict.keys.contains("Platform") {
                self.platform = dict["Platform"] as! String
            }
            if dict.keys.contains("ProcessName") {
                self.processName = dict["ProcessName"] as! String
            }
            if dict.keys.contains("Province") {
                self.province = dict["Province"] as! String
            }
            if dict.keys.contains("Reason") {
                self.reason = dict["Reason"] as! String
            }
            if dict.keys.contains("ReportContent") {
                self.reportContent = dict["ReportContent"] as! String
            }
            if dict.keys.contains("ReportType") {
                self.reportType = dict["ReportType"] as! String
            }
            if dict.keys.contains("Resolution") {
                self.resolution = dict["Resolution"] as! String
            }
            if dict.keys.contains("RootDirectory") {
                self.rootDirectory = dict["RootDirectory"] as! String
            }
            if dict.keys.contains("RuntimeExtData") {
                self.runtimeExtData = dict["RuntimeExtData"] as! String
            }
            if dict.keys.contains("SceneValue") {
                self.sceneValue = dict["SceneValue"] as! String
            }
            if dict.keys.contains("SdkType") {
                self.sdkType = dict["SdkType"] as! String
            }
            if dict.keys.contains("SdkVersion") {
                self.sdkVersion = dict["SdkVersion"] as! String
            }
            if dict.keys.contains("Seq") {
                self.seq = dict["Seq"] as! String
            }
            if dict.keys.contains("ServerTime") {
                self.serverTime = dict["ServerTime"] as! Int64
            }
            if dict.keys.contains("SessionId") {
                self.sessionId = dict["SessionId"] as! String
            }
            if dict.keys.contains("SimpleReportContent") {
                self.simpleReportContent = dict["SimpleReportContent"] as! String
            }
            if dict.keys.contains("SoLibBuild") {
                self.soLibBuild = dict["SoLibBuild"] as! String
            }
            if dict.keys.contains("SpeedFlags") {
                self.speedFlags = dict["SpeedFlags"] as! String
            }
            if dict.keys.contains("Stack") {
                self.stack = dict["Stack"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Summary") {
                self.summary = dict["Summary"] as! String
            }
            if dict.keys.contains("SymbolicFileType") {
                self.symbolicFileType = dict["SymbolicFileType"] as! String
            }
            if dict.keys.contains("SysLog") {
                self.sysLog = dict["SysLog"] as! String
            }
            if dict.keys.contains("ThreadName") {
                self.threadName = dict["ThreadName"] as! String
            }
            if dict.keys.contains("Threads") {
                self.threads = dict["Threads"] as! String
            }
            if dict.keys.contains("Tid") {
                self.tid = dict["Tid"] as! Int32
            }
            if dict.keys.contains("Track") {
                self.track = dict["Track"] as! String
            }
            if dict.keys.contains("TriggeredTime") {
                self.triggeredTime = dict["TriggeredTime"] as! String
            }
            if dict.keys.contains("UploadTime") {
                self.uploadTime = dict["UploadTime"] as! Int64
            }
            if dict.keys.contains("Uri") {
                self.uri = dict["Uri"] as! String
            }
            if dict.keys.contains("User") {
                self.user = dict["User"] as! String
            }
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! String
            }
            if dict.keys.contains("UserNick") {
                self.userNick = dict["UserNick"] as! String
            }
            if dict.keys.contains("Utdid") {
                self.utdid = dict["Utdid"] as! String
            }
            if dict.keys.contains("Uuid") {
                self.uuid = dict["Uuid"] as! String
            }
            if dict.keys.contains("View") {
                self.view = dict["View"] as! String
            }
            if dict.keys.contains("WeexFullUrl") {
                self.weexFullUrl = dict["WeexFullUrl"] as! String
            }
            if dict.keys.contains("WeexShortUrl") {
                self.weexShortUrl = dict["WeexShortUrl"] as! String
            }
            if dict.keys.contains("WriteLimit") {
                self.writeLimit = dict["WriteLimit"] as! Int32
            }
        }
    }
    public var args: [String: Any]?

    public var errorCode: Int32?

    public var message: String?

    public var model: GetErrorResponseBody.Model?

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
        try self.model?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.args != nil {
            map["Args"] = self.args!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.model != nil {
            map["Model"] = self.model?.toMap()
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
        if dict.keys.contains("Args") {
            self.args = dict["Args"] as! [String: Any]
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Model") {
            var model = GetErrorResponseBody.Model()
            model.fromMap(dict["Model"] as! [String: Any])
            self.model = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetErrorResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetErrorResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetErrorResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetErrorsRequest : Tea.TeaModel {
    public class Filter : Tea.TeaModel {
        public var key: String?

        public var operator_: String?

        public var subFilters: [String]?

        public var values: [Any]?

        public override init() {
            super.init()
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
            if self.operator_ != nil {
                map["Operator"] = self.operator_!
            }
            if self.subFilters != nil {
                map["SubFilters"] = self.subFilters!
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
            if dict.keys.contains("Operator") {
                self.operator_ = dict["Operator"] as! String
            }
            if dict.keys.contains("SubFilters") {
                self.subFilters = dict["SubFilters"] as! [String]
            }
            if dict.keys.contains("Values") {
                self.values = dict["Values"] as! [Any]
            }
        }
    }
    public class TimeRange : Tea.TeaModel {
        public var endTime: Int64?

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
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EndTime") {
                self.endTime = dict["EndTime"] as! Int64
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! Int64
            }
        }
    }
    public var appKey: Int64?

    public var bizModule: String?

    public var digestHash: String?

    public var filter: GetErrorsRequest.Filter?

    public var os: String?

    public var pageIndex: Int32?

    public var pageSize: Int32?

    public var timeRange: GetErrorsRequest.TimeRange?

    public var utdid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.filter?.validate()
        try self.timeRange?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appKey != nil {
            map["AppKey"] = self.appKey!
        }
        if self.bizModule != nil {
            map["BizModule"] = self.bizModule!
        }
        if self.digestHash != nil {
            map["DigestHash"] = self.digestHash!
        }
        if self.filter != nil {
            map["Filter"] = self.filter?.toMap()
        }
        if self.os != nil {
            map["Os"] = self.os!
        }
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.timeRange != nil {
            map["TimeRange"] = self.timeRange?.toMap()
        }
        if self.utdid != nil {
            map["Utdid"] = self.utdid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppKey") {
            self.appKey = dict["AppKey"] as! Int64
        }
        if dict.keys.contains("BizModule") {
            self.bizModule = dict["BizModule"] as! String
        }
        if dict.keys.contains("DigestHash") {
            self.digestHash = dict["DigestHash"] as! String
        }
        if dict.keys.contains("Filter") {
            var model = GetErrorsRequest.Filter()
            model.fromMap(dict["Filter"] as! [String: Any])
            self.filter = model
        }
        if dict.keys.contains("Os") {
            self.os = dict["Os"] as! String
        }
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("TimeRange") {
            var model = GetErrorsRequest.TimeRange()
            model.fromMap(dict["TimeRange"] as! [String: Any])
            self.timeRange = model
        }
        if dict.keys.contains("Utdid") {
            self.utdid = dict["Utdid"] as! String
        }
    }
}

public class GetErrorsShrinkRequest : Tea.TeaModel {
    public class TimeRange : Tea.TeaModel {
        public var endTime: Int64?

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
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EndTime") {
                self.endTime = dict["EndTime"] as! Int64
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! Int64
            }
        }
    }
    public var appKey: Int64?

    public var bizModule: String?

    public var digestHash: String?

    public var filterShrink: String?

    public var os: String?

    public var pageIndex: Int32?

    public var pageSize: Int32?

    public var timeRange: GetErrorsShrinkRequest.TimeRange?

    public var utdid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.timeRange?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appKey != nil {
            map["AppKey"] = self.appKey!
        }
        if self.bizModule != nil {
            map["BizModule"] = self.bizModule!
        }
        if self.digestHash != nil {
            map["DigestHash"] = self.digestHash!
        }
        if self.filterShrink != nil {
            map["Filter"] = self.filterShrink!
        }
        if self.os != nil {
            map["Os"] = self.os!
        }
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.timeRange != nil {
            map["TimeRange"] = self.timeRange?.toMap()
        }
        if self.utdid != nil {
            map["Utdid"] = self.utdid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppKey") {
            self.appKey = dict["AppKey"] as! Int64
        }
        if dict.keys.contains("BizModule") {
            self.bizModule = dict["BizModule"] as! String
        }
        if dict.keys.contains("DigestHash") {
            self.digestHash = dict["DigestHash"] as! String
        }
        if dict.keys.contains("Filter") {
            self.filterShrink = dict["Filter"] as! String
        }
        if dict.keys.contains("Os") {
            self.os = dict["Os"] as! String
        }
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("TimeRange") {
            var model = GetErrorsShrinkRequest.TimeRange()
            model.fromMap(dict["TimeRange"] as! [String: Any])
            self.timeRange = model
        }
        if dict.keys.contains("Utdid") {
            self.utdid = dict["Utdid"] as! String
        }
    }
}

public class GetErrorsResponseBody : Tea.TeaModel {
    public class Model : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public var clientTime: Int64?

            public var did: String?

            public var utdid: String?

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
                if self.clientTime != nil {
                    map["ClientTime"] = self.clientTime!
                }
                if self.did != nil {
                    map["Did"] = self.did!
                }
                if self.utdid != nil {
                    map["Utdid"] = self.utdid!
                }
                if self.uuid != nil {
                    map["Uuid"] = self.uuid!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ClientTime") {
                    self.clientTime = dict["ClientTime"] as! Int64
                }
                if dict.keys.contains("Did") {
                    self.did = dict["Did"] as! String
                }
                if dict.keys.contains("Utdid") {
                    self.utdid = dict["Utdid"] as! String
                }
                if dict.keys.contains("Uuid") {
                    self.uuid = dict["Uuid"] as! String
                }
            }
        }
        public var items: [GetErrorsResponseBody.Model.Items]?

        public var pageNum: Int32?

        public var pageSize: Int32?

        public var pages: Int32?

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
            if self.items != nil {
                var tmp : [Any] = []
                for k in self.items! {
                    tmp.append(k.toMap())
                }
                map["Items"] = tmp
            }
            if self.pageNum != nil {
                map["PageNum"] = self.pageNum!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.pages != nil {
                map["Pages"] = self.pages!
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Items") {
                var tmp : [GetErrorsResponseBody.Model.Items] = []
                for v in dict["Items"] as! [Any] {
                    var model = GetErrorsResponseBody.Model.Items()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.items = tmp
            }
            if dict.keys.contains("PageNum") {
                self.pageNum = dict["PageNum"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("Pages") {
                self.pages = dict["Pages"] as! Int32
            }
            if dict.keys.contains("Total") {
                self.total = dict["Total"] as! Int64
            }
        }
    }
    public var args: [String: Any]?

    public var errorCode: Int32?

    public var message: String?

    public var model: GetErrorsResponseBody.Model?

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
        try self.model?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.args != nil {
            map["Args"] = self.args!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.model != nil {
            map["Model"] = self.model?.toMap()
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
        if dict.keys.contains("Args") {
            self.args = dict["Args"] as! [String: Any]
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Model") {
            var model = GetErrorsResponseBody.Model()
            model.fromMap(dict["Model"] as! [String: Any])
            self.model = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetErrorsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetErrorsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetErrorsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetIssueRequest : Tea.TeaModel {
    public class Filter : Tea.TeaModel {
        public var key: String?

        public var operator_: String?

        public var subFilters: [String]?

        public var values: [Any]?

        public override init() {
            super.init()
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
            if self.operator_ != nil {
                map["Operator"] = self.operator_!
            }
            if self.subFilters != nil {
                map["SubFilters"] = self.subFilters!
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
            if dict.keys.contains("Operator") {
                self.operator_ = dict["Operator"] as! String
            }
            if dict.keys.contains("SubFilters") {
                self.subFilters = dict["SubFilters"] as! [String]
            }
            if dict.keys.contains("Values") {
                self.values = dict["Values"] as! [Any]
            }
        }
    }
    public class TimeRange : Tea.TeaModel {
        public var endTime: Int64?

        public var granularity: Int32?

        public var granularityUnit: String?

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
            if self.granularity != nil {
                map["Granularity"] = self.granularity!
            }
            if self.granularityUnit != nil {
                map["GranularityUnit"] = self.granularityUnit!
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
            if dict.keys.contains("Granularity") {
                self.granularity = dict["Granularity"] as! Int32
            }
            if dict.keys.contains("GranularityUnit") {
                self.granularityUnit = dict["GranularityUnit"] as! String
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! Int64
            }
        }
    }
    public var appKey: Int64?

    public var bizModule: String?

    public var digestHash: String?

    public var filter: GetIssueRequest.Filter?

    public var os: String?

    public var timeRange: GetIssueRequest.TimeRange?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.filter?.validate()
        try self.timeRange?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appKey != nil {
            map["AppKey"] = self.appKey!
        }
        if self.bizModule != nil {
            map["BizModule"] = self.bizModule!
        }
        if self.digestHash != nil {
            map["DigestHash"] = self.digestHash!
        }
        if self.filter != nil {
            map["Filter"] = self.filter?.toMap()
        }
        if self.os != nil {
            map["Os"] = self.os!
        }
        if self.timeRange != nil {
            map["TimeRange"] = self.timeRange?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppKey") {
            self.appKey = dict["AppKey"] as! Int64
        }
        if dict.keys.contains("BizModule") {
            self.bizModule = dict["BizModule"] as! String
        }
        if dict.keys.contains("DigestHash") {
            self.digestHash = dict["DigestHash"] as! String
        }
        if dict.keys.contains("Filter") {
            var model = GetIssueRequest.Filter()
            model.fromMap(dict["Filter"] as! [String: Any])
            self.filter = model
        }
        if dict.keys.contains("Os") {
            self.os = dict["Os"] as! String
        }
        if dict.keys.contains("TimeRange") {
            var model = GetIssueRequest.TimeRange()
            model.fromMap(dict["TimeRange"] as! [String: Any])
            self.timeRange = model
        }
    }
}

public class GetIssueShrinkRequest : Tea.TeaModel {
    public class TimeRange : Tea.TeaModel {
        public var endTime: Int64?

        public var granularity: Int32?

        public var granularityUnit: String?

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
            if self.granularity != nil {
                map["Granularity"] = self.granularity!
            }
            if self.granularityUnit != nil {
                map["GranularityUnit"] = self.granularityUnit!
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
            if dict.keys.contains("Granularity") {
                self.granularity = dict["Granularity"] as! Int32
            }
            if dict.keys.contains("GranularityUnit") {
                self.granularityUnit = dict["GranularityUnit"] as! String
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! Int64
            }
        }
    }
    public var appKey: Int64?

    public var bizModule: String?

    public var digestHash: String?

    public var filterShrink: String?

    public var os: String?

    public var timeRange: GetIssueShrinkRequest.TimeRange?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.timeRange?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appKey != nil {
            map["AppKey"] = self.appKey!
        }
        if self.bizModule != nil {
            map["BizModule"] = self.bizModule!
        }
        if self.digestHash != nil {
            map["DigestHash"] = self.digestHash!
        }
        if self.filterShrink != nil {
            map["Filter"] = self.filterShrink!
        }
        if self.os != nil {
            map["Os"] = self.os!
        }
        if self.timeRange != nil {
            map["TimeRange"] = self.timeRange?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppKey") {
            self.appKey = dict["AppKey"] as! Int64
        }
        if dict.keys.contains("BizModule") {
            self.bizModule = dict["BizModule"] as! String
        }
        if dict.keys.contains("DigestHash") {
            self.digestHash = dict["DigestHash"] as! String
        }
        if dict.keys.contains("Filter") {
            self.filterShrink = dict["Filter"] as! String
        }
        if dict.keys.contains("Os") {
            self.os = dict["Os"] as! String
        }
        if dict.keys.contains("TimeRange") {
            var model = GetIssueShrinkRequest.TimeRange()
            model.fromMap(dict["TimeRange"] as! [String: Any])
            self.timeRange = model
        }
    }
}

public class GetIssueResponseBody : Tea.TeaModel {
    public class Model : Tea.TeaModel {
        public var affectedVersions: [String]?

        public var cruxStack: String?

        public var digestHash: String?

        public var errorColumn: Int32?

        public var errorCount: Int32?

        public var errorCountGrowthRate: Double?

        public var errorDeviceCount: Int32?

        public var errorDeviceCountGrowthRate: Double?

        public var errorDeviceRate: Double?

        public var errorDeviceRateGrowthRate: Double?

        public var errorFileName: String?

        public var errorLine: String?

        public var errorName: String?

        public var errorRate: Double?

        public var errorRateGrowthRate: Double?

        public var errorType: String?

        public var firstVersion: String?

        public var gmtCreate: Int64?

        public var gmtLatest: Int64?

        public var keyLine: Int32?

        public var name: String?

        public var stack: String?

        public var status: Int32?

        public var summary: String?

        public var symbolicStatus: Bool?

        public var tags: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.affectedVersions != nil {
                map["AffectedVersions"] = self.affectedVersions!
            }
            if self.cruxStack != nil {
                map["CruxStack"] = self.cruxStack!
            }
            if self.digestHash != nil {
                map["DigestHash"] = self.digestHash!
            }
            if self.errorColumn != nil {
                map["ErrorColumn"] = self.errorColumn!
            }
            if self.errorCount != nil {
                map["ErrorCount"] = self.errorCount!
            }
            if self.errorCountGrowthRate != nil {
                map["ErrorCountGrowthRate"] = self.errorCountGrowthRate!
            }
            if self.errorDeviceCount != nil {
                map["ErrorDeviceCount"] = self.errorDeviceCount!
            }
            if self.errorDeviceCountGrowthRate != nil {
                map["ErrorDeviceCountGrowthRate"] = self.errorDeviceCountGrowthRate!
            }
            if self.errorDeviceRate != nil {
                map["ErrorDeviceRate"] = self.errorDeviceRate!
            }
            if self.errorDeviceRateGrowthRate != nil {
                map["ErrorDeviceRateGrowthRate"] = self.errorDeviceRateGrowthRate!
            }
            if self.errorFileName != nil {
                map["ErrorFileName"] = self.errorFileName!
            }
            if self.errorLine != nil {
                map["ErrorLine"] = self.errorLine!
            }
            if self.errorName != nil {
                map["ErrorName"] = self.errorName!
            }
            if self.errorRate != nil {
                map["ErrorRate"] = self.errorRate!
            }
            if self.errorRateGrowthRate != nil {
                map["ErrorRateGrowthRate"] = self.errorRateGrowthRate!
            }
            if self.errorType != nil {
                map["ErrorType"] = self.errorType!
            }
            if self.firstVersion != nil {
                map["FirstVersion"] = self.firstVersion!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtLatest != nil {
                map["GmtLatest"] = self.gmtLatest!
            }
            if self.keyLine != nil {
                map["KeyLine"] = self.keyLine!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.stack != nil {
                map["Stack"] = self.stack!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.summary != nil {
                map["Summary"] = self.summary!
            }
            if self.symbolicStatus != nil {
                map["SymbolicStatus"] = self.symbolicStatus!
            }
            if self.tags != nil {
                map["Tags"] = self.tags!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AffectedVersions") {
                self.affectedVersions = dict["AffectedVersions"] as! [String]
            }
            if dict.keys.contains("CruxStack") {
                self.cruxStack = dict["CruxStack"] as! String
            }
            if dict.keys.contains("DigestHash") {
                self.digestHash = dict["DigestHash"] as! String
            }
            if dict.keys.contains("ErrorColumn") {
                self.errorColumn = dict["ErrorColumn"] as! Int32
            }
            if dict.keys.contains("ErrorCount") {
                self.errorCount = dict["ErrorCount"] as! Int32
            }
            if dict.keys.contains("ErrorCountGrowthRate") {
                self.errorCountGrowthRate = dict["ErrorCountGrowthRate"] as! Double
            }
            if dict.keys.contains("ErrorDeviceCount") {
                self.errorDeviceCount = dict["ErrorDeviceCount"] as! Int32
            }
            if dict.keys.contains("ErrorDeviceCountGrowthRate") {
                self.errorDeviceCountGrowthRate = dict["ErrorDeviceCountGrowthRate"] as! Double
            }
            if dict.keys.contains("ErrorDeviceRate") {
                self.errorDeviceRate = dict["ErrorDeviceRate"] as! Double
            }
            if dict.keys.contains("ErrorDeviceRateGrowthRate") {
                self.errorDeviceRateGrowthRate = dict["ErrorDeviceRateGrowthRate"] as! Double
            }
            if dict.keys.contains("ErrorFileName") {
                self.errorFileName = dict["ErrorFileName"] as! String
            }
            if dict.keys.contains("ErrorLine") {
                self.errorLine = dict["ErrorLine"] as! String
            }
            if dict.keys.contains("ErrorName") {
                self.errorName = dict["ErrorName"] as! String
            }
            if dict.keys.contains("ErrorRate") {
                self.errorRate = dict["ErrorRate"] as! Double
            }
            if dict.keys.contains("ErrorRateGrowthRate") {
                self.errorRateGrowthRate = dict["ErrorRateGrowthRate"] as! Double
            }
            if dict.keys.contains("ErrorType") {
                self.errorType = dict["ErrorType"] as! String
            }
            if dict.keys.contains("FirstVersion") {
                self.firstVersion = dict["FirstVersion"] as! String
            }
            if dict.keys.contains("GmtCreate") {
                self.gmtCreate = dict["GmtCreate"] as! Int64
            }
            if dict.keys.contains("GmtLatest") {
                self.gmtLatest = dict["GmtLatest"] as! Int64
            }
            if dict.keys.contains("KeyLine") {
                self.keyLine = dict["KeyLine"] as! Int32
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Stack") {
                self.stack = dict["Stack"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! Int32
            }
            if dict.keys.contains("Summary") {
                self.summary = dict["Summary"] as! String
            }
            if dict.keys.contains("SymbolicStatus") {
                self.symbolicStatus = dict["SymbolicStatus"] as! Bool
            }
            if dict.keys.contains("Tags") {
                self.tags = dict["Tags"] as! [String]
            }
        }
    }
    public var args: [String: Any]?

    public var errorCode: Int32?

    public var message: String?

    public var model: GetIssueResponseBody.Model?

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
        try self.model?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.args != nil {
            map["Args"] = self.args!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.model != nil {
            map["Model"] = self.model?.toMap()
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
        if dict.keys.contains("Args") {
            self.args = dict["Args"] as! [String: Any]
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Model") {
            var model = GetIssueResponseBody.Model()
            model.fromMap(dict["Model"] as! [String: Any])
            self.model = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetIssueResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetIssueResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetIssueResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetIssuesRequest : Tea.TeaModel {
    public class Filter : Tea.TeaModel {
        public var key: String?

        public var operator_: String?

        public var subFilters: [String]?

        public var values: [Any]?

        public override init() {
            super.init()
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
            if self.operator_ != nil {
                map["Operator"] = self.operator_!
            }
            if self.subFilters != nil {
                map["SubFilters"] = self.subFilters!
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
            if dict.keys.contains("Operator") {
                self.operator_ = dict["Operator"] as! String
            }
            if dict.keys.contains("SubFilters") {
                self.subFilters = dict["SubFilters"] as! [String]
            }
            if dict.keys.contains("Values") {
                self.values = dict["Values"] as! [Any]
            }
        }
    }
    public class TimeRange : Tea.TeaModel {
        public var endTime: Int64?

        public var granularity: Int32?

        public var granularityUnit: String?

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
            if self.granularity != nil {
                map["Granularity"] = self.granularity!
            }
            if self.granularityUnit != nil {
                map["GranularityUnit"] = self.granularityUnit!
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
            if dict.keys.contains("Granularity") {
                self.granularity = dict["Granularity"] as! Int32
            }
            if dict.keys.contains("GranularityUnit") {
                self.granularityUnit = dict["GranularityUnit"] as! String
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! Int64
            }
        }
    }
    public var appKey: Int64?

    public var bizModule: String?

    public var filter: GetIssuesRequest.Filter?

    public var name: String?

    public var orderBy: String?

    public var orderType: String?

    public var os: String?

    public var pageIndex: Int32?

    public var pageSize: Int32?

    public var status: Int32?

    public var timeRange: GetIssuesRequest.TimeRange?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.filter?.validate()
        try self.timeRange?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appKey != nil {
            map["AppKey"] = self.appKey!
        }
        if self.bizModule != nil {
            map["BizModule"] = self.bizModule!
        }
        if self.filter != nil {
            map["Filter"] = self.filter?.toMap()
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.orderBy != nil {
            map["OrderBy"] = self.orderBy!
        }
        if self.orderType != nil {
            map["OrderType"] = self.orderType!
        }
        if self.os != nil {
            map["Os"] = self.os!
        }
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.timeRange != nil {
            map["TimeRange"] = self.timeRange?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppKey") {
            self.appKey = dict["AppKey"] as! Int64
        }
        if dict.keys.contains("BizModule") {
            self.bizModule = dict["BizModule"] as! String
        }
        if dict.keys.contains("Filter") {
            var model = GetIssuesRequest.Filter()
            model.fromMap(dict["Filter"] as! [String: Any])
            self.filter = model
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OrderBy") {
            self.orderBy = dict["OrderBy"] as! String
        }
        if dict.keys.contains("OrderType") {
            self.orderType = dict["OrderType"] as! String
        }
        if dict.keys.contains("Os") {
            self.os = dict["Os"] as! String
        }
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! Int32
        }
        if dict.keys.contains("TimeRange") {
            var model = GetIssuesRequest.TimeRange()
            model.fromMap(dict["TimeRange"] as! [String: Any])
            self.timeRange = model
        }
    }
}

public class GetIssuesShrinkRequest : Tea.TeaModel {
    public class TimeRange : Tea.TeaModel {
        public var endTime: Int64?

        public var granularity: Int32?

        public var granularityUnit: String?

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
            if self.granularity != nil {
                map["Granularity"] = self.granularity!
            }
            if self.granularityUnit != nil {
                map["GranularityUnit"] = self.granularityUnit!
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
            if dict.keys.contains("Granularity") {
                self.granularity = dict["Granularity"] as! Int32
            }
            if dict.keys.contains("GranularityUnit") {
                self.granularityUnit = dict["GranularityUnit"] as! String
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! Int64
            }
        }
    }
    public var appKey: Int64?

    public var bizModule: String?

    public var filterShrink: String?

    public var name: String?

    public var orderBy: String?

    public var orderType: String?

    public var os: String?

    public var pageIndex: Int32?

    public var pageSize: Int32?

    public var status: Int32?

    public var timeRange: GetIssuesShrinkRequest.TimeRange?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.timeRange?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appKey != nil {
            map["AppKey"] = self.appKey!
        }
        if self.bizModule != nil {
            map["BizModule"] = self.bizModule!
        }
        if self.filterShrink != nil {
            map["Filter"] = self.filterShrink!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.orderBy != nil {
            map["OrderBy"] = self.orderBy!
        }
        if self.orderType != nil {
            map["OrderType"] = self.orderType!
        }
        if self.os != nil {
            map["Os"] = self.os!
        }
        if self.pageIndex != nil {
            map["PageIndex"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.timeRange != nil {
            map["TimeRange"] = self.timeRange?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppKey") {
            self.appKey = dict["AppKey"] as! Int64
        }
        if dict.keys.contains("BizModule") {
            self.bizModule = dict["BizModule"] as! String
        }
        if dict.keys.contains("Filter") {
            self.filterShrink = dict["Filter"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OrderBy") {
            self.orderBy = dict["OrderBy"] as! String
        }
        if dict.keys.contains("OrderType") {
            self.orderType = dict["OrderType"] as! String
        }
        if dict.keys.contains("Os") {
            self.os = dict["Os"] as! String
        }
        if dict.keys.contains("PageIndex") {
            self.pageIndex = dict["PageIndex"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! Int32
        }
        if dict.keys.contains("TimeRange") {
            var model = GetIssuesShrinkRequest.TimeRange()
            model.fromMap(dict["TimeRange"] as! [String: Any])
            self.timeRange = model
        }
    }
}

public class GetIssuesResponseBody : Tea.TeaModel {
    public class Model : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public var affectedUserCount: Int32?

            public var digestHash: String?

            public var domScore: String?

            public var errorColumn: Int32?

            public var errorCount: Int32?

            public var errorDeviceCount: Int32?

            public var errorDeviceRate: Double?

            public var errorFileName: String?

            public var errorLine: Int32?

            public var errorName: String?

            public var errorRate: Double?

            public var errorType: String?

            public var eventTime: String?

            public var firstVersion: String?

            public var name: String?

            public var stack: String?

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
                if self.affectedUserCount != nil {
                    map["AffectedUserCount"] = self.affectedUserCount!
                }
                if self.digestHash != nil {
                    map["DigestHash"] = self.digestHash!
                }
                if self.domScore != nil {
                    map["DomScore"] = self.domScore!
                }
                if self.errorColumn != nil {
                    map["ErrorColumn"] = self.errorColumn!
                }
                if self.errorCount != nil {
                    map["ErrorCount"] = self.errorCount!
                }
                if self.errorDeviceCount != nil {
                    map["ErrorDeviceCount"] = self.errorDeviceCount!
                }
                if self.errorDeviceRate != nil {
                    map["ErrorDeviceRate"] = self.errorDeviceRate!
                }
                if self.errorFileName != nil {
                    map["ErrorFileName"] = self.errorFileName!
                }
                if self.errorLine != nil {
                    map["ErrorLine"] = self.errorLine!
                }
                if self.errorName != nil {
                    map["ErrorName"] = self.errorName!
                }
                if self.errorRate != nil {
                    map["ErrorRate"] = self.errorRate!
                }
                if self.errorType != nil {
                    map["ErrorType"] = self.errorType!
                }
                if self.eventTime != nil {
                    map["EventTime"] = self.eventTime!
                }
                if self.firstVersion != nil {
                    map["FirstVersion"] = self.firstVersion!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.stack != nil {
                    map["Stack"] = self.stack!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AffectedUserCount") {
                    self.affectedUserCount = dict["AffectedUserCount"] as! Int32
                }
                if dict.keys.contains("DigestHash") {
                    self.digestHash = dict["DigestHash"] as! String
                }
                if dict.keys.contains("DomScore") {
                    self.domScore = dict["DomScore"] as! String
                }
                if dict.keys.contains("ErrorColumn") {
                    self.errorColumn = dict["ErrorColumn"] as! Int32
                }
                if dict.keys.contains("ErrorCount") {
                    self.errorCount = dict["ErrorCount"] as! Int32
                }
                if dict.keys.contains("ErrorDeviceCount") {
                    self.errorDeviceCount = dict["ErrorDeviceCount"] as! Int32
                }
                if dict.keys.contains("ErrorDeviceRate") {
                    self.errorDeviceRate = dict["ErrorDeviceRate"] as! Double
                }
                if dict.keys.contains("ErrorFileName") {
                    self.errorFileName = dict["ErrorFileName"] as! String
                }
                if dict.keys.contains("ErrorLine") {
                    self.errorLine = dict["ErrorLine"] as! Int32
                }
                if dict.keys.contains("ErrorName") {
                    self.errorName = dict["ErrorName"] as! String
                }
                if dict.keys.contains("ErrorRate") {
                    self.errorRate = dict["ErrorRate"] as! Double
                }
                if dict.keys.contains("ErrorType") {
                    self.errorType = dict["ErrorType"] as! String
                }
                if dict.keys.contains("EventTime") {
                    self.eventTime = dict["EventTime"] as! String
                }
                if dict.keys.contains("FirstVersion") {
                    self.firstVersion = dict["FirstVersion"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Stack") {
                    self.stack = dict["Stack"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! Int32
                }
            }
        }
        public var items: [GetIssuesResponseBody.Model.Items]?

        public var pageNum: Int32?

        public var pageSize: Int32?

        public var pages: Int32?

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
            if self.items != nil {
                var tmp : [Any] = []
                for k in self.items! {
                    tmp.append(k.toMap())
                }
                map["Items"] = tmp
            }
            if self.pageNum != nil {
                map["PageNum"] = self.pageNum!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.pages != nil {
                map["Pages"] = self.pages!
            }
            if self.total != nil {
                map["Total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Items") {
                var tmp : [GetIssuesResponseBody.Model.Items] = []
                for v in dict["Items"] as! [Any] {
                    var model = GetIssuesResponseBody.Model.Items()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.items = tmp
            }
            if dict.keys.contains("PageNum") {
                self.pageNum = dict["PageNum"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("Pages") {
                self.pages = dict["Pages"] as! Int32
            }
            if dict.keys.contains("Total") {
                self.total = dict["Total"] as! Int64
            }
        }
    }
    public var args: [String: Any]?

    public var errorCode: Int32?

    public var message: String?

    public var model: GetIssuesResponseBody.Model?

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
        try self.model?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.args != nil {
            map["Args"] = self.args!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.model != nil {
            map["Model"] = self.model?.toMap()
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
        if dict.keys.contains("Args") {
            self.args = dict["Args"] as! [String: Any]
        }
        if dict.keys.contains("ErrorCode") {
            self.errorCode = dict["ErrorCode"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Model") {
            var model = GetIssuesResponseBody.Model()
            model.fromMap(dict["Model"] as! [String: Any])
            self.model = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetIssuesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetIssuesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetIssuesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
