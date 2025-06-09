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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Filter"] as? [String: Any?] {
            var model = EventFilter()
            model.fromMap(value)
            self.filter = model
        }
        if let value = dict["ModifyTime"] as? String {
            self.modifyTime = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Operator"] as? String {
            self.operator_ = value
        }
        if let value = dict["SampleRate"] as? Double {
            self.sampleRate = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Key"] as? String {
            self.key = value
        }
        if let value = dict["Op"] as? String {
            self.op = value
        }
        if let value = dict["SubFilters"] as? [Any?] {
            var tmp : [EventFilter] = []
            for v in value {
                if v != nil {
                    var model = EventFilter()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.subFilters = tmp
        }
        if let value = dict["Values"] as? [String] {
            self.values = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Conditional"] as? [Any?] {
            var tmp : [ConditionalRule] = []
            for v in value {
                if v != nil {
                    var model = ConditionalRule()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.conditional = tmp
        }
        if let value = dict["Enable"] as? Bool {
            self.enable = value
        }
        if let value = dict["EventId"] as? String {
            self.eventId = value
        }
        if let value = dict["ModifyTime"] as? String {
            self.modifyTime = value
        }
        if let value = dict["Operator"] as? String {
            self.operator_ = value
        }
        if let value = dict["SampleRate"] as? Double {
            self.sampleRate = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Key"] as? String {
            self.key = value
        }
        if let value = dict["Operator"] as? String {
            self.operator_ = value
        }
        if let value = dict["SubFilters"] as? [Any?] {
            var tmp : [Filter] = []
            for v in value {
                if v != nil {
                    var model = Filter()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.subFilters = tmp
        }
        if let value = dict["Values"] as? Any {
            self.values = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["ModifyTime"] as? String {
            self.modifyTime = value
        }
        if let value = dict["Operator"] as? String {
            self.operator_ = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FullSampleDeviceIds"] as? [Any?] {
            var tmp : [FullSampleItem] = []
            for v in value {
                if v != nil {
                    var model = FullSampleItem()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.fullSampleDeviceIds = tmp
        }
        if let value = dict["FullSampleUsers"] as? [Any?] {
            var tmp : [FullSampleItem] = []
            for v in value {
                if v != nil {
                    var model = FullSampleItem()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.fullSampleUsers = tmp
        }
        if let value = dict["SampleMethod"] as? String {
            self.sampleMethod = value
        }
        if let value = dict["SampleRate"] as? Double {
            self.sampleRate = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppKey"] as? Int64 {
            self.appKey = value
        }
        if let value = dict["BizModule"] as? String {
            self.bizModule = value
        }
        if let value = dict["ClientTime"] as? Int64 {
            self.clientTime = value
        }
        if let value = dict["Did"] as? String {
            self.did = value
        }
        if let value = dict["Force"] as? Bool {
            self.force = value
        }
        if let value = dict["Os"] as? String {
            self.os = value
        }
        if let value = dict["Uuid"] as? String {
            self.uuid = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Access"] as? String {
                self.access = value
            }
            if let value = dict["AccessSubType"] as? String {
                self.accessSubType = value
            }
            if let value = dict["AdditionalCallbackInfo"] as? String {
                self.additionalCallbackInfo = value
            }
            if let value = dict["AdditionalCrossPlatformCrashInfo"] as? String {
                self.additionalCrossPlatformCrashInfo = value
            }
            if let value = dict["AdditionalCustomInfo"] as? String {
                self.additionalCustomInfo = value
            }
            if let value = dict["AndroidVm"] as? String {
                self.androidVm = value
            }
            if let value = dict["AppId"] as? String {
                self.appId = value
            }
            if let value = dict["AppKey"] as? Int64 {
                self.appKey = value
            }
            if let value = dict["AppVersion"] as? String {
                self.appVersion = value
            }
            if let value = dict["ArgHash"] as? Int64 {
                self.argHash = value
            }
            if let value = dict["Args"] as? String {
                self.args = value
            }
            if let value = dict["Backtrace"] as? String {
                self.backtrace = value
            }
            if let value = dict["Banner"] as? String {
                self.banner = value
            }
            if let value = dict["BinaryUuids"] as? String {
                self.binaryUuids = value
            }
            if let value = dict["Brand"] as? String {
                self.brand = value
            }
            if let value = dict["BrowserName"] as? String {
                self.browserName = value
            }
            if let value = dict["BrowserVersion"] as? String {
                self.browserVersion = value
            }
            if let value = dict["Build"] as? String {
                self.build = value
            }
            if let value = dict["BusinessCountry"] as? String {
                self.businessCountry = value
            }
            if let value = dict["BusinessErrorExtData"] as? String {
                self.businessErrorExtData = value
            }
            if let value = dict["BusinessLogType"] as? String {
                self.businessLogType = value
            }
            if let value = dict["Carrier"] as? String {
                self.carrier = value
            }
            if let value = dict["Channel"] as? String {
                self.channel = value
            }
            if let value = dict["City"] as? String {
                self.city = value
            }
            if let value = dict["ClientIp"] as? String {
                self.clientIp = value
            }
            if let value = dict["ClientTime"] as? Int64 {
                self.clientTime = value
            }
            if let value = dict["ColNo"] as? String {
                self.colNo = value
            }
            if let value = dict["Country"] as? String {
                self.country = value
            }
            if let value = dict["CpuModel"] as? String {
                self.cpuModel = value
            }
            if let value = dict["CruxModule"] as? String {
                self.cruxModule = value
            }
            if let value = dict["CruxStack"] as? String {
                self.cruxStack = value
            }
            if let value = dict["CruxStackHash"] as? Int64 {
                self.cruxStackHash = value
            }
            if let value = dict["CruxStackTrace"] as? String {
                self.cruxStackTrace = value
            }
            if let value = dict["CruxStackTraceHash"] as? Int64 {
                self.cruxStackTraceHash = value
            }
            if let value = dict["CustomExceptionType"] as? String {
                self.customExceptionType = value
            }
            if let value = dict["CustomInfo"] as? String {
                self.customInfo = value
            }
            if let value = dict["DataDirectory"] as? String {
                self.dataDirectory = value
            }
            if let value = dict["DeviceId"] as? String {
                self.deviceId = value
            }
            if let value = dict["DeviceModel"] as? String {
                self.deviceModel = value
            }
            if let value = dict["Did"] as? String {
                self.did = value
            }
            if let value = dict["Digest"] as? String {
                self.digest = value
            }
            if let value = dict["DigestHash"] as? String {
                self.digestHash = value
            }
            if let value = dict["DomScore"] as? String {
                self.domScore = value
            }
            if let value = dict["DownloadCacheDirectory"] as? String {
                self.downloadCacheDirectory = value
            }
            if let value = dict["ErrorName"] as? String {
                self.errorName = value
            }
            if let value = dict["ErrorType"] as? String {
                self.errorType = value
            }
            if let value = dict["EventId"] as? Int32 {
                self.eventId = value
            }
            if let value = dict["EventLog"] as? String {
                self.eventLog = value
            }
            if let value = dict["ExceptionArg1"] as? String {
                self.exceptionArg1 = value
            }
            if let value = dict["ExceptionArg2"] as? String {
                self.exceptionArg2 = value
            }
            if let value = dict["ExceptionArg3"] as? String {
                self.exceptionArg3 = value
            }
            if let value = dict["ExceptionCode"] as? String {
                self.exceptionCode = value
            }
            if let value = dict["ExceptionCodes"] as? String {
                self.exceptionCodes = value
            }
            if let value = dict["ExceptionDetail"] as? String {
                self.exceptionDetail = value
            }
            if let value = dict["ExceptionId"] as? String {
                self.exceptionId = value
            }
            if let value = dict["ExceptionMsg"] as? String {
                self.exceptionMsg = value
            }
            if let value = dict["ExceptionSubtype"] as? String {
                self.exceptionSubtype = value
            }
            if let value = dict["ExceptionType"] as? String {
                self.exceptionType = value
            }
            if let value = dict["ExceptionVersion"] as? String {
                self.exceptionVersion = value
            }
            if let value = dict["ExportStatus"] as? String {
                self.exportStatus = value
            }
            if let value = dict["ExternalStorageDirectory"] as? String {
                self.externalStorageDirectory = value
            }
            if let value = dict["FeatureScene"] as? String {
                self.featureScene = value
            }
            if let value = dict["FileName"] as? String {
                self.fileName = value
            }
            if let value = dict["FilePath"] as? String {
                self.filePath = value
            }
            if let value = dict["Filename"] as? String {
                self.filename = value
            }
            if let value = dict["FlutterRoute"] as? String {
                self.flutterRoute = value
            }
            if let value = dict["ForceGround"] as? Int32 {
                self.forceGround = value
            }
            if let value = dict["ForeGround"] as? Int32 {
                self.foreGround = value
            }
            if let value = dict["H5FullUrl"] as? String {
                self.h5FullUrl = value
            }
            if let value = dict["H5ShortUrl"] as? String {
                self.h5ShortUrl = value
            }
            if let value = dict["HasOpenMultiProcessMode"] as? Int32 {
                self.hasOpenMultiProcessMode = value
            }
            if let value = dict["HasSdCard"] as? Int32 {
                self.hasSdCard = value
            }
            if let value = dict["HasSgSecurityConfigKey"] as? Int32 {
                self.hasSgSecurityConfigKey = value
            }
            if let value = dict["Imei"] as? String {
                self.imei = value
            }
            if let value = dict["Imsi"] as? String {
                self.imsi = value
            }
            if let value = dict["InMainProcess"] as? Int32 {
                self.inMainProcess = value
            }
            if let value = dict["InstallSdCard"] as? Int32 {
                self.installSdCard = value
            }
            if let value = dict["IsBackTrace"] as? Int32 {
                self.isBackTrace = value
            }
            if let value = dict["IsSpeedVersion"] as? Int32 {
                self.isSpeedVersion = value
            }
            if let value = dict["Isp"] as? String {
                self.isp = value
            }
            if let value = dict["JsBacktrace"] as? String {
                self.jsBacktrace = value
            }
            if let value = dict["Language"] as? String {
                self.language = value
            }
            if let value = dict["LaunchedTime"] as? String {
                self.launchedTime = value
            }
            if let value = dict["LineNo"] as? String {
                self.lineNo = value
            }
            if let value = dict["LogHash"] as? Int64 {
                self.logHash = value
            }
            if let value = dict["MainLog"] as? String {
                self.mainLog = value
            }
            if let value = dict["MemoryMap"] as? String {
                self.memoryMap = value
            }
            if let value = dict["MoreInfo1"] as? String {
                self.moreInfo1 = value
            }
            if let value = dict["MoreInfo2"] as? String {
                self.moreInfo2 = value
            }
            if let value = dict["MoreInfo3"] as? String {
                self.moreInfo3 = value
            }
            if let value = dict["NativeAllThreadDump"] as? String {
                self.nativeAllThreadDump = value
            }
            if let value = dict["NativeMaps"] as? String {
                self.nativeMaps = value
            }
            if let value = dict["NeedReCluster"] as? Int32 {
                self.needReCluster = value
            }
            if let value = dict["OpenedFileCount"] as? Int32 {
                self.openedFileCount = value
            }
            if let value = dict["Operations"] as? String {
                self.operations = value
            }
            if let value = dict["OriginData"] as? String {
                self.originData = value
            }
            if let value = dict["OriginUri"] as? String {
                self.originUri = value
            }
            if let value = dict["Os"] as? String {
                self.os = value
            }
            if let value = dict["OsVersion"] as? String {
                self.osVersion = value
            }
            if let value = dict["Page"] as? String {
                self.page = value
            }
            if let value = dict["ParentProcessName"] as? String {
                self.parentProcessName = value
            }
            if let value = dict["Pid"] as? Int32 {
                self.pid = value
            }
            if let value = dict["Platform"] as? String {
                self.platform = value
            }
            if let value = dict["ProcessName"] as? String {
                self.processName = value
            }
            if let value = dict["Province"] as? String {
                self.province = value
            }
            if let value = dict["Reason"] as? String {
                self.reason = value
            }
            if let value = dict["ReportContent"] as? String {
                self.reportContent = value
            }
            if let value = dict["ReportType"] as? String {
                self.reportType = value
            }
            if let value = dict["Resolution"] as? String {
                self.resolution = value
            }
            if let value = dict["RootDirectory"] as? String {
                self.rootDirectory = value
            }
            if let value = dict["RuntimeExtData"] as? String {
                self.runtimeExtData = value
            }
            if let value = dict["SceneValue"] as? String {
                self.sceneValue = value
            }
            if let value = dict["SdkType"] as? String {
                self.sdkType = value
            }
            if let value = dict["SdkVersion"] as? String {
                self.sdkVersion = value
            }
            if let value = dict["Seq"] as? String {
                self.seq = value
            }
            if let value = dict["ServerTime"] as? Int64 {
                self.serverTime = value
            }
            if let value = dict["SessionId"] as? String {
                self.sessionId = value
            }
            if let value = dict["SimpleReportContent"] as? String {
                self.simpleReportContent = value
            }
            if let value = dict["SoLibBuild"] as? String {
                self.soLibBuild = value
            }
            if let value = dict["SpeedFlags"] as? String {
                self.speedFlags = value
            }
            if let value = dict["Stack"] as? String {
                self.stack = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Summary"] as? String {
                self.summary = value
            }
            if let value = dict["SymbolicFileType"] as? String {
                self.symbolicFileType = value
            }
            if let value = dict["SysLog"] as? String {
                self.sysLog = value
            }
            if let value = dict["ThreadName"] as? String {
                self.threadName = value
            }
            if let value = dict["Threads"] as? String {
                self.threads = value
            }
            if let value = dict["Tid"] as? Int32 {
                self.tid = value
            }
            if let value = dict["Track"] as? String {
                self.track = value
            }
            if let value = dict["TriggeredTime"] as? String {
                self.triggeredTime = value
            }
            if let value = dict["UploadTime"] as? Int64 {
                self.uploadTime = value
            }
            if let value = dict["Uri"] as? String {
                self.uri = value
            }
            if let value = dict["User"] as? String {
                self.user = value
            }
            if let value = dict["UserId"] as? String {
                self.userId = value
            }
            if let value = dict["UserNick"] as? String {
                self.userNick = value
            }
            if let value = dict["Utdid"] as? String {
                self.utdid = value
            }
            if let value = dict["Uuid"] as? String {
                self.uuid = value
            }
            if let value = dict["View"] as? String {
                self.view = value
            }
            if let value = dict["WeexFullUrl"] as? String {
                self.weexFullUrl = value
            }
            if let value = dict["WeexShortUrl"] as? String {
                self.weexShortUrl = value
            }
            if let value = dict["WriteLimit"] as? Int32 {
                self.writeLimit = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Args"] as? [String: Any] {
            self.args = value
        }
        if let value = dict["ErrorCode"] as? Int32 {
            self.errorCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Model"] as? [String: Any?] {
            var model = GetErrorResponseBody.Model()
            model.fromMap(value)
            self.model = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetErrorResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["Operator"] as? String {
                self.operator_ = value
            }
            if let value = dict["SubFilters"] as? [String] {
                self.subFilters = value
            }
            if let value = dict["Values"] as? [Any] {
                self.values = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EndTime"] as? Int64 {
                self.endTime = value
            }
            if let value = dict["StartTime"] as? Int64 {
                self.startTime = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppKey"] as? Int64 {
            self.appKey = value
        }
        if let value = dict["BizModule"] as? String {
            self.bizModule = value
        }
        if let value = dict["DigestHash"] as? String {
            self.digestHash = value
        }
        if let value = dict["Filter"] as? [String: Any?] {
            var model = GetErrorsRequest.Filter()
            model.fromMap(value)
            self.filter = model
        }
        if let value = dict["Os"] as? String {
            self.os = value
        }
        if let value = dict["PageIndex"] as? Int32 {
            self.pageIndex = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["TimeRange"] as? [String: Any?] {
            var model = GetErrorsRequest.TimeRange()
            model.fromMap(value)
            self.timeRange = model
        }
        if let value = dict["Utdid"] as? String {
            self.utdid = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EndTime"] as? Int64 {
                self.endTime = value
            }
            if let value = dict["StartTime"] as? Int64 {
                self.startTime = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppKey"] as? Int64 {
            self.appKey = value
        }
        if let value = dict["BizModule"] as? String {
            self.bizModule = value
        }
        if let value = dict["DigestHash"] as? String {
            self.digestHash = value
        }
        if let value = dict["Filter"] as? String {
            self.filterShrink = value
        }
        if let value = dict["Os"] as? String {
            self.os = value
        }
        if let value = dict["PageIndex"] as? Int32 {
            self.pageIndex = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["TimeRange"] as? [String: Any?] {
            var model = GetErrorsShrinkRequest.TimeRange()
            model.fromMap(value)
            self.timeRange = model
        }
        if let value = dict["Utdid"] as? String {
            self.utdid = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ClientTime"] as? Int64 {
                    self.clientTime = value
                }
                if let value = dict["Did"] as? String {
                    self.did = value
                }
                if let value = dict["Utdid"] as? String {
                    self.utdid = value
                }
                if let value = dict["Uuid"] as? String {
                    self.uuid = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Items"] as? [Any?] {
                var tmp : [GetErrorsResponseBody.Model.Items] = []
                for v in value {
                    if v != nil {
                        var model = GetErrorsResponseBody.Model.Items()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.items = tmp
            }
            if let value = dict["PageNum"] as? Int32 {
                self.pageNum = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["Pages"] as? Int32 {
                self.pages = value
            }
            if let value = dict["Total"] as? Int64 {
                self.total = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Args"] as? [String: Any] {
            self.args = value
        }
        if let value = dict["ErrorCode"] as? Int32 {
            self.errorCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Model"] as? [String: Any?] {
            var model = GetErrorsResponseBody.Model()
            model.fromMap(value)
            self.model = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetErrorsResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["Operator"] as? String {
                self.operator_ = value
            }
            if let value = dict["SubFilters"] as? [String] {
                self.subFilters = value
            }
            if let value = dict["Values"] as? [Any] {
                self.values = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EndTime"] as? Int64 {
                self.endTime = value
            }
            if let value = dict["Granularity"] as? Int32 {
                self.granularity = value
            }
            if let value = dict["GranularityUnit"] as? String {
                self.granularityUnit = value
            }
            if let value = dict["StartTime"] as? Int64 {
                self.startTime = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppKey"] as? Int64 {
            self.appKey = value
        }
        if let value = dict["BizModule"] as? String {
            self.bizModule = value
        }
        if let value = dict["DigestHash"] as? String {
            self.digestHash = value
        }
        if let value = dict["Filter"] as? [String: Any?] {
            var model = GetIssueRequest.Filter()
            model.fromMap(value)
            self.filter = model
        }
        if let value = dict["Os"] as? String {
            self.os = value
        }
        if let value = dict["TimeRange"] as? [String: Any?] {
            var model = GetIssueRequest.TimeRange()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EndTime"] as? Int64 {
                self.endTime = value
            }
            if let value = dict["Granularity"] as? Int32 {
                self.granularity = value
            }
            if let value = dict["GranularityUnit"] as? String {
                self.granularityUnit = value
            }
            if let value = dict["StartTime"] as? Int64 {
                self.startTime = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppKey"] as? Int64 {
            self.appKey = value
        }
        if let value = dict["BizModule"] as? String {
            self.bizModule = value
        }
        if let value = dict["DigestHash"] as? String {
            self.digestHash = value
        }
        if let value = dict["Filter"] as? String {
            self.filterShrink = value
        }
        if let value = dict["Os"] as? String {
            self.os = value
        }
        if let value = dict["TimeRange"] as? [String: Any?] {
            var model = GetIssueShrinkRequest.TimeRange()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AffectedVersions"] as? [String] {
                self.affectedVersions = value
            }
            if let value = dict["CruxStack"] as? String {
                self.cruxStack = value
            }
            if let value = dict["DigestHash"] as? String {
                self.digestHash = value
            }
            if let value = dict["ErrorColumn"] as? Int32 {
                self.errorColumn = value
            }
            if let value = dict["ErrorCount"] as? Int32 {
                self.errorCount = value
            }
            if let value = dict["ErrorCountGrowthRate"] as? Double {
                self.errorCountGrowthRate = value
            }
            if let value = dict["ErrorDeviceCount"] as? Int32 {
                self.errorDeviceCount = value
            }
            if let value = dict["ErrorDeviceCountGrowthRate"] as? Double {
                self.errorDeviceCountGrowthRate = value
            }
            if let value = dict["ErrorDeviceRate"] as? Double {
                self.errorDeviceRate = value
            }
            if let value = dict["ErrorDeviceRateGrowthRate"] as? Double {
                self.errorDeviceRateGrowthRate = value
            }
            if let value = dict["ErrorFileName"] as? String {
                self.errorFileName = value
            }
            if let value = dict["ErrorLine"] as? String {
                self.errorLine = value
            }
            if let value = dict["ErrorName"] as? String {
                self.errorName = value
            }
            if let value = dict["ErrorRate"] as? Double {
                self.errorRate = value
            }
            if let value = dict["ErrorRateGrowthRate"] as? Double {
                self.errorRateGrowthRate = value
            }
            if let value = dict["ErrorType"] as? String {
                self.errorType = value
            }
            if let value = dict["FirstVersion"] as? String {
                self.firstVersion = value
            }
            if let value = dict["GmtCreate"] as? Int64 {
                self.gmtCreate = value
            }
            if let value = dict["GmtLatest"] as? Int64 {
                self.gmtLatest = value
            }
            if let value = dict["KeyLine"] as? Int32 {
                self.keyLine = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Stack"] as? String {
                self.stack = value
            }
            if let value = dict["Status"] as? Int32 {
                self.status = value
            }
            if let value = dict["Summary"] as? String {
                self.summary = value
            }
            if let value = dict["SymbolicStatus"] as? Bool {
                self.symbolicStatus = value
            }
            if let value = dict["Tags"] as? [String] {
                self.tags = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Args"] as? [String: Any] {
            self.args = value
        }
        if let value = dict["ErrorCode"] as? Int32 {
            self.errorCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Model"] as? [String: Any?] {
            var model = GetIssueResponseBody.Model()
            model.fromMap(value)
            self.model = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetIssueResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["Operator"] as? String {
                self.operator_ = value
            }
            if let value = dict["SubFilters"] as? [String] {
                self.subFilters = value
            }
            if let value = dict["Values"] as? [Any] {
                self.values = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EndTime"] as? Int64 {
                self.endTime = value
            }
            if let value = dict["Granularity"] as? Int32 {
                self.granularity = value
            }
            if let value = dict["GranularityUnit"] as? String {
                self.granularityUnit = value
            }
            if let value = dict["StartTime"] as? Int64 {
                self.startTime = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppKey"] as? Int64 {
            self.appKey = value
        }
        if let value = dict["BizModule"] as? String {
            self.bizModule = value
        }
        if let value = dict["Filter"] as? [String: Any?] {
            var model = GetIssuesRequest.Filter()
            model.fromMap(value)
            self.filter = model
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["OrderBy"] as? String {
            self.orderBy = value
        }
        if let value = dict["OrderType"] as? String {
            self.orderType = value
        }
        if let value = dict["Os"] as? String {
            self.os = value
        }
        if let value = dict["PageIndex"] as? Int32 {
            self.pageIndex = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Status"] as? Int32 {
            self.status = value
        }
        if let value = dict["TimeRange"] as? [String: Any?] {
            var model = GetIssuesRequest.TimeRange()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EndTime"] as? Int64 {
                self.endTime = value
            }
            if let value = dict["Granularity"] as? Int32 {
                self.granularity = value
            }
            if let value = dict["GranularityUnit"] as? String {
                self.granularityUnit = value
            }
            if let value = dict["StartTime"] as? Int64 {
                self.startTime = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppKey"] as? Int64 {
            self.appKey = value
        }
        if let value = dict["BizModule"] as? String {
            self.bizModule = value
        }
        if let value = dict["Filter"] as? String {
            self.filterShrink = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["OrderBy"] as? String {
            self.orderBy = value
        }
        if let value = dict["OrderType"] as? String {
            self.orderType = value
        }
        if let value = dict["Os"] as? String {
            self.os = value
        }
        if let value = dict["PageIndex"] as? Int32 {
            self.pageIndex = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Status"] as? Int32 {
            self.status = value
        }
        if let value = dict["TimeRange"] as? [String: Any?] {
            var model = GetIssuesShrinkRequest.TimeRange()
            model.fromMap(value)
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AffectedUserCount"] as? Int32 {
                    self.affectedUserCount = value
                }
                if let value = dict["DigestHash"] as? String {
                    self.digestHash = value
                }
                if let value = dict["DomScore"] as? String {
                    self.domScore = value
                }
                if let value = dict["ErrorColumn"] as? Int32 {
                    self.errorColumn = value
                }
                if let value = dict["ErrorCount"] as? Int32 {
                    self.errorCount = value
                }
                if let value = dict["ErrorDeviceCount"] as? Int32 {
                    self.errorDeviceCount = value
                }
                if let value = dict["ErrorDeviceRate"] as? Double {
                    self.errorDeviceRate = value
                }
                if let value = dict["ErrorFileName"] as? String {
                    self.errorFileName = value
                }
                if let value = dict["ErrorLine"] as? Int32 {
                    self.errorLine = value
                }
                if let value = dict["ErrorName"] as? String {
                    self.errorName = value
                }
                if let value = dict["ErrorRate"] as? Double {
                    self.errorRate = value
                }
                if let value = dict["ErrorType"] as? String {
                    self.errorType = value
                }
                if let value = dict["EventTime"] as? String {
                    self.eventTime = value
                }
                if let value = dict["FirstVersion"] as? String {
                    self.firstVersion = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Stack"] as? String {
                    self.stack = value
                }
                if let value = dict["Status"] as? Int32 {
                    self.status = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Items"] as? [Any?] {
                var tmp : [GetIssuesResponseBody.Model.Items] = []
                for v in value {
                    if v != nil {
                        var model = GetIssuesResponseBody.Model.Items()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.items = tmp
            }
            if let value = dict["PageNum"] as? Int32 {
                self.pageNum = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["Pages"] as? Int32 {
                self.pages = value
            }
            if let value = dict["Total"] as? Int64 {
                self.total = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Args"] as? [String: Any] {
            self.args = value
        }
        if let value = dict["ErrorCode"] as? Int32 {
            self.errorCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Model"] as? [String: Any?] {
            var model = GetIssuesResponseBody.Model()
            model.fromMap(value)
            self.model = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetIssuesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetSymbolicFilesRequest : Tea.TeaModel {
    public var appKey: Int64?

    public var appVersion: String?

    public var buildId: String?

    public var endTime: Int64?

    public var exportStatus: String?

    public var fileName: String?

    public var fileType: String?

    public var os: String?

    public var pageIndex: Int32?

    public var pageSize: Int32?

    public var startTime: Int64?

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
        if self.appVersion != nil {
            map["AppVersion"] = self.appVersion!
        }
        if self.buildId != nil {
            map["BuildId"] = self.buildId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.exportStatus != nil {
            map["ExportStatus"] = self.exportStatus!
        }
        if self.fileName != nil {
            map["FileName"] = self.fileName!
        }
        if self.fileType != nil {
            map["FileType"] = self.fileType!
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
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.uuid != nil {
            map["Uuid"] = self.uuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppKey"] as? Int64 {
            self.appKey = value
        }
        if let value = dict["AppVersion"] as? String {
            self.appVersion = value
        }
        if let value = dict["BuildId"] as? String {
            self.buildId = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["ExportStatus"] as? String {
            self.exportStatus = value
        }
        if let value = dict["FileName"] as? String {
            self.fileName = value
        }
        if let value = dict["FileType"] as? String {
            self.fileType = value
        }
        if let value = dict["Os"] as? String {
            self.os = value
        }
        if let value = dict["PageIndex"] as? Int32 {
            self.pageIndex = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
        if let value = dict["Uuid"] as? String {
            self.uuid = value
        }
    }
}

public class GetSymbolicFilesResponseBody : Tea.TeaModel {
    public class Model : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public var appVersion: String?

            public var buildId: String?

            public var exportStatus: String?

            public var fileName: String?

            public var filePath: String?

            public var fileType: String?

            public var gmtCreate: Int64?

            public var id: Int64?

            public var status: String?

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
                if self.appVersion != nil {
                    map["AppVersion"] = self.appVersion!
                }
                if self.buildId != nil {
                    map["BuildId"] = self.buildId!
                }
                if self.exportStatus != nil {
                    map["ExportStatus"] = self.exportStatus!
                }
                if self.fileName != nil {
                    map["FileName"] = self.fileName!
                }
                if self.filePath != nil {
                    map["FilePath"] = self.filePath!
                }
                if self.fileType != nil {
                    map["FileType"] = self.fileType!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.uuid != nil {
                    map["Uuid"] = self.uuid!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AppVersion"] as? String {
                    self.appVersion = value
                }
                if let value = dict["BuildId"] as? String {
                    self.buildId = value
                }
                if let value = dict["ExportStatus"] as? String {
                    self.exportStatus = value
                }
                if let value = dict["FileName"] as? String {
                    self.fileName = value
                }
                if let value = dict["FilePath"] as? String {
                    self.filePath = value
                }
                if let value = dict["FileType"] as? String {
                    self.fileType = value
                }
                if let value = dict["GmtCreate"] as? Int64 {
                    self.gmtCreate = value
                }
                if let value = dict["Id"] as? Int64 {
                    self.id = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["Uuid"] as? String {
                    self.uuid = value
                }
            }
        }
        public var items: [GetSymbolicFilesResponseBody.Model.Items]?

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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Items"] as? [Any?] {
                var tmp : [GetSymbolicFilesResponseBody.Model.Items] = []
                for v in value {
                    if v != nil {
                        var model = GetSymbolicFilesResponseBody.Model.Items()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.items = tmp
            }
            if let value = dict["PageNum"] as? Int32 {
                self.pageNum = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["Pages"] as? Int32 {
                self.pages = value
            }
            if let value = dict["Total"] as? Int64 {
                self.total = value
            }
        }
    }
    public var args: [String: Any]?

    public var errorCode: Int32?

    public var message: String?

    public var model: GetSymbolicFilesResponseBody.Model?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Args"] as? [String: Any] {
            self.args = value
        }
        if let value = dict["ErrorCode"] as? Int32 {
            self.errorCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Model"] as? [String: Any?] {
            var model = GetSymbolicFilesResponseBody.Model()
            model.fromMap(value)
            self.model = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetSymbolicFilesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSymbolicFilesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetSymbolicFilesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RequestUploadTokenRequest : Tea.TeaModel {
    public var appKey: Int64?

    public var os: String?

    public override init() {
        super.init()
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
        if self.os != nil {
            map["Os"] = self.os!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppKey"] as? Int64 {
            self.appKey = value
        }
        if let value = dict["Os"] as? String {
            self.os = value
        }
    }
}

public class RequestUploadTokenResponseBody : Tea.TeaModel {
    public class Model : Tea.TeaModel {
        public var accessKeyId: String?

        public var accessKeySecret: String?

        public var endpoint: String?

        public var securityToken: String?

        public var uploadBucket: String?

        public var uploadDir: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessKeyId != nil {
                map["AccessKeyId"] = self.accessKeyId!
            }
            if self.accessKeySecret != nil {
                map["AccessKeySecret"] = self.accessKeySecret!
            }
            if self.endpoint != nil {
                map["Endpoint"] = self.endpoint!
            }
            if self.securityToken != nil {
                map["SecurityToken"] = self.securityToken!
            }
            if self.uploadBucket != nil {
                map["UploadBucket"] = self.uploadBucket!
            }
            if self.uploadDir != nil {
                map["UploadDir"] = self.uploadDir!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessKeyId"] as? String {
                self.accessKeyId = value
            }
            if let value = dict["AccessKeySecret"] as? String {
                self.accessKeySecret = value
            }
            if let value = dict["Endpoint"] as? String {
                self.endpoint = value
            }
            if let value = dict["SecurityToken"] as? String {
                self.securityToken = value
            }
            if let value = dict["UploadBucket"] as? String {
                self.uploadBucket = value
            }
            if let value = dict["UploadDir"] as? String {
                self.uploadDir = value
            }
        }
    }
    public var args: [String: Any]?

    public var errorCode: Int32?

    public var message: String?

    public var model: RequestUploadTokenResponseBody.Model?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Args"] as? [String: Any] {
            self.args = value
        }
        if let value = dict["ErrorCode"] as? Int32 {
            self.errorCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Model"] as? [String: Any?] {
            var model = RequestUploadTokenResponseBody.Model()
            model.fromMap(value)
            self.model = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class RequestUploadTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RequestUploadTokenResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RequestUploadTokenResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SubmitSymbolicRequest : Tea.TeaModel {
    public var appKey: Int64?

    public var appVersion: String?

    public var buildId: String?

    public var fileName: String?

    public var filePath: String?

    public var fileType: String?

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
        if self.appVersion != nil {
            map["AppVersion"] = self.appVersion!
        }
        if self.buildId != nil {
            map["BuildId"] = self.buildId!
        }
        if self.fileName != nil {
            map["FileName"] = self.fileName!
        }
        if self.filePath != nil {
            map["FilePath"] = self.filePath!
        }
        if self.fileType != nil {
            map["FileType"] = self.fileType!
        }
        if self.os != nil {
            map["Os"] = self.os!
        }
        if self.uuid != nil {
            map["Uuid"] = self.uuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppKey"] as? Int64 {
            self.appKey = value
        }
        if let value = dict["AppVersion"] as? String {
            self.appVersion = value
        }
        if let value = dict["BuildId"] as? String {
            self.buildId = value
        }
        if let value = dict["FileName"] as? String {
            self.fileName = value
        }
        if let value = dict["FilePath"] as? String {
            self.filePath = value
        }
        if let value = dict["FileType"] as? String {
            self.fileType = value
        }
        if let value = dict["Os"] as? String {
            self.os = value
        }
        if let value = dict["Uuid"] as? String {
            self.uuid = value
        }
    }
}

public class SubmitSymbolicResponseBody : Tea.TeaModel {
    public var args: [String: Any]?

    public var errorCode: Int32?

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
        if self.args != nil {
            map["Args"] = self.args!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
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
        if let value = dict["Args"] as? [String: Any] {
            self.args = value
        }
        if let value = dict["ErrorCode"] as? Int32 {
            self.errorCode = value
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

public class SubmitSymbolicResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitSymbolicResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SubmitSymbolicResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
