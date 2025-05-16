import Foundation
import Tea
import TeaUtils
import AlibabaCloudOssSdk
import AlibabacloudOpenPlatform20191219
import AlibabaCloudOSSUtil
import TeaFileForm
import DarabonbaNumber
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AnalyzeChestVesselRequest : Tea.TeaModel {
    public class URLList : Tea.TeaModel {
        public var URL: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.URL != nil {
                map["URL"] = self.URL!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["URL"] as? String {
                self.URL = value
            }
        }
    }
    public var dataFormat: String?

    public var dataSourceType: String?

    public var orgId: String?

    public var orgName: String?

    public var URLList: [AnalyzeChestVesselRequest.URLList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataFormat != nil {
            map["DataFormat"] = self.dataFormat!
        }
        if self.dataSourceType != nil {
            map["DataSourceType"] = self.dataSourceType!
        }
        if self.orgId != nil {
            map["OrgId"] = self.orgId!
        }
        if self.orgName != nil {
            map["OrgName"] = self.orgName!
        }
        if self.URLList != nil {
            var tmp : [Any] = []
            for k in self.URLList! {
                tmp.append(k.toMap())
            }
            map["URLList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataFormat"] as? String {
            self.dataFormat = value
        }
        if let value = dict["DataSourceType"] as? String {
            self.dataSourceType = value
        }
        if let value = dict["OrgId"] as? String {
            self.orgId = value
        }
        if let value = dict["OrgName"] as? String {
            self.orgName = value
        }
        if let value = dict["URLList"] as? [Any?] {
            var tmp : [AnalyzeChestVesselRequest.URLList] = []
            for v in value {
                if v != nil {
                    var model = AnalyzeChestVesselRequest.URLList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.URLList = tmp
        }
    }
}

public class AnalyzeChestVesselAdvanceRequest : Tea.TeaModel {
    public class URLList : Tea.TeaModel {
        public var URLObject: InputStream?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.URLObject != nil {
                map["URL"] = self.URLObject!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["URL"] as? InputStream {
                self.URLObject = value
            }
        }
    }
    public var dataFormat: String?

    public var dataSourceType: String?

    public var orgId: String?

    public var orgName: String?

    public var URLList: [AnalyzeChestVesselAdvanceRequest.URLList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataFormat != nil {
            map["DataFormat"] = self.dataFormat!
        }
        if self.dataSourceType != nil {
            map["DataSourceType"] = self.dataSourceType!
        }
        if self.orgId != nil {
            map["OrgId"] = self.orgId!
        }
        if self.orgName != nil {
            map["OrgName"] = self.orgName!
        }
        if self.URLList != nil {
            var tmp : [Any] = []
            for k in self.URLList! {
                tmp.append(k.toMap())
            }
            map["URLList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataFormat"] as? String {
            self.dataFormat = value
        }
        if let value = dict["DataSourceType"] as? String {
            self.dataSourceType = value
        }
        if let value = dict["OrgId"] as? String {
            self.orgId = value
        }
        if let value = dict["OrgName"] as? String {
            self.orgName = value
        }
        if let value = dict["URLList"] as? [Any?] {
            var tmp : [AnalyzeChestVesselAdvanceRequest.URLList] = []
            for v in value {
                if v != nil {
                    var model = AnalyzeChestVesselAdvanceRequest.URLList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.URLList = tmp
        }
    }
}

public class AnalyzeChestVesselResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class AortaInfo : Tea.TeaModel {
            public var area: [Double]?

            public var coordinates: [[Double]]?

            public var labelValue: Int64?

            public var maxArea: Double?

            public var maxAreaIndex: Int64?

            public var maxDiameter: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.area != nil {
                    map["Area"] = self.area!
                }
                if self.coordinates != nil {
                    map["Coordinates"] = self.coordinates!
                }
                if self.labelValue != nil {
                    map["LabelValue"] = self.labelValue!
                }
                if self.maxArea != nil {
                    map["MaxArea"] = self.maxArea!
                }
                if self.maxAreaIndex != nil {
                    map["MaxAreaIndex"] = self.maxAreaIndex!
                }
                if self.maxDiameter != nil {
                    map["MaxDiameter"] = self.maxDiameter!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Area"] as? [Double] {
                    self.area = value
                }
                if let value = dict["Coordinates"] as? [[Double]] {
                    self.coordinates = value
                }
                if let value = dict["LabelValue"] as? Int64 {
                    self.labelValue = value
                }
                if let value = dict["MaxArea"] as? Double {
                    self.maxArea = value
                }
                if let value = dict["MaxAreaIndex"] as? Int64 {
                    self.maxAreaIndex = value
                }
                if let value = dict["MaxDiameter"] as? Double {
                    self.maxDiameter = value
                }
            }
        }
        public class PulmonaryInfo : Tea.TeaModel {
            public var area: [Double]?

            public var coordinates: [[Double]]?

            public var labelValue: Int64?

            public var maxArea: Double?

            public var maxAreaIndex: Int64?

            public var maxDiameter: Double?

            public var nearestAortaArea: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.area != nil {
                    map["Area"] = self.area!
                }
                if self.coordinates != nil {
                    map["Coordinates"] = self.coordinates!
                }
                if self.labelValue != nil {
                    map["LabelValue"] = self.labelValue!
                }
                if self.maxArea != nil {
                    map["MaxArea"] = self.maxArea!
                }
                if self.maxAreaIndex != nil {
                    map["MaxAreaIndex"] = self.maxAreaIndex!
                }
                if self.maxDiameter != nil {
                    map["MaxDiameter"] = self.maxDiameter!
                }
                if self.nearestAortaArea != nil {
                    map["NearestAortaArea"] = self.nearestAortaArea!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Area"] as? [Double] {
                    self.area = value
                }
                if let value = dict["Coordinates"] as? [[Double]] {
                    self.coordinates = value
                }
                if let value = dict["LabelValue"] as? Int64 {
                    self.labelValue = value
                }
                if let value = dict["MaxArea"] as? Double {
                    self.maxArea = value
                }
                if let value = dict["MaxAreaIndex"] as? Int64 {
                    self.maxAreaIndex = value
                }
                if let value = dict["MaxDiameter"] as? Double {
                    self.maxDiameter = value
                }
                if let value = dict["NearestAortaArea"] as? Double {
                    self.nearestAortaArea = value
                }
            }
        }
        public var aortaInfo: AnalyzeChestVesselResponseBody.Data.AortaInfo?

        public var pulmonaryInfo: AnalyzeChestVesselResponseBody.Data.PulmonaryInfo?

        public var resultURL: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.aortaInfo?.validate()
            try self.pulmonaryInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aortaInfo != nil {
                map["AortaInfo"] = self.aortaInfo?.toMap()
            }
            if self.pulmonaryInfo != nil {
                map["PulmonaryInfo"] = self.pulmonaryInfo?.toMap()
            }
            if self.resultURL != nil {
                map["ResultURL"] = self.resultURL!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AortaInfo"] as? [String: Any?] {
                var model = AnalyzeChestVesselResponseBody.Data.AortaInfo()
                model.fromMap(value)
                self.aortaInfo = model
            }
            if let value = dict["PulmonaryInfo"] as? [String: Any?] {
                var model = AnalyzeChestVesselResponseBody.Data.PulmonaryInfo()
                model.fromMap(value)
                self.pulmonaryInfo = model
            }
            if let value = dict["ResultURL"] as? String {
                self.resultURL = value
            }
        }
    }
    public var data: AnalyzeChestVesselResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = AnalyzeChestVesselResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class AnalyzeChestVesselResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AnalyzeChestVesselResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AnalyzeChestVesselResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CalcBMDRequest : Tea.TeaModel {
    public class URLList : Tea.TeaModel {
        public var URL: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.URL != nil {
                map["URL"] = self.URL!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["URL"] as? String {
                self.URL = value
            }
        }
    }
    public var dataFormat: String?

    public var orgId: String?

    public var orgName: String?

    public var sourceType: String?

    public var URLList: [CalcBMDRequest.URLList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataFormat != nil {
            map["DataFormat"] = self.dataFormat!
        }
        if self.orgId != nil {
            map["OrgId"] = self.orgId!
        }
        if self.orgName != nil {
            map["OrgName"] = self.orgName!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        if self.URLList != nil {
            var tmp : [Any] = []
            for k in self.URLList! {
                tmp.append(k.toMap())
            }
            map["URLList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataFormat"] as? String {
            self.dataFormat = value
        }
        if let value = dict["OrgId"] as? String {
            self.orgId = value
        }
        if let value = dict["OrgName"] as? String {
            self.orgName = value
        }
        if let value = dict["SourceType"] as? String {
            self.sourceType = value
        }
        if let value = dict["URLList"] as? [Any?] {
            var tmp : [CalcBMDRequest.URLList] = []
            for v in value {
                if v != nil {
                    var model = CalcBMDRequest.URLList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.URLList = tmp
        }
    }
}

public class CalcBMDAdvanceRequest : Tea.TeaModel {
    public class URLList : Tea.TeaModel {
        public var URLObject: InputStream?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.URLObject != nil {
                map["URL"] = self.URLObject!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["URL"] as? InputStream {
                self.URLObject = value
            }
        }
    }
    public var dataFormat: String?

    public var orgId: String?

    public var orgName: String?

    public var sourceType: String?

    public var URLList: [CalcBMDAdvanceRequest.URLList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataFormat != nil {
            map["DataFormat"] = self.dataFormat!
        }
        if self.orgId != nil {
            map["OrgId"] = self.orgId!
        }
        if self.orgName != nil {
            map["OrgName"] = self.orgName!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        if self.URLList != nil {
            var tmp : [Any] = []
            for k in self.URLList! {
                tmp.append(k.toMap())
            }
            map["URLList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataFormat"] as? String {
            self.dataFormat = value
        }
        if let value = dict["OrgId"] as? String {
            self.orgId = value
        }
        if let value = dict["OrgName"] as? String {
            self.orgName = value
        }
        if let value = dict["SourceType"] as? String {
            self.sourceType = value
        }
        if let value = dict["URLList"] as? [Any?] {
            var tmp : [CalcBMDAdvanceRequest.URLList] = []
            for v in value {
                if v != nil {
                    var model = CalcBMDAdvanceRequest.URLList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.URLList = tmp
        }
    }
}

public class CalcBMDResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Detections : Tea.TeaModel {
            public var vertBMD: Double?

            public var vertCategory: Double?

            public var vertId: String?

            public var vertTScore: Double?

            public var vertZScore: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.vertBMD != nil {
                    map["VertBMD"] = self.vertBMD!
                }
                if self.vertCategory != nil {
                    map["VertCategory"] = self.vertCategory!
                }
                if self.vertId != nil {
                    map["VertId"] = self.vertId!
                }
                if self.vertTScore != nil {
                    map["VertTScore"] = self.vertTScore!
                }
                if self.vertZScore != nil {
                    map["VertZScore"] = self.vertZScore!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["VertBMD"] as? Double {
                    self.vertBMD = value
                }
                if let value = dict["VertCategory"] as? Double {
                    self.vertCategory = value
                }
                if let value = dict["VertId"] as? String {
                    self.vertId = value
                }
                if let value = dict["VertTScore"] as? Double {
                    self.vertTScore = value
                }
                if let value = dict["VertZScore"] as? Double {
                    self.vertZScore = value
                }
            }
        }
        public var detections: [CalcBMDResponseBody.Data.Detections]?

        public var origin: [Double]?

        public var resultURL: String?

        public var spacing: [Double]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.detections != nil {
                var tmp : [Any] = []
                for k in self.detections! {
                    tmp.append(k.toMap())
                }
                map["Detections"] = tmp
            }
            if self.origin != nil {
                map["Origin"] = self.origin!
            }
            if self.resultURL != nil {
                map["ResultURL"] = self.resultURL!
            }
            if self.spacing != nil {
                map["Spacing"] = self.spacing!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Detections"] as? [Any?] {
                var tmp : [CalcBMDResponseBody.Data.Detections] = []
                for v in value {
                    if v != nil {
                        var model = CalcBMDResponseBody.Data.Detections()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.detections = tmp
            }
            if let value = dict["Origin"] as? [Double] {
                self.origin = value
            }
            if let value = dict["ResultURL"] as? String {
                self.resultURL = value
            }
            if let value = dict["Spacing"] as? [Double] {
                self.spacing = value
            }
        }
    }
    public var data: CalcBMDResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CalcBMDResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CalcBMDResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CalcBMDResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CalcBMDResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CalcCACSRequest : Tea.TeaModel {
    public class URLList : Tea.TeaModel {
        public var URL: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.URL != nil {
                map["URL"] = self.URL!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["URL"] as? String {
                self.URL = value
            }
        }
    }
    public var dataFormat: String?

    public var dataSourceType: String?

    public var orgId: String?

    public var orgName: String?

    public var URLList: [CalcCACSRequest.URLList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataFormat != nil {
            map["DataFormat"] = self.dataFormat!
        }
        if self.dataSourceType != nil {
            map["DataSourceType"] = self.dataSourceType!
        }
        if self.orgId != nil {
            map["OrgId"] = self.orgId!
        }
        if self.orgName != nil {
            map["OrgName"] = self.orgName!
        }
        if self.URLList != nil {
            var tmp : [Any] = []
            for k in self.URLList! {
                tmp.append(k.toMap())
            }
            map["URLList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataFormat"] as? String {
            self.dataFormat = value
        }
        if let value = dict["DataSourceType"] as? String {
            self.dataSourceType = value
        }
        if let value = dict["OrgId"] as? String {
            self.orgId = value
        }
        if let value = dict["OrgName"] as? String {
            self.orgName = value
        }
        if let value = dict["URLList"] as? [Any?] {
            var tmp : [CalcCACSRequest.URLList] = []
            for v in value {
                if v != nil {
                    var model = CalcCACSRequest.URLList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.URLList = tmp
        }
    }
}

public class CalcCACSAdvanceRequest : Tea.TeaModel {
    public class URLList : Tea.TeaModel {
        public var URLObject: InputStream?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.URLObject != nil {
                map["URL"] = self.URLObject!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["URL"] as? InputStream {
                self.URLObject = value
            }
        }
    }
    public var dataFormat: String?

    public var dataSourceType: String?

    public var orgId: String?

    public var orgName: String?

    public var URLList: [CalcCACSAdvanceRequest.URLList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataFormat != nil {
            map["DataFormat"] = self.dataFormat!
        }
        if self.dataSourceType != nil {
            map["DataSourceType"] = self.dataSourceType!
        }
        if self.orgId != nil {
            map["OrgId"] = self.orgId!
        }
        if self.orgName != nil {
            map["OrgName"] = self.orgName!
        }
        if self.URLList != nil {
            var tmp : [Any] = []
            for k in self.URLList! {
                tmp.append(k.toMap())
            }
            map["URLList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataFormat"] as? String {
            self.dataFormat = value
        }
        if let value = dict["DataSourceType"] as? String {
            self.dataSourceType = value
        }
        if let value = dict["OrgId"] as? String {
            self.orgId = value
        }
        if let value = dict["OrgName"] as? String {
            self.orgName = value
        }
        if let value = dict["URLList"] as? [Any?] {
            var tmp : [CalcCACSAdvanceRequest.URLList] = []
            for v in value {
                if v != nil {
                    var model = CalcCACSAdvanceRequest.URLList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.URLList = tmp
        }
    }
}

public class CalcCACSResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Detections : Tea.TeaModel {
            public var calciumCenter: [Int64]?

            public var calciumId: Int64?

            public var calciumScore: Double?

            public var calciumVolume: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.calciumCenter != nil {
                    map["CalciumCenter"] = self.calciumCenter!
                }
                if self.calciumId != nil {
                    map["CalciumId"] = self.calciumId!
                }
                if self.calciumScore != nil {
                    map["CalciumScore"] = self.calciumScore!
                }
                if self.calciumVolume != nil {
                    map["CalciumVolume"] = self.calciumVolume!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CalciumCenter"] as? [Int64] {
                    self.calciumCenter = value
                }
                if let value = dict["CalciumId"] as? Int64 {
                    self.calciumId = value
                }
                if let value = dict["CalciumScore"] as? Double {
                    self.calciumScore = value
                }
                if let value = dict["CalciumVolume"] as? Double {
                    self.calciumVolume = value
                }
            }
        }
        public var detections: [CalcCACSResponseBody.Data.Detections]?

        public var resultUrl: String?

        public var score: String?

        public var volumeScore: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.detections != nil {
                var tmp : [Any] = []
                for k in self.detections! {
                    tmp.append(k.toMap())
                }
                map["Detections"] = tmp
            }
            if self.resultUrl != nil {
                map["ResultUrl"] = self.resultUrl!
            }
            if self.score != nil {
                map["Score"] = self.score!
            }
            if self.volumeScore != nil {
                map["VolumeScore"] = self.volumeScore!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Detections"] as? [Any?] {
                var tmp : [CalcCACSResponseBody.Data.Detections] = []
                for v in value {
                    if v != nil {
                        var model = CalcCACSResponseBody.Data.Detections()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.detections = tmp
            }
            if let value = dict["ResultUrl"] as? String {
                self.resultUrl = value
            }
            if let value = dict["Score"] as? String {
                self.score = value
            }
            if let value = dict["VolumeScore"] as? String {
                self.volumeScore = value
            }
        }
    }
    public var data: CalcCACSResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = CalcCACSResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CalcCACSResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CalcCACSResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CalcCACSResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DetectCovid19CadRequest : Tea.TeaModel {
    public class URLList : Tea.TeaModel {
        public var URL: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.URL != nil {
                map["URL"] = self.URL!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["URL"] as? String {
                self.URL = value
            }
        }
    }
    public var dataFormat: String?

    public var orgId: String?

    public var orgName: String?

    public var URLList: [DetectCovid19CadRequest.URLList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataFormat != nil {
            map["DataFormat"] = self.dataFormat!
        }
        if self.orgId != nil {
            map["OrgId"] = self.orgId!
        }
        if self.orgName != nil {
            map["OrgName"] = self.orgName!
        }
        if self.URLList != nil {
            var tmp : [Any] = []
            for k in self.URLList! {
                tmp.append(k.toMap())
            }
            map["URLList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataFormat"] as? String {
            self.dataFormat = value
        }
        if let value = dict["OrgId"] as? String {
            self.orgId = value
        }
        if let value = dict["OrgName"] as? String {
            self.orgName = value
        }
        if let value = dict["URLList"] as? [Any?] {
            var tmp : [DetectCovid19CadRequest.URLList] = []
            for v in value {
                if v != nil {
                    var model = DetectCovid19CadRequest.URLList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.URLList = tmp
        }
    }
}

public class DetectCovid19CadAdvanceRequest : Tea.TeaModel {
    public class URLList : Tea.TeaModel {
        public var URLObject: InputStream?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.URLObject != nil {
                map["URL"] = self.URLObject!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["URL"] as? InputStream {
                self.URLObject = value
            }
        }
    }
    public var dataFormat: String?

    public var orgId: String?

    public var orgName: String?

    public var URLList: [DetectCovid19CadAdvanceRequest.URLList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataFormat != nil {
            map["DataFormat"] = self.dataFormat!
        }
        if self.orgId != nil {
            map["OrgId"] = self.orgId!
        }
        if self.orgName != nil {
            map["OrgName"] = self.orgName!
        }
        if self.URLList != nil {
            var tmp : [Any] = []
            for k in self.URLList! {
                tmp.append(k.toMap())
            }
            map["URLList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataFormat"] as? String {
            self.dataFormat = value
        }
        if let value = dict["OrgId"] as? String {
            self.orgId = value
        }
        if let value = dict["OrgName"] as? String {
            self.orgName = value
        }
        if let value = dict["URLList"] as? [Any?] {
            var tmp : [DetectCovid19CadAdvanceRequest.URLList] = []
            for v in value {
                if v != nil {
                    var model = DetectCovid19CadAdvanceRequest.URLList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.URLList = tmp
        }
    }
}

public class DetectCovid19CadResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var lesionRatio: String?

        public var mask: String?

        public var newProbability: String?

        public var normalProbability: String?

        public var otherProbability: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.lesionRatio != nil {
                map["LesionRatio"] = self.lesionRatio!
            }
            if self.mask != nil {
                map["Mask"] = self.mask!
            }
            if self.newProbability != nil {
                map["NewProbability"] = self.newProbability!
            }
            if self.normalProbability != nil {
                map["NormalProbability"] = self.normalProbability!
            }
            if self.otherProbability != nil {
                map["OtherProbability"] = self.otherProbability!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["LesionRatio"] as? String {
                self.lesionRatio = value
            }
            if let value = dict["Mask"] as? String {
                self.mask = value
            }
            if let value = dict["NewProbability"] as? String {
                self.newProbability = value
            }
            if let value = dict["NormalProbability"] as? String {
                self.normalProbability = value
            }
            if let value = dict["OtherProbability"] as? String {
                self.otherProbability = value
            }
        }
    }
    public var data: DetectCovid19CadResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DetectCovid19CadResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DetectCovid19CadResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetectCovid19CadResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DetectCovid19CadResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DetectLiverSteatosisRequest : Tea.TeaModel {
    public class URLList : Tea.TeaModel {
        public var URL: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.URL != nil {
                map["URL"] = self.URL!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["URL"] as? String {
                self.URL = value
            }
        }
    }
    public var dataFormat: String?

    public var orgId: String?

    public var orgName: String?

    public var sourceType: String?

    public var URLList: [DetectLiverSteatosisRequest.URLList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataFormat != nil {
            map["DataFormat"] = self.dataFormat!
        }
        if self.orgId != nil {
            map["OrgId"] = self.orgId!
        }
        if self.orgName != nil {
            map["OrgName"] = self.orgName!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        if self.URLList != nil {
            var tmp : [Any] = []
            for k in self.URLList! {
                tmp.append(k.toMap())
            }
            map["URLList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataFormat"] as? String {
            self.dataFormat = value
        }
        if let value = dict["OrgId"] as? String {
            self.orgId = value
        }
        if let value = dict["OrgName"] as? String {
            self.orgName = value
        }
        if let value = dict["SourceType"] as? String {
            self.sourceType = value
        }
        if let value = dict["URLList"] as? [Any?] {
            var tmp : [DetectLiverSteatosisRequest.URLList] = []
            for v in value {
                if v != nil {
                    var model = DetectLiverSteatosisRequest.URLList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.URLList = tmp
        }
    }
}

public class DetectLiverSteatosisAdvanceRequest : Tea.TeaModel {
    public class URLList : Tea.TeaModel {
        public var URLObject: InputStream?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.URLObject != nil {
                map["URL"] = self.URLObject!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["URL"] as? InputStream {
                self.URLObject = value
            }
        }
    }
    public var dataFormat: String?

    public var orgId: String?

    public var orgName: String?

    public var sourceType: String?

    public var URLList: [DetectLiverSteatosisAdvanceRequest.URLList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataFormat != nil {
            map["DataFormat"] = self.dataFormat!
        }
        if self.orgId != nil {
            map["OrgId"] = self.orgId!
        }
        if self.orgName != nil {
            map["OrgName"] = self.orgName!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        if self.URLList != nil {
            var tmp : [Any] = []
            for k in self.URLList! {
                tmp.append(k.toMap())
            }
            map["URLList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataFormat"] as? String {
            self.dataFormat = value
        }
        if let value = dict["OrgId"] as? String {
            self.orgId = value
        }
        if let value = dict["OrgName"] as? String {
            self.orgName = value
        }
        if let value = dict["SourceType"] as? String {
            self.sourceType = value
        }
        if let value = dict["URLList"] as? [Any?] {
            var tmp : [DetectLiverSteatosisAdvanceRequest.URLList] = []
            for v in value {
                if v != nil {
                    var model = DetectLiverSteatosisAdvanceRequest.URLList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.URLList = tmp
        }
    }
}

public class DetectLiverSteatosisResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Detections : Tea.TeaModel {
            public var fatFract: Double?

            public var liverHU: Double?

            public var liverROI1: Double?

            public var liverROI2: Double?

            public var liverROI3: Double?

            public var liverSlice: Double?

            public var liverSpleenDifference: Double?

            public var liverSpleenRatio: Double?

            public var liverVolume: Double?

            public var maossScore: Double?

            public var prediction: String?

            public var probability: Double?

            public var ROI1Center: [Int64]?

            public var ROI2Center: [Int64]?

            public var ROI3Center: [Int64]?

            public var radius: Int64?

            public var spleenCenter: [Int64]?

            public var spleenHU: Double?

            public var spleenROI: Double?

            public var spleenSlice: Double?

            public var spleenVolume: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.fatFract != nil {
                    map["FatFract"] = self.fatFract!
                }
                if self.liverHU != nil {
                    map["LiverHU"] = self.liverHU!
                }
                if self.liverROI1 != nil {
                    map["LiverROI1"] = self.liverROI1!
                }
                if self.liverROI2 != nil {
                    map["LiverROI2"] = self.liverROI2!
                }
                if self.liverROI3 != nil {
                    map["LiverROI3"] = self.liverROI3!
                }
                if self.liverSlice != nil {
                    map["LiverSlice"] = self.liverSlice!
                }
                if self.liverSpleenDifference != nil {
                    map["LiverSpleenDifference"] = self.liverSpleenDifference!
                }
                if self.liverSpleenRatio != nil {
                    map["LiverSpleenRatio"] = self.liverSpleenRatio!
                }
                if self.liverVolume != nil {
                    map["LiverVolume"] = self.liverVolume!
                }
                if self.maossScore != nil {
                    map["MaossScore"] = self.maossScore!
                }
                if self.prediction != nil {
                    map["Prediction"] = self.prediction!
                }
                if self.probability != nil {
                    map["Probability"] = self.probability!
                }
                if self.ROI1Center != nil {
                    map["ROI1Center"] = self.ROI1Center!
                }
                if self.ROI2Center != nil {
                    map["ROI2Center"] = self.ROI2Center!
                }
                if self.ROI3Center != nil {
                    map["ROI3Center"] = self.ROI3Center!
                }
                if self.radius != nil {
                    map["Radius"] = self.radius!
                }
                if self.spleenCenter != nil {
                    map["SpleenCenter"] = self.spleenCenter!
                }
                if self.spleenHU != nil {
                    map["SpleenHU"] = self.spleenHU!
                }
                if self.spleenROI != nil {
                    map["SpleenROI"] = self.spleenROI!
                }
                if self.spleenSlice != nil {
                    map["SpleenSlice"] = self.spleenSlice!
                }
                if self.spleenVolume != nil {
                    map["SpleenVolume"] = self.spleenVolume!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["FatFract"] as? Double {
                    self.fatFract = value
                }
                if let value = dict["LiverHU"] as? Double {
                    self.liverHU = value
                }
                if let value = dict["LiverROI1"] as? Double {
                    self.liverROI1 = value
                }
                if let value = dict["LiverROI2"] as? Double {
                    self.liverROI2 = value
                }
                if let value = dict["LiverROI3"] as? Double {
                    self.liverROI3 = value
                }
                if let value = dict["LiverSlice"] as? Double {
                    self.liverSlice = value
                }
                if let value = dict["LiverSpleenDifference"] as? Double {
                    self.liverSpleenDifference = value
                }
                if let value = dict["LiverSpleenRatio"] as? Double {
                    self.liverSpleenRatio = value
                }
                if let value = dict["LiverVolume"] as? Double {
                    self.liverVolume = value
                }
                if let value = dict["MaossScore"] as? Double {
                    self.maossScore = value
                }
                if let value = dict["Prediction"] as? String {
                    self.prediction = value
                }
                if let value = dict["Probability"] as? Double {
                    self.probability = value
                }
                if let value = dict["ROI1Center"] as? [Int64] {
                    self.ROI1Center = value
                }
                if let value = dict["ROI2Center"] as? [Int64] {
                    self.ROI2Center = value
                }
                if let value = dict["ROI3Center"] as? [Int64] {
                    self.ROI3Center = value
                }
                if let value = dict["Radius"] as? Int64 {
                    self.radius = value
                }
                if let value = dict["SpleenCenter"] as? [Int64] {
                    self.spleenCenter = value
                }
                if let value = dict["SpleenHU"] as? Double {
                    self.spleenHU = value
                }
                if let value = dict["SpleenROI"] as? Double {
                    self.spleenROI = value
                }
                if let value = dict["SpleenSlice"] as? Double {
                    self.spleenSlice = value
                }
                if let value = dict["SpleenVolume"] as? Double {
                    self.spleenVolume = value
                }
            }
        }
        public var detections: [DetectLiverSteatosisResponseBody.Data.Detections]?

        public var origin: [Double]?

        public var resultUrl: String?

        public var spacing: [Double]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.detections != nil {
                var tmp : [Any] = []
                for k in self.detections! {
                    tmp.append(k.toMap())
                }
                map["Detections"] = tmp
            }
            if self.origin != nil {
                map["Origin"] = self.origin!
            }
            if self.resultUrl != nil {
                map["ResultUrl"] = self.resultUrl!
            }
            if self.spacing != nil {
                map["Spacing"] = self.spacing!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Detections"] as? [Any?] {
                var tmp : [DetectLiverSteatosisResponseBody.Data.Detections] = []
                for v in value {
                    if v != nil {
                        var model = DetectLiverSteatosisResponseBody.Data.Detections()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.detections = tmp
            }
            if let value = dict["Origin"] as? [Double] {
                self.origin = value
            }
            if let value = dict["ResultUrl"] as? String {
                self.resultUrl = value
            }
            if let value = dict["Spacing"] as? [Double] {
                self.spacing = value
            }
        }
    }
    public var data: DetectLiverSteatosisResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DetectLiverSteatosisResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DetectLiverSteatosisResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetectLiverSteatosisResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DetectLiverSteatosisResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DetectLungNoduleRequest : Tea.TeaModel {
    public class URLList : Tea.TeaModel {
        public var URL: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.URL != nil {
                map["URL"] = self.URL!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["URL"] as? String {
                self.URL = value
            }
        }
    }
    public var dataFormat: String?

    public var orgId: String?

    public var orgName: String?

    public var threshold: Double?

    public var URLList: [DetectLungNoduleRequest.URLList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataFormat != nil {
            map["DataFormat"] = self.dataFormat!
        }
        if self.orgId != nil {
            map["OrgId"] = self.orgId!
        }
        if self.orgName != nil {
            map["OrgName"] = self.orgName!
        }
        if self.threshold != nil {
            map["Threshold"] = self.threshold!
        }
        if self.URLList != nil {
            var tmp : [Any] = []
            for k in self.URLList! {
                tmp.append(k.toMap())
            }
            map["URLList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataFormat"] as? String {
            self.dataFormat = value
        }
        if let value = dict["OrgId"] as? String {
            self.orgId = value
        }
        if let value = dict["OrgName"] as? String {
            self.orgName = value
        }
        if let value = dict["Threshold"] as? Double {
            self.threshold = value
        }
        if let value = dict["URLList"] as? [Any?] {
            var tmp : [DetectLungNoduleRequest.URLList] = []
            for v in value {
                if v != nil {
                    var model = DetectLungNoduleRequest.URLList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.URLList = tmp
        }
    }
}

public class DetectLungNoduleAdvanceRequest : Tea.TeaModel {
    public class URLList : Tea.TeaModel {
        public var URLObject: InputStream?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.URLObject != nil {
                map["URL"] = self.URLObject!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["URL"] as? InputStream {
                self.URLObject = value
            }
        }
    }
    public var dataFormat: String?

    public var orgId: String?

    public var orgName: String?

    public var threshold: Double?

    public var URLList: [DetectLungNoduleAdvanceRequest.URLList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataFormat != nil {
            map["DataFormat"] = self.dataFormat!
        }
        if self.orgId != nil {
            map["OrgId"] = self.orgId!
        }
        if self.orgName != nil {
            map["OrgName"] = self.orgName!
        }
        if self.threshold != nil {
            map["Threshold"] = self.threshold!
        }
        if self.URLList != nil {
            var tmp : [Any] = []
            for k in self.URLList! {
                tmp.append(k.toMap())
            }
            map["URLList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataFormat"] as? String {
            self.dataFormat = value
        }
        if let value = dict["OrgId"] as? String {
            self.orgId = value
        }
        if let value = dict["OrgName"] as? String {
            self.orgName = value
        }
        if let value = dict["Threshold"] as? Double {
            self.threshold = value
        }
        if let value = dict["URLList"] as? [Any?] {
            var tmp : [DetectLungNoduleAdvanceRequest.URLList] = []
            for v in value {
                if v != nil {
                    var model = DetectLungNoduleAdvanceRequest.URLList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.URLList = tmp
        }
    }
}

public class DetectLungNoduleResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Series : Tea.TeaModel {
            public class Elements : Tea.TeaModel {
                public var category: String?

                public var confidence: Double?

                public var diameter: Double?

                public var imageX: Double?

                public var imageY: Double?

                public var imageZ: Double?

                public var lobe: String?

                public var lung: String?

                public var majorAxis: [Double]?

                public var meanValue: Double?

                public var minorAxis: [Double]?

                public var recistSOPInstanceUID: String?

                public var risk: Double?

                public var SOPInstanceUID: String?

                public var volume: Double?

                public var x: Double?

                public var y: Double?

                public var z: Double?

                public override init() {
                    super.init()
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
                    if self.confidence != nil {
                        map["Confidence"] = self.confidence!
                    }
                    if self.diameter != nil {
                        map["Diameter"] = self.diameter!
                    }
                    if self.imageX != nil {
                        map["ImageX"] = self.imageX!
                    }
                    if self.imageY != nil {
                        map["ImageY"] = self.imageY!
                    }
                    if self.imageZ != nil {
                        map["ImageZ"] = self.imageZ!
                    }
                    if self.lobe != nil {
                        map["Lobe"] = self.lobe!
                    }
                    if self.lung != nil {
                        map["Lung"] = self.lung!
                    }
                    if self.majorAxis != nil {
                        map["MajorAxis"] = self.majorAxis!
                    }
                    if self.meanValue != nil {
                        map["MeanValue"] = self.meanValue!
                    }
                    if self.minorAxis != nil {
                        map["MinorAxis"] = self.minorAxis!
                    }
                    if self.recistSOPInstanceUID != nil {
                        map["RecistSOPInstanceUID"] = self.recistSOPInstanceUID!
                    }
                    if self.risk != nil {
                        map["Risk"] = self.risk!
                    }
                    if self.SOPInstanceUID != nil {
                        map["SOPInstanceUID"] = self.SOPInstanceUID!
                    }
                    if self.volume != nil {
                        map["Volume"] = self.volume!
                    }
                    if self.x != nil {
                        map["X"] = self.x!
                    }
                    if self.y != nil {
                        map["Y"] = self.y!
                    }
                    if self.z != nil {
                        map["Z"] = self.z!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Category"] as? String {
                        self.category = value
                    }
                    if let value = dict["Confidence"] as? Double {
                        self.confidence = value
                    }
                    if let value = dict["Diameter"] as? Double {
                        self.diameter = value
                    }
                    if let value = dict["ImageX"] as? Double {
                        self.imageX = value
                    }
                    if let value = dict["ImageY"] as? Double {
                        self.imageY = value
                    }
                    if let value = dict["ImageZ"] as? Double {
                        self.imageZ = value
                    }
                    if let value = dict["Lobe"] as? String {
                        self.lobe = value
                    }
                    if let value = dict["Lung"] as? String {
                        self.lung = value
                    }
                    if let value = dict["MajorAxis"] as? [Double] {
                        self.majorAxis = value
                    }
                    if let value = dict["MeanValue"] as? Double {
                        self.meanValue = value
                    }
                    if let value = dict["MinorAxis"] as? [Double] {
                        self.minorAxis = value
                    }
                    if let value = dict["RecistSOPInstanceUID"] as? String {
                        self.recistSOPInstanceUID = value
                    }
                    if let value = dict["Risk"] as? Double {
                        self.risk = value
                    }
                    if let value = dict["SOPInstanceUID"] as? String {
                        self.SOPInstanceUID = value
                    }
                    if let value = dict["Volume"] as? Double {
                        self.volume = value
                    }
                    if let value = dict["X"] as? Double {
                        self.x = value
                    }
                    if let value = dict["Y"] as? Double {
                        self.y = value
                    }
                    if let value = dict["Z"] as? Double {
                        self.z = value
                    }
                }
            }
            public var elements: [DetectLungNoduleResponseBody.Data.Series.Elements]?

            public var origin: [Double]?

            public var report: String?

            public var seriesInstanceUid: String?

            public var spacing: [Double]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.elements != nil {
                    var tmp : [Any] = []
                    for k in self.elements! {
                        tmp.append(k.toMap())
                    }
                    map["Elements"] = tmp
                }
                if self.origin != nil {
                    map["Origin"] = self.origin!
                }
                if self.report != nil {
                    map["Report"] = self.report!
                }
                if self.seriesInstanceUid != nil {
                    map["SeriesInstanceUid"] = self.seriesInstanceUid!
                }
                if self.spacing != nil {
                    map["Spacing"] = self.spacing!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Elements"] as? [Any?] {
                    var tmp : [DetectLungNoduleResponseBody.Data.Series.Elements] = []
                    for v in value {
                        if v != nil {
                            var model = DetectLungNoduleResponseBody.Data.Series.Elements()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.elements = tmp
                }
                if let value = dict["Origin"] as? [Double] {
                    self.origin = value
                }
                if let value = dict["Report"] as? String {
                    self.report = value
                }
                if let value = dict["SeriesInstanceUid"] as? String {
                    self.seriesInstanceUid = value
                }
                if let value = dict["Spacing"] as? [Double] {
                    self.spacing = value
                }
            }
        }
        public var series: [DetectLungNoduleResponseBody.Data.Series]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.series != nil {
                var tmp : [Any] = []
                for k in self.series! {
                    tmp.append(k.toMap())
                }
                map["Series"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Series"] as? [Any?] {
                var tmp : [DetectLungNoduleResponseBody.Data.Series] = []
                for v in value {
                    if v != nil {
                        var model = DetectLungNoduleResponseBody.Data.Series()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.series = tmp
            }
        }
    }
    public var data: DetectLungNoduleResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DetectLungNoduleResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DetectLungNoduleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetectLungNoduleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DetectLungNoduleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DetectLymphRequest : Tea.TeaModel {
    public class URLList : Tea.TeaModel {
        public var URL: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.URL != nil {
                map["URL"] = self.URL!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["URL"] as? String {
                self.URL = value
            }
        }
    }
    public var dataSourceType: String?

    public var URLList: [DetectLymphRequest.URLList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataSourceType != nil {
            map["DataSourceType"] = self.dataSourceType!
        }
        if self.URLList != nil {
            var tmp : [Any] = []
            for k in self.URLList! {
                tmp.append(k.toMap())
            }
            map["URLList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataSourceType"] as? String {
            self.dataSourceType = value
        }
        if let value = dict["URLList"] as? [Any?] {
            var tmp : [DetectLymphRequest.URLList] = []
            for v in value {
                if v != nil {
                    var model = DetectLymphRequest.URLList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.URLList = tmp
        }
    }
}

public class DetectLymphAdvanceRequest : Tea.TeaModel {
    public class URLList : Tea.TeaModel {
        public var URLObject: InputStream?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.URLObject != nil {
                map["URL"] = self.URLObject!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["URL"] as? InputStream {
                self.URLObject = value
            }
        }
    }
    public var dataSourceType: String?

    public var URLList: [DetectLymphAdvanceRequest.URLList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataSourceType != nil {
            map["DataSourceType"] = self.dataSourceType!
        }
        if self.URLList != nil {
            var tmp : [Any] = []
            for k in self.URLList! {
                tmp.append(k.toMap())
            }
            map["URLList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataSourceType"] as? String {
            self.dataSourceType = value
        }
        if let value = dict["URLList"] as? [Any?] {
            var tmp : [DetectLymphAdvanceRequest.URLList] = []
            for v in value {
                if v != nil {
                    var model = DetectLymphAdvanceRequest.URLList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.URLList = tmp
        }
    }
}

public class DetectLymphResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Lesions : Tea.TeaModel {
            public var boxes: [Double]?

            public var diametermm: [Double]?

            public var keySlice: Int64?

            public var recist: [[Double]]?

            public var score: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.boxes != nil {
                    map["Boxes"] = self.boxes!
                }
                if self.diametermm != nil {
                    map["Diametermm"] = self.diametermm!
                }
                if self.keySlice != nil {
                    map["KeySlice"] = self.keySlice!
                }
                if self.recist != nil {
                    map["Recist"] = self.recist!
                }
                if self.score != nil {
                    map["Score"] = self.score!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Boxes"] as? [Double] {
                    self.boxes = value
                }
                if let value = dict["Diametermm"] as? [Double] {
                    self.diametermm = value
                }
                if let value = dict["KeySlice"] as? Int64 {
                    self.keySlice = value
                }
                if let value = dict["Recist"] as? [[Double]] {
                    self.recist = value
                }
                if let value = dict["Score"] as? Double {
                    self.score = value
                }
            }
        }
        public var lesions: [DetectLymphResponseBody.Data.Lesions]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.lesions != nil {
                var tmp : [Any] = []
                for k in self.lesions! {
                    tmp.append(k.toMap())
                }
                map["Lesions"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Lesions"] as? [Any?] {
                var tmp : [DetectLymphResponseBody.Data.Lesions] = []
                for v in value {
                    if v != nil {
                        var model = DetectLymphResponseBody.Data.Lesions()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.lesions = tmp
            }
        }
    }
    public var data: DetectLymphResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DetectLymphResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DetectLymphResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetectLymphResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DetectLymphResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DetectPancRequest : Tea.TeaModel {
    public class URLList : Tea.TeaModel {
        public var URL: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.URL != nil {
                map["URL"] = self.URL!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["URL"] as? String {
                self.URL = value
            }
        }
    }
    public var dataSourceType: String?

    public var URLList: [DetectPancRequest.URLList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataSourceType != nil {
            map["DataSourceType"] = self.dataSourceType!
        }
        if self.URLList != nil {
            var tmp : [Any] = []
            for k in self.URLList! {
                tmp.append(k.toMap())
            }
            map["URLList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataSourceType"] as? String {
            self.dataSourceType = value
        }
        if let value = dict["URLList"] as? [Any?] {
            var tmp : [DetectPancRequest.URLList] = []
            for v in value {
                if v != nil {
                    var model = DetectPancRequest.URLList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.URLList = tmp
        }
    }
}

public class DetectPancAdvanceRequest : Tea.TeaModel {
    public class URLList : Tea.TeaModel {
        public var URLObject: InputStream?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.URLObject != nil {
                map["URL"] = self.URLObject!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["URL"] as? InputStream {
                self.URLObject = value
            }
        }
    }
    public var dataSourceType: String?

    public var URLList: [DetectPancAdvanceRequest.URLList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataSourceType != nil {
            map["DataSourceType"] = self.dataSourceType!
        }
        if self.URLList != nil {
            var tmp : [Any] = []
            for k in self.URLList! {
                tmp.append(k.toMap())
            }
            map["URLList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataSourceType"] as? String {
            self.dataSourceType = value
        }
        if let value = dict["URLList"] as? [Any?] {
            var tmp : [DetectPancAdvanceRequest.URLList] = []
            for v in value {
                if v != nil {
                    var model = DetectPancAdvanceRequest.URLList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.URLList = tmp
        }
    }
}

public class DetectPancResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Lesion : Tea.TeaModel {
            public var mask: String?

            public var nonPdacVol: String?

            public var pancVol: String?

            public var pdacVol: String?

            public var possibilities: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.mask != nil {
                    map["Mask"] = self.mask!
                }
                if self.nonPdacVol != nil {
                    map["NonPdacVol"] = self.nonPdacVol!
                }
                if self.pancVol != nil {
                    map["PancVol"] = self.pancVol!
                }
                if self.pdacVol != nil {
                    map["PdacVol"] = self.pdacVol!
                }
                if self.possibilities != nil {
                    map["Possibilities"] = self.possibilities!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Mask"] as? String {
                    self.mask = value
                }
                if let value = dict["NonPdacVol"] as? String {
                    self.nonPdacVol = value
                }
                if let value = dict["PancVol"] as? String {
                    self.pancVol = value
                }
                if let value = dict["PdacVol"] as? String {
                    self.pdacVol = value
                }
                if let value = dict["Possibilities"] as? [String] {
                    self.possibilities = value
                }
            }
        }
        public var lesion: DetectPancResponseBody.Data.Lesion?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.lesion?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.lesion != nil {
                map["Lesion"] = self.lesion?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Lesion"] as? [String: Any?] {
                var model = DetectPancResponseBody.Data.Lesion()
                model.fromMap(value)
                self.lesion = model
            }
        }
    }
    public var data: DetectPancResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DetectPancResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DetectPancResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetectPancResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DetectPancResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DetectRibFractureRequest : Tea.TeaModel {
    public class URLList : Tea.TeaModel {
        public var URL: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.URL != nil {
                map["URL"] = self.URL!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["URL"] as? String {
                self.URL = value
            }
        }
    }
    public var dataFormat: String?

    public var orgId: String?

    public var orgName: String?

    public var sourceType: String?

    public var URLList: [DetectRibFractureRequest.URLList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataFormat != nil {
            map["DataFormat"] = self.dataFormat!
        }
        if self.orgId != nil {
            map["OrgId"] = self.orgId!
        }
        if self.orgName != nil {
            map["OrgName"] = self.orgName!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        if self.URLList != nil {
            var tmp : [Any] = []
            for k in self.URLList! {
                tmp.append(k.toMap())
            }
            map["URLList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataFormat"] as? String {
            self.dataFormat = value
        }
        if let value = dict["OrgId"] as? String {
            self.orgId = value
        }
        if let value = dict["OrgName"] as? String {
            self.orgName = value
        }
        if let value = dict["SourceType"] as? String {
            self.sourceType = value
        }
        if let value = dict["URLList"] as? [Any?] {
            var tmp : [DetectRibFractureRequest.URLList] = []
            for v in value {
                if v != nil {
                    var model = DetectRibFractureRequest.URLList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.URLList = tmp
        }
    }
}

public class DetectRibFractureAdvanceRequest : Tea.TeaModel {
    public class URLList : Tea.TeaModel {
        public var URLObject: InputStream?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.URLObject != nil {
                map["URL"] = self.URLObject!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["URL"] as? InputStream {
                self.URLObject = value
            }
        }
    }
    public var dataFormat: String?

    public var orgId: String?

    public var orgName: String?

    public var sourceType: String?

    public var URLList: [DetectRibFractureAdvanceRequest.URLList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataFormat != nil {
            map["DataFormat"] = self.dataFormat!
        }
        if self.orgId != nil {
            map["OrgId"] = self.orgId!
        }
        if self.orgName != nil {
            map["OrgName"] = self.orgName!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        if self.URLList != nil {
            var tmp : [Any] = []
            for k in self.URLList! {
                tmp.append(k.toMap())
            }
            map["URLList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataFormat"] as? String {
            self.dataFormat = value
        }
        if let value = dict["OrgId"] as? String {
            self.orgId = value
        }
        if let value = dict["OrgName"] as? String {
            self.orgName = value
        }
        if let value = dict["SourceType"] as? String {
            self.sourceType = value
        }
        if let value = dict["URLList"] as? [Any?] {
            var tmp : [DetectRibFractureAdvanceRequest.URLList] = []
            for v in value {
                if v != nil {
                    var model = DetectRibFractureAdvanceRequest.URLList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.URLList = tmp
        }
    }
}

public class DetectRibFractureResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Detections : Tea.TeaModel {
            public var coordinateImage: [Int32]?

            public var coordinates: [Int32]?

            public var fracSOPInstanceUID: String?

            public var fractureCategory: String?

            public var fractureConfidence: Double?

            public var fractureId: Int32?

            public var fractureLocation: String?

            public var fractureSegment: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.coordinateImage != nil {
                    map["CoordinateImage"] = self.coordinateImage!
                }
                if self.coordinates != nil {
                    map["Coordinates"] = self.coordinates!
                }
                if self.fracSOPInstanceUID != nil {
                    map["FracSOPInstanceUID"] = self.fracSOPInstanceUID!
                }
                if self.fractureCategory != nil {
                    map["FractureCategory"] = self.fractureCategory!
                }
                if self.fractureConfidence != nil {
                    map["FractureConfidence"] = self.fractureConfidence!
                }
                if self.fractureId != nil {
                    map["FractureId"] = self.fractureId!
                }
                if self.fractureLocation != nil {
                    map["FractureLocation"] = self.fractureLocation!
                }
                if self.fractureSegment != nil {
                    map["FractureSegment"] = self.fractureSegment!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CoordinateImage"] as? [Int32] {
                    self.coordinateImage = value
                }
                if let value = dict["Coordinates"] as? [Int32] {
                    self.coordinates = value
                }
                if let value = dict["FracSOPInstanceUID"] as? String {
                    self.fracSOPInstanceUID = value
                }
                if let value = dict["FractureCategory"] as? String {
                    self.fractureCategory = value
                }
                if let value = dict["FractureConfidence"] as? Double {
                    self.fractureConfidence = value
                }
                if let value = dict["FractureId"] as? Int32 {
                    self.fractureId = value
                }
                if let value = dict["FractureLocation"] as? String {
                    self.fractureLocation = value
                }
                if let value = dict["FractureSegment"] as? Int64 {
                    self.fractureSegment = value
                }
            }
        }
        public var detections: [DetectRibFractureResponseBody.Data.Detections]?

        public var origin: [Double]?

        public var resultURL: String?

        public var spacing: [Double]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.detections != nil {
                var tmp : [Any] = []
                for k in self.detections! {
                    tmp.append(k.toMap())
                }
                map["Detections"] = tmp
            }
            if self.origin != nil {
                map["Origin"] = self.origin!
            }
            if self.resultURL != nil {
                map["ResultURL"] = self.resultURL!
            }
            if self.spacing != nil {
                map["Spacing"] = self.spacing!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Detections"] as? [Any?] {
                var tmp : [DetectRibFractureResponseBody.Data.Detections] = []
                for v in value {
                    if v != nil {
                        var model = DetectRibFractureResponseBody.Data.Detections()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.detections = tmp
            }
            if let value = dict["Origin"] as? [Double] {
                self.origin = value
            }
            if let value = dict["ResultURL"] as? String {
                self.resultURL = value
            }
            if let value = dict["Spacing"] as? [Double] {
                self.spacing = value
            }
        }
    }
    public var data: DetectRibFractureResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DetectRibFractureResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DetectRibFractureResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetectRibFractureResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DetectRibFractureResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DetectSkinDiseaseRequest : Tea.TeaModel {
    public var orgId: String?

    public var orgName: String?

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
        if self.orgId != nil {
            map["OrgId"] = self.orgId!
        }
        if self.orgName != nil {
            map["OrgName"] = self.orgName!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OrgId"] as? String {
            self.orgId = value
        }
        if let value = dict["OrgName"] as? String {
            self.orgName = value
        }
        if let value = dict["Url"] as? String {
            self.url = value
        }
    }
}

public class DetectSkinDiseaseAdvanceRequest : Tea.TeaModel {
    public var orgId: String?

    public var orgName: String?

    public var urlObject: InputStream?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.orgId != nil {
            map["OrgId"] = self.orgId!
        }
        if self.orgName != nil {
            map["OrgName"] = self.orgName!
        }
        if self.urlObject != nil {
            map["Url"] = self.urlObject!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OrgId"] as? String {
            self.orgId = value
        }
        if let value = dict["OrgName"] as? String {
            self.orgName = value
        }
        if let value = dict["Url"] as? InputStream {
            self.urlObject = value
        }
    }
}

public class DetectSkinDiseaseResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var bodyPart: String?

        public var imageQuality: Double?

        public var imageType: String?

        public var results: [String: Any]?

        public var resultsEnglish: [String: Any]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bodyPart != nil {
                map["BodyPart"] = self.bodyPart!
            }
            if self.imageQuality != nil {
                map["ImageQuality"] = self.imageQuality!
            }
            if self.imageType != nil {
                map["ImageType"] = self.imageType!
            }
            if self.results != nil {
                map["Results"] = self.results!
            }
            if self.resultsEnglish != nil {
                map["ResultsEnglish"] = self.resultsEnglish!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BodyPart"] as? String {
                self.bodyPart = value
            }
            if let value = dict["ImageQuality"] as? Double {
                self.imageQuality = value
            }
            if let value = dict["ImageType"] as? String {
                self.imageType = value
            }
            if let value = dict["Results"] as? [String: Any] {
                self.results = value
            }
            if let value = dict["ResultsEnglish"] as? [String: Any] {
                self.resultsEnglish = value
            }
        }
    }
    public var data: DetectSkinDiseaseResponseBody.Data?

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
            var model = DetectSkinDiseaseResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DetectSkinDiseaseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetectSkinDiseaseResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DetectSkinDiseaseResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class FeedbackSessionRequest : Tea.TeaModel {
    public var feedback: String?

    public var sessionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.feedback != nil {
            map["Feedback"] = self.feedback!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Feedback"] as? String {
            self.feedback = value
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
        }
    }
}

public class FeedbackSessionResponseBody : Tea.TeaModel {
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

public class FeedbackSessionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: FeedbackSessionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = FeedbackSessionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAsyncJobResultRequest : Tea.TeaModel {
    public var jobId: String?

    public override init() {
        super.init()
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
            map["JobId"] = self.jobId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
    }
}

public class GetAsyncJobResultResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var errorCode: String?

        public var errorMessage: String?

        public var jobId: String?

        public var result: String?

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
            if self.errorCode != nil {
                map["ErrorCode"] = self.errorCode!
            }
            if self.errorMessage != nil {
                map["ErrorMessage"] = self.errorMessage!
            }
            if self.jobId != nil {
                map["JobId"] = self.jobId!
            }
            if self.result != nil {
                map["Result"] = self.result!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ErrorCode"] as? String {
                self.errorCode = value
            }
            if let value = dict["ErrorMessage"] as? String {
                self.errorMessage = value
            }
            if let value = dict["JobId"] as? String {
                self.jobId = value
            }
            if let value = dict["Result"] as? String {
                self.result = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var data: GetAsyncJobResultResponseBody.Data?

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
            var model = GetAsyncJobResultResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetAsyncJobResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAsyncJobResultResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetAsyncJobResultResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PredictCVDRequest : Tea.TeaModel {
    public class URLList : Tea.TeaModel {
        public var URL: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.URL != nil {
                map["URL"] = self.URL!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["URL"] as? String {
                self.URL = value
            }
        }
    }
    public var dataFormat: String?

    public var dataSourceType: String?

    public var orgId: String?

    public var orgName: String?

    public var URLList: [PredictCVDRequest.URLList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataFormat != nil {
            map["DataFormat"] = self.dataFormat!
        }
        if self.dataSourceType != nil {
            map["DataSourceType"] = self.dataSourceType!
        }
        if self.orgId != nil {
            map["OrgId"] = self.orgId!
        }
        if self.orgName != nil {
            map["OrgName"] = self.orgName!
        }
        if self.URLList != nil {
            var tmp : [Any] = []
            for k in self.URLList! {
                tmp.append(k.toMap())
            }
            map["URLList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataFormat"] as? String {
            self.dataFormat = value
        }
        if let value = dict["DataSourceType"] as? String {
            self.dataSourceType = value
        }
        if let value = dict["OrgId"] as? String {
            self.orgId = value
        }
        if let value = dict["OrgName"] as? String {
            self.orgName = value
        }
        if let value = dict["URLList"] as? [Any?] {
            var tmp : [PredictCVDRequest.URLList] = []
            for v in value {
                if v != nil {
                    var model = PredictCVDRequest.URLList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.URLList = tmp
        }
    }
}

public class PredictCVDAdvanceRequest : Tea.TeaModel {
    public class URLList : Tea.TeaModel {
        public var URLObject: InputStream?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.URLObject != nil {
                map["URL"] = self.URLObject!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["URL"] as? InputStream {
                self.URLObject = value
            }
        }
    }
    public var dataFormat: String?

    public var dataSourceType: String?

    public var orgId: String?

    public var orgName: String?

    public var URLList: [PredictCVDAdvanceRequest.URLList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataFormat != nil {
            map["DataFormat"] = self.dataFormat!
        }
        if self.dataSourceType != nil {
            map["DataSourceType"] = self.dataSourceType!
        }
        if self.orgId != nil {
            map["OrgId"] = self.orgId!
        }
        if self.orgName != nil {
            map["OrgName"] = self.orgName!
        }
        if self.URLList != nil {
            var tmp : [Any] = []
            for k in self.URLList! {
                tmp.append(k.toMap())
            }
            map["URLList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataFormat"] as? String {
            self.dataFormat = value
        }
        if let value = dict["DataSourceType"] as? String {
            self.dataSourceType = value
        }
        if let value = dict["OrgId"] as? String {
            self.orgId = value
        }
        if let value = dict["OrgName"] as? String {
            self.orgName = value
        }
        if let value = dict["URLList"] as? [Any?] {
            var tmp : [PredictCVDAdvanceRequest.URLList] = []
            for v in value {
                if v != nil {
                    var model = PredictCVDAdvanceRequest.URLList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.URLList = tmp
        }
    }
}

public class PredictCVDResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Lesion : Tea.TeaModel {
            public class FeatureScore : Tea.TeaModel {
                public var aortaCalciumScore: [Double]?

                public var aortaCalciumVolume: [Double]?

                public var aortaMaxDiam: [Double]?

                public var aortaMaxDiamStd: [Double]?

                public var aorticHeightIndex: [Double]?

                public var aorticTortuosityIndex: [Double]?

                public var ascAoMaxDiam: [Double]?

                public var ascendAortaLength: [Double]?

                public var cardioThoracicRatio: [Double]?

                public var chestWidth: [Double]?

                public var coronaryCalciumScore: [Double]?

                public var coronaryCalciumVol: [Double]?

                public var deepFeature: [Double]?

                public var eatHUMean: [Double]?

                public var eatHUSTD: [Double]?

                public var eatVolume: [Double]?

                public var heartLongDiam: [Double]?

                public var heartShortDiam: [Double]?

                public var heartWidth: [Double]?

                public var leftLungHighattRatio: [Double]?

                public var leftLungLowattRatio: [Double]?

                public var myoEpiRatio: [Double]?

                public var rightLungHighattRatio: [Double]?

                public var rightLungLowattRatio: [Double]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.aortaCalciumScore != nil {
                        map["AortaCalciumScore"] = self.aortaCalciumScore!
                    }
                    if self.aortaCalciumVolume != nil {
                        map["AortaCalciumVolume"] = self.aortaCalciumVolume!
                    }
                    if self.aortaMaxDiam != nil {
                        map["AortaMaxDiam"] = self.aortaMaxDiam!
                    }
                    if self.aortaMaxDiamStd != nil {
                        map["AortaMaxDiamStd"] = self.aortaMaxDiamStd!
                    }
                    if self.aorticHeightIndex != nil {
                        map["AorticHeightIndex"] = self.aorticHeightIndex!
                    }
                    if self.aorticTortuosityIndex != nil {
                        map["AorticTortuosityIndex"] = self.aorticTortuosityIndex!
                    }
                    if self.ascAoMaxDiam != nil {
                        map["AscAoMaxDiam"] = self.ascAoMaxDiam!
                    }
                    if self.ascendAortaLength != nil {
                        map["AscendAortaLength"] = self.ascendAortaLength!
                    }
                    if self.cardioThoracicRatio != nil {
                        map["CardioThoracicRatio"] = self.cardioThoracicRatio!
                    }
                    if self.chestWidth != nil {
                        map["ChestWidth"] = self.chestWidth!
                    }
                    if self.coronaryCalciumScore != nil {
                        map["CoronaryCalciumScore"] = self.coronaryCalciumScore!
                    }
                    if self.coronaryCalciumVol != nil {
                        map["CoronaryCalciumVol"] = self.coronaryCalciumVol!
                    }
                    if self.deepFeature != nil {
                        map["DeepFeature"] = self.deepFeature!
                    }
                    if self.eatHUMean != nil {
                        map["EatHUMean"] = self.eatHUMean!
                    }
                    if self.eatHUSTD != nil {
                        map["EatHUSTD"] = self.eatHUSTD!
                    }
                    if self.eatVolume != nil {
                        map["EatVolume"] = self.eatVolume!
                    }
                    if self.heartLongDiam != nil {
                        map["HeartLongDiam"] = self.heartLongDiam!
                    }
                    if self.heartShortDiam != nil {
                        map["HeartShortDiam"] = self.heartShortDiam!
                    }
                    if self.heartWidth != nil {
                        map["HeartWidth"] = self.heartWidth!
                    }
                    if self.leftLungHighattRatio != nil {
                        map["LeftLungHighattRatio"] = self.leftLungHighattRatio!
                    }
                    if self.leftLungLowattRatio != nil {
                        map["LeftLungLowattRatio"] = self.leftLungLowattRatio!
                    }
                    if self.myoEpiRatio != nil {
                        map["MyoEpiRatio"] = self.myoEpiRatio!
                    }
                    if self.rightLungHighattRatio != nil {
                        map["RightLungHighattRatio"] = self.rightLungHighattRatio!
                    }
                    if self.rightLungLowattRatio != nil {
                        map["RightLungLowattRatio"] = self.rightLungLowattRatio!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["AortaCalciumScore"] as? [Double] {
                        self.aortaCalciumScore = value
                    }
                    if let value = dict["AortaCalciumVolume"] as? [Double] {
                        self.aortaCalciumVolume = value
                    }
                    if let value = dict["AortaMaxDiam"] as? [Double] {
                        self.aortaMaxDiam = value
                    }
                    if let value = dict["AortaMaxDiamStd"] as? [Double] {
                        self.aortaMaxDiamStd = value
                    }
                    if let value = dict["AorticHeightIndex"] as? [Double] {
                        self.aorticHeightIndex = value
                    }
                    if let value = dict["AorticTortuosityIndex"] as? [Double] {
                        self.aorticTortuosityIndex = value
                    }
                    if let value = dict["AscAoMaxDiam"] as? [Double] {
                        self.ascAoMaxDiam = value
                    }
                    if let value = dict["AscendAortaLength"] as? [Double] {
                        self.ascendAortaLength = value
                    }
                    if let value = dict["CardioThoracicRatio"] as? [Double] {
                        self.cardioThoracicRatio = value
                    }
                    if let value = dict["ChestWidth"] as? [Double] {
                        self.chestWidth = value
                    }
                    if let value = dict["CoronaryCalciumScore"] as? [Double] {
                        self.coronaryCalciumScore = value
                    }
                    if let value = dict["CoronaryCalciumVol"] as? [Double] {
                        self.coronaryCalciumVol = value
                    }
                    if let value = dict["DeepFeature"] as? [Double] {
                        self.deepFeature = value
                    }
                    if let value = dict["EatHUMean"] as? [Double] {
                        self.eatHUMean = value
                    }
                    if let value = dict["EatHUSTD"] as? [Double] {
                        self.eatHUSTD = value
                    }
                    if let value = dict["EatVolume"] as? [Double] {
                        self.eatVolume = value
                    }
                    if let value = dict["HeartLongDiam"] as? [Double] {
                        self.heartLongDiam = value
                    }
                    if let value = dict["HeartShortDiam"] as? [Double] {
                        self.heartShortDiam = value
                    }
                    if let value = dict["HeartWidth"] as? [Double] {
                        self.heartWidth = value
                    }
                    if let value = dict["LeftLungHighattRatio"] as? [Double] {
                        self.leftLungHighattRatio = value
                    }
                    if let value = dict["LeftLungLowattRatio"] as? [Double] {
                        self.leftLungLowattRatio = value
                    }
                    if let value = dict["MyoEpiRatio"] as? [Double] {
                        self.myoEpiRatio = value
                    }
                    if let value = dict["RightLungHighattRatio"] as? [Double] {
                        self.rightLungHighattRatio = value
                    }
                    if let value = dict["RightLungLowattRatio"] as? [Double] {
                        self.rightLungLowattRatio = value
                    }
                }
            }
            public var CVDProbability: Double?

            public var featureScore: PredictCVDResponseBody.Data.Lesion.FeatureScore?

            public var imagesURL: String?

            public var resultURL: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.featureScore?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.CVDProbability != nil {
                    map["CVDProbability"] = self.CVDProbability!
                }
                if self.featureScore != nil {
                    map["FeatureScore"] = self.featureScore?.toMap()
                }
                if self.imagesURL != nil {
                    map["ImagesURL"] = self.imagesURL!
                }
                if self.resultURL != nil {
                    map["ResultURL"] = self.resultURL!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CVDProbability"] as? Double {
                    self.CVDProbability = value
                }
                if let value = dict["FeatureScore"] as? [String: Any?] {
                    var model = PredictCVDResponseBody.Data.Lesion.FeatureScore()
                    model.fromMap(value)
                    self.featureScore = model
                }
                if let value = dict["ImagesURL"] as? String {
                    self.imagesURL = value
                }
                if let value = dict["ResultURL"] as? [String] {
                    self.resultURL = value
                }
            }
        }
        public var lesion: PredictCVDResponseBody.Data.Lesion?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.lesion?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.lesion != nil {
                map["Lesion"] = self.lesion?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Lesion"] as? [String: Any?] {
                var model = PredictCVDResponseBody.Data.Lesion()
                model.fromMap(value)
                self.lesion = model
            }
        }
    }
    public var data: PredictCVDResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = PredictCVDResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class PredictCVDResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PredictCVDResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = PredictCVDResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RunCTRegistrationRequest : Tea.TeaModel {
    public class FloatingList : Tea.TeaModel {
        public var floatingURL: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.floatingURL != nil {
                map["FloatingURL"] = self.floatingURL!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FloatingURL"] as? String {
                self.floatingURL = value
            }
        }
    }
    public class ReferenceList : Tea.TeaModel {
        public var referenceURL: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.referenceURL != nil {
                map["ReferenceURL"] = self.referenceURL!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ReferenceURL"] as? String {
                self.referenceURL = value
            }
        }
    }
    public var dataFormat: String?

    public var dataSourceType: String?

    public var floatingList: [RunCTRegistrationRequest.FloatingList]?

    public var orgId: String?

    public var orgName: String?

    public var referenceList: [RunCTRegistrationRequest.ReferenceList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataFormat != nil {
            map["DataFormat"] = self.dataFormat!
        }
        if self.dataSourceType != nil {
            map["DataSourceType"] = self.dataSourceType!
        }
        if self.floatingList != nil {
            var tmp : [Any] = []
            for k in self.floatingList! {
                tmp.append(k.toMap())
            }
            map["FloatingList"] = tmp
        }
        if self.orgId != nil {
            map["OrgId"] = self.orgId!
        }
        if self.orgName != nil {
            map["OrgName"] = self.orgName!
        }
        if self.referenceList != nil {
            var tmp : [Any] = []
            for k in self.referenceList! {
                tmp.append(k.toMap())
            }
            map["ReferenceList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataFormat"] as? String {
            self.dataFormat = value
        }
        if let value = dict["DataSourceType"] as? String {
            self.dataSourceType = value
        }
        if let value = dict["FloatingList"] as? [Any?] {
            var tmp : [RunCTRegistrationRequest.FloatingList] = []
            for v in value {
                if v != nil {
                    var model = RunCTRegistrationRequest.FloatingList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.floatingList = tmp
        }
        if let value = dict["OrgId"] as? String {
            self.orgId = value
        }
        if let value = dict["OrgName"] as? String {
            self.orgName = value
        }
        if let value = dict["ReferenceList"] as? [Any?] {
            var tmp : [RunCTRegistrationRequest.ReferenceList] = []
            for v in value {
                if v != nil {
                    var model = RunCTRegistrationRequest.ReferenceList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.referenceList = tmp
        }
    }
}

public class RunCTRegistrationAdvanceRequest : Tea.TeaModel {
    public class FloatingList : Tea.TeaModel {
        public var floatingURLObject: InputStream?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.floatingURLObject != nil {
                map["FloatingURL"] = self.floatingURLObject!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FloatingURL"] as? InputStream {
                self.floatingURLObject = value
            }
        }
    }
    public class ReferenceList : Tea.TeaModel {
        public var referenceURLObject: InputStream?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.referenceURLObject != nil {
                map["ReferenceURL"] = self.referenceURLObject!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ReferenceURL"] as? InputStream {
                self.referenceURLObject = value
            }
        }
    }
    public var dataFormat: String?

    public var dataSourceType: String?

    public var floatingList: [RunCTRegistrationAdvanceRequest.FloatingList]?

    public var orgId: String?

    public var orgName: String?

    public var referenceList: [RunCTRegistrationAdvanceRequest.ReferenceList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataFormat != nil {
            map["DataFormat"] = self.dataFormat!
        }
        if self.dataSourceType != nil {
            map["DataSourceType"] = self.dataSourceType!
        }
        if self.floatingList != nil {
            var tmp : [Any] = []
            for k in self.floatingList! {
                tmp.append(k.toMap())
            }
            map["FloatingList"] = tmp
        }
        if self.orgId != nil {
            map["OrgId"] = self.orgId!
        }
        if self.orgName != nil {
            map["OrgName"] = self.orgName!
        }
        if self.referenceList != nil {
            var tmp : [Any] = []
            for k in self.referenceList! {
                tmp.append(k.toMap())
            }
            map["ReferenceList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataFormat"] as? String {
            self.dataFormat = value
        }
        if let value = dict["DataSourceType"] as? String {
            self.dataSourceType = value
        }
        if let value = dict["FloatingList"] as? [Any?] {
            var tmp : [RunCTRegistrationAdvanceRequest.FloatingList] = []
            for v in value {
                if v != nil {
                    var model = RunCTRegistrationAdvanceRequest.FloatingList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.floatingList = tmp
        }
        if let value = dict["OrgId"] as? String {
            self.orgId = value
        }
        if let value = dict["OrgName"] as? String {
            self.orgName = value
        }
        if let value = dict["ReferenceList"] as? [Any?] {
            var tmp : [RunCTRegistrationAdvanceRequest.ReferenceList] = []
            for v in value {
                if v != nil {
                    var model = RunCTRegistrationAdvanceRequest.ReferenceList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.referenceList = tmp
        }
    }
}

public class RunCTRegistrationResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var DUrl: String?

        public var NUrl: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.DUrl != nil {
                map["DUrl"] = self.DUrl!
            }
            if self.NUrl != nil {
                map["NUrl"] = self.NUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DUrl"] as? String {
                self.DUrl = value
            }
            if let value = dict["NUrl"] as? String {
                self.NUrl = value
            }
        }
    }
    public var data: RunCTRegistrationResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = RunCTRegistrationResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class RunCTRegistrationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RunCTRegistrationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RunCTRegistrationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RunMedQARequest : Tea.TeaModel {
    public class AnswerImageDataList : Tea.TeaModel {
        public var answerImageData: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.answerImageData != nil {
                map["AnswerImageData"] = self.answerImageData!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AnswerImageData"] as? String {
                self.answerImageData = value
            }
        }
    }
    public class AnswerImageURLList : Tea.TeaModel {
        public var answerImageURL: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.answerImageURL != nil {
                map["AnswerImageURL"] = self.answerImageURL!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AnswerImageURL"] as? String {
                self.answerImageURL = value
            }
        }
    }
    public class AnswerTextList : Tea.TeaModel {
        public var answerText: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.answerText != nil {
                map["AnswerText"] = self.answerText!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AnswerText"] as? String {
                self.answerText = value
            }
        }
    }
    public var answerImageDataList: [RunMedQARequest.AnswerImageDataList]?

    public var answerImageURLList: [RunMedQARequest.AnswerImageURLList]?

    public var answerTextList: [RunMedQARequest.AnswerTextList]?

    public var department: String?

    public var orgId: String?

    public var orgName: String?

    public var questionType: String?

    public var sessionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.answerImageDataList != nil {
            var tmp : [Any] = []
            for k in self.answerImageDataList! {
                tmp.append(k.toMap())
            }
            map["AnswerImageDataList"] = tmp
        }
        if self.answerImageURLList != nil {
            var tmp : [Any] = []
            for k in self.answerImageURLList! {
                tmp.append(k.toMap())
            }
            map["AnswerImageURLList"] = tmp
        }
        if self.answerTextList != nil {
            var tmp : [Any] = []
            for k in self.answerTextList! {
                tmp.append(k.toMap())
            }
            map["AnswerTextList"] = tmp
        }
        if self.department != nil {
            map["Department"] = self.department!
        }
        if self.orgId != nil {
            map["OrgId"] = self.orgId!
        }
        if self.orgName != nil {
            map["OrgName"] = self.orgName!
        }
        if self.questionType != nil {
            map["QuestionType"] = self.questionType!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AnswerImageDataList"] as? [Any?] {
            var tmp : [RunMedQARequest.AnswerImageDataList] = []
            for v in value {
                if v != nil {
                    var model = RunMedQARequest.AnswerImageDataList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.answerImageDataList = tmp
        }
        if let value = dict["AnswerImageURLList"] as? [Any?] {
            var tmp : [RunMedQARequest.AnswerImageURLList] = []
            for v in value {
                if v != nil {
                    var model = RunMedQARequest.AnswerImageURLList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.answerImageURLList = tmp
        }
        if let value = dict["AnswerTextList"] as? [Any?] {
            var tmp : [RunMedQARequest.AnswerTextList] = []
            for v in value {
                if v != nil {
                    var model = RunMedQARequest.AnswerTextList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.answerTextList = tmp
        }
        if let value = dict["Department"] as? String {
            self.department = value
        }
        if let value = dict["OrgId"] as? String {
            self.orgId = value
        }
        if let value = dict["OrgName"] as? String {
            self.orgName = value
        }
        if let value = dict["QuestionType"] as? String {
            self.questionType = value
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
        }
    }
}

public class RunMedQAAdvanceRequest : Tea.TeaModel {
    public class AnswerImageDataList : Tea.TeaModel {
        public var answerImageData: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.answerImageData != nil {
                map["AnswerImageData"] = self.answerImageData!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AnswerImageData"] as? String {
                self.answerImageData = value
            }
        }
    }
    public class AnswerImageURLList : Tea.TeaModel {
        public var answerImageURLObject: InputStream?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.answerImageURLObject != nil {
                map["AnswerImageURL"] = self.answerImageURLObject!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AnswerImageURL"] as? InputStream {
                self.answerImageURLObject = value
            }
        }
    }
    public class AnswerTextList : Tea.TeaModel {
        public var answerText: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.answerText != nil {
                map["AnswerText"] = self.answerText!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AnswerText"] as? String {
                self.answerText = value
            }
        }
    }
    public var answerImageDataList: [RunMedQAAdvanceRequest.AnswerImageDataList]?

    public var answerImageURLList: [RunMedQAAdvanceRequest.AnswerImageURLList]?

    public var answerTextList: [RunMedQAAdvanceRequest.AnswerTextList]?

    public var department: String?

    public var orgId: String?

    public var orgName: String?

    public var questionType: String?

    public var sessionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.answerImageDataList != nil {
            var tmp : [Any] = []
            for k in self.answerImageDataList! {
                tmp.append(k.toMap())
            }
            map["AnswerImageDataList"] = tmp
        }
        if self.answerImageURLList != nil {
            var tmp : [Any] = []
            for k in self.answerImageURLList! {
                tmp.append(k.toMap())
            }
            map["AnswerImageURLList"] = tmp
        }
        if self.answerTextList != nil {
            var tmp : [Any] = []
            for k in self.answerTextList! {
                tmp.append(k.toMap())
            }
            map["AnswerTextList"] = tmp
        }
        if self.department != nil {
            map["Department"] = self.department!
        }
        if self.orgId != nil {
            map["OrgId"] = self.orgId!
        }
        if self.orgName != nil {
            map["OrgName"] = self.orgName!
        }
        if self.questionType != nil {
            map["QuestionType"] = self.questionType!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AnswerImageDataList"] as? [Any?] {
            var tmp : [RunMedQAAdvanceRequest.AnswerImageDataList] = []
            for v in value {
                if v != nil {
                    var model = RunMedQAAdvanceRequest.AnswerImageDataList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.answerImageDataList = tmp
        }
        if let value = dict["AnswerImageURLList"] as? [Any?] {
            var tmp : [RunMedQAAdvanceRequest.AnswerImageURLList] = []
            for v in value {
                if v != nil {
                    var model = RunMedQAAdvanceRequest.AnswerImageURLList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.answerImageURLList = tmp
        }
        if let value = dict["AnswerTextList"] as? [Any?] {
            var tmp : [RunMedQAAdvanceRequest.AnswerTextList] = []
            for v in value {
                if v != nil {
                    var model = RunMedQAAdvanceRequest.AnswerTextList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.answerTextList = tmp
        }
        if let value = dict["Department"] as? String {
            self.department = value
        }
        if let value = dict["OrgId"] as? String {
            self.orgId = value
        }
        if let value = dict["OrgName"] as? String {
            self.orgName = value
        }
        if let value = dict["QuestionType"] as? String {
            self.questionType = value
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
        }
    }
}

public class RunMedQAResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var answerType: String?

        public var options: [String]?

        public var question: String?

        public var questionType: String?

        public var reports: [String: String]?

        public var sessionId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.answerType != nil {
                map["AnswerType"] = self.answerType!
            }
            if self.options != nil {
                map["Options"] = self.options!
            }
            if self.question != nil {
                map["Question"] = self.question!
            }
            if self.questionType != nil {
                map["QuestionType"] = self.questionType!
            }
            if self.reports != nil {
                map["Reports"] = self.reports!
            }
            if self.sessionId != nil {
                map["SessionId"] = self.sessionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AnswerType"] as? String {
                self.answerType = value
            }
            if let value = dict["Options"] as? [String] {
                self.options = value
            }
            if let value = dict["Question"] as? String {
                self.question = value
            }
            if let value = dict["QuestionType"] as? String {
                self.questionType = value
            }
            if let value = dict["Reports"] as? [String: String] {
                self.reports = value
            }
            if let value = dict["SessionId"] as? String {
                self.sessionId = value
            }
        }
    }
    public var data: RunMedQAResponseBody.Data?

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
            var model = RunMedQAResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class RunMedQAResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RunMedQAResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RunMedQAResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ScreenCRCRequest : Tea.TeaModel {
    public class URLList : Tea.TeaModel {
        public var URL: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.URL != nil {
                map["URL"] = self.URL!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["URL"] as? String {
                self.URL = value
            }
        }
    }
    public var dataFormat: String?

    public var dataSourceType: String?

    public var orgId: String?

    public var orgName: String?

    public var URLList: [ScreenCRCRequest.URLList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataFormat != nil {
            map["DataFormat"] = self.dataFormat!
        }
        if self.dataSourceType != nil {
            map["DataSourceType"] = self.dataSourceType!
        }
        if self.orgId != nil {
            map["OrgId"] = self.orgId!
        }
        if self.orgName != nil {
            map["OrgName"] = self.orgName!
        }
        if self.URLList != nil {
            var tmp : [Any] = []
            for k in self.URLList! {
                tmp.append(k.toMap())
            }
            map["URLList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataFormat"] as? String {
            self.dataFormat = value
        }
        if let value = dict["DataSourceType"] as? String {
            self.dataSourceType = value
        }
        if let value = dict["OrgId"] as? String {
            self.orgId = value
        }
        if let value = dict["OrgName"] as? String {
            self.orgName = value
        }
        if let value = dict["URLList"] as? [Any?] {
            var tmp : [ScreenCRCRequest.URLList] = []
            for v in value {
                if v != nil {
                    var model = ScreenCRCRequest.URLList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.URLList = tmp
        }
    }
}

public class ScreenCRCAdvanceRequest : Tea.TeaModel {
    public class URLList : Tea.TeaModel {
        public var URLObject: InputStream?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.URLObject != nil {
                map["URL"] = self.URLObject!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["URL"] as? InputStream {
                self.URLObject = value
            }
        }
    }
    public var dataFormat: String?

    public var dataSourceType: String?

    public var orgId: String?

    public var orgName: String?

    public var URLList: [ScreenCRCAdvanceRequest.URLList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataFormat != nil {
            map["DataFormat"] = self.dataFormat!
        }
        if self.dataSourceType != nil {
            map["DataSourceType"] = self.dataSourceType!
        }
        if self.orgId != nil {
            map["OrgId"] = self.orgId!
        }
        if self.orgName != nil {
            map["OrgName"] = self.orgName!
        }
        if self.URLList != nil {
            var tmp : [Any] = []
            for k in self.URLList! {
                tmp.append(k.toMap())
            }
            map["URLList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataFormat"] as? String {
            self.dataFormat = value
        }
        if let value = dict["DataSourceType"] as? String {
            self.dataSourceType = value
        }
        if let value = dict["OrgId"] as? String {
            self.orgId = value
        }
        if let value = dict["OrgName"] as? String {
            self.orgName = value
        }
        if let value = dict["URLList"] as? [Any?] {
            var tmp : [ScreenCRCAdvanceRequest.URLList] = []
            for v in value {
                if v != nil {
                    var model = ScreenCRCAdvanceRequest.URLList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.URLList = tmp
        }
    }
}

public class ScreenCRCResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Lesion : Tea.TeaModel {
            public var CRCVolume: String?

            public var colorectumVolume: String?

            public var mask: String?

            public var probabilities: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.CRCVolume != nil {
                    map["CRCVolume"] = self.CRCVolume!
                }
                if self.colorectumVolume != nil {
                    map["ColorectumVolume"] = self.colorectumVolume!
                }
                if self.mask != nil {
                    map["Mask"] = self.mask!
                }
                if self.probabilities != nil {
                    map["Probabilities"] = self.probabilities!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CRCVolume"] as? String {
                    self.CRCVolume = value
                }
                if let value = dict["ColorectumVolume"] as? String {
                    self.colorectumVolume = value
                }
                if let value = dict["Mask"] as? String {
                    self.mask = value
                }
                if let value = dict["Probabilities"] as? String {
                    self.probabilities = value
                }
            }
        }
        public var lesion: ScreenCRCResponseBody.Data.Lesion?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.lesion?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.lesion != nil {
                map["Lesion"] = self.lesion?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Lesion"] as? [String: Any?] {
                var model = ScreenCRCResponseBody.Data.Lesion()
                model.fromMap(value)
                self.lesion = model
            }
        }
    }
    public var data: ScreenCRCResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ScreenCRCResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ScreenCRCResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ScreenCRCResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ScreenCRCResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ScreenChestCTRequest : Tea.TeaModel {
    public class URLList : Tea.TeaModel {
        public var URL: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.URL != nil {
                map["URL"] = self.URL!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["URL"] as? String {
                self.URL = value
            }
        }
    }
    public var dataFormat: String?

    public var mask: Int64?

    public var orgId: String?

    public var orgName: String?

    public var URLList: [ScreenChestCTRequest.URLList]?

    public var verbose: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataFormat != nil {
            map["DataFormat"] = self.dataFormat!
        }
        if self.mask != nil {
            map["Mask"] = self.mask!
        }
        if self.orgId != nil {
            map["OrgId"] = self.orgId!
        }
        if self.orgName != nil {
            map["OrgName"] = self.orgName!
        }
        if self.URLList != nil {
            var tmp : [Any] = []
            for k in self.URLList! {
                tmp.append(k.toMap())
            }
            map["URLList"] = tmp
        }
        if self.verbose != nil {
            map["Verbose"] = self.verbose!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataFormat"] as? String {
            self.dataFormat = value
        }
        if let value = dict["Mask"] as? Int64 {
            self.mask = value
        }
        if let value = dict["OrgId"] as? String {
            self.orgId = value
        }
        if let value = dict["OrgName"] as? String {
            self.orgName = value
        }
        if let value = dict["URLList"] as? [Any?] {
            var tmp : [ScreenChestCTRequest.URLList] = []
            for v in value {
                if v != nil {
                    var model = ScreenChestCTRequest.URLList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.URLList = tmp
        }
        if let value = dict["Verbose"] as? Int64 {
            self.verbose = value
        }
    }
}

public class ScreenChestCTAdvanceRequest : Tea.TeaModel {
    public class URLList : Tea.TeaModel {
        public var URLObject: InputStream?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.URLObject != nil {
                map["URL"] = self.URLObject!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["URL"] as? InputStream {
                self.URLObject = value
            }
        }
    }
    public var dataFormat: String?

    public var mask: Int64?

    public var orgId: String?

    public var orgName: String?

    public var URLList: [ScreenChestCTAdvanceRequest.URLList]?

    public var verbose: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataFormat != nil {
            map["DataFormat"] = self.dataFormat!
        }
        if self.mask != nil {
            map["Mask"] = self.mask!
        }
        if self.orgId != nil {
            map["OrgId"] = self.orgId!
        }
        if self.orgName != nil {
            map["OrgName"] = self.orgName!
        }
        if self.URLList != nil {
            var tmp : [Any] = []
            for k in self.URLList! {
                tmp.append(k.toMap())
            }
            map["URLList"] = tmp
        }
        if self.verbose != nil {
            map["Verbose"] = self.verbose!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataFormat"] as? String {
            self.dataFormat = value
        }
        if let value = dict["Mask"] as? Int64 {
            self.mask = value
        }
        if let value = dict["OrgId"] as? String {
            self.orgId = value
        }
        if let value = dict["OrgName"] as? String {
            self.orgName = value
        }
        if let value = dict["URLList"] as? [Any?] {
            var tmp : [ScreenChestCTAdvanceRequest.URLList] = []
            for v in value {
                if v != nil {
                    var model = ScreenChestCTAdvanceRequest.URLList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.URLList = tmp
        }
        if let value = dict["Verbose"] as? Int64 {
            self.verbose = value
        }
    }
}

public class ScreenChestCTResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class AnalyzeChestVessel : Tea.TeaModel {
            public class AortaInfo : Tea.TeaModel {
                public var area: [Double]?

                public var coordinates: [[Double]]?

                public var labelValue: Int64?

                public var maxArea: Double?

                public var maxAreaIndex: Int64?

                public var maxDiameter: Double?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.area != nil {
                        map["Area"] = self.area!
                    }
                    if self.coordinates != nil {
                        map["Coordinates"] = self.coordinates!
                    }
                    if self.labelValue != nil {
                        map["LabelValue"] = self.labelValue!
                    }
                    if self.maxArea != nil {
                        map["MaxArea"] = self.maxArea!
                    }
                    if self.maxAreaIndex != nil {
                        map["MaxAreaIndex"] = self.maxAreaIndex!
                    }
                    if self.maxDiameter != nil {
                        map["MaxDiameter"] = self.maxDiameter!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Area"] as? [Double] {
                        self.area = value
                    }
                    if let value = dict["Coordinates"] as? [[Double]] {
                        self.coordinates = value
                    }
                    if let value = dict["LabelValue"] as? Int64 {
                        self.labelValue = value
                    }
                    if let value = dict["MaxArea"] as? Double {
                        self.maxArea = value
                    }
                    if let value = dict["MaxAreaIndex"] as? Int64 {
                        self.maxAreaIndex = value
                    }
                    if let value = dict["MaxDiameter"] as? Double {
                        self.maxDiameter = value
                    }
                }
            }
            public class PulmonaryInfo : Tea.TeaModel {
                public var area: [Double]?

                public var coordinates: [[Double]]?

                public var labelValue: Int64?

                public var maxArea: Double?

                public var maxAreaIndex: Int64?

                public var maxDiameter: Double?

                public var nearestAortaArea: Double?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.area != nil {
                        map["Area"] = self.area!
                    }
                    if self.coordinates != nil {
                        map["Coordinates"] = self.coordinates!
                    }
                    if self.labelValue != nil {
                        map["LabelValue"] = self.labelValue!
                    }
                    if self.maxArea != nil {
                        map["MaxArea"] = self.maxArea!
                    }
                    if self.maxAreaIndex != nil {
                        map["MaxAreaIndex"] = self.maxAreaIndex!
                    }
                    if self.maxDiameter != nil {
                        map["MaxDiameter"] = self.maxDiameter!
                    }
                    if self.nearestAortaArea != nil {
                        map["NearestAortaArea"] = self.nearestAortaArea!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Area"] as? [Double] {
                        self.area = value
                    }
                    if let value = dict["Coordinates"] as? [[Double]] {
                        self.coordinates = value
                    }
                    if let value = dict["LabelValue"] as? Int64 {
                        self.labelValue = value
                    }
                    if let value = dict["MaxArea"] as? Double {
                        self.maxArea = value
                    }
                    if let value = dict["MaxAreaIndex"] as? Int64 {
                        self.maxAreaIndex = value
                    }
                    if let value = dict["MaxDiameter"] as? Double {
                        self.maxDiameter = value
                    }
                    if let value = dict["NearestAortaArea"] as? Double {
                        self.nearestAortaArea = value
                    }
                }
            }
            public var aortaInfo: ScreenChestCTResponseBody.Data.AnalyzeChestVessel.AortaInfo?

            public var pulmonaryInfo: ScreenChestCTResponseBody.Data.AnalyzeChestVessel.PulmonaryInfo?

            public var resultURL: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.aortaInfo?.validate()
                try self.pulmonaryInfo?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.aortaInfo != nil {
                    map["AortaInfo"] = self.aortaInfo?.toMap()
                }
                if self.pulmonaryInfo != nil {
                    map["PulmonaryInfo"] = self.pulmonaryInfo?.toMap()
                }
                if self.resultURL != nil {
                    map["ResultURL"] = self.resultURL!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AortaInfo"] as? [String: Any?] {
                    var model = ScreenChestCTResponseBody.Data.AnalyzeChestVessel.AortaInfo()
                    model.fromMap(value)
                    self.aortaInfo = model
                }
                if let value = dict["PulmonaryInfo"] as? [String: Any?] {
                    var model = ScreenChestCTResponseBody.Data.AnalyzeChestVessel.PulmonaryInfo()
                    model.fromMap(value)
                    self.pulmonaryInfo = model
                }
                if let value = dict["ResultURL"] as? String {
                    self.resultURL = value
                }
            }
        }
        public class CACS : Tea.TeaModel {
            public class Detections : Tea.TeaModel {
                public var calciumCenter: [Int64]?

                public var calciumId: Int64?

                public var calciumScore: Double?

                public var calciumVolume: Double?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.calciumCenter != nil {
                        map["CalciumCenter"] = self.calciumCenter!
                    }
                    if self.calciumId != nil {
                        map["CalciumId"] = self.calciumId!
                    }
                    if self.calciumScore != nil {
                        map["CalciumScore"] = self.calciumScore!
                    }
                    if self.calciumVolume != nil {
                        map["CalciumVolume"] = self.calciumVolume!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["CalciumCenter"] as? [Int64] {
                        self.calciumCenter = value
                    }
                    if let value = dict["CalciumId"] as? Int64 {
                        self.calciumId = value
                    }
                    if let value = dict["CalciumScore"] as? Double {
                        self.calciumScore = value
                    }
                    if let value = dict["CalciumVolume"] as? Double {
                        self.calciumVolume = value
                    }
                }
            }
            public var detections: [ScreenChestCTResponseBody.Data.CACS.Detections]?

            public var resultUrl: String?

            public var score: String?

            public var seriesInstanceUID: String?

            public var volumeScore: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.detections != nil {
                    var tmp : [Any] = []
                    for k in self.detections! {
                        tmp.append(k.toMap())
                    }
                    map["Detections"] = tmp
                }
                if self.resultUrl != nil {
                    map["ResultUrl"] = self.resultUrl!
                }
                if self.score != nil {
                    map["Score"] = self.score!
                }
                if self.seriesInstanceUID != nil {
                    map["SeriesInstanceUID"] = self.seriesInstanceUID!
                }
                if self.volumeScore != nil {
                    map["VolumeScore"] = self.volumeScore!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Detections"] as? [Any?] {
                    var tmp : [ScreenChestCTResponseBody.Data.CACS.Detections] = []
                    for v in value {
                        if v != nil {
                            var model = ScreenChestCTResponseBody.Data.CACS.Detections()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.detections = tmp
                }
                if let value = dict["ResultUrl"] as? String {
                    self.resultUrl = value
                }
                if let value = dict["Score"] as? String {
                    self.score = value
                }
                if let value = dict["SeriesInstanceUID"] as? String {
                    self.seriesInstanceUID = value
                }
                if let value = dict["VolumeScore"] as? String {
                    self.volumeScore = value
                }
            }
        }
        public class CalcBMD : Tea.TeaModel {
            public class Detections : Tea.TeaModel {
                public var vertBMD: Double?

                public var vertCategory: Double?

                public var vertId: String?

                public var vertTScore: Double?

                public var vertZScore: Double?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.vertBMD != nil {
                        map["VertBMD"] = self.vertBMD!
                    }
                    if self.vertCategory != nil {
                        map["VertCategory"] = self.vertCategory!
                    }
                    if self.vertId != nil {
                        map["VertId"] = self.vertId!
                    }
                    if self.vertTScore != nil {
                        map["VertTScore"] = self.vertTScore!
                    }
                    if self.vertZScore != nil {
                        map["VertZScore"] = self.vertZScore!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["VertBMD"] as? Double {
                        self.vertBMD = value
                    }
                    if let value = dict["VertCategory"] as? Double {
                        self.vertCategory = value
                    }
                    if let value = dict["VertId"] as? String {
                        self.vertId = value
                    }
                    if let value = dict["VertTScore"] as? Double {
                        self.vertTScore = value
                    }
                    if let value = dict["VertZScore"] as? Double {
                        self.vertZScore = value
                    }
                }
            }
            public var detections: [ScreenChestCTResponseBody.Data.CalcBMD.Detections]?

            public var origin: [Double]?

            public var resultURL: String?

            public var seriesInstanceUid: String?

            public var spacing: [Double]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.detections != nil {
                    var tmp : [Any] = []
                    for k in self.detections! {
                        tmp.append(k.toMap())
                    }
                    map["Detections"] = tmp
                }
                if self.origin != nil {
                    map["Origin"] = self.origin!
                }
                if self.resultURL != nil {
                    map["ResultURL"] = self.resultURL!
                }
                if self.seriesInstanceUid != nil {
                    map["SeriesInstanceUid"] = self.seriesInstanceUid!
                }
                if self.spacing != nil {
                    map["Spacing"] = self.spacing!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Detections"] as? [Any?] {
                    var tmp : [ScreenChestCTResponseBody.Data.CalcBMD.Detections] = []
                    for v in value {
                        if v != nil {
                            var model = ScreenChestCTResponseBody.Data.CalcBMD.Detections()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.detections = tmp
                }
                if let value = dict["Origin"] as? [Double] {
                    self.origin = value
                }
                if let value = dict["ResultURL"] as? String {
                    self.resultURL = value
                }
                if let value = dict["SeriesInstanceUid"] as? String {
                    self.seriesInstanceUid = value
                }
                if let value = dict["Spacing"] as? [Double] {
                    self.spacing = value
                }
            }
        }
        public class Covid : Tea.TeaModel {
            public var lesionRatio: String?

            public var mask: String?

            public var newProbability: String?

            public var normalProbability: String?

            public var otherProbability: String?

            public var seriesInstanceUID: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.lesionRatio != nil {
                    map["LesionRatio"] = self.lesionRatio!
                }
                if self.mask != nil {
                    map["Mask"] = self.mask!
                }
                if self.newProbability != nil {
                    map["NewProbability"] = self.newProbability!
                }
                if self.normalProbability != nil {
                    map["NormalProbability"] = self.normalProbability!
                }
                if self.otherProbability != nil {
                    map["OtherProbability"] = self.otherProbability!
                }
                if self.seriesInstanceUID != nil {
                    map["SeriesInstanceUID"] = self.seriesInstanceUID!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["LesionRatio"] as? String {
                    self.lesionRatio = value
                }
                if let value = dict["Mask"] as? String {
                    self.mask = value
                }
                if let value = dict["NewProbability"] as? String {
                    self.newProbability = value
                }
                if let value = dict["NormalProbability"] as? String {
                    self.normalProbability = value
                }
                if let value = dict["OtherProbability"] as? String {
                    self.otherProbability = value
                }
                if let value = dict["SeriesInstanceUID"] as? String {
                    self.seriesInstanceUID = value
                }
            }
        }
        public class DetectAD : Tea.TeaModel {
            public var distanceMap: String?

            public var mask: String?

            public var possibility: String?

            public var seriesInstanceUid: String?

            public var sliceVal: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.distanceMap != nil {
                    map["DistanceMap"] = self.distanceMap!
                }
                if self.mask != nil {
                    map["Mask"] = self.mask!
                }
                if self.possibility != nil {
                    map["Possibility"] = self.possibility!
                }
                if self.seriesInstanceUid != nil {
                    map["SeriesInstanceUid"] = self.seriesInstanceUid!
                }
                if self.sliceVal != nil {
                    map["SliceVal"] = self.sliceVal!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DistanceMap"] as? String {
                    self.distanceMap = value
                }
                if let value = dict["Mask"] as? String {
                    self.mask = value
                }
                if let value = dict["Possibility"] as? String {
                    self.possibility = value
                }
                if let value = dict["SeriesInstanceUid"] as? String {
                    self.seriesInstanceUid = value
                }
                if let value = dict["SliceVal"] as? Int32 {
                    self.sliceVal = value
                }
            }
        }
        public class DetectLiverSteatosis : Tea.TeaModel {
            public class Detections : Tea.TeaModel {
                public var fatFract: Double?

                public var liverHU: Double?

                public var liverROI1: Double?

                public var liverROI2: Double?

                public var liverROI3: Double?

                public var liverSlice: Double?

                public var liverSpleenDifference: Double?

                public var liverSpleenRatio: Double?

                public var liverVolume: Double?

                public var maossScore: Double?

                public var prediction: String?

                public var probability: Double?

                public var ROI1Center: [Int64]?

                public var ROI2Center: [Int64]?

                public var ROI3Center: [Int64]?

                public var radius: Int64?

                public var spleenCenter: [Int64]?

                public var spleenHU: Double?

                public var spleenROI: Double?

                public var spleenSlice: Double?

                public var spleenVolume: Double?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.fatFract != nil {
                        map["FatFract"] = self.fatFract!
                    }
                    if self.liverHU != nil {
                        map["LiverHU"] = self.liverHU!
                    }
                    if self.liverROI1 != nil {
                        map["LiverROI1"] = self.liverROI1!
                    }
                    if self.liverROI2 != nil {
                        map["LiverROI2"] = self.liverROI2!
                    }
                    if self.liverROI3 != nil {
                        map["LiverROI3"] = self.liverROI3!
                    }
                    if self.liverSlice != nil {
                        map["LiverSlice"] = self.liverSlice!
                    }
                    if self.liverSpleenDifference != nil {
                        map["LiverSpleenDifference"] = self.liverSpleenDifference!
                    }
                    if self.liverSpleenRatio != nil {
                        map["LiverSpleenRatio"] = self.liverSpleenRatio!
                    }
                    if self.liverVolume != nil {
                        map["LiverVolume"] = self.liverVolume!
                    }
                    if self.maossScore != nil {
                        map["MaossScore"] = self.maossScore!
                    }
                    if self.prediction != nil {
                        map["Prediction"] = self.prediction!
                    }
                    if self.probability != nil {
                        map["Probability"] = self.probability!
                    }
                    if self.ROI1Center != nil {
                        map["ROI1Center"] = self.ROI1Center!
                    }
                    if self.ROI2Center != nil {
                        map["ROI2Center"] = self.ROI2Center!
                    }
                    if self.ROI3Center != nil {
                        map["ROI3Center"] = self.ROI3Center!
                    }
                    if self.radius != nil {
                        map["Radius"] = self.radius!
                    }
                    if self.spleenCenter != nil {
                        map["SpleenCenter"] = self.spleenCenter!
                    }
                    if self.spleenHU != nil {
                        map["SpleenHU"] = self.spleenHU!
                    }
                    if self.spleenROI != nil {
                        map["SpleenROI"] = self.spleenROI!
                    }
                    if self.spleenSlice != nil {
                        map["SpleenSlice"] = self.spleenSlice!
                    }
                    if self.spleenVolume != nil {
                        map["SpleenVolume"] = self.spleenVolume!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["FatFract"] as? Double {
                        self.fatFract = value
                    }
                    if let value = dict["LiverHU"] as? Double {
                        self.liverHU = value
                    }
                    if let value = dict["LiverROI1"] as? Double {
                        self.liverROI1 = value
                    }
                    if let value = dict["LiverROI2"] as? Double {
                        self.liverROI2 = value
                    }
                    if let value = dict["LiverROI3"] as? Double {
                        self.liverROI3 = value
                    }
                    if let value = dict["LiverSlice"] as? Double {
                        self.liverSlice = value
                    }
                    if let value = dict["LiverSpleenDifference"] as? Double {
                        self.liverSpleenDifference = value
                    }
                    if let value = dict["LiverSpleenRatio"] as? Double {
                        self.liverSpleenRatio = value
                    }
                    if let value = dict["LiverVolume"] as? Double {
                        self.liverVolume = value
                    }
                    if let value = dict["MaossScore"] as? Double {
                        self.maossScore = value
                    }
                    if let value = dict["Prediction"] as? String {
                        self.prediction = value
                    }
                    if let value = dict["Probability"] as? Double {
                        self.probability = value
                    }
                    if let value = dict["ROI1Center"] as? [Int64] {
                        self.ROI1Center = value
                    }
                    if let value = dict["ROI2Center"] as? [Int64] {
                        self.ROI2Center = value
                    }
                    if let value = dict["ROI3Center"] as? [Int64] {
                        self.ROI3Center = value
                    }
                    if let value = dict["Radius"] as? Int64 {
                        self.radius = value
                    }
                    if let value = dict["SpleenCenter"] as? [Int64] {
                        self.spleenCenter = value
                    }
                    if let value = dict["SpleenHU"] as? Double {
                        self.spleenHU = value
                    }
                    if let value = dict["SpleenROI"] as? Double {
                        self.spleenROI = value
                    }
                    if let value = dict["SpleenSlice"] as? Double {
                        self.spleenSlice = value
                    }
                    if let value = dict["SpleenVolume"] as? Double {
                        self.spleenVolume = value
                    }
                }
            }
            public var detections: [ScreenChestCTResponseBody.Data.DetectLiverSteatosis.Detections]?

            public var origin: [Double]?

            public var resultUrl: String?

            public var seriesInstanceUid: String?

            public var spacing: [Double]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.detections != nil {
                    var tmp : [Any] = []
                    for k in self.detections! {
                        tmp.append(k.toMap())
                    }
                    map["Detections"] = tmp
                }
                if self.origin != nil {
                    map["Origin"] = self.origin!
                }
                if self.resultUrl != nil {
                    map["ResultUrl"] = self.resultUrl!
                }
                if self.seriesInstanceUid != nil {
                    map["SeriesInstanceUid"] = self.seriesInstanceUid!
                }
                if self.spacing != nil {
                    map["Spacing"] = self.spacing!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Detections"] as? [Any?] {
                    var tmp : [ScreenChestCTResponseBody.Data.DetectLiverSteatosis.Detections] = []
                    for v in value {
                        if v != nil {
                            var model = ScreenChestCTResponseBody.Data.DetectLiverSteatosis.Detections()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.detections = tmp
                }
                if let value = dict["Origin"] as? [Double] {
                    self.origin = value
                }
                if let value = dict["ResultUrl"] as? String {
                    self.resultUrl = value
                }
                if let value = dict["SeriesInstanceUid"] as? String {
                    self.seriesInstanceUid = value
                }
                if let value = dict["Spacing"] as? [Double] {
                    self.spacing = value
                }
            }
        }
        public class DetectLymph : Tea.TeaModel {
            public class Lesions : Tea.TeaModel {
                public var boxes: [Double]?

                public var diametermm: [Double]?

                public var keySlice: Int64?

                public var recist: [[Double]]?

                public var score: Double?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.boxes != nil {
                        map["Boxes"] = self.boxes!
                    }
                    if self.diametermm != nil {
                        map["Diametermm"] = self.diametermm!
                    }
                    if self.keySlice != nil {
                        map["KeySlice"] = self.keySlice!
                    }
                    if self.recist != nil {
                        map["Recist"] = self.recist!
                    }
                    if self.score != nil {
                        map["Score"] = self.score!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Boxes"] as? [Double] {
                        self.boxes = value
                    }
                    if let value = dict["Diametermm"] as? [Double] {
                        self.diametermm = value
                    }
                    if let value = dict["KeySlice"] as? Int64 {
                        self.keySlice = value
                    }
                    if let value = dict["Recist"] as? [[Double]] {
                        self.recist = value
                    }
                    if let value = dict["Score"] as? Double {
                        self.score = value
                    }
                }
            }
            public var lesions: [ScreenChestCTResponseBody.Data.DetectLymph.Lesions]?

            public var seriesInstanceUID: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.lesions != nil {
                    var tmp : [Any] = []
                    for k in self.lesions! {
                        tmp.append(k.toMap())
                    }
                    map["Lesions"] = tmp
                }
                if self.seriesInstanceUID != nil {
                    map["SeriesInstanceUID"] = self.seriesInstanceUID!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Lesions"] as? [Any?] {
                    var tmp : [ScreenChestCTResponseBody.Data.DetectLymph.Lesions] = []
                    for v in value {
                        if v != nil {
                            var model = ScreenChestCTResponseBody.Data.DetectLymph.Lesions()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.lesions = tmp
                }
                if let value = dict["SeriesInstanceUID"] as? String {
                    self.seriesInstanceUID = value
                }
            }
        }
        public class DetectPdac : Tea.TeaModel {
            public class Lesion : Tea.TeaModel {
                public class LesionList : Tea.TeaModel {
                    public var diameter: [Double]?

                    public var keySlice: Int32?

                    public var ROIEndpoints: [[Int32]]?

                    public var recistEndpoints: [[Int32]]?

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
                        if self.diameter != nil {
                            map["Diameter"] = self.diameter!
                        }
                        if self.keySlice != nil {
                            map["KeySlice"] = self.keySlice!
                        }
                        if self.ROIEndpoints != nil {
                            map["ROIEndpoints"] = self.ROIEndpoints!
                        }
                        if self.recistEndpoints != nil {
                            map["RecistEndpoints"] = self.recistEndpoints!
                        }
                        if self.type != nil {
                            map["Type"] = self.type!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Diameter"] as? [Double] {
                            self.diameter = value
                        }
                        if let value = dict["KeySlice"] as? Int32 {
                            self.keySlice = value
                        }
                        if let value = dict["ROIEndpoints"] as? [[Int32]] {
                            self.ROIEndpoints = value
                        }
                        if let value = dict["RecistEndpoints"] as? [[Int32]] {
                            self.recistEndpoints = value
                        }
                        if let value = dict["Type"] as? String {
                            self.type = value
                        }
                    }
                }
                public class OrganList : Tea.TeaModel {
                    public var diameter: [Double]?

                    public var keySlice: Int32?

                    public var ROIEndpoints: [[Int32]]?

                    public var recistEndpoints: [[Int32]]?

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
                        if self.diameter != nil {
                            map["Diameter"] = self.diameter!
                        }
                        if self.keySlice != nil {
                            map["KeySlice"] = self.keySlice!
                        }
                        if self.ROIEndpoints != nil {
                            map["ROIEndpoints"] = self.ROIEndpoints!
                        }
                        if self.recistEndpoints != nil {
                            map["RecistEndpoints"] = self.recistEndpoints!
                        }
                        if self.type != nil {
                            map["Type"] = self.type!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Diameter"] as? [Double] {
                            self.diameter = value
                        }
                        if let value = dict["KeySlice"] as? Int32 {
                            self.keySlice = value
                        }
                        if let value = dict["ROIEndpoints"] as? [[Int32]] {
                            self.ROIEndpoints = value
                        }
                        if let value = dict["RecistEndpoints"] as? [[Int32]] {
                            self.recistEndpoints = value
                        }
                        if let value = dict["Type"] as? String {
                            self.type = value
                        }
                    }
                }
                public var lesionList: [ScreenChestCTResponseBody.Data.DetectPdac.Lesion.LesionList]?

                public var mask: String?

                public var nonPdacVol: String?

                public var organList: [ScreenChestCTResponseBody.Data.DetectPdac.Lesion.OrganList]?

                public var pancVol: String?

                public var pdacVol: String?

                public var possibilities: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.lesionList != nil {
                        var tmp : [Any] = []
                        for k in self.lesionList! {
                            tmp.append(k.toMap())
                        }
                        map["LesionList"] = tmp
                    }
                    if self.mask != nil {
                        map["Mask"] = self.mask!
                    }
                    if self.nonPdacVol != nil {
                        map["NonPdacVol"] = self.nonPdacVol!
                    }
                    if self.organList != nil {
                        var tmp : [Any] = []
                        for k in self.organList! {
                            tmp.append(k.toMap())
                        }
                        map["OrganList"] = tmp
                    }
                    if self.pancVol != nil {
                        map["PancVol"] = self.pancVol!
                    }
                    if self.pdacVol != nil {
                        map["PdacVol"] = self.pdacVol!
                    }
                    if self.possibilities != nil {
                        map["Possibilities"] = self.possibilities!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["LesionList"] as? [Any?] {
                        var tmp : [ScreenChestCTResponseBody.Data.DetectPdac.Lesion.LesionList] = []
                        for v in value {
                            if v != nil {
                                var model = ScreenChestCTResponseBody.Data.DetectPdac.Lesion.LesionList()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.lesionList = tmp
                    }
                    if let value = dict["Mask"] as? String {
                        self.mask = value
                    }
                    if let value = dict["NonPdacVol"] as? String {
                        self.nonPdacVol = value
                    }
                    if let value = dict["OrganList"] as? [Any?] {
                        var tmp : [ScreenChestCTResponseBody.Data.DetectPdac.Lesion.OrganList] = []
                        for v in value {
                            if v != nil {
                                var model = ScreenChestCTResponseBody.Data.DetectPdac.Lesion.OrganList()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.organList = tmp
                    }
                    if let value = dict["PancVol"] as? String {
                        self.pancVol = value
                    }
                    if let value = dict["PdacVol"] as? String {
                        self.pdacVol = value
                    }
                    if let value = dict["Possibilities"] as? [String] {
                        self.possibilities = value
                    }
                }
            }
            public var lesion: ScreenChestCTResponseBody.Data.DetectPdac.Lesion?

            public var seriesInstanceUID: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.lesion?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.lesion != nil {
                    map["Lesion"] = self.lesion?.toMap()
                }
                if self.seriesInstanceUID != nil {
                    map["SeriesInstanceUID"] = self.seriesInstanceUID!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Lesion"] as? [String: Any?] {
                    var model = ScreenChestCTResponseBody.Data.DetectPdac.Lesion()
                    model.fromMap(value)
                    self.lesion = model
                }
                if let value = dict["SeriesInstanceUID"] as? String {
                    self.seriesInstanceUID = value
                }
            }
        }
        public class DetectRibFracture : Tea.TeaModel {
            public class Detections : Tea.TeaModel {
                public var coordinateImage: [Int64]?

                public var coordinates: [Int64]?

                public var fracSOPInstanceUID: String?

                public var fractureCategory: Int64?

                public var fractureConfidence: Double?

                public var fractureId: Int64?

                public var fractureLocation: String?

                public var fractureSegment: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.coordinateImage != nil {
                        map["CoordinateImage"] = self.coordinateImage!
                    }
                    if self.coordinates != nil {
                        map["Coordinates"] = self.coordinates!
                    }
                    if self.fracSOPInstanceUID != nil {
                        map["FracSOPInstanceUID"] = self.fracSOPInstanceUID!
                    }
                    if self.fractureCategory != nil {
                        map["FractureCategory"] = self.fractureCategory!
                    }
                    if self.fractureConfidence != nil {
                        map["FractureConfidence"] = self.fractureConfidence!
                    }
                    if self.fractureId != nil {
                        map["FractureId"] = self.fractureId!
                    }
                    if self.fractureLocation != nil {
                        map["FractureLocation"] = self.fractureLocation!
                    }
                    if self.fractureSegment != nil {
                        map["FractureSegment"] = self.fractureSegment!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["CoordinateImage"] as? [Int64] {
                        self.coordinateImage = value
                    }
                    if let value = dict["Coordinates"] as? [Int64] {
                        self.coordinates = value
                    }
                    if let value = dict["FracSOPInstanceUID"] as? String {
                        self.fracSOPInstanceUID = value
                    }
                    if let value = dict["FractureCategory"] as? Int64 {
                        self.fractureCategory = value
                    }
                    if let value = dict["FractureConfidence"] as? Double {
                        self.fractureConfidence = value
                    }
                    if let value = dict["FractureId"] as? Int64 {
                        self.fractureId = value
                    }
                    if let value = dict["FractureLocation"] as? String {
                        self.fractureLocation = value
                    }
                    if let value = dict["FractureSegment"] as? Int64 {
                        self.fractureSegment = value
                    }
                }
            }
            public var detections: [ScreenChestCTResponseBody.Data.DetectRibFracture.Detections]?

            public var fractureMaskURL: String?

            public var origin: [Double]?

            public var resultURL: String?

            public var ribSegmentMaskURL: String?

            public var seriesInstanceUID: String?

            public var spacing: [Double]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.detections != nil {
                    var tmp : [Any] = []
                    for k in self.detections! {
                        tmp.append(k.toMap())
                    }
                    map["Detections"] = tmp
                }
                if self.fractureMaskURL != nil {
                    map["FractureMaskURL"] = self.fractureMaskURL!
                }
                if self.origin != nil {
                    map["Origin"] = self.origin!
                }
                if self.resultURL != nil {
                    map["ResultURL"] = self.resultURL!
                }
                if self.ribSegmentMaskURL != nil {
                    map["RibSegmentMaskURL"] = self.ribSegmentMaskURL!
                }
                if self.seriesInstanceUID != nil {
                    map["SeriesInstanceUID"] = self.seriesInstanceUID!
                }
                if self.spacing != nil {
                    map["Spacing"] = self.spacing!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Detections"] as? [Any?] {
                    var tmp : [ScreenChestCTResponseBody.Data.DetectRibFracture.Detections] = []
                    for v in value {
                        if v != nil {
                            var model = ScreenChestCTResponseBody.Data.DetectRibFracture.Detections()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.detections = tmp
                }
                if let value = dict["FractureMaskURL"] as? String {
                    self.fractureMaskURL = value
                }
                if let value = dict["Origin"] as? [Double] {
                    self.origin = value
                }
                if let value = dict["ResultURL"] as? String {
                    self.resultURL = value
                }
                if let value = dict["RibSegmentMaskURL"] as? String {
                    self.ribSegmentMaskURL = value
                }
                if let value = dict["SeriesInstanceUID"] as? String {
                    self.seriesInstanceUID = value
                }
                if let value = dict["Spacing"] as? [Double] {
                    self.spacing = value
                }
            }
        }
        public class LungNodule : Tea.TeaModel {
            public class Series : Tea.TeaModel {
                public class Elements : Tea.TeaModel {
                    public var category: String?

                    public var confidence: Double?

                    public var diameter: Double?

                    public var imageX: Double?

                    public var imageY: Double?

                    public var imageZ: Double?

                    public var lobe: String?

                    public var lung: String?

                    public var majorAxis: [Double]?

                    public var meanValue: Double?

                    public var minorAxis: [Double]?

                    public var recistSOPInstanceUID: String?

                    public var risk: Double?

                    public var SOPInstanceUID: String?

                    public var volume: Double?

                    public var x: Double?

                    public var y: Double?

                    public var z: Double?

                    public override init() {
                        super.init()
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
                        if self.confidence != nil {
                            map["Confidence"] = self.confidence!
                        }
                        if self.diameter != nil {
                            map["Diameter"] = self.diameter!
                        }
                        if self.imageX != nil {
                            map["ImageX"] = self.imageX!
                        }
                        if self.imageY != nil {
                            map["ImageY"] = self.imageY!
                        }
                        if self.imageZ != nil {
                            map["ImageZ"] = self.imageZ!
                        }
                        if self.lobe != nil {
                            map["Lobe"] = self.lobe!
                        }
                        if self.lung != nil {
                            map["Lung"] = self.lung!
                        }
                        if self.majorAxis != nil {
                            map["MajorAxis"] = self.majorAxis!
                        }
                        if self.meanValue != nil {
                            map["MeanValue"] = self.meanValue!
                        }
                        if self.minorAxis != nil {
                            map["MinorAxis"] = self.minorAxis!
                        }
                        if self.recistSOPInstanceUID != nil {
                            map["RecistSOPInstanceUID"] = self.recistSOPInstanceUID!
                        }
                        if self.risk != nil {
                            map["Risk"] = self.risk!
                        }
                        if self.SOPInstanceUID != nil {
                            map["SOPInstanceUID"] = self.SOPInstanceUID!
                        }
                        if self.volume != nil {
                            map["Volume"] = self.volume!
                        }
                        if self.x != nil {
                            map["X"] = self.x!
                        }
                        if self.y != nil {
                            map["Y"] = self.y!
                        }
                        if self.z != nil {
                            map["Z"] = self.z!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Category"] as? String {
                            self.category = value
                        }
                        if let value = dict["Confidence"] as? Double {
                            self.confidence = value
                        }
                        if let value = dict["Diameter"] as? Double {
                            self.diameter = value
                        }
                        if let value = dict["ImageX"] as? Double {
                            self.imageX = value
                        }
                        if let value = dict["ImageY"] as? Double {
                            self.imageY = value
                        }
                        if let value = dict["ImageZ"] as? Double {
                            self.imageZ = value
                        }
                        if let value = dict["Lobe"] as? String {
                            self.lobe = value
                        }
                        if let value = dict["Lung"] as? String {
                            self.lung = value
                        }
                        if let value = dict["MajorAxis"] as? [Double] {
                            self.majorAxis = value
                        }
                        if let value = dict["MeanValue"] as? Double {
                            self.meanValue = value
                        }
                        if let value = dict["MinorAxis"] as? [Double] {
                            self.minorAxis = value
                        }
                        if let value = dict["RecistSOPInstanceUID"] as? String {
                            self.recistSOPInstanceUID = value
                        }
                        if let value = dict["Risk"] as? Double {
                            self.risk = value
                        }
                        if let value = dict["SOPInstanceUID"] as? String {
                            self.SOPInstanceUID = value
                        }
                        if let value = dict["Volume"] as? Double {
                            self.volume = value
                        }
                        if let value = dict["X"] as? Double {
                            self.x = value
                        }
                        if let value = dict["Y"] as? Double {
                            self.y = value
                        }
                        if let value = dict["Z"] as? Double {
                            self.z = value
                        }
                    }
                }
                public var elements: [ScreenChestCTResponseBody.Data.LungNodule.Series.Elements]?

                public var origin: [Double]?

                public var report: String?

                public var seriesInstanceUid: String?

                public var spacing: [Double]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.elements != nil {
                        var tmp : [Any] = []
                        for k in self.elements! {
                            tmp.append(k.toMap())
                        }
                        map["Elements"] = tmp
                    }
                    if self.origin != nil {
                        map["Origin"] = self.origin!
                    }
                    if self.report != nil {
                        map["Report"] = self.report!
                    }
                    if self.seriesInstanceUid != nil {
                        map["SeriesInstanceUid"] = self.seriesInstanceUid!
                    }
                    if self.spacing != nil {
                        map["Spacing"] = self.spacing!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Elements"] as? [Any?] {
                        var tmp : [ScreenChestCTResponseBody.Data.LungNodule.Series.Elements] = []
                        for v in value {
                            if v != nil {
                                var model = ScreenChestCTResponseBody.Data.LungNodule.Series.Elements()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.elements = tmp
                    }
                    if let value = dict["Origin"] as? [Double] {
                        self.origin = value
                    }
                    if let value = dict["Report"] as? String {
                        self.report = value
                    }
                    if let value = dict["SeriesInstanceUid"] as? String {
                        self.seriesInstanceUid = value
                    }
                    if let value = dict["Spacing"] as? [Double] {
                        self.spacing = value
                    }
                }
            }
            public var series: [ScreenChestCTResponseBody.Data.LungNodule.Series]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.series != nil {
                    var tmp : [Any] = []
                    for k in self.series! {
                        tmp.append(k.toMap())
                    }
                    map["Series"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Series"] as? [Any?] {
                    var tmp : [ScreenChestCTResponseBody.Data.LungNodule.Series] = []
                    for v in value {
                        if v != nil {
                            var model = ScreenChestCTResponseBody.Data.LungNodule.Series()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.series = tmp
                }
            }
        }
        public class MuscleFat : Tea.TeaModel {
            public var FAT_TYPE: Int32?

            public var MASK_PATH: String?

            public var MUSCLE_MASS: Int32?

            public var MUSCLE_QUALITY: Int32?

            public var NAMA_TAMA_INDEX_TSCORE: Double?

            public var PERCENT_IMAT: Double?

            public var PERCENT_LAMA: Double?

            public var PERCENT_NAMA: Double?

            public var RENDERING_PATH: String?

            public var SFA: Double?

            public var SFT: Double?

            public var SMA: Double?

            public var SMI: Double?

            public var STUDY_AGE: Int32?

            public var STUDY_GENDER: String?

            public var seriesInstanceUid: String?

            public var VERTEBRA_IN_USE: Double?

            public var VFA: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.FAT_TYPE != nil {
                    map["FAT_TYPE"] = self.FAT_TYPE!
                }
                if self.MASK_PATH != nil {
                    map["MASK_PATH"] = self.MASK_PATH!
                }
                if self.MUSCLE_MASS != nil {
                    map["MUSCLE_MASS"] = self.MUSCLE_MASS!
                }
                if self.MUSCLE_QUALITY != nil {
                    map["MUSCLE_QUALITY"] = self.MUSCLE_QUALITY!
                }
                if self.NAMA_TAMA_INDEX_TSCORE != nil {
                    map["NAMA_TAMA_INDEX_TSCORE"] = self.NAMA_TAMA_INDEX_TSCORE!
                }
                if self.PERCENT_IMAT != nil {
                    map["PERCENT_IMAT"] = self.PERCENT_IMAT!
                }
                if self.PERCENT_LAMA != nil {
                    map["PERCENT_LAMA"] = self.PERCENT_LAMA!
                }
                if self.PERCENT_NAMA != nil {
                    map["PERCENT_NAMA"] = self.PERCENT_NAMA!
                }
                if self.RENDERING_PATH != nil {
                    map["RENDERING_PATH"] = self.RENDERING_PATH!
                }
                if self.SFA != nil {
                    map["SFA"] = self.SFA!
                }
                if self.SFT != nil {
                    map["SFT"] = self.SFT!
                }
                if self.SMA != nil {
                    map["SMA"] = self.SMA!
                }
                if self.SMI != nil {
                    map["SMI"] = self.SMI!
                }
                if self.STUDY_AGE != nil {
                    map["STUDY_AGE"] = self.STUDY_AGE!
                }
                if self.STUDY_GENDER != nil {
                    map["STUDY_GENDER"] = self.STUDY_GENDER!
                }
                if self.seriesInstanceUid != nil {
                    map["SeriesInstanceUid"] = self.seriesInstanceUid!
                }
                if self.VERTEBRA_IN_USE != nil {
                    map["VERTEBRA_IN_USE"] = self.VERTEBRA_IN_USE!
                }
                if self.VFA != nil {
                    map["VFA"] = self.VFA!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["FAT_TYPE"] as? Int32 {
                    self.FAT_TYPE = value
                }
                if let value = dict["MASK_PATH"] as? String {
                    self.MASK_PATH = value
                }
                if let value = dict["MUSCLE_MASS"] as? Int32 {
                    self.MUSCLE_MASS = value
                }
                if let value = dict["MUSCLE_QUALITY"] as? Int32 {
                    self.MUSCLE_QUALITY = value
                }
                if let value = dict["NAMA_TAMA_INDEX_TSCORE"] as? Double {
                    self.NAMA_TAMA_INDEX_TSCORE = value
                }
                if let value = dict["PERCENT_IMAT"] as? Double {
                    self.PERCENT_IMAT = value
                }
                if let value = dict["PERCENT_LAMA"] as? Double {
                    self.PERCENT_LAMA = value
                }
                if let value = dict["PERCENT_NAMA"] as? Double {
                    self.PERCENT_NAMA = value
                }
                if let value = dict["RENDERING_PATH"] as? String {
                    self.RENDERING_PATH = value
                }
                if let value = dict["SFA"] as? Double {
                    self.SFA = value
                }
                if let value = dict["SFT"] as? Double {
                    self.SFT = value
                }
                if let value = dict["SMA"] as? Double {
                    self.SMA = value
                }
                if let value = dict["SMI"] as? Double {
                    self.SMI = value
                }
                if let value = dict["STUDY_AGE"] as? Int32 {
                    self.STUDY_AGE = value
                }
                if let value = dict["STUDY_GENDER"] as? String {
                    self.STUDY_GENDER = value
                }
                if let value = dict["SeriesInstanceUid"] as? String {
                    self.seriesInstanceUid = value
                }
                if let value = dict["VERTEBRA_IN_USE"] as? Double {
                    self.VERTEBRA_IN_USE = value
                }
                if let value = dict["VFA"] as? Double {
                    self.VFA = value
                }
            }
        }
        public class PredictCVD : Tea.TeaModel {
            public class Lesion : Tea.TeaModel {
                public class FeatureScore : Tea.TeaModel {
                    public var aortaCalciumScore: [Double]?

                    public var aortaCalciumVolume: [Double]?

                    public var aortaMaxDiam: [Double]?

                    public var aortaMaxDiamStd: [Double]?

                    public var aorticHeightIndex: [Double]?

                    public var aorticTortuosityIndex: [Double]?

                    public var ascAoMaxDiam: [Double]?

                    public var ascendAortaLength: [Double]?

                    public var cardioThoracicRatio: [Double]?

                    public var chestWidth: [Double]?

                    public var coronaryCalciumScore: [Double]?

                    public var coronaryCalciumVol: [Double]?

                    public var deepFeature: [Double]?

                    public var eatHUMean: [Double]?

                    public var eatHUSTD: [Double]?

                    public var eatVolume: [Double]?

                    public var heartLongDiam: [Double]?

                    public var heartShortDiam: [Double]?

                    public var heartWidth: [Double]?

                    public var leftLungHighattRatio: [Double]?

                    public var leftLungLowattRatio: [Double]?

                    public var myoEpiRatio: [Double]?

                    public var rightLungHighattRatio: [Double]?

                    public var rightLungLowattRatio: [Double]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.aortaCalciumScore != nil {
                            map["AortaCalciumScore"] = self.aortaCalciumScore!
                        }
                        if self.aortaCalciumVolume != nil {
                            map["AortaCalciumVolume"] = self.aortaCalciumVolume!
                        }
                        if self.aortaMaxDiam != nil {
                            map["AortaMaxDiam"] = self.aortaMaxDiam!
                        }
                        if self.aortaMaxDiamStd != nil {
                            map["AortaMaxDiamStd"] = self.aortaMaxDiamStd!
                        }
                        if self.aorticHeightIndex != nil {
                            map["AorticHeightIndex"] = self.aorticHeightIndex!
                        }
                        if self.aorticTortuosityIndex != nil {
                            map["AorticTortuosityIndex"] = self.aorticTortuosityIndex!
                        }
                        if self.ascAoMaxDiam != nil {
                            map["AscAoMaxDiam"] = self.ascAoMaxDiam!
                        }
                        if self.ascendAortaLength != nil {
                            map["AscendAortaLength"] = self.ascendAortaLength!
                        }
                        if self.cardioThoracicRatio != nil {
                            map["CardioThoracicRatio"] = self.cardioThoracicRatio!
                        }
                        if self.chestWidth != nil {
                            map["ChestWidth"] = self.chestWidth!
                        }
                        if self.coronaryCalciumScore != nil {
                            map["CoronaryCalciumScore"] = self.coronaryCalciumScore!
                        }
                        if self.coronaryCalciumVol != nil {
                            map["CoronaryCalciumVol"] = self.coronaryCalciumVol!
                        }
                        if self.deepFeature != nil {
                            map["DeepFeature"] = self.deepFeature!
                        }
                        if self.eatHUMean != nil {
                            map["EatHUMean"] = self.eatHUMean!
                        }
                        if self.eatHUSTD != nil {
                            map["EatHUSTD"] = self.eatHUSTD!
                        }
                        if self.eatVolume != nil {
                            map["EatVolume"] = self.eatVolume!
                        }
                        if self.heartLongDiam != nil {
                            map["HeartLongDiam"] = self.heartLongDiam!
                        }
                        if self.heartShortDiam != nil {
                            map["HeartShortDiam"] = self.heartShortDiam!
                        }
                        if self.heartWidth != nil {
                            map["HeartWidth"] = self.heartWidth!
                        }
                        if self.leftLungHighattRatio != nil {
                            map["LeftLungHighattRatio"] = self.leftLungHighattRatio!
                        }
                        if self.leftLungLowattRatio != nil {
                            map["LeftLungLowattRatio"] = self.leftLungLowattRatio!
                        }
                        if self.myoEpiRatio != nil {
                            map["MyoEpiRatio"] = self.myoEpiRatio!
                        }
                        if self.rightLungHighattRatio != nil {
                            map["RightLungHighattRatio"] = self.rightLungHighattRatio!
                        }
                        if self.rightLungLowattRatio != nil {
                            map["RightLungLowattRatio"] = self.rightLungLowattRatio!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["AortaCalciumScore"] as? [Double] {
                            self.aortaCalciumScore = value
                        }
                        if let value = dict["AortaCalciumVolume"] as? [Double] {
                            self.aortaCalciumVolume = value
                        }
                        if let value = dict["AortaMaxDiam"] as? [Double] {
                            self.aortaMaxDiam = value
                        }
                        if let value = dict["AortaMaxDiamStd"] as? [Double] {
                            self.aortaMaxDiamStd = value
                        }
                        if let value = dict["AorticHeightIndex"] as? [Double] {
                            self.aorticHeightIndex = value
                        }
                        if let value = dict["AorticTortuosityIndex"] as? [Double] {
                            self.aorticTortuosityIndex = value
                        }
                        if let value = dict["AscAoMaxDiam"] as? [Double] {
                            self.ascAoMaxDiam = value
                        }
                        if let value = dict["AscendAortaLength"] as? [Double] {
                            self.ascendAortaLength = value
                        }
                        if let value = dict["CardioThoracicRatio"] as? [Double] {
                            self.cardioThoracicRatio = value
                        }
                        if let value = dict["ChestWidth"] as? [Double] {
                            self.chestWidth = value
                        }
                        if let value = dict["CoronaryCalciumScore"] as? [Double] {
                            self.coronaryCalciumScore = value
                        }
                        if let value = dict["CoronaryCalciumVol"] as? [Double] {
                            self.coronaryCalciumVol = value
                        }
                        if let value = dict["DeepFeature"] as? [Double] {
                            self.deepFeature = value
                        }
                        if let value = dict["EatHUMean"] as? [Double] {
                            self.eatHUMean = value
                        }
                        if let value = dict["EatHUSTD"] as? [Double] {
                            self.eatHUSTD = value
                        }
                        if let value = dict["EatVolume"] as? [Double] {
                            self.eatVolume = value
                        }
                        if let value = dict["HeartLongDiam"] as? [Double] {
                            self.heartLongDiam = value
                        }
                        if let value = dict["HeartShortDiam"] as? [Double] {
                            self.heartShortDiam = value
                        }
                        if let value = dict["HeartWidth"] as? [Double] {
                            self.heartWidth = value
                        }
                        if let value = dict["LeftLungHighattRatio"] as? [Double] {
                            self.leftLungHighattRatio = value
                        }
                        if let value = dict["LeftLungLowattRatio"] as? [Double] {
                            self.leftLungLowattRatio = value
                        }
                        if let value = dict["MyoEpiRatio"] as? [Double] {
                            self.myoEpiRatio = value
                        }
                        if let value = dict["RightLungHighattRatio"] as? [Double] {
                            self.rightLungHighattRatio = value
                        }
                        if let value = dict["RightLungLowattRatio"] as? [Double] {
                            self.rightLungLowattRatio = value
                        }
                    }
                }
                public var CVDProbability: Double?

                public var featureScore: ScreenChestCTResponseBody.Data.PredictCVD.Lesion.FeatureScore?

                public var imagesURL: String?

                public var resultURL: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.featureScore?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.CVDProbability != nil {
                        map["CVDProbability"] = self.CVDProbability!
                    }
                    if self.featureScore != nil {
                        map["FeatureScore"] = self.featureScore?.toMap()
                    }
                    if self.imagesURL != nil {
                        map["ImagesURL"] = self.imagesURL!
                    }
                    if self.resultURL != nil {
                        map["ResultURL"] = self.resultURL!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["CVDProbability"] as? Double {
                        self.CVDProbability = value
                    }
                    if let value = dict["FeatureScore"] as? [String: Any?] {
                        var model = ScreenChestCTResponseBody.Data.PredictCVD.Lesion.FeatureScore()
                        model.fromMap(value)
                        self.featureScore = model
                    }
                    if let value = dict["ImagesURL"] as? String {
                        self.imagesURL = value
                    }
                    if let value = dict["ResultURL"] as? [String] {
                        self.resultURL = value
                    }
                }
            }
            public var lesion: ScreenChestCTResponseBody.Data.PredictCVD.Lesion?

            public var seriesInstanceUid: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.lesion?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.lesion != nil {
                    map["Lesion"] = self.lesion?.toMap()
                }
                if self.seriesInstanceUid != nil {
                    map["SeriesInstanceUid"] = self.seriesInstanceUid!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Lesion"] as? [String: Any?] {
                    var model = ScreenChestCTResponseBody.Data.PredictCVD.Lesion()
                    model.fromMap(value)
                    self.lesion = model
                }
                if let value = dict["SeriesInstanceUid"] as? String {
                    self.seriesInstanceUid = value
                }
            }
        }
        public class ScreenBC : Tea.TeaModel {
            public class Lesion : Tea.TeaModel {
                public class Left_ : Tea.TeaModel {
                    public var BCVolume: String?

                    public var breastVolume: String?

                    public var probabilities: [String]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.BCVolume != nil {
                            map["BCVolume"] = self.BCVolume!
                        }
                        if self.breastVolume != nil {
                            map["BreastVolume"] = self.breastVolume!
                        }
                        if self.probabilities != nil {
                            map["Probabilities"] = self.probabilities!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["BCVolume"] as? String {
                            self.BCVolume = value
                        }
                        if let value = dict["BreastVolume"] as? String {
                            self.breastVolume = value
                        }
                        if let value = dict["Probabilities"] as? [String] {
                            self.probabilities = value
                        }
                    }
                }
                public class LesionList : Tea.TeaModel {
                    public var diameter: [Double]?

                    public var keySlice: Int32?

                    public var ROIEndpoints: [[Int32]]?

                    public var recistEndpoints: [[Int32]]?

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
                        if self.diameter != nil {
                            map["Diameter"] = self.diameter!
                        }
                        if self.keySlice != nil {
                            map["KeySlice"] = self.keySlice!
                        }
                        if self.ROIEndpoints != nil {
                            map["ROIEndpoints"] = self.ROIEndpoints!
                        }
                        if self.recistEndpoints != nil {
                            map["RecistEndpoints"] = self.recistEndpoints!
                        }
                        if self.type != nil {
                            map["Type"] = self.type!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Diameter"] as? [Double] {
                            self.diameter = value
                        }
                        if let value = dict["KeySlice"] as? Int32 {
                            self.keySlice = value
                        }
                        if let value = dict["ROIEndpoints"] as? [[Int32]] {
                            self.ROIEndpoints = value
                        }
                        if let value = dict["RecistEndpoints"] as? [[Int32]] {
                            self.recistEndpoints = value
                        }
                        if let value = dict["Type"] as? String {
                            self.type = value
                        }
                    }
                }
                public class OrganList : Tea.TeaModel {
                    public var diameter: [Double]?

                    public var keySlice: Int32?

                    public var ROIEndpoints: [[Int32]]?

                    public var recistEndpoints: [[Int32]]?

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
                        if self.diameter != nil {
                            map["Diameter"] = self.diameter!
                        }
                        if self.keySlice != nil {
                            map["KeySlice"] = self.keySlice!
                        }
                        if self.ROIEndpoints != nil {
                            map["ROIEndpoints"] = self.ROIEndpoints!
                        }
                        if self.recistEndpoints != nil {
                            map["RecistEndpoints"] = self.recistEndpoints!
                        }
                        if self.type != nil {
                            map["Type"] = self.type!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Diameter"] as? [Double] {
                            self.diameter = value
                        }
                        if let value = dict["KeySlice"] as? Int32 {
                            self.keySlice = value
                        }
                        if let value = dict["ROIEndpoints"] as? [[Int32]] {
                            self.ROIEndpoints = value
                        }
                        if let value = dict["RecistEndpoints"] as? [[Int32]] {
                            self.recistEndpoints = value
                        }
                        if let value = dict["Type"] as? String {
                            self.type = value
                        }
                    }
                }
                public class Right_ : Tea.TeaModel {
                    public var BCVolume: String?

                    public var breastVolume: String?

                    public var probabilities: [String]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.BCVolume != nil {
                            map["BCVolume"] = self.BCVolume!
                        }
                        if self.breastVolume != nil {
                            map["BreastVolume"] = self.breastVolume!
                        }
                        if self.probabilities != nil {
                            map["Probabilities"] = self.probabilities!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["BCVolume"] as? String {
                            self.BCVolume = value
                        }
                        if let value = dict["BreastVolume"] as? String {
                            self.breastVolume = value
                        }
                        if let value = dict["Probabilities"] as? [String] {
                            self.probabilities = value
                        }
                    }
                }
                public var left_: ScreenChestCTResponseBody.Data.ScreenBC.Lesion.Left_?

                public var lesionList: [ScreenChestCTResponseBody.Data.ScreenBC.Lesion.LesionList]?

                public var mask: String?

                public var organList: [ScreenChestCTResponseBody.Data.ScreenBC.Lesion.OrganList]?

                public var right_: ScreenChestCTResponseBody.Data.ScreenBC.Lesion.Right_?

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
                    if self.left_ != nil {
                        map["Left"] = self.left_?.toMap()
                    }
                    if self.lesionList != nil {
                        var tmp : [Any] = []
                        for k in self.lesionList! {
                            tmp.append(k.toMap())
                        }
                        map["LesionList"] = tmp
                    }
                    if self.mask != nil {
                        map["Mask"] = self.mask!
                    }
                    if self.organList != nil {
                        var tmp : [Any] = []
                        for k in self.organList! {
                            tmp.append(k.toMap())
                        }
                        map["OrganList"] = tmp
                    }
                    if self.right_ != nil {
                        map["Right"] = self.right_?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Left"] as? [String: Any?] {
                        var model = ScreenChestCTResponseBody.Data.ScreenBC.Lesion.Left_()
                        model.fromMap(value)
                        self.left_ = model
                    }
                    if let value = dict["LesionList"] as? [Any?] {
                        var tmp : [ScreenChestCTResponseBody.Data.ScreenBC.Lesion.LesionList] = []
                        for v in value {
                            if v != nil {
                                var model = ScreenChestCTResponseBody.Data.ScreenBC.Lesion.LesionList()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.lesionList = tmp
                    }
                    if let value = dict["Mask"] as? String {
                        self.mask = value
                    }
                    if let value = dict["OrganList"] as? [Any?] {
                        var tmp : [ScreenChestCTResponseBody.Data.ScreenBC.Lesion.OrganList] = []
                        for v in value {
                            if v != nil {
                                var model = ScreenChestCTResponseBody.Data.ScreenBC.Lesion.OrganList()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.organList = tmp
                    }
                    if let value = dict["Right"] as? [String: Any?] {
                        var model = ScreenChestCTResponseBody.Data.ScreenBC.Lesion.Right_()
                        model.fromMap(value)
                        self.right_ = model
                    }
                }
            }
            public var lesion: ScreenChestCTResponseBody.Data.ScreenBC.Lesion?

            public var seriesInstanceUid: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.lesion?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.lesion != nil {
                    map["Lesion"] = self.lesion?.toMap()
                }
                if self.seriesInstanceUid != nil {
                    map["SeriesInstanceUid"] = self.seriesInstanceUid!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Lesion"] as? [String: Any?] {
                    var model = ScreenChestCTResponseBody.Data.ScreenBC.Lesion()
                    model.fromMap(value)
                    self.lesion = model
                }
                if let value = dict["SeriesInstanceUid"] as? String {
                    self.seriesInstanceUid = value
                }
            }
        }
        public class ScreenCRC : Tea.TeaModel {
            public class Lesion : Tea.TeaModel {
                public class LesionList : Tea.TeaModel {
                    public var diameter: [Double]?

                    public var keySlice: Int32?

                    public var ROIEndpoints: [[Int32]]?

                    public var recistEndpoints: [[Int32]]?

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
                        if self.diameter != nil {
                            map["Diameter"] = self.diameter!
                        }
                        if self.keySlice != nil {
                            map["KeySlice"] = self.keySlice!
                        }
                        if self.ROIEndpoints != nil {
                            map["ROIEndpoints"] = self.ROIEndpoints!
                        }
                        if self.recistEndpoints != nil {
                            map["RecistEndpoints"] = self.recistEndpoints!
                        }
                        if self.type != nil {
                            map["Type"] = self.type!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Diameter"] as? [Double] {
                            self.diameter = value
                        }
                        if let value = dict["KeySlice"] as? Int32 {
                            self.keySlice = value
                        }
                        if let value = dict["ROIEndpoints"] as? [[Int32]] {
                            self.ROIEndpoints = value
                        }
                        if let value = dict["RecistEndpoints"] as? [[Int32]] {
                            self.recistEndpoints = value
                        }
                        if let value = dict["Type"] as? String {
                            self.type = value
                        }
                    }
                }
                public class OrganList : Tea.TeaModel {
                    public var diameter: [Double]?

                    public var keySlice: Int32?

                    public var ROIEndpoints: [[Int32]]?

                    public var recistEndpoints: [[Int32]]?

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
                        if self.diameter != nil {
                            map["Diameter"] = self.diameter!
                        }
                        if self.keySlice != nil {
                            map["KeySlice"] = self.keySlice!
                        }
                        if self.ROIEndpoints != nil {
                            map["ROIEndpoints"] = self.ROIEndpoints!
                        }
                        if self.recistEndpoints != nil {
                            map["RecistEndpoints"] = self.recistEndpoints!
                        }
                        if self.type != nil {
                            map["Type"] = self.type!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Diameter"] as? [Double] {
                            self.diameter = value
                        }
                        if let value = dict["KeySlice"] as? Int32 {
                            self.keySlice = value
                        }
                        if let value = dict["ROIEndpoints"] as? [[Int32]] {
                            self.ROIEndpoints = value
                        }
                        if let value = dict["RecistEndpoints"] as? [[Int32]] {
                            self.recistEndpoints = value
                        }
                        if let value = dict["Type"] as? String {
                            self.type = value
                        }
                    }
                }
                public var colorectumVolume: String?

                public var lesionList: [ScreenChestCTResponseBody.Data.ScreenCRC.Lesion.LesionList]?

                public var mask: String?

                public var organList: [ScreenChestCTResponseBody.Data.ScreenCRC.Lesion.OrganList]?

                public var probabilities: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.colorectumVolume != nil {
                        map["ColorectumVolume"] = self.colorectumVolume!
                    }
                    if self.lesionList != nil {
                        var tmp : [Any] = []
                        for k in self.lesionList! {
                            tmp.append(k.toMap())
                        }
                        map["LesionList"] = tmp
                    }
                    if self.mask != nil {
                        map["Mask"] = self.mask!
                    }
                    if self.organList != nil {
                        var tmp : [Any] = []
                        for k in self.organList! {
                            tmp.append(k.toMap())
                        }
                        map["OrganList"] = tmp
                    }
                    if self.probabilities != nil {
                        map["Probabilities"] = self.probabilities!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ColorectumVolume"] as? String {
                        self.colorectumVolume = value
                    }
                    if let value = dict["LesionList"] as? [Any?] {
                        var tmp : [ScreenChestCTResponseBody.Data.ScreenCRC.Lesion.LesionList] = []
                        for v in value {
                            if v != nil {
                                var model = ScreenChestCTResponseBody.Data.ScreenCRC.Lesion.LesionList()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.lesionList = tmp
                    }
                    if let value = dict["Mask"] as? String {
                        self.mask = value
                    }
                    if let value = dict["OrganList"] as? [Any?] {
                        var tmp : [ScreenChestCTResponseBody.Data.ScreenCRC.Lesion.OrganList] = []
                        for v in value {
                            if v != nil {
                                var model = ScreenChestCTResponseBody.Data.ScreenCRC.Lesion.OrganList()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.organList = tmp
                    }
                    if let value = dict["Probabilities"] as? [String] {
                        self.probabilities = value
                    }
                }
            }
            public var lesion: ScreenChestCTResponseBody.Data.ScreenCRC.Lesion?

            public var seriesInstanceUid: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.lesion?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.lesion != nil {
                    map["Lesion"] = self.lesion?.toMap()
                }
                if self.seriesInstanceUid != nil {
                    map["SeriesInstanceUid"] = self.seriesInstanceUid!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Lesion"] as? [String: Any?] {
                    var model = ScreenChestCTResponseBody.Data.ScreenCRC.Lesion()
                    model.fromMap(value)
                    self.lesion = model
                }
                if let value = dict["SeriesInstanceUid"] as? String {
                    self.seriesInstanceUid = value
                }
            }
        }
        public class ScreenEc : Tea.TeaModel {
            public class Lesion : Tea.TeaModel {
                public class LesionList : Tea.TeaModel {
                    public var diameter: [Double]?

                    public var keySlice: Int32?

                    public var ROIEndpoints: [[Int32]]?

                    public var recistEndpoints: [[Int32]]?

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
                        if self.diameter != nil {
                            map["Diameter"] = self.diameter!
                        }
                        if self.keySlice != nil {
                            map["KeySlice"] = self.keySlice!
                        }
                        if self.ROIEndpoints != nil {
                            map["ROIEndpoints"] = self.ROIEndpoints!
                        }
                        if self.recistEndpoints != nil {
                            map["RecistEndpoints"] = self.recistEndpoints!
                        }
                        if self.type != nil {
                            map["Type"] = self.type!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Diameter"] as? [Double] {
                            self.diameter = value
                        }
                        if let value = dict["KeySlice"] as? Int32 {
                            self.keySlice = value
                        }
                        if let value = dict["ROIEndpoints"] as? [[Int32]] {
                            self.ROIEndpoints = value
                        }
                        if let value = dict["RecistEndpoints"] as? [[Int32]] {
                            self.recistEndpoints = value
                        }
                        if let value = dict["Type"] as? String {
                            self.type = value
                        }
                    }
                }
                public class OrganList : Tea.TeaModel {
                    public var diameter: [Double]?

                    public var keySlice: Int32?

                    public var ROIEndpoints: [[Int32]]?

                    public var recistEndpoints: [[Int32]]?

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
                        if self.diameter != nil {
                            map["Diameter"] = self.diameter!
                        }
                        if self.keySlice != nil {
                            map["KeySlice"] = self.keySlice!
                        }
                        if self.ROIEndpoints != nil {
                            map["ROIEndpoints"] = self.ROIEndpoints!
                        }
                        if self.recistEndpoints != nil {
                            map["RecistEndpoints"] = self.recistEndpoints!
                        }
                        if self.type != nil {
                            map["Type"] = self.type!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Diameter"] as? [Double] {
                            self.diameter = value
                        }
                        if let value = dict["KeySlice"] as? Int32 {
                            self.keySlice = value
                        }
                        if let value = dict["ROIEndpoints"] as? [[Int32]] {
                            self.ROIEndpoints = value
                        }
                        if let value = dict["RecistEndpoints"] as? [[Int32]] {
                            self.recistEndpoints = value
                        }
                        if let value = dict["Type"] as? String {
                            self.type = value
                        }
                    }
                }
                public var benignVolume: String?

                public var ecVolume: String?

                public var egjVolume: String?

                public var esoVolume: String?

                public var lesionList: [ScreenChestCTResponseBody.Data.ScreenEc.Lesion.LesionList]?

                public var mask: String?

                public var organList: [ScreenChestCTResponseBody.Data.ScreenEc.Lesion.OrganList]?

                public var possibilities: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.benignVolume != nil {
                        map["BenignVolume"] = self.benignVolume!
                    }
                    if self.ecVolume != nil {
                        map["EcVolume"] = self.ecVolume!
                    }
                    if self.egjVolume != nil {
                        map["EgjVolume"] = self.egjVolume!
                    }
                    if self.esoVolume != nil {
                        map["EsoVolume"] = self.esoVolume!
                    }
                    if self.lesionList != nil {
                        var tmp : [Any] = []
                        for k in self.lesionList! {
                            tmp.append(k.toMap())
                        }
                        map["LesionList"] = tmp
                    }
                    if self.mask != nil {
                        map["Mask"] = self.mask!
                    }
                    if self.organList != nil {
                        var tmp : [Any] = []
                        for k in self.organList! {
                            tmp.append(k.toMap())
                        }
                        map["OrganList"] = tmp
                    }
                    if self.possibilities != nil {
                        map["Possibilities"] = self.possibilities!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["BenignVolume"] as? String {
                        self.benignVolume = value
                    }
                    if let value = dict["EcVolume"] as? String {
                        self.ecVolume = value
                    }
                    if let value = dict["EgjVolume"] as? String {
                        self.egjVolume = value
                    }
                    if let value = dict["EsoVolume"] as? String {
                        self.esoVolume = value
                    }
                    if let value = dict["LesionList"] as? [Any?] {
                        var tmp : [ScreenChestCTResponseBody.Data.ScreenEc.Lesion.LesionList] = []
                        for v in value {
                            if v != nil {
                                var model = ScreenChestCTResponseBody.Data.ScreenEc.Lesion.LesionList()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.lesionList = tmp
                    }
                    if let value = dict["Mask"] as? String {
                        self.mask = value
                    }
                    if let value = dict["OrganList"] as? [Any?] {
                        var tmp : [ScreenChestCTResponseBody.Data.ScreenEc.Lesion.OrganList] = []
                        for v in value {
                            if v != nil {
                                var model = ScreenChestCTResponseBody.Data.ScreenEc.Lesion.OrganList()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.organList = tmp
                    }
                    if let value = dict["Possibilities"] as? [String] {
                        self.possibilities = value
                    }
                }
            }
            public var lesion: ScreenChestCTResponseBody.Data.ScreenEc.Lesion?

            public var seriesInstanceUid: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.lesion?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.lesion != nil {
                    map["Lesion"] = self.lesion?.toMap()
                }
                if self.seriesInstanceUid != nil {
                    map["SeriesInstanceUid"] = self.seriesInstanceUid!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Lesion"] as? [String: Any?] {
                    var model = ScreenChestCTResponseBody.Data.ScreenEc.Lesion()
                    model.fromMap(value)
                    self.lesion = model
                }
                if let value = dict["SeriesInstanceUid"] as? String {
                    self.seriesInstanceUid = value
                }
            }
        }
        public class ScreenGC : Tea.TeaModel {
            public class Lesion : Tea.TeaModel {
                public class LesionList : Tea.TeaModel {
                    public var diameter: [Double]?

                    public var keySlice: Int32?

                    public var ROIEndpoints: [[Int32]]?

                    public var recistEndpoints: [[Int32]]?

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
                        if self.diameter != nil {
                            map["Diameter"] = self.diameter!
                        }
                        if self.keySlice != nil {
                            map["KeySlice"] = self.keySlice!
                        }
                        if self.ROIEndpoints != nil {
                            map["ROIEndpoints"] = self.ROIEndpoints!
                        }
                        if self.recistEndpoints != nil {
                            map["RecistEndpoints"] = self.recistEndpoints!
                        }
                        if self.type != nil {
                            map["Type"] = self.type!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Diameter"] as? [Double] {
                            self.diameter = value
                        }
                        if let value = dict["KeySlice"] as? Int32 {
                            self.keySlice = value
                        }
                        if let value = dict["ROIEndpoints"] as? [[Int32]] {
                            self.ROIEndpoints = value
                        }
                        if let value = dict["RecistEndpoints"] as? [[Int32]] {
                            self.recistEndpoints = value
                        }
                        if let value = dict["Type"] as? String {
                            self.type = value
                        }
                    }
                }
                public class OrganList : Tea.TeaModel {
                    public var diameter: [Double]?

                    public var keySlice: Int32?

                    public var ROIEndpoints: [[Int32]]?

                    public var recistEndpoints: [[Int32]]?

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
                        if self.diameter != nil {
                            map["Diameter"] = self.diameter!
                        }
                        if self.keySlice != nil {
                            map["KeySlice"] = self.keySlice!
                        }
                        if self.ROIEndpoints != nil {
                            map["ROIEndpoints"] = self.ROIEndpoints!
                        }
                        if self.recistEndpoints != nil {
                            map["RecistEndpoints"] = self.recistEndpoints!
                        }
                        if self.type != nil {
                            map["Type"] = self.type!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Diameter"] as? [Double] {
                            self.diameter = value
                        }
                        if let value = dict["KeySlice"] as? Int32 {
                            self.keySlice = value
                        }
                        if let value = dict["ROIEndpoints"] as? [[Int32]] {
                            self.ROIEndpoints = value
                        }
                        if let value = dict["RecistEndpoints"] as? [[Int32]] {
                            self.recistEndpoints = value
                        }
                        if let value = dict["Type"] as? String {
                            self.type = value
                        }
                    }
                }
                public var GCVolume: String?

                public var lesionList: [ScreenChestCTResponseBody.Data.ScreenGC.Lesion.LesionList]?

                public var mask: String?

                public var nonGCVolume: String?

                public var organList: [ScreenChestCTResponseBody.Data.ScreenGC.Lesion.OrganList]?

                public var probabilities: [String]?

                public var stomachVolume: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.GCVolume != nil {
                        map["GCVolume"] = self.GCVolume!
                    }
                    if self.lesionList != nil {
                        var tmp : [Any] = []
                        for k in self.lesionList! {
                            tmp.append(k.toMap())
                        }
                        map["LesionList"] = tmp
                    }
                    if self.mask != nil {
                        map["Mask"] = self.mask!
                    }
                    if self.nonGCVolume != nil {
                        map["NonGCVolume"] = self.nonGCVolume!
                    }
                    if self.organList != nil {
                        var tmp : [Any] = []
                        for k in self.organList! {
                            tmp.append(k.toMap())
                        }
                        map["OrganList"] = tmp
                    }
                    if self.probabilities != nil {
                        map["Probabilities"] = self.probabilities!
                    }
                    if self.stomachVolume != nil {
                        map["StomachVolume"] = self.stomachVolume!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["GCVolume"] as? String {
                        self.GCVolume = value
                    }
                    if let value = dict["LesionList"] as? [Any?] {
                        var tmp : [ScreenChestCTResponseBody.Data.ScreenGC.Lesion.LesionList] = []
                        for v in value {
                            if v != nil {
                                var model = ScreenChestCTResponseBody.Data.ScreenGC.Lesion.LesionList()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.lesionList = tmp
                    }
                    if let value = dict["Mask"] as? String {
                        self.mask = value
                    }
                    if let value = dict["NonGCVolume"] as? String {
                        self.nonGCVolume = value
                    }
                    if let value = dict["OrganList"] as? [Any?] {
                        var tmp : [ScreenChestCTResponseBody.Data.ScreenGC.Lesion.OrganList] = []
                        for v in value {
                            if v != nil {
                                var model = ScreenChestCTResponseBody.Data.ScreenGC.Lesion.OrganList()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.organList = tmp
                    }
                    if let value = dict["Probabilities"] as? [String] {
                        self.probabilities = value
                    }
                    if let value = dict["StomachVolume"] as? String {
                        self.stomachVolume = value
                    }
                }
            }
            public var lesion: ScreenChestCTResponseBody.Data.ScreenGC.Lesion?

            public var seriesInstanceUid: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.lesion?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.lesion != nil {
                    map["Lesion"] = self.lesion?.toMap()
                }
                if self.seriesInstanceUid != nil {
                    map["SeriesInstanceUid"] = self.seriesInstanceUid!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Lesion"] as? [String: Any?] {
                    var model = ScreenChestCTResponseBody.Data.ScreenGC.Lesion()
                    model.fromMap(value)
                    self.lesion = model
                }
                if let value = dict["SeriesInstanceUid"] as? String {
                    self.seriesInstanceUid = value
                }
            }
        }
        public class ScreenLC : Tea.TeaModel {
            public class Lesion : Tea.TeaModel {
                public class LesionList : Tea.TeaModel {
                    public class ScoreAllClasses : Tea.TeaModel {
                        public var benignProb: Double?

                        public var calcProb: Double?

                        public var cystProb: Double?

                        public var malignantProb: Double?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.benignProb != nil {
                                map["BenignProb"] = self.benignProb!
                            }
                            if self.calcProb != nil {
                                map["CalcProb"] = self.calcProb!
                            }
                            if self.cystProb != nil {
                                map["CystProb"] = self.cystProb!
                            }
                            if self.malignantProb != nil {
                                map["MalignantProb"] = self.malignantProb!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["BenignProb"] as? Double {
                                self.benignProb = value
                            }
                            if let value = dict["CalcProb"] as? Double {
                                self.calcProb = value
                            }
                            if let value = dict["CystProb"] as? Double {
                                self.cystProb = value
                            }
                            if let value = dict["MalignantProb"] as? Double {
                                self.malignantProb = value
                            }
                        }
                    }
                    public var diameter: [Double]?

                    public var keySlice: Int64?

                    public var malignancy: Double?

                    public var recistEndpoints: [Double]?

                    public var scoreAllClasses: ScreenChestCTResponseBody.Data.ScreenLC.Lesion.LesionList.ScoreAllClasses?

                    public var type: String?

                    public var volume: Double?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.scoreAllClasses?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.diameter != nil {
                            map["Diameter"] = self.diameter!
                        }
                        if self.keySlice != nil {
                            map["KeySlice"] = self.keySlice!
                        }
                        if self.malignancy != nil {
                            map["Malignancy"] = self.malignancy!
                        }
                        if self.recistEndpoints != nil {
                            map["RecistEndpoints"] = self.recistEndpoints!
                        }
                        if self.scoreAllClasses != nil {
                            map["ScoreAllClasses"] = self.scoreAllClasses?.toMap()
                        }
                        if self.type != nil {
                            map["Type"] = self.type!
                        }
                        if self.volume != nil {
                            map["Volume"] = self.volume!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Diameter"] as? [Double] {
                            self.diameter = value
                        }
                        if let value = dict["KeySlice"] as? Int64 {
                            self.keySlice = value
                        }
                        if let value = dict["Malignancy"] as? Double {
                            self.malignancy = value
                        }
                        if let value = dict["RecistEndpoints"] as? [Double] {
                            self.recistEndpoints = value
                        }
                        if let value = dict["ScoreAllClasses"] as? [String: Any?] {
                            var model = ScreenChestCTResponseBody.Data.ScreenLC.Lesion.LesionList.ScoreAllClasses()
                            model.fromMap(value)
                            self.scoreAllClasses = model
                        }
                        if let value = dict["Type"] as? String {
                            self.type = value
                        }
                        if let value = dict["Volume"] as? Double {
                            self.volume = value
                        }
                    }
                }
                public class PatientLevelResult : Tea.TeaModel {
                    public var benignNonCystProb: String?

                    public var benignProb: String?

                    public var calcProb: String?

                    public var cystProb: String?

                    public var HCCProb: String?

                    public var malignantNonHCCProb: String?

                    public var malignantProb: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.benignNonCystProb != nil {
                            map["BenignNonCystProb"] = self.benignNonCystProb!
                        }
                        if self.benignProb != nil {
                            map["BenignProb"] = self.benignProb!
                        }
                        if self.calcProb != nil {
                            map["CalcProb"] = self.calcProb!
                        }
                        if self.cystProb != nil {
                            map["CystProb"] = self.cystProb!
                        }
                        if self.HCCProb != nil {
                            map["HCCProb"] = self.HCCProb!
                        }
                        if self.malignantNonHCCProb != nil {
                            map["MalignantNonHCCProb"] = self.malignantNonHCCProb!
                        }
                        if self.malignantProb != nil {
                            map["MalignantProb"] = self.malignantProb!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["BenignNonCystProb"] as? String {
                            self.benignNonCystProb = value
                        }
                        if let value = dict["BenignProb"] as? String {
                            self.benignProb = value
                        }
                        if let value = dict["CalcProb"] as? String {
                            self.calcProb = value
                        }
                        if let value = dict["CystProb"] as? String {
                            self.cystProb = value
                        }
                        if let value = dict["HCCProb"] as? String {
                            self.HCCProb = value
                        }
                        if let value = dict["MalignantNonHCCProb"] as? String {
                            self.malignantNonHCCProb = value
                        }
                        if let value = dict["MalignantProb"] as? String {
                            self.malignantProb = value
                        }
                    }
                }
                public var lesionList: [ScreenChestCTResponseBody.Data.ScreenLC.Lesion.LesionList]?

                public var liverVolume: String?

                public var mask: String?

                public var patientLevelProb: Double?

                public var patientLevelResult: ScreenChestCTResponseBody.Data.ScreenLC.Lesion.PatientLevelResult?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.patientLevelResult?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.lesionList != nil {
                        var tmp : [Any] = []
                        for k in self.lesionList! {
                            tmp.append(k.toMap())
                        }
                        map["LesionList"] = tmp
                    }
                    if self.liverVolume != nil {
                        map["LiverVolume"] = self.liverVolume!
                    }
                    if self.mask != nil {
                        map["Mask"] = self.mask!
                    }
                    if self.patientLevelProb != nil {
                        map["PatientLevelProb"] = self.patientLevelProb!
                    }
                    if self.patientLevelResult != nil {
                        map["PatientLevelResult"] = self.patientLevelResult?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["LesionList"] as? [Any?] {
                        var tmp : [ScreenChestCTResponseBody.Data.ScreenLC.Lesion.LesionList] = []
                        for v in value {
                            if v != nil {
                                var model = ScreenChestCTResponseBody.Data.ScreenLC.Lesion.LesionList()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.lesionList = tmp
                    }
                    if let value = dict["LiverVolume"] as? String {
                        self.liverVolume = value
                    }
                    if let value = dict["Mask"] as? String {
                        self.mask = value
                    }
                    if let value = dict["PatientLevelProb"] as? Double {
                        self.patientLevelProb = value
                    }
                    if let value = dict["PatientLevelResult"] as? [String: Any?] {
                        var model = ScreenChestCTResponseBody.Data.ScreenLC.Lesion.PatientLevelResult()
                        model.fromMap(value)
                        self.patientLevelResult = model
                    }
                }
            }
            public var lesion: ScreenChestCTResponseBody.Data.ScreenLC.Lesion?

            public var seriesInstanceUid: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.lesion?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.lesion != nil {
                    map["Lesion"] = self.lesion?.toMap()
                }
                if self.seriesInstanceUid != nil {
                    map["SeriesInstanceUid"] = self.seriesInstanceUid!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Lesion"] as? [String: Any?] {
                    var model = ScreenChestCTResponseBody.Data.ScreenLC.Lesion()
                    model.fromMap(value)
                    self.lesion = model
                }
                if let value = dict["SeriesInstanceUid"] as? String {
                    self.seriesInstanceUid = value
                }
            }
        }
        public var analyzeChestVessel: ScreenChestCTResponseBody.Data.AnalyzeChestVessel?

        public var CACS: ScreenChestCTResponseBody.Data.CACS?

        public var calcBMD: ScreenChestCTResponseBody.Data.CalcBMD?

        public var covid: ScreenChestCTResponseBody.Data.Covid?

        public var detectAD: ScreenChestCTResponseBody.Data.DetectAD?

        public var detectLiverSteatosis: ScreenChestCTResponseBody.Data.DetectLiverSteatosis?

        public var detectLymph: ScreenChestCTResponseBody.Data.DetectLymph?

        public var detectPdac: ScreenChestCTResponseBody.Data.DetectPdac?

        public var detectRibFracture: ScreenChestCTResponseBody.Data.DetectRibFracture?

        public var errorMessage: String?

        public var lungNodule: ScreenChestCTResponseBody.Data.LungNodule?

        public var muscleFat: ScreenChestCTResponseBody.Data.MuscleFat?

        public var nestedUrlList: [String: Any]?

        public var predictCVD: ScreenChestCTResponseBody.Data.PredictCVD?

        public var screenBC: ScreenChestCTResponseBody.Data.ScreenBC?

        public var screenCRC: ScreenChestCTResponseBody.Data.ScreenCRC?

        public var screenEc: ScreenChestCTResponseBody.Data.ScreenEc?

        public var screenGC: ScreenChestCTResponseBody.Data.ScreenGC?

        public var screenLC: ScreenChestCTResponseBody.Data.ScreenLC?

        public var URLList: [String: Any]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.analyzeChestVessel?.validate()
            try self.CACS?.validate()
            try self.calcBMD?.validate()
            try self.covid?.validate()
            try self.detectAD?.validate()
            try self.detectLiverSteatosis?.validate()
            try self.detectLymph?.validate()
            try self.detectPdac?.validate()
            try self.detectRibFracture?.validate()
            try self.lungNodule?.validate()
            try self.muscleFat?.validate()
            try self.predictCVD?.validate()
            try self.screenBC?.validate()
            try self.screenCRC?.validate()
            try self.screenEc?.validate()
            try self.screenGC?.validate()
            try self.screenLC?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.analyzeChestVessel != nil {
                map["AnalyzeChestVessel"] = self.analyzeChestVessel?.toMap()
            }
            if self.CACS != nil {
                map["CACS"] = self.CACS?.toMap()
            }
            if self.calcBMD != nil {
                map["CalcBMD"] = self.calcBMD?.toMap()
            }
            if self.covid != nil {
                map["Covid"] = self.covid?.toMap()
            }
            if self.detectAD != nil {
                map["DetectAD"] = self.detectAD?.toMap()
            }
            if self.detectLiverSteatosis != nil {
                map["DetectLiverSteatosis"] = self.detectLiverSteatosis?.toMap()
            }
            if self.detectLymph != nil {
                map["DetectLymph"] = self.detectLymph?.toMap()
            }
            if self.detectPdac != nil {
                map["DetectPdac"] = self.detectPdac?.toMap()
            }
            if self.detectRibFracture != nil {
                map["DetectRibFracture"] = self.detectRibFracture?.toMap()
            }
            if self.errorMessage != nil {
                map["ErrorMessage"] = self.errorMessage!
            }
            if self.lungNodule != nil {
                map["LungNodule"] = self.lungNodule?.toMap()
            }
            if self.muscleFat != nil {
                map["MuscleFat"] = self.muscleFat?.toMap()
            }
            if self.nestedUrlList != nil {
                map["NestedUrlList"] = self.nestedUrlList!
            }
            if self.predictCVD != nil {
                map["PredictCVD"] = self.predictCVD?.toMap()
            }
            if self.screenBC != nil {
                map["ScreenBC"] = self.screenBC?.toMap()
            }
            if self.screenCRC != nil {
                map["ScreenCRC"] = self.screenCRC?.toMap()
            }
            if self.screenEc != nil {
                map["ScreenEc"] = self.screenEc?.toMap()
            }
            if self.screenGC != nil {
                map["ScreenGC"] = self.screenGC?.toMap()
            }
            if self.screenLC != nil {
                map["ScreenLC"] = self.screenLC?.toMap()
            }
            if self.URLList != nil {
                map["URLList"] = self.URLList!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AnalyzeChestVessel"] as? [String: Any?] {
                var model = ScreenChestCTResponseBody.Data.AnalyzeChestVessel()
                model.fromMap(value)
                self.analyzeChestVessel = model
            }
            if let value = dict["CACS"] as? [String: Any?] {
                var model = ScreenChestCTResponseBody.Data.CACS()
                model.fromMap(value)
                self.CACS = model
            }
            if let value = dict["CalcBMD"] as? [String: Any?] {
                var model = ScreenChestCTResponseBody.Data.CalcBMD()
                model.fromMap(value)
                self.calcBMD = model
            }
            if let value = dict["Covid"] as? [String: Any?] {
                var model = ScreenChestCTResponseBody.Data.Covid()
                model.fromMap(value)
                self.covid = model
            }
            if let value = dict["DetectAD"] as? [String: Any?] {
                var model = ScreenChestCTResponseBody.Data.DetectAD()
                model.fromMap(value)
                self.detectAD = model
            }
            if let value = dict["DetectLiverSteatosis"] as? [String: Any?] {
                var model = ScreenChestCTResponseBody.Data.DetectLiverSteatosis()
                model.fromMap(value)
                self.detectLiverSteatosis = model
            }
            if let value = dict["DetectLymph"] as? [String: Any?] {
                var model = ScreenChestCTResponseBody.Data.DetectLymph()
                model.fromMap(value)
                self.detectLymph = model
            }
            if let value = dict["DetectPdac"] as? [String: Any?] {
                var model = ScreenChestCTResponseBody.Data.DetectPdac()
                model.fromMap(value)
                self.detectPdac = model
            }
            if let value = dict["DetectRibFracture"] as? [String: Any?] {
                var model = ScreenChestCTResponseBody.Data.DetectRibFracture()
                model.fromMap(value)
                self.detectRibFracture = model
            }
            if let value = dict["ErrorMessage"] as? String {
                self.errorMessage = value
            }
            if let value = dict["LungNodule"] as? [String: Any?] {
                var model = ScreenChestCTResponseBody.Data.LungNodule()
                model.fromMap(value)
                self.lungNodule = model
            }
            if let value = dict["MuscleFat"] as? [String: Any?] {
                var model = ScreenChestCTResponseBody.Data.MuscleFat()
                model.fromMap(value)
                self.muscleFat = model
            }
            if let value = dict["NestedUrlList"] as? [String: Any] {
                self.nestedUrlList = value
            }
            if let value = dict["PredictCVD"] as? [String: Any?] {
                var model = ScreenChestCTResponseBody.Data.PredictCVD()
                model.fromMap(value)
                self.predictCVD = model
            }
            if let value = dict["ScreenBC"] as? [String: Any?] {
                var model = ScreenChestCTResponseBody.Data.ScreenBC()
                model.fromMap(value)
                self.screenBC = model
            }
            if let value = dict["ScreenCRC"] as? [String: Any?] {
                var model = ScreenChestCTResponseBody.Data.ScreenCRC()
                model.fromMap(value)
                self.screenCRC = model
            }
            if let value = dict["ScreenEc"] as? [String: Any?] {
                var model = ScreenChestCTResponseBody.Data.ScreenEc()
                model.fromMap(value)
                self.screenEc = model
            }
            if let value = dict["ScreenGC"] as? [String: Any?] {
                var model = ScreenChestCTResponseBody.Data.ScreenGC()
                model.fromMap(value)
                self.screenGC = model
            }
            if let value = dict["ScreenLC"] as? [String: Any?] {
                var model = ScreenChestCTResponseBody.Data.ScreenLC()
                model.fromMap(value)
                self.screenLC = model
            }
            if let value = dict["URLList"] as? [String: Any] {
                self.URLList = value
            }
        }
    }
    public var data: ScreenChestCTResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ScreenChestCTResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ScreenChestCTResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ScreenChestCTResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ScreenChestCTResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ScreenECRequest : Tea.TeaModel {
    public class URLList : Tea.TeaModel {
        public var URL: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.URL != nil {
                map["URL"] = self.URL!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["URL"] as? String {
                self.URL = value
            }
        }
    }
    public var dataSourceType: String?

    public var URLList: [ScreenECRequest.URLList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataSourceType != nil {
            map["DataSourceType"] = self.dataSourceType!
        }
        if self.URLList != nil {
            var tmp : [Any] = []
            for k in self.URLList! {
                tmp.append(k.toMap())
            }
            map["URLList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataSourceType"] as? String {
            self.dataSourceType = value
        }
        if let value = dict["URLList"] as? [Any?] {
            var tmp : [ScreenECRequest.URLList] = []
            for v in value {
                if v != nil {
                    var model = ScreenECRequest.URLList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.URLList = tmp
        }
    }
}

public class ScreenECAdvanceRequest : Tea.TeaModel {
    public class URLList : Tea.TeaModel {
        public var URLObject: InputStream?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.URLObject != nil {
                map["URL"] = self.URLObject!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["URL"] as? InputStream {
                self.URLObject = value
            }
        }
    }
    public var dataSourceType: String?

    public var URLList: [ScreenECAdvanceRequest.URLList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataSourceType != nil {
            map["DataSourceType"] = self.dataSourceType!
        }
        if self.URLList != nil {
            var tmp : [Any] = []
            for k in self.URLList! {
                tmp.append(k.toMap())
            }
            map["URLList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataSourceType"] as? String {
            self.dataSourceType = value
        }
        if let value = dict["URLList"] as? [Any?] {
            var tmp : [ScreenECAdvanceRequest.URLList] = []
            for v in value {
                if v != nil {
                    var model = ScreenECAdvanceRequest.URLList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.URLList = tmp
        }
    }
}

public class ScreenECResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Lesion : Tea.TeaModel {
            public var benignVolume: String?

            public var ecVolume: String?

            public var esoVolume: String?

            public var mask: String?

            public var possibilities: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.benignVolume != nil {
                    map["BenignVolume"] = self.benignVolume!
                }
                if self.ecVolume != nil {
                    map["EcVolume"] = self.ecVolume!
                }
                if self.esoVolume != nil {
                    map["EsoVolume"] = self.esoVolume!
                }
                if self.mask != nil {
                    map["Mask"] = self.mask!
                }
                if self.possibilities != nil {
                    map["Possibilities"] = self.possibilities!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BenignVolume"] as? String {
                    self.benignVolume = value
                }
                if let value = dict["EcVolume"] as? String {
                    self.ecVolume = value
                }
                if let value = dict["EsoVolume"] as? String {
                    self.esoVolume = value
                }
                if let value = dict["Mask"] as? String {
                    self.mask = value
                }
                if let value = dict["Possibilities"] as? [String] {
                    self.possibilities = value
                }
            }
        }
        public var lesion: ScreenECResponseBody.Data.Lesion?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.lesion?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.lesion != nil {
                map["Lesion"] = self.lesion?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Lesion"] as? [String: Any?] {
                var model = ScreenECResponseBody.Data.Lesion()
                model.fromMap(value)
                self.lesion = model
            }
        }
    }
    public var data: ScreenECResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ScreenECResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ScreenECResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ScreenECResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ScreenECResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ScreenGCRequest : Tea.TeaModel {
    public class URLList : Tea.TeaModel {
        public var URL: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.URL != nil {
                map["URL"] = self.URL!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["URL"] as? String {
                self.URL = value
            }
        }
    }
    public var dataFormat: String?

    public var dataSourceType: String?

    public var orgId: String?

    public var orgName: String?

    public var URLList: [ScreenGCRequest.URLList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataFormat != nil {
            map["DataFormat"] = self.dataFormat!
        }
        if self.dataSourceType != nil {
            map["DataSourceType"] = self.dataSourceType!
        }
        if self.orgId != nil {
            map["OrgId"] = self.orgId!
        }
        if self.orgName != nil {
            map["OrgName"] = self.orgName!
        }
        if self.URLList != nil {
            var tmp : [Any] = []
            for k in self.URLList! {
                tmp.append(k.toMap())
            }
            map["URLList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataFormat"] as? String {
            self.dataFormat = value
        }
        if let value = dict["DataSourceType"] as? String {
            self.dataSourceType = value
        }
        if let value = dict["OrgId"] as? String {
            self.orgId = value
        }
        if let value = dict["OrgName"] as? String {
            self.orgName = value
        }
        if let value = dict["URLList"] as? [Any?] {
            var tmp : [ScreenGCRequest.URLList] = []
            for v in value {
                if v != nil {
                    var model = ScreenGCRequest.URLList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.URLList = tmp
        }
    }
}

public class ScreenGCAdvanceRequest : Tea.TeaModel {
    public class URLList : Tea.TeaModel {
        public var URLObject: InputStream?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.URLObject != nil {
                map["URL"] = self.URLObject!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["URL"] as? InputStream {
                self.URLObject = value
            }
        }
    }
    public var dataFormat: String?

    public var dataSourceType: String?

    public var orgId: String?

    public var orgName: String?

    public var URLList: [ScreenGCAdvanceRequest.URLList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataFormat != nil {
            map["DataFormat"] = self.dataFormat!
        }
        if self.dataSourceType != nil {
            map["DataSourceType"] = self.dataSourceType!
        }
        if self.orgId != nil {
            map["OrgId"] = self.orgId!
        }
        if self.orgName != nil {
            map["OrgName"] = self.orgName!
        }
        if self.URLList != nil {
            var tmp : [Any] = []
            for k in self.URLList! {
                tmp.append(k.toMap())
            }
            map["URLList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataFormat"] as? String {
            self.dataFormat = value
        }
        if let value = dict["DataSourceType"] as? String {
            self.dataSourceType = value
        }
        if let value = dict["OrgId"] as? String {
            self.orgId = value
        }
        if let value = dict["OrgName"] as? String {
            self.orgName = value
        }
        if let value = dict["URLList"] as? [Any?] {
            var tmp : [ScreenGCAdvanceRequest.URLList] = []
            for v in value {
                if v != nil {
                    var model = ScreenGCAdvanceRequest.URLList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.URLList = tmp
        }
    }
}

public class ScreenGCResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Lesion : Tea.TeaModel {
            public var GCVolume: String?

            public var mask: String?

            public var nonGCVolume: String?

            public var probabilities: String?

            public var stomachVolume: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.GCVolume != nil {
                    map["GCVolume"] = self.GCVolume!
                }
                if self.mask != nil {
                    map["Mask"] = self.mask!
                }
                if self.nonGCVolume != nil {
                    map["NonGCVolume"] = self.nonGCVolume!
                }
                if self.probabilities != nil {
                    map["Probabilities"] = self.probabilities!
                }
                if self.stomachVolume != nil {
                    map["StomachVolume"] = self.stomachVolume!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["GCVolume"] as? String {
                    self.GCVolume = value
                }
                if let value = dict["Mask"] as? String {
                    self.mask = value
                }
                if let value = dict["NonGCVolume"] as? String {
                    self.nonGCVolume = value
                }
                if let value = dict["Probabilities"] as? String {
                    self.probabilities = value
                }
                if let value = dict["StomachVolume"] as? String {
                    self.stomachVolume = value
                }
            }
        }
        public var lesion: ScreenGCResponseBody.Data.Lesion?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.lesion?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.lesion != nil {
                map["Lesion"] = self.lesion?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Lesion"] as? [String: Any?] {
                var model = ScreenGCResponseBody.Data.Lesion()
                model.fromMap(value)
                self.lesion = model
            }
        }
    }
    public var data: ScreenGCResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ScreenGCResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ScreenGCResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ScreenGCResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ScreenGCResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ScreenLCRequest : Tea.TeaModel {
    public class URLList : Tea.TeaModel {
        public var URL: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.URL != nil {
                map["URL"] = self.URL!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["URL"] as? String {
                self.URL = value
            }
        }
    }
    public var dataFormat: String?

    public var dataSourceType: String?

    public var orgId: String?

    public var orgName: String?

    public var URLList: [ScreenLCRequest.URLList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataFormat != nil {
            map["DataFormat"] = self.dataFormat!
        }
        if self.dataSourceType != nil {
            map["DataSourceType"] = self.dataSourceType!
        }
        if self.orgId != nil {
            map["OrgId"] = self.orgId!
        }
        if self.orgName != nil {
            map["OrgName"] = self.orgName!
        }
        if self.URLList != nil {
            var tmp : [Any] = []
            for k in self.URLList! {
                tmp.append(k.toMap())
            }
            map["URLList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataFormat"] as? String {
            self.dataFormat = value
        }
        if let value = dict["DataSourceType"] as? String {
            self.dataSourceType = value
        }
        if let value = dict["OrgId"] as? String {
            self.orgId = value
        }
        if let value = dict["OrgName"] as? String {
            self.orgName = value
        }
        if let value = dict["URLList"] as? [Any?] {
            var tmp : [ScreenLCRequest.URLList] = []
            for v in value {
                if v != nil {
                    var model = ScreenLCRequest.URLList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.URLList = tmp
        }
    }
}

public class ScreenLCAdvanceRequest : Tea.TeaModel {
    public class URLList : Tea.TeaModel {
        public var URLObject: InputStream?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.URLObject != nil {
                map["URL"] = self.URLObject!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["URL"] as? InputStream {
                self.URLObject = value
            }
        }
    }
    public var dataFormat: String?

    public var dataSourceType: String?

    public var orgId: String?

    public var orgName: String?

    public var URLList: [ScreenLCAdvanceRequest.URLList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataFormat != nil {
            map["DataFormat"] = self.dataFormat!
        }
        if self.dataSourceType != nil {
            map["DataSourceType"] = self.dataSourceType!
        }
        if self.orgId != nil {
            map["OrgId"] = self.orgId!
        }
        if self.orgName != nil {
            map["OrgName"] = self.orgName!
        }
        if self.URLList != nil {
            var tmp : [Any] = []
            for k in self.URLList! {
                tmp.append(k.toMap())
            }
            map["URLList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataFormat"] as? String {
            self.dataFormat = value
        }
        if let value = dict["DataSourceType"] as? String {
            self.dataSourceType = value
        }
        if let value = dict["OrgId"] as? String {
            self.orgId = value
        }
        if let value = dict["OrgName"] as? String {
            self.orgName = value
        }
        if let value = dict["URLList"] as? [Any?] {
            var tmp : [ScreenLCAdvanceRequest.URLList] = []
            for v in value {
                if v != nil {
                    var model = ScreenLCAdvanceRequest.URLList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.URLList = tmp
        }
    }
}

public class ScreenLCResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Lesion : Tea.TeaModel {
            public class LesionList : Tea.TeaModel {
                public class ScoreAllClassesProb : Tea.TeaModel {
                    public var benignProb: Double?

                    public var calcProb: Double?

                    public var cystProb: Double?

                    public var malignantProb: Double?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.benignProb != nil {
                            map["BenignProb"] = self.benignProb!
                        }
                        if self.calcProb != nil {
                            map["CalcProb"] = self.calcProb!
                        }
                        if self.cystProb != nil {
                            map["CystProb"] = self.cystProb!
                        }
                        if self.malignantProb != nil {
                            map["MalignantProb"] = self.malignantProb!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["BenignProb"] as? Double {
                            self.benignProb = value
                        }
                        if let value = dict["CalcProb"] as? Double {
                            self.calcProb = value
                        }
                        if let value = dict["CystProb"] as? Double {
                            self.cystProb = value
                        }
                        if let value = dict["MalignantProb"] as? Double {
                            self.malignantProb = value
                        }
                    }
                }
                public var diameter: [Double]?

                public var keySlice: Int64?

                public var malignancy: Double?

                public var recistEndpoints: [Double]?

                public var scoreAllClassesProb: ScreenLCResponseBody.Data.Lesion.LesionList.ScoreAllClassesProb?

                public var type: String?

                public var volume: Double?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.scoreAllClassesProb?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.diameter != nil {
                        map["Diameter"] = self.diameter!
                    }
                    if self.keySlice != nil {
                        map["KeySlice"] = self.keySlice!
                    }
                    if self.malignancy != nil {
                        map["Malignancy"] = self.malignancy!
                    }
                    if self.recistEndpoints != nil {
                        map["RecistEndpoints"] = self.recistEndpoints!
                    }
                    if self.scoreAllClassesProb != nil {
                        map["ScoreAllClassesProb"] = self.scoreAllClassesProb?.toMap()
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    if self.volume != nil {
                        map["Volume"] = self.volume!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Diameter"] as? [Double] {
                        self.diameter = value
                    }
                    if let value = dict["KeySlice"] as? Int64 {
                        self.keySlice = value
                    }
                    if let value = dict["Malignancy"] as? Double {
                        self.malignancy = value
                    }
                    if let value = dict["RecistEndpoints"] as? [Double] {
                        self.recistEndpoints = value
                    }
                    if let value = dict["ScoreAllClassesProb"] as? [String: Any?] {
                        var model = ScreenLCResponseBody.Data.Lesion.LesionList.ScoreAllClassesProb()
                        model.fromMap(value)
                        self.scoreAllClassesProb = model
                    }
                    if let value = dict["Type"] as? String {
                        self.type = value
                    }
                    if let value = dict["Volume"] as? Double {
                        self.volume = value
                    }
                }
            }
            public class PatientLevelResult : Tea.TeaModel {
                public var benignNonCystProb: String?

                public var benignProb: Double?

                public var calcProb: Double?

                public var cystProb: Double?

                public var HCCProb: Double?

                public var malignantNonHCCProb: Double?

                public var malignantProb: Double?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.benignNonCystProb != nil {
                        map["BenignNonCystProb"] = self.benignNonCystProb!
                    }
                    if self.benignProb != nil {
                        map["BenignProb"] = self.benignProb!
                    }
                    if self.calcProb != nil {
                        map["CalcProb"] = self.calcProb!
                    }
                    if self.cystProb != nil {
                        map["CystProb"] = self.cystProb!
                    }
                    if self.HCCProb != nil {
                        map["HCCProb"] = self.HCCProb!
                    }
                    if self.malignantNonHCCProb != nil {
                        map["MalignantNonHCCProb"] = self.malignantNonHCCProb!
                    }
                    if self.malignantProb != nil {
                        map["MalignantProb"] = self.malignantProb!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["BenignNonCystProb"] as? String {
                        self.benignNonCystProb = value
                    }
                    if let value = dict["BenignProb"] as? Double {
                        self.benignProb = value
                    }
                    if let value = dict["CalcProb"] as? Double {
                        self.calcProb = value
                    }
                    if let value = dict["CystProb"] as? Double {
                        self.cystProb = value
                    }
                    if let value = dict["HCCProb"] as? Double {
                        self.HCCProb = value
                    }
                    if let value = dict["MalignantNonHCCProb"] as? Double {
                        self.malignantNonHCCProb = value
                    }
                    if let value = dict["MalignantProb"] as? Double {
                        self.malignantProb = value
                    }
                }
            }
            public var lesionList: [ScreenLCResponseBody.Data.Lesion.LesionList]?

            public var liverVolume: Double?

            public var mask: String?

            public var patientLevelProb: Double?

            public var patientLevelResult: ScreenLCResponseBody.Data.Lesion.PatientLevelResult?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.patientLevelResult?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.lesionList != nil {
                    var tmp : [Any] = []
                    for k in self.lesionList! {
                        tmp.append(k.toMap())
                    }
                    map["LesionList"] = tmp
                }
                if self.liverVolume != nil {
                    map["LiverVolume"] = self.liverVolume!
                }
                if self.mask != nil {
                    map["Mask"] = self.mask!
                }
                if self.patientLevelProb != nil {
                    map["PatientLevelProb"] = self.patientLevelProb!
                }
                if self.patientLevelResult != nil {
                    map["PatientLevelResult"] = self.patientLevelResult?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["LesionList"] as? [Any?] {
                    var tmp : [ScreenLCResponseBody.Data.Lesion.LesionList] = []
                    for v in value {
                        if v != nil {
                            var model = ScreenLCResponseBody.Data.Lesion.LesionList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.lesionList = tmp
                }
                if let value = dict["LiverVolume"] as? Double {
                    self.liverVolume = value
                }
                if let value = dict["Mask"] as? String {
                    self.mask = value
                }
                if let value = dict["PatientLevelProb"] as? Double {
                    self.patientLevelProb = value
                }
                if let value = dict["PatientLevelResult"] as? [String: Any?] {
                    var model = ScreenLCResponseBody.Data.Lesion.PatientLevelResult()
                    model.fromMap(value)
                    self.patientLevelResult = model
                }
            }
        }
        public var lesion: ScreenLCResponseBody.Data.Lesion?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.lesion?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.lesion != nil {
                map["Lesion"] = self.lesion?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Lesion"] as? [String: Any?] {
                var model = ScreenLCResponseBody.Data.Lesion()
                model.fromMap(value)
                self.lesion = model
            }
        }
    }
    public var data: ScreenLCResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ScreenLCResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ScreenLCResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ScreenLCResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ScreenLCResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SegmentLymphNodeRequest : Tea.TeaModel {
    public class URLList : Tea.TeaModel {
        public var URL: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.URL != nil {
                map["URL"] = self.URL!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["URL"] as? String {
                self.URL = value
            }
        }
    }
    public var bodyPart: String?

    public var dataFormat: String?

    public var orgId: String?

    public var orgName: String?

    public var URLList: [SegmentLymphNodeRequest.URLList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bodyPart != nil {
            map["BodyPart"] = self.bodyPart!
        }
        if self.dataFormat != nil {
            map["DataFormat"] = self.dataFormat!
        }
        if self.orgId != nil {
            map["OrgId"] = self.orgId!
        }
        if self.orgName != nil {
            map["OrgName"] = self.orgName!
        }
        if self.URLList != nil {
            var tmp : [Any] = []
            for k in self.URLList! {
                tmp.append(k.toMap())
            }
            map["URLList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BodyPart"] as? String {
            self.bodyPart = value
        }
        if let value = dict["DataFormat"] as? String {
            self.dataFormat = value
        }
        if let value = dict["OrgId"] as? String {
            self.orgId = value
        }
        if let value = dict["OrgName"] as? String {
            self.orgName = value
        }
        if let value = dict["URLList"] as? [Any?] {
            var tmp : [SegmentLymphNodeRequest.URLList] = []
            for v in value {
                if v != nil {
                    var model = SegmentLymphNodeRequest.URLList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.URLList = tmp
        }
    }
}

public class SegmentLymphNodeAdvanceRequest : Tea.TeaModel {
    public class URLList : Tea.TeaModel {
        public var URLObject: InputStream?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.URLObject != nil {
                map["URL"] = self.URLObject!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["URL"] as? InputStream {
                self.URLObject = value
            }
        }
    }
    public var bodyPart: String?

    public var dataFormat: String?

    public var orgId: String?

    public var orgName: String?

    public var URLList: [SegmentLymphNodeAdvanceRequest.URLList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bodyPart != nil {
            map["BodyPart"] = self.bodyPart!
        }
        if self.dataFormat != nil {
            map["DataFormat"] = self.dataFormat!
        }
        if self.orgId != nil {
            map["OrgId"] = self.orgId!
        }
        if self.orgName != nil {
            map["OrgName"] = self.orgName!
        }
        if self.URLList != nil {
            var tmp : [Any] = []
            for k in self.URLList! {
                tmp.append(k.toMap())
            }
            map["URLList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BodyPart"] as? String {
            self.bodyPart = value
        }
        if let value = dict["DataFormat"] as? String {
            self.dataFormat = value
        }
        if let value = dict["OrgId"] as? String {
            self.orgId = value
        }
        if let value = dict["OrgName"] as? String {
            self.orgName = value
        }
        if let value = dict["URLList"] as? [Any?] {
            var tmp : [SegmentLymphNodeAdvanceRequest.URLList] = []
            for v in value {
                if v != nil {
                    var model = SegmentLymphNodeAdvanceRequest.URLList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.URLList = tmp
        }
    }
}

public class SegmentLymphNodeResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var resultURL: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.resultURL != nil {
                map["ResultURL"] = self.resultURL!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ResultURL"] as? String {
                self.resultURL = value
            }
        }
    }
    public var data: SegmentLymphNodeResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = SegmentLymphNodeResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class SegmentLymphNodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SegmentLymphNodeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SegmentLymphNodeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SegmentOARRequest : Tea.TeaModel {
    public class URLList : Tea.TeaModel {
        public var URL: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.URL != nil {
                map["URL"] = self.URL!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["URL"] as? String {
                self.URL = value
            }
        }
    }
    public var bodyPart: String?

    public var contrast: Bool?

    public var dataFormat: String?

    public var maskList: [Int64]?

    public var orgId: String?

    public var orgName: String?

    public var URLList: [SegmentOARRequest.URLList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bodyPart != nil {
            map["BodyPart"] = self.bodyPart!
        }
        if self.contrast != nil {
            map["Contrast"] = self.contrast!
        }
        if self.dataFormat != nil {
            map["DataFormat"] = self.dataFormat!
        }
        if self.maskList != nil {
            map["MaskList"] = self.maskList!
        }
        if self.orgId != nil {
            map["OrgId"] = self.orgId!
        }
        if self.orgName != nil {
            map["OrgName"] = self.orgName!
        }
        if self.URLList != nil {
            var tmp : [Any] = []
            for k in self.URLList! {
                tmp.append(k.toMap())
            }
            map["URLList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BodyPart"] as? String {
            self.bodyPart = value
        }
        if let value = dict["Contrast"] as? Bool {
            self.contrast = value
        }
        if let value = dict["DataFormat"] as? String {
            self.dataFormat = value
        }
        if let value = dict["MaskList"] as? [Int64] {
            self.maskList = value
        }
        if let value = dict["OrgId"] as? String {
            self.orgId = value
        }
        if let value = dict["OrgName"] as? String {
            self.orgName = value
        }
        if let value = dict["URLList"] as? [Any?] {
            var tmp : [SegmentOARRequest.URLList] = []
            for v in value {
                if v != nil {
                    var model = SegmentOARRequest.URLList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.URLList = tmp
        }
    }
}

public class SegmentOARAdvanceRequest : Tea.TeaModel {
    public class URLList : Tea.TeaModel {
        public var URLObject: InputStream?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.URLObject != nil {
                map["URL"] = self.URLObject!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["URL"] as? InputStream {
                self.URLObject = value
            }
        }
    }
    public var bodyPart: String?

    public var contrast: Bool?

    public var dataFormat: String?

    public var maskList: [Int64]?

    public var orgId: String?

    public var orgName: String?

    public var URLList: [SegmentOARAdvanceRequest.URLList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bodyPart != nil {
            map["BodyPart"] = self.bodyPart!
        }
        if self.contrast != nil {
            map["Contrast"] = self.contrast!
        }
        if self.dataFormat != nil {
            map["DataFormat"] = self.dataFormat!
        }
        if self.maskList != nil {
            map["MaskList"] = self.maskList!
        }
        if self.orgId != nil {
            map["OrgId"] = self.orgId!
        }
        if self.orgName != nil {
            map["OrgName"] = self.orgName!
        }
        if self.URLList != nil {
            var tmp : [Any] = []
            for k in self.URLList! {
                tmp.append(k.toMap())
            }
            map["URLList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BodyPart"] as? String {
            self.bodyPart = value
        }
        if let value = dict["Contrast"] as? Bool {
            self.contrast = value
        }
        if let value = dict["DataFormat"] as? String {
            self.dataFormat = value
        }
        if let value = dict["MaskList"] as? [Int64] {
            self.maskList = value
        }
        if let value = dict["OrgId"] as? String {
            self.orgId = value
        }
        if let value = dict["OrgName"] as? String {
            self.orgName = value
        }
        if let value = dict["URLList"] as? [Any?] {
            var tmp : [SegmentOARAdvanceRequest.URLList] = []
            for v in value {
                if v != nil {
                    var model = SegmentOARAdvanceRequest.URLList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.URLList = tmp
        }
    }
}

public class SegmentOARResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var maskList: [String]?

        public var resultURL: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.maskList != nil {
                map["MaskList"] = self.maskList!
            }
            if self.resultURL != nil {
                map["ResultURL"] = self.resultURL!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["MaskList"] as? [String] {
                self.maskList = value
            }
            if let value = dict["ResultURL"] as? String {
                self.resultURL = value
            }
        }
    }
    public var data: SegmentOARResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = SegmentOARResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class SegmentOARResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SegmentOARResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SegmentOARResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class TargetVolumeSegmentRequest : Tea.TeaModel {
    public class URLList : Tea.TeaModel {
        public var URL: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.URL != nil {
                map["URL"] = self.URL!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["URL"] as? String {
                self.URL = value
            }
        }
    }
    public var cancerType: String?

    public var dataFormat: String?

    public var orgId: String?

    public var orgName: String?

    public var targetVolumeType: String?

    public var URLList: [TargetVolumeSegmentRequest.URLList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cancerType != nil {
            map["CancerType"] = self.cancerType!
        }
        if self.dataFormat != nil {
            map["DataFormat"] = self.dataFormat!
        }
        if self.orgId != nil {
            map["OrgId"] = self.orgId!
        }
        if self.orgName != nil {
            map["OrgName"] = self.orgName!
        }
        if self.targetVolumeType != nil {
            map["TargetVolumeType"] = self.targetVolumeType!
        }
        if self.URLList != nil {
            var tmp : [Any] = []
            for k in self.URLList! {
                tmp.append(k.toMap())
            }
            map["URLList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CancerType"] as? String {
            self.cancerType = value
        }
        if let value = dict["DataFormat"] as? String {
            self.dataFormat = value
        }
        if let value = dict["OrgId"] as? String {
            self.orgId = value
        }
        if let value = dict["OrgName"] as? String {
            self.orgName = value
        }
        if let value = dict["TargetVolumeType"] as? String {
            self.targetVolumeType = value
        }
        if let value = dict["URLList"] as? [Any?] {
            var tmp : [TargetVolumeSegmentRequest.URLList] = []
            for v in value {
                if v != nil {
                    var model = TargetVolumeSegmentRequest.URLList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.URLList = tmp
        }
    }
}

public class TargetVolumeSegmentAdvanceRequest : Tea.TeaModel {
    public class URLList : Tea.TeaModel {
        public var URLObject: InputStream?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.URLObject != nil {
                map["URL"] = self.URLObject!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["URL"] as? InputStream {
                self.URLObject = value
            }
        }
    }
    public var cancerType: String?

    public var dataFormat: String?

    public var orgId: String?

    public var orgName: String?

    public var targetVolumeType: String?

    public var URLList: [TargetVolumeSegmentAdvanceRequest.URLList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cancerType != nil {
            map["CancerType"] = self.cancerType!
        }
        if self.dataFormat != nil {
            map["DataFormat"] = self.dataFormat!
        }
        if self.orgId != nil {
            map["OrgId"] = self.orgId!
        }
        if self.orgName != nil {
            map["OrgName"] = self.orgName!
        }
        if self.targetVolumeType != nil {
            map["TargetVolumeType"] = self.targetVolumeType!
        }
        if self.URLList != nil {
            var tmp : [Any] = []
            for k in self.URLList! {
                tmp.append(k.toMap())
            }
            map["URLList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CancerType"] as? String {
            self.cancerType = value
        }
        if let value = dict["DataFormat"] as? String {
            self.dataFormat = value
        }
        if let value = dict["OrgId"] as? String {
            self.orgId = value
        }
        if let value = dict["OrgName"] as? String {
            self.orgName = value
        }
        if let value = dict["TargetVolumeType"] as? String {
            self.targetVolumeType = value
        }
        if let value = dict["URLList"] as? [Any?] {
            var tmp : [TargetVolumeSegmentAdvanceRequest.URLList] = []
            for v in value {
                if v != nil {
                    var model = TargetVolumeSegmentAdvanceRequest.URLList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.URLList = tmp
        }
    }
}

public class TargetVolumeSegmentResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var resultURL: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.resultURL != nil {
                map["ResultURL"] = self.resultURL!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ResultURL"] as? String {
                self.resultURL = value
            }
        }
    }
    public var data: TargetVolumeSegmentResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = TargetVolumeSegmentResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class TargetVolumeSegmentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TargetVolumeSegmentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = TargetVolumeSegmentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
