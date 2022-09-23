import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CompareImageFacesRequest : Tea.TeaModel {
    public var faceIdA: String?

    public var faceIdB: String?

    public var imageUriA: String?

    public var imageUriB: String?

    public var project: String?

    public var setId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.faceIdA != nil {
            map["FaceIdA"] = self.faceIdA!
        }
        if self.faceIdB != nil {
            map["FaceIdB"] = self.faceIdB!
        }
        if self.imageUriA != nil {
            map["ImageUriA"] = self.imageUriA!
        }
        if self.imageUriB != nil {
            map["ImageUriB"] = self.imageUriB!
        }
        if self.project != nil {
            map["Project"] = self.project!
        }
        if self.setId != nil {
            map["SetId"] = self.setId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FaceIdA") {
            self.faceIdA = dict["FaceIdA"] as! String
        }
        if dict.keys.contains("FaceIdB") {
            self.faceIdB = dict["FaceIdB"] as! String
        }
        if dict.keys.contains("ImageUriA") {
            self.imageUriA = dict["ImageUriA"] as! String
        }
        if dict.keys.contains("ImageUriB") {
            self.imageUriB = dict["ImageUriB"] as! String
        }
        if dict.keys.contains("Project") {
            self.project = dict["Project"] as! String
        }
        if dict.keys.contains("SetId") {
            self.setId = dict["SetId"] as! String
        }
    }
}

public class CompareImageFacesResponseBody : Tea.TeaModel {
    public class FaceA : Tea.TeaModel {
        public class FaceAttributes : Tea.TeaModel {
            public class FaceBoundary : Tea.TeaModel {
                public var height: Int32?

                public var left_: Int32?

                public var top: Int32?

                public var width: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.height != nil {
                        map["Height"] = self.height!
                    }
                    if self.left_ != nil {
                        map["Left"] = self.left_!
                    }
                    if self.top != nil {
                        map["Top"] = self.top!
                    }
                    if self.width != nil {
                        map["Width"] = self.width!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Height") {
                        self.height = dict["Height"] as! Int32
                    }
                    if dict.keys.contains("Left") {
                        self.left_ = dict["Left"] as! Int32
                    }
                    if dict.keys.contains("Top") {
                        self.top = dict["Top"] as! Int32
                    }
                    if dict.keys.contains("Width") {
                        self.width = dict["Width"] as! Int32
                    }
                }
            }
            public var faceBoundary: CompareImageFacesResponseBody.FaceA.FaceAttributes.FaceBoundary?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.faceBoundary?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.faceBoundary != nil {
                    map["FaceBoundary"] = self.faceBoundary?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("FaceBoundary") {
                    var model = CompareImageFacesResponseBody.FaceA.FaceAttributes.FaceBoundary()
                    model.fromMap(dict["FaceBoundary"] as! [String: Any])
                    self.faceBoundary = model
                }
            }
        }
        public var faceAttributes: CompareImageFacesResponseBody.FaceA.FaceAttributes?

        public var faceId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.faceAttributes?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.faceAttributes != nil {
                map["FaceAttributes"] = self.faceAttributes?.toMap()
            }
            if self.faceId != nil {
                map["FaceId"] = self.faceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FaceAttributes") {
                var model = CompareImageFacesResponseBody.FaceA.FaceAttributes()
                model.fromMap(dict["FaceAttributes"] as! [String: Any])
                self.faceAttributes = model
            }
            if dict.keys.contains("FaceId") {
                self.faceId = dict["FaceId"] as! String
            }
        }
    }
    public class FaceB : Tea.TeaModel {
        public class FaceAttributes : Tea.TeaModel {
            public class FaceBoundary : Tea.TeaModel {
                public var height: Int32?

                public var left_: Int32?

                public var top: Int32?

                public var width: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.height != nil {
                        map["Height"] = self.height!
                    }
                    if self.left_ != nil {
                        map["Left"] = self.left_!
                    }
                    if self.top != nil {
                        map["Top"] = self.top!
                    }
                    if self.width != nil {
                        map["Width"] = self.width!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Height") {
                        self.height = dict["Height"] as! Int32
                    }
                    if dict.keys.contains("Left") {
                        self.left_ = dict["Left"] as! Int32
                    }
                    if dict.keys.contains("Top") {
                        self.top = dict["Top"] as! Int32
                    }
                    if dict.keys.contains("Width") {
                        self.width = dict["Width"] as! Int32
                    }
                }
            }
            public var faceBoundary: CompareImageFacesResponseBody.FaceB.FaceAttributes.FaceBoundary?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.faceBoundary?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.faceBoundary != nil {
                    map["FaceBoundary"] = self.faceBoundary?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("FaceBoundary") {
                    var model = CompareImageFacesResponseBody.FaceB.FaceAttributes.FaceBoundary()
                    model.fromMap(dict["FaceBoundary"] as! [String: Any])
                    self.faceBoundary = model
                }
            }
        }
        public var faceAttributes: CompareImageFacesResponseBody.FaceB.FaceAttributes?

        public var faceId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.faceAttributes?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.faceAttributes != nil {
                map["FaceAttributes"] = self.faceAttributes?.toMap()
            }
            if self.faceId != nil {
                map["FaceId"] = self.faceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FaceAttributes") {
                var model = CompareImageFacesResponseBody.FaceB.FaceAttributes()
                model.fromMap(dict["FaceAttributes"] as! [String: Any])
                self.faceAttributes = model
            }
            if dict.keys.contains("FaceId") {
                self.faceId = dict["FaceId"] as! String
            }
        }
    }
    public var faceA: CompareImageFacesResponseBody.FaceA?

    public var faceB: CompareImageFacesResponseBody.FaceB?

    public var requestId: String?

    public var setId: String?

    public var similarity: Double?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.faceA?.validate()
        try self.faceB?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.faceA != nil {
            map["FaceA"] = self.faceA?.toMap()
        }
        if self.faceB != nil {
            map["FaceB"] = self.faceB?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.setId != nil {
            map["SetId"] = self.setId!
        }
        if self.similarity != nil {
            map["Similarity"] = self.similarity!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FaceA") {
            var model = CompareImageFacesResponseBody.FaceA()
            model.fromMap(dict["FaceA"] as! [String: Any])
            self.faceA = model
        }
        if dict.keys.contains("FaceB") {
            var model = CompareImageFacesResponseBody.FaceB()
            model.fromMap(dict["FaceB"] as! [String: Any])
            self.faceB = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SetId") {
            self.setId = dict["SetId"] as! String
        }
        if dict.keys.contains("Similarity") {
            self.similarity = dict["Similarity"] as! Double
        }
    }
}

public class CompareImageFacesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CompareImageFacesResponseBody?

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
            var model = CompareImageFacesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ConvertOfficeFormatRequest : Tea.TeaModel {
    public var endPage: Int64?

    public var fitToPagesTall: Bool?

    public var fitToPagesWide: Bool?

    public var hidecomments: Bool?

    public var maxSheetCol: Int64?

    public var maxSheetCount: Int64?

    public var maxSheetRow: Int64?

    public var modelId: String?

    public var password: String?

    public var pdfVector: Bool?

    public var project: String?

    public var sheetOnePage: Bool?

    public var srcType: String?

    public var srcUri: String?

    public var startPage: Int64?

    public var tgtFilePages: String?

    public var tgtFilePrefix: String?

    public var tgtFileSuffix: String?

    public var tgtType: String?

    public var tgtUri: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endPage != nil {
            map["EndPage"] = self.endPage!
        }
        if self.fitToPagesTall != nil {
            map["FitToPagesTall"] = self.fitToPagesTall!
        }
        if self.fitToPagesWide != nil {
            map["FitToPagesWide"] = self.fitToPagesWide!
        }
        if self.hidecomments != nil {
            map["Hidecomments"] = self.hidecomments!
        }
        if self.maxSheetCol != nil {
            map["MaxSheetCol"] = self.maxSheetCol!
        }
        if self.maxSheetCount != nil {
            map["MaxSheetCount"] = self.maxSheetCount!
        }
        if self.maxSheetRow != nil {
            map["MaxSheetRow"] = self.maxSheetRow!
        }
        if self.modelId != nil {
            map["ModelId"] = self.modelId!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.pdfVector != nil {
            map["PdfVector"] = self.pdfVector!
        }
        if self.project != nil {
            map["Project"] = self.project!
        }
        if self.sheetOnePage != nil {
            map["SheetOnePage"] = self.sheetOnePage!
        }
        if self.srcType != nil {
            map["SrcType"] = self.srcType!
        }
        if self.srcUri != nil {
            map["SrcUri"] = self.srcUri!
        }
        if self.startPage != nil {
            map["StartPage"] = self.startPage!
        }
        if self.tgtFilePages != nil {
            map["TgtFilePages"] = self.tgtFilePages!
        }
        if self.tgtFilePrefix != nil {
            map["TgtFilePrefix"] = self.tgtFilePrefix!
        }
        if self.tgtFileSuffix != nil {
            map["TgtFileSuffix"] = self.tgtFileSuffix!
        }
        if self.tgtType != nil {
            map["TgtType"] = self.tgtType!
        }
        if self.tgtUri != nil {
            map["TgtUri"] = self.tgtUri!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndPage") {
            self.endPage = dict["EndPage"] as! Int64
        }
        if dict.keys.contains("FitToPagesTall") {
            self.fitToPagesTall = dict["FitToPagesTall"] as! Bool
        }
        if dict.keys.contains("FitToPagesWide") {
            self.fitToPagesWide = dict["FitToPagesWide"] as! Bool
        }
        if dict.keys.contains("Hidecomments") {
            self.hidecomments = dict["Hidecomments"] as! Bool
        }
        if dict.keys.contains("MaxSheetCol") {
            self.maxSheetCol = dict["MaxSheetCol"] as! Int64
        }
        if dict.keys.contains("MaxSheetCount") {
            self.maxSheetCount = dict["MaxSheetCount"] as! Int64
        }
        if dict.keys.contains("MaxSheetRow") {
            self.maxSheetRow = dict["MaxSheetRow"] as! Int64
        }
        if dict.keys.contains("ModelId") {
            self.modelId = dict["ModelId"] as! String
        }
        if dict.keys.contains("Password") {
            self.password = dict["Password"] as! String
        }
        if dict.keys.contains("PdfVector") {
            self.pdfVector = dict["PdfVector"] as! Bool
        }
        if dict.keys.contains("Project") {
            self.project = dict["Project"] as! String
        }
        if dict.keys.contains("SheetOnePage") {
            self.sheetOnePage = dict["SheetOnePage"] as! Bool
        }
        if dict.keys.contains("SrcType") {
            self.srcType = dict["SrcType"] as! String
        }
        if dict.keys.contains("SrcUri") {
            self.srcUri = dict["SrcUri"] as! String
        }
        if dict.keys.contains("StartPage") {
            self.startPage = dict["StartPage"] as! Int64
        }
        if dict.keys.contains("TgtFilePages") {
            self.tgtFilePages = dict["TgtFilePages"] as! String
        }
        if dict.keys.contains("TgtFilePrefix") {
            self.tgtFilePrefix = dict["TgtFilePrefix"] as! String
        }
        if dict.keys.contains("TgtFileSuffix") {
            self.tgtFileSuffix = dict["TgtFileSuffix"] as! String
        }
        if dict.keys.contains("TgtType") {
            self.tgtType = dict["TgtType"] as! String
        }
        if dict.keys.contains("TgtUri") {
            self.tgtUri = dict["TgtUri"] as! String
        }
    }
}

public class ConvertOfficeFormatResponseBody : Tea.TeaModel {
    public var pageCount: Int32?

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
        if self.pageCount != nil {
            map["PageCount"] = self.pageCount!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageCount") {
            self.pageCount = dict["PageCount"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ConvertOfficeFormatResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ConvertOfficeFormatResponseBody?

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
            var model = ConvertOfficeFormatResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateGrabFrameTaskRequest : Tea.TeaModel {
    public var customMessage: String?

    public var notifyEndpoint: String?

    public var notifyTopicName: String?

    public var project: String?

    public var targetList: String?

    public var videoUri: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.customMessage != nil {
            map["CustomMessage"] = self.customMessage!
        }
        if self.notifyEndpoint != nil {
            map["NotifyEndpoint"] = self.notifyEndpoint!
        }
        if self.notifyTopicName != nil {
            map["NotifyTopicName"] = self.notifyTopicName!
        }
        if self.project != nil {
            map["Project"] = self.project!
        }
        if self.targetList != nil {
            map["TargetList"] = self.targetList!
        }
        if self.videoUri != nil {
            map["VideoUri"] = self.videoUri!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CustomMessage") {
            self.customMessage = dict["CustomMessage"] as! String
        }
        if dict.keys.contains("NotifyEndpoint") {
            self.notifyEndpoint = dict["NotifyEndpoint"] as! String
        }
        if dict.keys.contains("NotifyTopicName") {
            self.notifyTopicName = dict["NotifyTopicName"] as! String
        }
        if dict.keys.contains("Project") {
            self.project = dict["Project"] as! String
        }
        if dict.keys.contains("TargetList") {
            self.targetList = dict["TargetList"] as! String
        }
        if dict.keys.contains("VideoUri") {
            self.videoUri = dict["VideoUri"] as! String
        }
    }
}

public class CreateGrabFrameTaskResponseBody : Tea.TeaModel {
    public var requestId: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.taskType != nil {
            map["TaskType"] = self.taskType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("TaskType") {
            self.taskType = dict["TaskType"] as! String
        }
    }
}

public class CreateGrabFrameTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateGrabFrameTaskResponseBody?

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
            var model = CreateGrabFrameTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateGroupFacesJobRequest : Tea.TeaModel {
    public var notifyEndpoint: String?

    public var notifyTopicName: String?

    public var project: String?

    public var setId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.notifyEndpoint != nil {
            map["NotifyEndpoint"] = self.notifyEndpoint!
        }
        if self.notifyTopicName != nil {
            map["NotifyTopicName"] = self.notifyTopicName!
        }
        if self.project != nil {
            map["Project"] = self.project!
        }
        if self.setId != nil {
            map["SetId"] = self.setId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NotifyEndpoint") {
            self.notifyEndpoint = dict["NotifyEndpoint"] as! String
        }
        if dict.keys.contains("NotifyTopicName") {
            self.notifyTopicName = dict["NotifyTopicName"] as! String
        }
        if dict.keys.contains("Project") {
            self.project = dict["Project"] as! String
        }
        if dict.keys.contains("SetId") {
            self.setId = dict["SetId"] as! String
        }
    }
}

public class CreateGroupFacesJobResponseBody : Tea.TeaModel {
    public var jobId: String?

    public var jobType: String?

    public var requestId: String?

    public var setId: String?

    public override init() {
        super.init()
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
        if self.jobType != nil {
            map["JobType"] = self.jobType!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.setId != nil {
            map["SetId"] = self.setId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("JobType") {
            self.jobType = dict["JobType"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SetId") {
            self.setId = dict["SetId"] as! String
        }
    }
}

public class CreateGroupFacesJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateGroupFacesJobResponseBody?

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
            var model = CreateGroupFacesJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateMergeFaceGroupsJobRequest : Tea.TeaModel {
    public var customMessage: String?

    public var groupIdFrom: String?

    public var groupIdTo: String?

    public var notifyEndpoint: String?

    public var notifyTopicName: String?

    public var project: String?

    public var setId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.customMessage != nil {
            map["CustomMessage"] = self.customMessage!
        }
        if self.groupIdFrom != nil {
            map["GroupIdFrom"] = self.groupIdFrom!
        }
        if self.groupIdTo != nil {
            map["GroupIdTo"] = self.groupIdTo!
        }
        if self.notifyEndpoint != nil {
            map["NotifyEndpoint"] = self.notifyEndpoint!
        }
        if self.notifyTopicName != nil {
            map["NotifyTopicName"] = self.notifyTopicName!
        }
        if self.project != nil {
            map["Project"] = self.project!
        }
        if self.setId != nil {
            map["SetId"] = self.setId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CustomMessage") {
            self.customMessage = dict["CustomMessage"] as! String
        }
        if dict.keys.contains("GroupIdFrom") {
            self.groupIdFrom = dict["GroupIdFrom"] as! String
        }
        if dict.keys.contains("GroupIdTo") {
            self.groupIdTo = dict["GroupIdTo"] as! String
        }
        if dict.keys.contains("NotifyEndpoint") {
            self.notifyEndpoint = dict["NotifyEndpoint"] as! String
        }
        if dict.keys.contains("NotifyTopicName") {
            self.notifyTopicName = dict["NotifyTopicName"] as! String
        }
        if dict.keys.contains("Project") {
            self.project = dict["Project"] as! String
        }
        if dict.keys.contains("SetId") {
            self.setId = dict["SetId"] as! String
        }
    }
}

public class CreateMergeFaceGroupsJobResponseBody : Tea.TeaModel {
    public var groupIdFrom: String?

    public var groupIdTo: String?

    public var jobId: String?

    public var jobType: String?

    public var requestId: String?

    public var setId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groupIdFrom != nil {
            map["GroupIdFrom"] = self.groupIdFrom!
        }
        if self.groupIdTo != nil {
            map["GroupIdTo"] = self.groupIdTo!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.jobType != nil {
            map["JobType"] = self.jobType!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.setId != nil {
            map["SetId"] = self.setId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupIdFrom") {
            self.groupIdFrom = dict["GroupIdFrom"] as! String
        }
        if dict.keys.contains("GroupIdTo") {
            self.groupIdTo = dict["GroupIdTo"] as! String
        }
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("JobType") {
            self.jobType = dict["JobType"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SetId") {
            self.setId = dict["SetId"] as! String
        }
    }
}

public class CreateMergeFaceGroupsJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateMergeFaceGroupsJobResponseBody?

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
            var model = CreateMergeFaceGroupsJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateOfficeConversionTaskRequest : Tea.TeaModel {
    public var displayDpi: Int32?

    public var endPage: Int64?

    public var fitToPagesTall: Bool?

    public var fitToPagesWide: Bool?

    public var hidecomments: Bool?

    public var idempotentToken: String?

    public var maxSheetCol: Int64?

    public var maxSheetCount: Int64?

    public var maxSheetRow: Int64?

    public var modelId: String?

    public var notifyEndpoint: String?

    public var notifyTopicName: String?

    public var password: String?

    public var pdfVector: Bool?

    public var project: String?

    public var sheetOnePage: Bool?

    public var srcType: String?

    public var srcUri: String?

    public var startPage: Int64?

    public var tgtFilePages: String?

    public var tgtFilePrefix: String?

    public var tgtFileSuffix: String?

    public var tgtType: String?

    public var tgtUri: String?

    public var userData: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.displayDpi != nil {
            map["DisplayDpi"] = self.displayDpi!
        }
        if self.endPage != nil {
            map["EndPage"] = self.endPage!
        }
        if self.fitToPagesTall != nil {
            map["FitToPagesTall"] = self.fitToPagesTall!
        }
        if self.fitToPagesWide != nil {
            map["FitToPagesWide"] = self.fitToPagesWide!
        }
        if self.hidecomments != nil {
            map["Hidecomments"] = self.hidecomments!
        }
        if self.idempotentToken != nil {
            map["IdempotentToken"] = self.idempotentToken!
        }
        if self.maxSheetCol != nil {
            map["MaxSheetCol"] = self.maxSheetCol!
        }
        if self.maxSheetCount != nil {
            map["MaxSheetCount"] = self.maxSheetCount!
        }
        if self.maxSheetRow != nil {
            map["MaxSheetRow"] = self.maxSheetRow!
        }
        if self.modelId != nil {
            map["ModelId"] = self.modelId!
        }
        if self.notifyEndpoint != nil {
            map["NotifyEndpoint"] = self.notifyEndpoint!
        }
        if self.notifyTopicName != nil {
            map["NotifyTopicName"] = self.notifyTopicName!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.pdfVector != nil {
            map["PdfVector"] = self.pdfVector!
        }
        if self.project != nil {
            map["Project"] = self.project!
        }
        if self.sheetOnePage != nil {
            map["SheetOnePage"] = self.sheetOnePage!
        }
        if self.srcType != nil {
            map["SrcType"] = self.srcType!
        }
        if self.srcUri != nil {
            map["SrcUri"] = self.srcUri!
        }
        if self.startPage != nil {
            map["StartPage"] = self.startPage!
        }
        if self.tgtFilePages != nil {
            map["TgtFilePages"] = self.tgtFilePages!
        }
        if self.tgtFilePrefix != nil {
            map["TgtFilePrefix"] = self.tgtFilePrefix!
        }
        if self.tgtFileSuffix != nil {
            map["TgtFileSuffix"] = self.tgtFileSuffix!
        }
        if self.tgtType != nil {
            map["TgtType"] = self.tgtType!
        }
        if self.tgtUri != nil {
            map["TgtUri"] = self.tgtUri!
        }
        if self.userData != nil {
            map["UserData"] = self.userData!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DisplayDpi") {
            self.displayDpi = dict["DisplayDpi"] as! Int32
        }
        if dict.keys.contains("EndPage") {
            self.endPage = dict["EndPage"] as! Int64
        }
        if dict.keys.contains("FitToPagesTall") {
            self.fitToPagesTall = dict["FitToPagesTall"] as! Bool
        }
        if dict.keys.contains("FitToPagesWide") {
            self.fitToPagesWide = dict["FitToPagesWide"] as! Bool
        }
        if dict.keys.contains("Hidecomments") {
            self.hidecomments = dict["Hidecomments"] as! Bool
        }
        if dict.keys.contains("IdempotentToken") {
            self.idempotentToken = dict["IdempotentToken"] as! String
        }
        if dict.keys.contains("MaxSheetCol") {
            self.maxSheetCol = dict["MaxSheetCol"] as! Int64
        }
        if dict.keys.contains("MaxSheetCount") {
            self.maxSheetCount = dict["MaxSheetCount"] as! Int64
        }
        if dict.keys.contains("MaxSheetRow") {
            self.maxSheetRow = dict["MaxSheetRow"] as! Int64
        }
        if dict.keys.contains("ModelId") {
            self.modelId = dict["ModelId"] as! String
        }
        if dict.keys.contains("NotifyEndpoint") {
            self.notifyEndpoint = dict["NotifyEndpoint"] as! String
        }
        if dict.keys.contains("NotifyTopicName") {
            self.notifyTopicName = dict["NotifyTopicName"] as! String
        }
        if dict.keys.contains("Password") {
            self.password = dict["Password"] as! String
        }
        if dict.keys.contains("PdfVector") {
            self.pdfVector = dict["PdfVector"] as! Bool
        }
        if dict.keys.contains("Project") {
            self.project = dict["Project"] as! String
        }
        if dict.keys.contains("SheetOnePage") {
            self.sheetOnePage = dict["SheetOnePage"] as! Bool
        }
        if dict.keys.contains("SrcType") {
            self.srcType = dict["SrcType"] as! String
        }
        if dict.keys.contains("SrcUri") {
            self.srcUri = dict["SrcUri"] as! String
        }
        if dict.keys.contains("StartPage") {
            self.startPage = dict["StartPage"] as! Int64
        }
        if dict.keys.contains("TgtFilePages") {
            self.tgtFilePages = dict["TgtFilePages"] as! String
        }
        if dict.keys.contains("TgtFilePrefix") {
            self.tgtFilePrefix = dict["TgtFilePrefix"] as! String
        }
        if dict.keys.contains("TgtFileSuffix") {
            self.tgtFileSuffix = dict["TgtFileSuffix"] as! String
        }
        if dict.keys.contains("TgtType") {
            self.tgtType = dict["TgtType"] as! String
        }
        if dict.keys.contains("TgtUri") {
            self.tgtUri = dict["TgtUri"] as! String
        }
        if dict.keys.contains("UserData") {
            self.userData = dict["UserData"] as! String
        }
    }
}

public class CreateOfficeConversionTaskResponseBody : Tea.TeaModel {
    public var createTime: String?

    public var percent: Int32?

    public var requestId: String?

    public var status: String?

    public var taskId: String?

    public var tgtLoc: String?

    public override init() {
        super.init()
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
        if self.percent != nil {
            map["Percent"] = self.percent!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.tgtLoc != nil {
            map["TgtLoc"] = self.tgtLoc!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CreateTime") {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("Percent") {
            self.percent = dict["Percent"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("TgtLoc") {
            self.tgtLoc = dict["TgtLoc"] as! String
        }
    }
}

public class CreateOfficeConversionTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateOfficeConversionTaskResponseBody?

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
            var model = CreateOfficeConversionTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateSetRequest : Tea.TeaModel {
    public var project: String?

    public var setId: String?

    public var setName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.project != nil {
            map["Project"] = self.project!
        }
        if self.setId != nil {
            map["SetId"] = self.setId!
        }
        if self.setName != nil {
            map["SetName"] = self.setName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Project") {
            self.project = dict["Project"] as! String
        }
        if dict.keys.contains("SetId") {
            self.setId = dict["SetId"] as! String
        }
        if dict.keys.contains("SetName") {
            self.setName = dict["SetName"] as! String
        }
    }
}

public class CreateSetResponseBody : Tea.TeaModel {
    public var createTime: String?

    public var faceCount: Int32?

    public var imageCount: Int32?

    public var modifyTime: String?

    public var requestId: String?

    public var setId: String?

    public var setName: String?

    public var videoCount: Int32?

    public var videoLength: Int32?

    public override init() {
        super.init()
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
        if self.faceCount != nil {
            map["FaceCount"] = self.faceCount!
        }
        if self.imageCount != nil {
            map["ImageCount"] = self.imageCount!
        }
        if self.modifyTime != nil {
            map["ModifyTime"] = self.modifyTime!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.setId != nil {
            map["SetId"] = self.setId!
        }
        if self.setName != nil {
            map["SetName"] = self.setName!
        }
        if self.videoCount != nil {
            map["VideoCount"] = self.videoCount!
        }
        if self.videoLength != nil {
            map["VideoLength"] = self.videoLength!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CreateTime") {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("FaceCount") {
            self.faceCount = dict["FaceCount"] as! Int32
        }
        if dict.keys.contains("ImageCount") {
            self.imageCount = dict["ImageCount"] as! Int32
        }
        if dict.keys.contains("ModifyTime") {
            self.modifyTime = dict["ModifyTime"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SetId") {
            self.setId = dict["SetId"] as! String
        }
        if dict.keys.contains("SetName") {
            self.setName = dict["SetName"] as! String
        }
        if dict.keys.contains("VideoCount") {
            self.videoCount = dict["VideoCount"] as! Int32
        }
        if dict.keys.contains("VideoLength") {
            self.videoLength = dict["VideoLength"] as! Int32
        }
    }
}

public class CreateSetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSetResponseBody?

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
            var model = CreateSetResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateVideoCompressTaskRequest : Tea.TeaModel {
    public var customMessage: String?

    public var notifyEndpoint: String?

    public var notifyTopicName: String?

    public var project: String?

    public var targetList: String?

    public var targetSegment: String?

    public var targetSubtitle: String?

    public var videoUri: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.customMessage != nil {
            map["CustomMessage"] = self.customMessage!
        }
        if self.notifyEndpoint != nil {
            map["NotifyEndpoint"] = self.notifyEndpoint!
        }
        if self.notifyTopicName != nil {
            map["NotifyTopicName"] = self.notifyTopicName!
        }
        if self.project != nil {
            map["Project"] = self.project!
        }
        if self.targetList != nil {
            map["TargetList"] = self.targetList!
        }
        if self.targetSegment != nil {
            map["TargetSegment"] = self.targetSegment!
        }
        if self.targetSubtitle != nil {
            map["TargetSubtitle"] = self.targetSubtitle!
        }
        if self.videoUri != nil {
            map["VideoUri"] = self.videoUri!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CustomMessage") {
            self.customMessage = dict["CustomMessage"] as! String
        }
        if dict.keys.contains("NotifyEndpoint") {
            self.notifyEndpoint = dict["NotifyEndpoint"] as! String
        }
        if dict.keys.contains("NotifyTopicName") {
            self.notifyTopicName = dict["NotifyTopicName"] as! String
        }
        if dict.keys.contains("Project") {
            self.project = dict["Project"] as! String
        }
        if dict.keys.contains("TargetList") {
            self.targetList = dict["TargetList"] as! String
        }
        if dict.keys.contains("TargetSegment") {
            self.targetSegment = dict["TargetSegment"] as! String
        }
        if dict.keys.contains("TargetSubtitle") {
            self.targetSubtitle = dict["TargetSubtitle"] as! String
        }
        if dict.keys.contains("VideoUri") {
            self.videoUri = dict["VideoUri"] as! String
        }
    }
}

public class CreateVideoCompressTaskResponseBody : Tea.TeaModel {
    public var requestId: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.taskType != nil {
            map["TaskType"] = self.taskType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("TaskType") {
            self.taskType = dict["TaskType"] as! String
        }
    }
}

public class CreateVideoCompressTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateVideoCompressTaskResponseBody?

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
            var model = CreateVideoCompressTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DecodeBlindWatermarkRequest : Tea.TeaModel {
    public var imageQuality: Int32?

    public var imageUri: String?

    public var model: String?

    public var originalImageUri: String?

    public var project: String?

    public var targetUri: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageQuality != nil {
            map["ImageQuality"] = self.imageQuality!
        }
        if self.imageUri != nil {
            map["ImageUri"] = self.imageUri!
        }
        if self.model != nil {
            map["Model"] = self.model!
        }
        if self.originalImageUri != nil {
            map["OriginalImageUri"] = self.originalImageUri!
        }
        if self.project != nil {
            map["Project"] = self.project!
        }
        if self.targetUri != nil {
            map["TargetUri"] = self.targetUri!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ImageQuality") {
            self.imageQuality = dict["ImageQuality"] as! Int32
        }
        if dict.keys.contains("ImageUri") {
            self.imageUri = dict["ImageUri"] as! String
        }
        if dict.keys.contains("Model") {
            self.model = dict["Model"] as! String
        }
        if dict.keys.contains("OriginalImageUri") {
            self.originalImageUri = dict["OriginalImageUri"] as! String
        }
        if dict.keys.contains("Project") {
            self.project = dict["Project"] as! String
        }
        if dict.keys.contains("TargetUri") {
            self.targetUri = dict["TargetUri"] as! String
        }
    }
}

public class DecodeBlindWatermarkResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var targetUri: String?

    public override init() {
        super.init()
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
        if self.targetUri != nil {
            map["TargetUri"] = self.targetUri!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TargetUri") {
            self.targetUri = dict["TargetUri"] as! String
        }
    }
}

public class DecodeBlindWatermarkResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DecodeBlindWatermarkResponseBody?

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
            var model = DecodeBlindWatermarkResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteImageRequest : Tea.TeaModel {
    public var imageUri: String?

    public var project: String?

    public var setId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageUri != nil {
            map["ImageUri"] = self.imageUri!
        }
        if self.project != nil {
            map["Project"] = self.project!
        }
        if self.setId != nil {
            map["SetId"] = self.setId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ImageUri") {
            self.imageUri = dict["ImageUri"] as! String
        }
        if dict.keys.contains("Project") {
            self.project = dict["Project"] as! String
        }
        if dict.keys.contains("SetId") {
            self.setId = dict["SetId"] as! String
        }
    }
}

public class DeleteImageResponseBody : Tea.TeaModel {
    public var imageUri: String?

    public var requestId: String?

    public var setId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageUri != nil {
            map["ImageUri"] = self.imageUri!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.setId != nil {
            map["SetId"] = self.setId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ImageUri") {
            self.imageUri = dict["ImageUri"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SetId") {
            self.setId = dict["SetId"] as! String
        }
    }
}

public class DeleteImageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteImageResponseBody?

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
            var model = DeleteImageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteOfficeConversionTaskRequest : Tea.TeaModel {
    public var project: String?

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
        if self.project != nil {
            map["Project"] = self.project!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Project") {
            self.project = dict["Project"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class DeleteOfficeConversionTaskResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteOfficeConversionTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteOfficeConversionTaskResponseBody?

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
            var model = DeleteOfficeConversionTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteProjectRequest : Tea.TeaModel {
    public var project: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.project != nil {
            map["Project"] = self.project!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Project") {
            self.project = dict["Project"] as! String
        }
    }
}

public class DeleteProjectResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteProjectResponseBody?

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
            var model = DeleteProjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteSetRequest : Tea.TeaModel {
    public var project: String?

    public var setId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.project != nil {
            map["Project"] = self.project!
        }
        if self.setId != nil {
            map["SetId"] = self.setId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Project") {
            self.project = dict["Project"] as! String
        }
        if dict.keys.contains("SetId") {
            self.setId = dict["SetId"] as! String
        }
    }
}

public class DeleteSetResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var setId: String?

    public override init() {
        super.init()
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
        if self.setId != nil {
            map["SetId"] = self.setId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SetId") {
            self.setId = dict["SetId"] as! String
        }
    }
}

public class DeleteSetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteSetResponseBody?

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
            var model = DeleteSetResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteVideoRequest : Tea.TeaModel {
    public var project: String?

    public var resources: Bool?

    public var setId: String?

    public var videoUri: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.project != nil {
            map["Project"] = self.project!
        }
        if self.resources != nil {
            map["Resources"] = self.resources!
        }
        if self.setId != nil {
            map["SetId"] = self.setId!
        }
        if self.videoUri != nil {
            map["VideoUri"] = self.videoUri!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Project") {
            self.project = dict["Project"] as! String
        }
        if dict.keys.contains("Resources") {
            self.resources = dict["Resources"] as! Bool
        }
        if dict.keys.contains("SetId") {
            self.setId = dict["SetId"] as! String
        }
        if dict.keys.contains("VideoUri") {
            self.videoUri = dict["VideoUri"] as! String
        }
    }
}

public class DeleteVideoResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var setId: String?

    public var videoUri: String?

    public override init() {
        super.init()
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
        if self.setId != nil {
            map["SetId"] = self.setId!
        }
        if self.videoUri != nil {
            map["VideoUri"] = self.videoUri!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SetId") {
            self.setId = dict["SetId"] as! String
        }
        if dict.keys.contains("VideoUri") {
            self.videoUri = dict["VideoUri"] as! String
        }
    }
}

public class DeleteVideoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteVideoResponseBody?

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
            var model = DeleteVideoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteVideoTaskRequest : Tea.TeaModel {
    public var project: String?

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
        if self.project != nil {
            map["Project"] = self.project!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.taskType != nil {
            map["TaskType"] = self.taskType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Project") {
            self.project = dict["Project"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("TaskType") {
            self.taskType = dict["TaskType"] as! String
        }
    }
}

public class DeleteVideoTaskResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteVideoTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteVideoTaskResponseBody?

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
            var model = DeleteVideoTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DetectImageBodiesRequest : Tea.TeaModel {
    public var imageUri: String?

    public var project: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageUri != nil {
            map["ImageUri"] = self.imageUri!
        }
        if self.project != nil {
            map["Project"] = self.project!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ImageUri") {
            self.imageUri = dict["ImageUri"] as! String
        }
        if dict.keys.contains("Project") {
            self.project = dict["Project"] as! String
        }
    }
}

public class DetectImageBodiesResponseBody : Tea.TeaModel {
    public class Bodies : Tea.TeaModel {
        public class BodyBoundary : Tea.TeaModel {
            public var height: Int32?

            public var left_: Int32?

            public var top: Int32?

            public var width: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.height != nil {
                    map["Height"] = self.height!
                }
                if self.left_ != nil {
                    map["Left"] = self.left_!
                }
                if self.top != nil {
                    map["Top"] = self.top!
                }
                if self.width != nil {
                    map["Width"] = self.width!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Height") {
                    self.height = dict["Height"] as! Int32
                }
                if dict.keys.contains("Left") {
                    self.left_ = dict["Left"] as! Int32
                }
                if dict.keys.contains("Top") {
                    self.top = dict["Top"] as! Int32
                }
                if dict.keys.contains("Width") {
                    self.width = dict["Width"] as! Int32
                }
            }
        }
        public var bodyBoundary: DetectImageBodiesResponseBody.Bodies.BodyBoundary?

        public var bodyConfidence: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.bodyBoundary?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bodyBoundary != nil {
                map["BodyBoundary"] = self.bodyBoundary?.toMap()
            }
            if self.bodyConfidence != nil {
                map["BodyConfidence"] = self.bodyConfidence!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BodyBoundary") {
                var model = DetectImageBodiesResponseBody.Bodies.BodyBoundary()
                model.fromMap(dict["BodyBoundary"] as! [String: Any])
                self.bodyBoundary = model
            }
            if dict.keys.contains("BodyConfidence") {
                self.bodyConfidence = dict["BodyConfidence"] as! Double
            }
        }
    }
    public var bodies: [DetectImageBodiesResponseBody.Bodies]?

    public var imageUri: String?

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
        if self.bodies != nil {
            var tmp : [Any] = []
            for k in self.bodies! {
                tmp.append(k.toMap())
            }
            map["Bodies"] = tmp
        }
        if self.imageUri != nil {
            map["ImageUri"] = self.imageUri!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Bodies") {
            self.bodies = dict["Bodies"] as! [DetectImageBodiesResponseBody.Bodies]
        }
        if dict.keys.contains("ImageUri") {
            self.imageUri = dict["ImageUri"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DetectImageBodiesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetectImageBodiesResponseBody?

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
            var model = DetectImageBodiesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DetectImageFacesRequest : Tea.TeaModel {
    public var imageUri: String?

    public var project: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageUri != nil {
            map["ImageUri"] = self.imageUri!
        }
        if self.project != nil {
            map["Project"] = self.project!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ImageUri") {
            self.imageUri = dict["ImageUri"] as! String
        }
        if dict.keys.contains("Project") {
            self.project = dict["Project"] as! String
        }
    }
}

public class DetectImageFacesResponseBody : Tea.TeaModel {
    public class Faces : Tea.TeaModel {
        public class EmotionDetails : Tea.TeaModel {
            public var ANGRY: Double?

            public var CALM: Double?

            public var DISGUSTED: Double?

            public var HAPPY: Double?

            public var SAD: Double?

            public var SCARED: Double?

            public var SURPRISED: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.ANGRY != nil {
                    map["ANGRY"] = self.ANGRY!
                }
                if self.CALM != nil {
                    map["CALM"] = self.CALM!
                }
                if self.DISGUSTED != nil {
                    map["DISGUSTED"] = self.DISGUSTED!
                }
                if self.HAPPY != nil {
                    map["HAPPY"] = self.HAPPY!
                }
                if self.SAD != nil {
                    map["SAD"] = self.SAD!
                }
                if self.SCARED != nil {
                    map["SCARED"] = self.SCARED!
                }
                if self.SURPRISED != nil {
                    map["SURPRISED"] = self.SURPRISED!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ANGRY") {
                    self.ANGRY = dict["ANGRY"] as! Double
                }
                if dict.keys.contains("CALM") {
                    self.CALM = dict["CALM"] as! Double
                }
                if dict.keys.contains("DISGUSTED") {
                    self.DISGUSTED = dict["DISGUSTED"] as! Double
                }
                if dict.keys.contains("HAPPY") {
                    self.HAPPY = dict["HAPPY"] as! Double
                }
                if dict.keys.contains("SAD") {
                    self.SAD = dict["SAD"] as! Double
                }
                if dict.keys.contains("SCARED") {
                    self.SCARED = dict["SCARED"] as! Double
                }
                if dict.keys.contains("SURPRISED") {
                    self.SURPRISED = dict["SURPRISED"] as! Double
                }
            }
        }
        public class FaceAttributes : Tea.TeaModel {
            public class FaceBoundary : Tea.TeaModel {
                public var height: Int32?

                public var left_: Int32?

                public var top: Int32?

                public var width: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.height != nil {
                        map["Height"] = self.height!
                    }
                    if self.left_ != nil {
                        map["Left"] = self.left_!
                    }
                    if self.top != nil {
                        map["Top"] = self.top!
                    }
                    if self.width != nil {
                        map["Width"] = self.width!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Height") {
                        self.height = dict["Height"] as! Int32
                    }
                    if dict.keys.contains("Left") {
                        self.left_ = dict["Left"] as! Int32
                    }
                    if dict.keys.contains("Top") {
                        self.top = dict["Top"] as! Int32
                    }
                    if dict.keys.contains("Width") {
                        self.width = dict["Width"] as! Int32
                    }
                }
            }
            public class HeadPose : Tea.TeaModel {
                public var pitch: Double?

                public var roll: Double?

                public var yaw: Double?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.pitch != nil {
                        map["Pitch"] = self.pitch!
                    }
                    if self.roll != nil {
                        map["Roll"] = self.roll!
                    }
                    if self.yaw != nil {
                        map["Yaw"] = self.yaw!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Pitch") {
                        self.pitch = dict["Pitch"] as! Double
                    }
                    if dict.keys.contains("Roll") {
                        self.roll = dict["Roll"] as! Double
                    }
                    if dict.keys.contains("Yaw") {
                        self.yaw = dict["Yaw"] as! Double
                    }
                }
            }
            public var beard: String?

            public var beardConfidence: Double?

            public var faceBoundary: DetectImageFacesResponseBody.Faces.FaceAttributes.FaceBoundary?

            public var glasses: String?

            public var glassesConfidence: Double?

            public var headPose: DetectImageFacesResponseBody.Faces.FaceAttributes.HeadPose?

            public var mask: String?

            public var maskConfidence: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.faceBoundary?.validate()
                try self.headPose?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.beard != nil {
                    map["Beard"] = self.beard!
                }
                if self.beardConfidence != nil {
                    map["BeardConfidence"] = self.beardConfidence!
                }
                if self.faceBoundary != nil {
                    map["FaceBoundary"] = self.faceBoundary?.toMap()
                }
                if self.glasses != nil {
                    map["Glasses"] = self.glasses!
                }
                if self.glassesConfidence != nil {
                    map["GlassesConfidence"] = self.glassesConfidence!
                }
                if self.headPose != nil {
                    map["HeadPose"] = self.headPose?.toMap()
                }
                if self.mask != nil {
                    map["Mask"] = self.mask!
                }
                if self.maskConfidence != nil {
                    map["MaskConfidence"] = self.maskConfidence!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Beard") {
                    self.beard = dict["Beard"] as! String
                }
                if dict.keys.contains("BeardConfidence") {
                    self.beardConfidence = dict["BeardConfidence"] as! Double
                }
                if dict.keys.contains("FaceBoundary") {
                    var model = DetectImageFacesResponseBody.Faces.FaceAttributes.FaceBoundary()
                    model.fromMap(dict["FaceBoundary"] as! [String: Any])
                    self.faceBoundary = model
                }
                if dict.keys.contains("Glasses") {
                    self.glasses = dict["Glasses"] as! String
                }
                if dict.keys.contains("GlassesConfidence") {
                    self.glassesConfidence = dict["GlassesConfidence"] as! Double
                }
                if dict.keys.contains("HeadPose") {
                    var model = DetectImageFacesResponseBody.Faces.FaceAttributes.HeadPose()
                    model.fromMap(dict["HeadPose"] as! [String: Any])
                    self.headPose = model
                }
                if dict.keys.contains("Mask") {
                    self.mask = dict["Mask"] as! String
                }
                if dict.keys.contains("MaskConfidence") {
                    self.maskConfidence = dict["MaskConfidence"] as! Double
                }
            }
        }
        public var age: Int32?

        public var ageConfidence: Double?

        public var attractive: Double?

        public var attractiveConfidence: Double?

        public var emotion: String?

        public var emotionConfidence: Double?

        public var emotionDetails: DetectImageFacesResponseBody.Faces.EmotionDetails?

        public var faceAttributes: DetectImageFacesResponseBody.Faces.FaceAttributes?

        public var faceConfidence: Double?

        public var faceId: String?

        public var faceQuality: Double?

        public var gender: String?

        public var genderConfidence: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.emotionDetails?.validate()
            try self.faceAttributes?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.age != nil {
                map["Age"] = self.age!
            }
            if self.ageConfidence != nil {
                map["AgeConfidence"] = self.ageConfidence!
            }
            if self.attractive != nil {
                map["Attractive"] = self.attractive!
            }
            if self.attractiveConfidence != nil {
                map["AttractiveConfidence"] = self.attractiveConfidence!
            }
            if self.emotion != nil {
                map["Emotion"] = self.emotion!
            }
            if self.emotionConfidence != nil {
                map["EmotionConfidence"] = self.emotionConfidence!
            }
            if self.emotionDetails != nil {
                map["EmotionDetails"] = self.emotionDetails?.toMap()
            }
            if self.faceAttributes != nil {
                map["FaceAttributes"] = self.faceAttributes?.toMap()
            }
            if self.faceConfidence != nil {
                map["FaceConfidence"] = self.faceConfidence!
            }
            if self.faceId != nil {
                map["FaceId"] = self.faceId!
            }
            if self.faceQuality != nil {
                map["FaceQuality"] = self.faceQuality!
            }
            if self.gender != nil {
                map["Gender"] = self.gender!
            }
            if self.genderConfidence != nil {
                map["GenderConfidence"] = self.genderConfidence!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Age") {
                self.age = dict["Age"] as! Int32
            }
            if dict.keys.contains("AgeConfidence") {
                self.ageConfidence = dict["AgeConfidence"] as! Double
            }
            if dict.keys.contains("Attractive") {
                self.attractive = dict["Attractive"] as! Double
            }
            if dict.keys.contains("AttractiveConfidence") {
                self.attractiveConfidence = dict["AttractiveConfidence"] as! Double
            }
            if dict.keys.contains("Emotion") {
                self.emotion = dict["Emotion"] as! String
            }
            if dict.keys.contains("EmotionConfidence") {
                self.emotionConfidence = dict["EmotionConfidence"] as! Double
            }
            if dict.keys.contains("EmotionDetails") {
                var model = DetectImageFacesResponseBody.Faces.EmotionDetails()
                model.fromMap(dict["EmotionDetails"] as! [String: Any])
                self.emotionDetails = model
            }
            if dict.keys.contains("FaceAttributes") {
                var model = DetectImageFacesResponseBody.Faces.FaceAttributes()
                model.fromMap(dict["FaceAttributes"] as! [String: Any])
                self.faceAttributes = model
            }
            if dict.keys.contains("FaceConfidence") {
                self.faceConfidence = dict["FaceConfidence"] as! Double
            }
            if dict.keys.contains("FaceId") {
                self.faceId = dict["FaceId"] as! String
            }
            if dict.keys.contains("FaceQuality") {
                self.faceQuality = dict["FaceQuality"] as! Double
            }
            if dict.keys.contains("Gender") {
                self.gender = dict["Gender"] as! String
            }
            if dict.keys.contains("GenderConfidence") {
                self.genderConfidence = dict["GenderConfidence"] as! Double
            }
        }
    }
    public var faces: [DetectImageFacesResponseBody.Faces]?

    public var imageUri: String?

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
        if self.faces != nil {
            var tmp : [Any] = []
            for k in self.faces! {
                tmp.append(k.toMap())
            }
            map["Faces"] = tmp
        }
        if self.imageUri != nil {
            map["ImageUri"] = self.imageUri!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Faces") {
            self.faces = dict["Faces"] as! [DetectImageFacesResponseBody.Faces]
        }
        if dict.keys.contains("ImageUri") {
            self.imageUri = dict["ImageUri"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DetectImageFacesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetectImageFacesResponseBody?

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
            var model = DetectImageFacesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DetectImageQRCodesRequest : Tea.TeaModel {
    public var imageUri: String?

    public var project: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageUri != nil {
            map["ImageUri"] = self.imageUri!
        }
        if self.project != nil {
            map["Project"] = self.project!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ImageUri") {
            self.imageUri = dict["ImageUri"] as! String
        }
        if dict.keys.contains("Project") {
            self.project = dict["Project"] as! String
        }
    }
}

public class DetectImageQRCodesResponseBody : Tea.TeaModel {
    public class QRCodes : Tea.TeaModel {
        public class QRCodeBoundary : Tea.TeaModel {
            public var height: Int32?

            public var left_: Int32?

            public var top: Int32?

            public var width: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.height != nil {
                    map["Height"] = self.height!
                }
                if self.left_ != nil {
                    map["Left"] = self.left_!
                }
                if self.top != nil {
                    map["Top"] = self.top!
                }
                if self.width != nil {
                    map["Width"] = self.width!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Height") {
                    self.height = dict["Height"] as! Int32
                }
                if dict.keys.contains("Left") {
                    self.left_ = dict["Left"] as! Int32
                }
                if dict.keys.contains("Top") {
                    self.top = dict["Top"] as! Int32
                }
                if dict.keys.contains("Width") {
                    self.width = dict["Width"] as! Int32
                }
            }
        }
        public var content: String?

        public var QRCodeBoundary: DetectImageQRCodesResponseBody.QRCodes.QRCodeBoundary?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.QRCodeBoundary?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.content != nil {
                map["Content"] = self.content!
            }
            if self.QRCodeBoundary != nil {
                map["QRCodeBoundary"] = self.QRCodeBoundary?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Content") {
                self.content = dict["Content"] as! String
            }
            if dict.keys.contains("QRCodeBoundary") {
                var model = DetectImageQRCodesResponseBody.QRCodes.QRCodeBoundary()
                model.fromMap(dict["QRCodeBoundary"] as! [String: Any])
                self.QRCodeBoundary = model
            }
        }
    }
    public var imageUri: String?

    public var QRCodes: [DetectImageQRCodesResponseBody.QRCodes]?

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
        if self.imageUri != nil {
            map["ImageUri"] = self.imageUri!
        }
        if self.QRCodes != nil {
            var tmp : [Any] = []
            for k in self.QRCodes! {
                tmp.append(k.toMap())
            }
            map["QRCodes"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ImageUri") {
            self.imageUri = dict["ImageUri"] as! String
        }
        if dict.keys.contains("QRCodes") {
            self.QRCodes = dict["QRCodes"] as! [DetectImageQRCodesResponseBody.QRCodes]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DetectImageQRCodesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetectImageQRCodesResponseBody?

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
            var model = DetectImageQRCodesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DetectImageTagsRequest : Tea.TeaModel {
    public var imageUri: String?

    public var project: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageUri != nil {
            map["ImageUri"] = self.imageUri!
        }
        if self.project != nil {
            map["Project"] = self.project!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ImageUri") {
            self.imageUri = dict["ImageUri"] as! String
        }
        if dict.keys.contains("Project") {
            self.project = dict["Project"] as! String
        }
    }
}

public class DetectImageTagsResponseBody : Tea.TeaModel {
    public class Tags : Tea.TeaModel {
        public var centricScore: Double?

        public var parentTagEnName: String?

        public var parentTagName: String?

        public var tagConfidence: Double?

        public var tagEnName: String?

        public var tagLevel: Int32?

        public var tagName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.centricScore != nil {
                map["CentricScore"] = self.centricScore!
            }
            if self.parentTagEnName != nil {
                map["ParentTagEnName"] = self.parentTagEnName!
            }
            if self.parentTagName != nil {
                map["ParentTagName"] = self.parentTagName!
            }
            if self.tagConfidence != nil {
                map["TagConfidence"] = self.tagConfidence!
            }
            if self.tagEnName != nil {
                map["TagEnName"] = self.tagEnName!
            }
            if self.tagLevel != nil {
                map["TagLevel"] = self.tagLevel!
            }
            if self.tagName != nil {
                map["TagName"] = self.tagName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CentricScore") {
                self.centricScore = dict["CentricScore"] as! Double
            }
            if dict.keys.contains("ParentTagEnName") {
                self.parentTagEnName = dict["ParentTagEnName"] as! String
            }
            if dict.keys.contains("ParentTagName") {
                self.parentTagName = dict["ParentTagName"] as! String
            }
            if dict.keys.contains("TagConfidence") {
                self.tagConfidence = dict["TagConfidence"] as! Double
            }
            if dict.keys.contains("TagEnName") {
                self.tagEnName = dict["TagEnName"] as! String
            }
            if dict.keys.contains("TagLevel") {
                self.tagLevel = dict["TagLevel"] as! Int32
            }
            if dict.keys.contains("TagName") {
                self.tagName = dict["TagName"] as! String
            }
        }
    }
    public var imageUri: String?

    public var requestId: String?

    public var tags: [DetectImageTagsResponseBody.Tags]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageUri != nil {
            map["ImageUri"] = self.imageUri!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["Tags"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ImageUri") {
            self.imageUri = dict["ImageUri"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! [DetectImageTagsResponseBody.Tags]
        }
    }
}

public class DetectImageTagsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetectImageTagsResponseBody?

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
            var model = DetectImageTagsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DetectQRCodesRequest : Tea.TeaModel {
    public var project: String?

    public var srcUris: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.project != nil {
            map["Project"] = self.project!
        }
        if self.srcUris != nil {
            map["SrcUris"] = self.srcUris!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Project") {
            self.project = dict["Project"] as! String
        }
        if dict.keys.contains("SrcUris") {
            self.srcUris = dict["SrcUris"] as! String
        }
    }
}

public class DetectQRCodesResponseBody : Tea.TeaModel {
    public class FailDetails : Tea.TeaModel {
        public var errorCode: String?

        public var errorMessage: String?

        public var srcUri: String?

        public override init() {
            super.init()
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
            if self.srcUri != nil {
                map["SrcUri"] = self.srcUri!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ErrorCode") {
                self.errorCode = dict["ErrorCode"] as! String
            }
            if dict.keys.contains("ErrorMessage") {
                self.errorMessage = dict["ErrorMessage"] as! String
            }
            if dict.keys.contains("SrcUri") {
                self.srcUri = dict["SrcUri"] as! String
            }
        }
    }
    public class SuccessDetails : Tea.TeaModel {
        public class QRCodes : Tea.TeaModel {
            public class QRCodesRectangle : Tea.TeaModel {
                public var height: String?

                public var left_: String?

                public var top: String?

                public var width: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.height != nil {
                        map["Height"] = self.height!
                    }
                    if self.left_ != nil {
                        map["Left"] = self.left_!
                    }
                    if self.top != nil {
                        map["Top"] = self.top!
                    }
                    if self.width != nil {
                        map["Width"] = self.width!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Height") {
                        self.height = dict["Height"] as! String
                    }
                    if dict.keys.contains("Left") {
                        self.left_ = dict["Left"] as! String
                    }
                    if dict.keys.contains("Top") {
                        self.top = dict["Top"] as! String
                    }
                    if dict.keys.contains("Width") {
                        self.width = dict["Width"] as! String
                    }
                }
            }
            public var content: String?

            public var QRCodesRectangle: DetectQRCodesResponseBody.SuccessDetails.QRCodes.QRCodesRectangle?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.QRCodesRectangle?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.content != nil {
                    map["Content"] = self.content!
                }
                if self.QRCodesRectangle != nil {
                    map["QRCodesRectangle"] = self.QRCodesRectangle?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Content") {
                    self.content = dict["Content"] as! String
                }
                if dict.keys.contains("QRCodesRectangle") {
                    var model = DetectQRCodesResponseBody.SuccessDetails.QRCodes.QRCodesRectangle()
                    model.fromMap(dict["QRCodesRectangle"] as! [String: Any])
                    self.QRCodesRectangle = model
                }
            }
        }
        public var QRCodes: [DetectQRCodesResponseBody.SuccessDetails.QRCodes]?

        public var srcUri: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.QRCodes != nil {
                var tmp : [Any] = []
                for k in self.QRCodes! {
                    tmp.append(k.toMap())
                }
                map["QRCodes"] = tmp
            }
            if self.srcUri != nil {
                map["SrcUri"] = self.srcUri!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("QRCodes") {
                self.QRCodes = dict["QRCodes"] as! [DetectQRCodesResponseBody.SuccessDetails.QRCodes]
            }
            if dict.keys.contains("SrcUri") {
                self.srcUri = dict["SrcUri"] as! String
            }
        }
    }
    public var failDetails: [DetectQRCodesResponseBody.FailDetails]?

    public var requestId: String?

    public var successDetails: [DetectQRCodesResponseBody.SuccessDetails]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.failDetails != nil {
            var tmp : [Any] = []
            for k in self.failDetails! {
                tmp.append(k.toMap())
            }
            map["FailDetails"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.successDetails != nil {
            var tmp : [Any] = []
            for k in self.successDetails! {
                tmp.append(k.toMap())
            }
            map["SuccessDetails"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FailDetails") {
            self.failDetails = dict["FailDetails"] as! [DetectQRCodesResponseBody.FailDetails]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SuccessDetails") {
            self.successDetails = dict["SuccessDetails"] as! [DetectQRCodesResponseBody.SuccessDetails]
        }
    }
}

public class DetectQRCodesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetectQRCodesResponseBody?

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
            var model = DetectQRCodesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class EncodeBlindWatermarkRequest : Tea.TeaModel {
    public var content: String?

    public var imageQuality: String?

    public var imageUri: String?

    public var model: String?

    public var project: String?

    public var targetImageType: String?

    public var targetUri: String?

    public var watermarkUri: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.imageQuality != nil {
            map["ImageQuality"] = self.imageQuality!
        }
        if self.imageUri != nil {
            map["ImageUri"] = self.imageUri!
        }
        if self.model != nil {
            map["Model"] = self.model!
        }
        if self.project != nil {
            map["Project"] = self.project!
        }
        if self.targetImageType != nil {
            map["TargetImageType"] = self.targetImageType!
        }
        if self.targetUri != nil {
            map["TargetUri"] = self.targetUri!
        }
        if self.watermarkUri != nil {
            map["WatermarkUri"] = self.watermarkUri!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Content") {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("ImageQuality") {
            self.imageQuality = dict["ImageQuality"] as! String
        }
        if dict.keys.contains("ImageUri") {
            self.imageUri = dict["ImageUri"] as! String
        }
        if dict.keys.contains("Model") {
            self.model = dict["Model"] as! String
        }
        if dict.keys.contains("Project") {
            self.project = dict["Project"] as! String
        }
        if dict.keys.contains("TargetImageType") {
            self.targetImageType = dict["TargetImageType"] as! String
        }
        if dict.keys.contains("TargetUri") {
            self.targetUri = dict["TargetUri"] as! String
        }
        if dict.keys.contains("WatermarkUri") {
            self.watermarkUri = dict["WatermarkUri"] as! String
        }
    }
}

public class EncodeBlindWatermarkResponseBody : Tea.TeaModel {
    public var content: String?

    public var requestId: String?

    public var targetUri: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.targetUri != nil {
            map["TargetUri"] = self.targetUri!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Content") {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TargetUri") {
            self.targetUri = dict["TargetUri"] as! String
        }
    }
}

public class EncodeBlindWatermarkResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EncodeBlindWatermarkResponseBody?

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
            var model = EncodeBlindWatermarkResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class FindImagesRequest : Tea.TeaModel {
    public var addressLineContentsMatch: String?

    public var ageRange: String?

    public var createTimeRange: String?

    public var emotion: String?

    public var externalId: String?

    public var facesModifyTimeRange: String?

    public var gender: String?

    public var groupId: String?

    public var imageSizeRange: String?

    public var imageTimeRange: String?

    public var limit: Int32?

    public var locationBoundary: String?

    public var marker: String?

    public var modifyTimeRange: String?

    public var OCRContentsMatch: String?

    public var order: String?

    public var orderBy: String?

    public var project: String?

    public var remarksAPrefix: String?

    public var remarksArrayAIn: String?

    public var remarksArrayBIn: String?

    public var remarksBPrefix: String?

    public var remarksCPrefix: String?

    public var remarksDPrefix: String?

    public var setId: String?

    public var sourceType: String?

    public var sourceUriPrefix: String?

    public var tagNames: String?

    public var tagsModifyTimeRange: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.addressLineContentsMatch != nil {
            map["AddressLineContentsMatch"] = self.addressLineContentsMatch!
        }
        if self.ageRange != nil {
            map["AgeRange"] = self.ageRange!
        }
        if self.createTimeRange != nil {
            map["CreateTimeRange"] = self.createTimeRange!
        }
        if self.emotion != nil {
            map["Emotion"] = self.emotion!
        }
        if self.externalId != nil {
            map["ExternalId"] = self.externalId!
        }
        if self.facesModifyTimeRange != nil {
            map["FacesModifyTimeRange"] = self.facesModifyTimeRange!
        }
        if self.gender != nil {
            map["Gender"] = self.gender!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.imageSizeRange != nil {
            map["ImageSizeRange"] = self.imageSizeRange!
        }
        if self.imageTimeRange != nil {
            map["ImageTimeRange"] = self.imageTimeRange!
        }
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.locationBoundary != nil {
            map["LocationBoundary"] = self.locationBoundary!
        }
        if self.marker != nil {
            map["Marker"] = self.marker!
        }
        if self.modifyTimeRange != nil {
            map["ModifyTimeRange"] = self.modifyTimeRange!
        }
        if self.OCRContentsMatch != nil {
            map["OCRContentsMatch"] = self.OCRContentsMatch!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.orderBy != nil {
            map["OrderBy"] = self.orderBy!
        }
        if self.project != nil {
            map["Project"] = self.project!
        }
        if self.remarksAPrefix != nil {
            map["RemarksAPrefix"] = self.remarksAPrefix!
        }
        if self.remarksArrayAIn != nil {
            map["RemarksArrayAIn"] = self.remarksArrayAIn!
        }
        if self.remarksArrayBIn != nil {
            map["RemarksArrayBIn"] = self.remarksArrayBIn!
        }
        if self.remarksBPrefix != nil {
            map["RemarksBPrefix"] = self.remarksBPrefix!
        }
        if self.remarksCPrefix != nil {
            map["RemarksCPrefix"] = self.remarksCPrefix!
        }
        if self.remarksDPrefix != nil {
            map["RemarksDPrefix"] = self.remarksDPrefix!
        }
        if self.setId != nil {
            map["SetId"] = self.setId!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        if self.sourceUriPrefix != nil {
            map["SourceUriPrefix"] = self.sourceUriPrefix!
        }
        if self.tagNames != nil {
            map["TagNames"] = self.tagNames!
        }
        if self.tagsModifyTimeRange != nil {
            map["TagsModifyTimeRange"] = self.tagsModifyTimeRange!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AddressLineContentsMatch") {
            self.addressLineContentsMatch = dict["AddressLineContentsMatch"] as! String
        }
        if dict.keys.contains("AgeRange") {
            self.ageRange = dict["AgeRange"] as! String
        }
        if dict.keys.contains("CreateTimeRange") {
            self.createTimeRange = dict["CreateTimeRange"] as! String
        }
        if dict.keys.contains("Emotion") {
            self.emotion = dict["Emotion"] as! String
        }
        if dict.keys.contains("ExternalId") {
            self.externalId = dict["ExternalId"] as! String
        }
        if dict.keys.contains("FacesModifyTimeRange") {
            self.facesModifyTimeRange = dict["FacesModifyTimeRange"] as! String
        }
        if dict.keys.contains("Gender") {
            self.gender = dict["Gender"] as! String
        }
        if dict.keys.contains("GroupId") {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("ImageSizeRange") {
            self.imageSizeRange = dict["ImageSizeRange"] as! String
        }
        if dict.keys.contains("ImageTimeRange") {
            self.imageTimeRange = dict["ImageTimeRange"] as! String
        }
        if dict.keys.contains("Limit") {
            self.limit = dict["Limit"] as! Int32
        }
        if dict.keys.contains("LocationBoundary") {
            self.locationBoundary = dict["LocationBoundary"] as! String
        }
        if dict.keys.contains("Marker") {
            self.marker = dict["Marker"] as! String
        }
        if dict.keys.contains("ModifyTimeRange") {
            self.modifyTimeRange = dict["ModifyTimeRange"] as! String
        }
        if dict.keys.contains("OCRContentsMatch") {
            self.OCRContentsMatch = dict["OCRContentsMatch"] as! String
        }
        if dict.keys.contains("Order") {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("OrderBy") {
            self.orderBy = dict["OrderBy"] as! String
        }
        if dict.keys.contains("Project") {
            self.project = dict["Project"] as! String
        }
        if dict.keys.contains("RemarksAPrefix") {
            self.remarksAPrefix = dict["RemarksAPrefix"] as! String
        }
        if dict.keys.contains("RemarksArrayAIn") {
            self.remarksArrayAIn = dict["RemarksArrayAIn"] as! String
        }
        if dict.keys.contains("RemarksArrayBIn") {
            self.remarksArrayBIn = dict["RemarksArrayBIn"] as! String
        }
        if dict.keys.contains("RemarksBPrefix") {
            self.remarksBPrefix = dict["RemarksBPrefix"] as! String
        }
        if dict.keys.contains("RemarksCPrefix") {
            self.remarksCPrefix = dict["RemarksCPrefix"] as! String
        }
        if dict.keys.contains("RemarksDPrefix") {
            self.remarksDPrefix = dict["RemarksDPrefix"] as! String
        }
        if dict.keys.contains("SetId") {
            self.setId = dict["SetId"] as! String
        }
        if dict.keys.contains("SourceType") {
            self.sourceType = dict["SourceType"] as! String
        }
        if dict.keys.contains("SourceUriPrefix") {
            self.sourceUriPrefix = dict["SourceUriPrefix"] as! String
        }
        if dict.keys.contains("TagNames") {
            self.tagNames = dict["TagNames"] as! String
        }
        if dict.keys.contains("TagsModifyTimeRange") {
            self.tagsModifyTimeRange = dict["TagsModifyTimeRange"] as! String
        }
    }
}

public class FindImagesResponseBody : Tea.TeaModel {
    public class Images : Tea.TeaModel {
        public class Address : Tea.TeaModel {
            public var addressLine: String?

            public var city: String?

            public var country: String?

            public var district: String?

            public var province: String?

            public var township: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.addressLine != nil {
                    map["AddressLine"] = self.addressLine!
                }
                if self.city != nil {
                    map["City"] = self.city!
                }
                if self.country != nil {
                    map["Country"] = self.country!
                }
                if self.district != nil {
                    map["District"] = self.district!
                }
                if self.province != nil {
                    map["Province"] = self.province!
                }
                if self.township != nil {
                    map["Township"] = self.township!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AddressLine") {
                    self.addressLine = dict["AddressLine"] as! String
                }
                if dict.keys.contains("City") {
                    self.city = dict["City"] as! String
                }
                if dict.keys.contains("Country") {
                    self.country = dict["Country"] as! String
                }
                if dict.keys.contains("District") {
                    self.district = dict["District"] as! String
                }
                if dict.keys.contains("Province") {
                    self.province = dict["Province"] as! String
                }
                if dict.keys.contains("Township") {
                    self.township = dict["Township"] as! String
                }
            }
        }
        public class CroppingSuggestion : Tea.TeaModel {
            public class CroppingBoundary : Tea.TeaModel {
                public var height: Int32?

                public var left_: Int32?

                public var top: Int32?

                public var width: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.height != nil {
                        map["Height"] = self.height!
                    }
                    if self.left_ != nil {
                        map["Left"] = self.left_!
                    }
                    if self.top != nil {
                        map["Top"] = self.top!
                    }
                    if self.width != nil {
                        map["Width"] = self.width!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Height") {
                        self.height = dict["Height"] as! Int32
                    }
                    if dict.keys.contains("Left") {
                        self.left_ = dict["Left"] as! Int32
                    }
                    if dict.keys.contains("Top") {
                        self.top = dict["Top"] as! Int32
                    }
                    if dict.keys.contains("Width") {
                        self.width = dict["Width"] as! Int32
                    }
                }
            }
            public var aspectRatio: String?

            public var croppingBoundary: FindImagesResponseBody.Images.CroppingSuggestion.CroppingBoundary?

            public var score: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.croppingBoundary?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.aspectRatio != nil {
                    map["AspectRatio"] = self.aspectRatio!
                }
                if self.croppingBoundary != nil {
                    map["CroppingBoundary"] = self.croppingBoundary?.toMap()
                }
                if self.score != nil {
                    map["Score"] = self.score!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AspectRatio") {
                    self.aspectRatio = dict["AspectRatio"] as! String
                }
                if dict.keys.contains("CroppingBoundary") {
                    var model = FindImagesResponseBody.Images.CroppingSuggestion.CroppingBoundary()
                    model.fromMap(dict["CroppingBoundary"] as! [String: Any])
                    self.croppingBoundary = model
                }
                if dict.keys.contains("Score") {
                    self.score = dict["Score"] as! Double
                }
            }
        }
        public class Faces : Tea.TeaModel {
            public class EmotionDetails : Tea.TeaModel {
                public var ANGRY: Double?

                public var CALM: Double?

                public var DISGUSTED: Double?

                public var HAPPY: Double?

                public var SAD: Double?

                public var SCARED: Double?

                public var SURPRISED: Double?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.ANGRY != nil {
                        map["ANGRY"] = self.ANGRY!
                    }
                    if self.CALM != nil {
                        map["CALM"] = self.CALM!
                    }
                    if self.DISGUSTED != nil {
                        map["DISGUSTED"] = self.DISGUSTED!
                    }
                    if self.HAPPY != nil {
                        map["HAPPY"] = self.HAPPY!
                    }
                    if self.SAD != nil {
                        map["SAD"] = self.SAD!
                    }
                    if self.SCARED != nil {
                        map["SCARED"] = self.SCARED!
                    }
                    if self.SURPRISED != nil {
                        map["SURPRISED"] = self.SURPRISED!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ANGRY") {
                        self.ANGRY = dict["ANGRY"] as! Double
                    }
                    if dict.keys.contains("CALM") {
                        self.CALM = dict["CALM"] as! Double
                    }
                    if dict.keys.contains("DISGUSTED") {
                        self.DISGUSTED = dict["DISGUSTED"] as! Double
                    }
                    if dict.keys.contains("HAPPY") {
                        self.HAPPY = dict["HAPPY"] as! Double
                    }
                    if dict.keys.contains("SAD") {
                        self.SAD = dict["SAD"] as! Double
                    }
                    if dict.keys.contains("SCARED") {
                        self.SCARED = dict["SCARED"] as! Double
                    }
                    if dict.keys.contains("SURPRISED") {
                        self.SURPRISED = dict["SURPRISED"] as! Double
                    }
                }
            }
            public class FaceAttributes : Tea.TeaModel {
                public class FaceBoundary : Tea.TeaModel {
                    public var height: Int32?

                    public var left_: Int32?

                    public var top: Int32?

                    public var width: Int32?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.height != nil {
                            map["Height"] = self.height!
                        }
                        if self.left_ != nil {
                            map["Left"] = self.left_!
                        }
                        if self.top != nil {
                            map["Top"] = self.top!
                        }
                        if self.width != nil {
                            map["Width"] = self.width!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Height") {
                            self.height = dict["Height"] as! Int32
                        }
                        if dict.keys.contains("Left") {
                            self.left_ = dict["Left"] as! Int32
                        }
                        if dict.keys.contains("Top") {
                            self.top = dict["Top"] as! Int32
                        }
                        if dict.keys.contains("Width") {
                            self.width = dict["Width"] as! Int32
                        }
                    }
                }
                public class HeadPose : Tea.TeaModel {
                    public var pitch: Double?

                    public var roll: Double?

                    public var yaw: Double?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.pitch != nil {
                            map["Pitch"] = self.pitch!
                        }
                        if self.roll != nil {
                            map["Roll"] = self.roll!
                        }
                        if self.yaw != nil {
                            map["Yaw"] = self.yaw!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Pitch") {
                            self.pitch = dict["Pitch"] as! Double
                        }
                        if dict.keys.contains("Roll") {
                            self.roll = dict["Roll"] as! Double
                        }
                        if dict.keys.contains("Yaw") {
                            self.yaw = dict["Yaw"] as! Double
                        }
                    }
                }
                public var beard: String?

                public var beardConfidence: Double?

                public var faceBoundary: FindImagesResponseBody.Images.Faces.FaceAttributes.FaceBoundary?

                public var glasses: String?

                public var glassesConfidence: Double?

                public var headPose: FindImagesResponseBody.Images.Faces.FaceAttributes.HeadPose?

                public var mask: String?

                public var maskConfidence: Double?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.faceBoundary?.validate()
                    try self.headPose?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.beard != nil {
                        map["Beard"] = self.beard!
                    }
                    if self.beardConfidence != nil {
                        map["BeardConfidence"] = self.beardConfidence!
                    }
                    if self.faceBoundary != nil {
                        map["FaceBoundary"] = self.faceBoundary?.toMap()
                    }
                    if self.glasses != nil {
                        map["Glasses"] = self.glasses!
                    }
                    if self.glassesConfidence != nil {
                        map["GlassesConfidence"] = self.glassesConfidence!
                    }
                    if self.headPose != nil {
                        map["HeadPose"] = self.headPose?.toMap()
                    }
                    if self.mask != nil {
                        map["Mask"] = self.mask!
                    }
                    if self.maskConfidence != nil {
                        map["MaskConfidence"] = self.maskConfidence!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Beard") {
                        self.beard = dict["Beard"] as! String
                    }
                    if dict.keys.contains("BeardConfidence") {
                        self.beardConfidence = dict["BeardConfidence"] as! Double
                    }
                    if dict.keys.contains("FaceBoundary") {
                        var model = FindImagesResponseBody.Images.Faces.FaceAttributes.FaceBoundary()
                        model.fromMap(dict["FaceBoundary"] as! [String: Any])
                        self.faceBoundary = model
                    }
                    if dict.keys.contains("Glasses") {
                        self.glasses = dict["Glasses"] as! String
                    }
                    if dict.keys.contains("GlassesConfidence") {
                        self.glassesConfidence = dict["GlassesConfidence"] as! Double
                    }
                    if dict.keys.contains("HeadPose") {
                        var model = FindImagesResponseBody.Images.Faces.FaceAttributes.HeadPose()
                        model.fromMap(dict["HeadPose"] as! [String: Any])
                        self.headPose = model
                    }
                    if dict.keys.contains("Mask") {
                        self.mask = dict["Mask"] as! String
                    }
                    if dict.keys.contains("MaskConfidence") {
                        self.maskConfidence = dict["MaskConfidence"] as! Double
                    }
                }
            }
            public var age: Int32?

            public var attractive: Double?

            public var emotion: String?

            public var emotionConfidence: Double?

            public var emotionDetails: FindImagesResponseBody.Images.Faces.EmotionDetails?

            public var faceAttributes: FindImagesResponseBody.Images.Faces.FaceAttributes?

            public var faceConfidence: Double?

            public var faceId: String?

            public var faceQuality: Double?

            public var gender: String?

            public var genderConfidence: Double?

            public var groupId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.emotionDetails?.validate()
                try self.faceAttributes?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.age != nil {
                    map["Age"] = self.age!
                }
                if self.attractive != nil {
                    map["Attractive"] = self.attractive!
                }
                if self.emotion != nil {
                    map["Emotion"] = self.emotion!
                }
                if self.emotionConfidence != nil {
                    map["EmotionConfidence"] = self.emotionConfidence!
                }
                if self.emotionDetails != nil {
                    map["EmotionDetails"] = self.emotionDetails?.toMap()
                }
                if self.faceAttributes != nil {
                    map["FaceAttributes"] = self.faceAttributes?.toMap()
                }
                if self.faceConfidence != nil {
                    map["FaceConfidence"] = self.faceConfidence!
                }
                if self.faceId != nil {
                    map["FaceId"] = self.faceId!
                }
                if self.faceQuality != nil {
                    map["FaceQuality"] = self.faceQuality!
                }
                if self.gender != nil {
                    map["Gender"] = self.gender!
                }
                if self.genderConfidence != nil {
                    map["GenderConfidence"] = self.genderConfidence!
                }
                if self.groupId != nil {
                    map["GroupId"] = self.groupId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Age") {
                    self.age = dict["Age"] as! Int32
                }
                if dict.keys.contains("Attractive") {
                    self.attractive = dict["Attractive"] as! Double
                }
                if dict.keys.contains("Emotion") {
                    self.emotion = dict["Emotion"] as! String
                }
                if dict.keys.contains("EmotionConfidence") {
                    self.emotionConfidence = dict["EmotionConfidence"] as! Double
                }
                if dict.keys.contains("EmotionDetails") {
                    var model = FindImagesResponseBody.Images.Faces.EmotionDetails()
                    model.fromMap(dict["EmotionDetails"] as! [String: Any])
                    self.emotionDetails = model
                }
                if dict.keys.contains("FaceAttributes") {
                    var model = FindImagesResponseBody.Images.Faces.FaceAttributes()
                    model.fromMap(dict["FaceAttributes"] as! [String: Any])
                    self.faceAttributes = model
                }
                if dict.keys.contains("FaceConfidence") {
                    self.faceConfidence = dict["FaceConfidence"] as! Double
                }
                if dict.keys.contains("FaceId") {
                    self.faceId = dict["FaceId"] as! String
                }
                if dict.keys.contains("FaceQuality") {
                    self.faceQuality = dict["FaceQuality"] as! Double
                }
                if dict.keys.contains("Gender") {
                    self.gender = dict["Gender"] as! String
                }
                if dict.keys.contains("GenderConfidence") {
                    self.genderConfidence = dict["GenderConfidence"] as! Double
                }
                if dict.keys.contains("GroupId") {
                    self.groupId = dict["GroupId"] as! String
                }
            }
        }
        public class ImageQuality : Tea.TeaModel {
            public var clarity: Double?

            public var clarityScore: Double?

            public var color: Double?

            public var colorScore: Double?

            public var compositionScore: Double?

            public var contrast: Double?

            public var contrastScore: Double?

            public var exposure: Double?

            public var exposureScore: Double?

            public var overallScore: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.clarity != nil {
                    map["Clarity"] = self.clarity!
                }
                if self.clarityScore != nil {
                    map["ClarityScore"] = self.clarityScore!
                }
                if self.color != nil {
                    map["Color"] = self.color!
                }
                if self.colorScore != nil {
                    map["ColorScore"] = self.colorScore!
                }
                if self.compositionScore != nil {
                    map["CompositionScore"] = self.compositionScore!
                }
                if self.contrast != nil {
                    map["Contrast"] = self.contrast!
                }
                if self.contrastScore != nil {
                    map["ContrastScore"] = self.contrastScore!
                }
                if self.exposure != nil {
                    map["Exposure"] = self.exposure!
                }
                if self.exposureScore != nil {
                    map["ExposureScore"] = self.exposureScore!
                }
                if self.overallScore != nil {
                    map["OverallScore"] = self.overallScore!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Clarity") {
                    self.clarity = dict["Clarity"] as! Double
                }
                if dict.keys.contains("ClarityScore") {
                    self.clarityScore = dict["ClarityScore"] as! Double
                }
                if dict.keys.contains("Color") {
                    self.color = dict["Color"] as! Double
                }
                if dict.keys.contains("ColorScore") {
                    self.colorScore = dict["ColorScore"] as! Double
                }
                if dict.keys.contains("CompositionScore") {
                    self.compositionScore = dict["CompositionScore"] as! Double
                }
                if dict.keys.contains("Contrast") {
                    self.contrast = dict["Contrast"] as! Double
                }
                if dict.keys.contains("ContrastScore") {
                    self.contrastScore = dict["ContrastScore"] as! Double
                }
                if dict.keys.contains("Exposure") {
                    self.exposure = dict["Exposure"] as! Double
                }
                if dict.keys.contains("ExposureScore") {
                    self.exposureScore = dict["ExposureScore"] as! Double
                }
                if dict.keys.contains("OverallScore") {
                    self.overallScore = dict["OverallScore"] as! Double
                }
            }
        }
        public class OCR : Tea.TeaModel {
            public class OCRBoundary : Tea.TeaModel {
                public var height: Int32?

                public var left_: Int32?

                public var top: Int32?

                public var width: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.height != nil {
                        map["Height"] = self.height!
                    }
                    if self.left_ != nil {
                        map["Left"] = self.left_!
                    }
                    if self.top != nil {
                        map["Top"] = self.top!
                    }
                    if self.width != nil {
                        map["Width"] = self.width!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Height") {
                        self.height = dict["Height"] as! Int32
                    }
                    if dict.keys.contains("Left") {
                        self.left_ = dict["Left"] as! Int32
                    }
                    if dict.keys.contains("Top") {
                        self.top = dict["Top"] as! Int32
                    }
                    if dict.keys.contains("Width") {
                        self.width = dict["Width"] as! Int32
                    }
                }
            }
            public var OCRBoundary: FindImagesResponseBody.Images.OCR.OCRBoundary?

            public var OCRConfidence: Double?

            public var OCRContents: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.OCRBoundary?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.OCRBoundary != nil {
                    map["OCRBoundary"] = self.OCRBoundary?.toMap()
                }
                if self.OCRConfidence != nil {
                    map["OCRConfidence"] = self.OCRConfidence!
                }
                if self.OCRContents != nil {
                    map["OCRContents"] = self.OCRContents!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("OCRBoundary") {
                    var model = FindImagesResponseBody.Images.OCR.OCRBoundary()
                    model.fromMap(dict["OCRBoundary"] as! [String: Any])
                    self.OCRBoundary = model
                }
                if dict.keys.contains("OCRConfidence") {
                    self.OCRConfidence = dict["OCRConfidence"] as! Double
                }
                if dict.keys.contains("OCRContents") {
                    self.OCRContents = dict["OCRContents"] as! String
                }
            }
        }
        public class Tags : Tea.TeaModel {
            public var centricScore: Double?

            public var parentTagName: String?

            public var tagConfidence: Double?

            public var tagLevel: Int32?

            public var tagName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.centricScore != nil {
                    map["CentricScore"] = self.centricScore!
                }
                if self.parentTagName != nil {
                    map["ParentTagName"] = self.parentTagName!
                }
                if self.tagConfidence != nil {
                    map["TagConfidence"] = self.tagConfidence!
                }
                if self.tagLevel != nil {
                    map["TagLevel"] = self.tagLevel!
                }
                if self.tagName != nil {
                    map["TagName"] = self.tagName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CentricScore") {
                    self.centricScore = dict["CentricScore"] as! Double
                }
                if dict.keys.contains("ParentTagName") {
                    self.parentTagName = dict["ParentTagName"] as! String
                }
                if dict.keys.contains("TagConfidence") {
                    self.tagConfidence = dict["TagConfidence"] as! Double
                }
                if dict.keys.contains("TagLevel") {
                    self.tagLevel = dict["TagLevel"] as! Int32
                }
                if dict.keys.contains("TagName") {
                    self.tagName = dict["TagName"] as! String
                }
            }
        }
        public var address: FindImagesResponseBody.Images.Address?

        public var addressFailReason: String?

        public var addressModifyTime: String?

        public var addressStatus: String?

        public var createTime: String?

        public var croppingSuggestion: [FindImagesResponseBody.Images.CroppingSuggestion]?

        public var croppingSuggestionFailReason: String?

        public var croppingSuggestionModifyTime: String?

        public var croppingSuggestionStatus: String?

        public var exif: String?

        public var externalId: String?

        public var faces: [FindImagesResponseBody.Images.Faces]?

        public var facesFailReason: String?

        public var facesModifyTime: String?

        public var facesStatus: String?

        public var fileSize: Int32?

        public var imageFormat: String?

        public var imageHeight: Int32?

        public var imageQuality: FindImagesResponseBody.Images.ImageQuality?

        public var imageQualityFailReason: String?

        public var imageQualityModifyTime: String?

        public var imageQualityStatus: String?

        public var imageTime: String?

        public var imageUri: String?

        public var imageWidth: Int32?

        public var location: String?

        public var modifyTime: String?

        public var OCR: [FindImagesResponseBody.Images.OCR]?

        public var OCRFailReason: String?

        public var OCRModifyTime: String?

        public var OCRStatus: String?

        public var orientation: String?

        public var remarksA: String?

        public var remarksArrayA: String?

        public var remarksArrayB: String?

        public var remarksB: String?

        public var remarksC: String?

        public var remarksD: String?

        public var sourcePosition: String?

        public var sourceType: String?

        public var sourceUri: String?

        public var tags: [FindImagesResponseBody.Images.Tags]?

        public var tagsFailReason: String?

        public var tagsModifyTime: String?

        public var tagsStatus: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.address?.validate()
            try self.imageQuality?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.address != nil {
                map["Address"] = self.address?.toMap()
            }
            if self.addressFailReason != nil {
                map["AddressFailReason"] = self.addressFailReason!
            }
            if self.addressModifyTime != nil {
                map["AddressModifyTime"] = self.addressModifyTime!
            }
            if self.addressStatus != nil {
                map["AddressStatus"] = self.addressStatus!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.croppingSuggestion != nil {
                var tmp : [Any] = []
                for k in self.croppingSuggestion! {
                    tmp.append(k.toMap())
                }
                map["CroppingSuggestion"] = tmp
            }
            if self.croppingSuggestionFailReason != nil {
                map["CroppingSuggestionFailReason"] = self.croppingSuggestionFailReason!
            }
            if self.croppingSuggestionModifyTime != nil {
                map["CroppingSuggestionModifyTime"] = self.croppingSuggestionModifyTime!
            }
            if self.croppingSuggestionStatus != nil {
                map["CroppingSuggestionStatus"] = self.croppingSuggestionStatus!
            }
            if self.exif != nil {
                map["Exif"] = self.exif!
            }
            if self.externalId != nil {
                map["ExternalId"] = self.externalId!
            }
            if self.faces != nil {
                var tmp : [Any] = []
                for k in self.faces! {
                    tmp.append(k.toMap())
                }
                map["Faces"] = tmp
            }
            if self.facesFailReason != nil {
                map["FacesFailReason"] = self.facesFailReason!
            }
            if self.facesModifyTime != nil {
                map["FacesModifyTime"] = self.facesModifyTime!
            }
            if self.facesStatus != nil {
                map["FacesStatus"] = self.facesStatus!
            }
            if self.fileSize != nil {
                map["FileSize"] = self.fileSize!
            }
            if self.imageFormat != nil {
                map["ImageFormat"] = self.imageFormat!
            }
            if self.imageHeight != nil {
                map["ImageHeight"] = self.imageHeight!
            }
            if self.imageQuality != nil {
                map["ImageQuality"] = self.imageQuality?.toMap()
            }
            if self.imageQualityFailReason != nil {
                map["ImageQualityFailReason"] = self.imageQualityFailReason!
            }
            if self.imageQualityModifyTime != nil {
                map["ImageQualityModifyTime"] = self.imageQualityModifyTime!
            }
            if self.imageQualityStatus != nil {
                map["ImageQualityStatus"] = self.imageQualityStatus!
            }
            if self.imageTime != nil {
                map["ImageTime"] = self.imageTime!
            }
            if self.imageUri != nil {
                map["ImageUri"] = self.imageUri!
            }
            if self.imageWidth != nil {
                map["ImageWidth"] = self.imageWidth!
            }
            if self.location != nil {
                map["Location"] = self.location!
            }
            if self.modifyTime != nil {
                map["ModifyTime"] = self.modifyTime!
            }
            if self.OCR != nil {
                var tmp : [Any] = []
                for k in self.OCR! {
                    tmp.append(k.toMap())
                }
                map["OCR"] = tmp
            }
            if self.OCRFailReason != nil {
                map["OCRFailReason"] = self.OCRFailReason!
            }
            if self.OCRModifyTime != nil {
                map["OCRModifyTime"] = self.OCRModifyTime!
            }
            if self.OCRStatus != nil {
                map["OCRStatus"] = self.OCRStatus!
            }
            if self.orientation != nil {
                map["Orientation"] = self.orientation!
            }
            if self.remarksA != nil {
                map["RemarksA"] = self.remarksA!
            }
            if self.remarksArrayA != nil {
                map["RemarksArrayA"] = self.remarksArrayA!
            }
            if self.remarksArrayB != nil {
                map["RemarksArrayB"] = self.remarksArrayB!
            }
            if self.remarksB != nil {
                map["RemarksB"] = self.remarksB!
            }
            if self.remarksC != nil {
                map["RemarksC"] = self.remarksC!
            }
            if self.remarksD != nil {
                map["RemarksD"] = self.remarksD!
            }
            if self.sourcePosition != nil {
                map["SourcePosition"] = self.sourcePosition!
            }
            if self.sourceType != nil {
                map["SourceType"] = self.sourceType!
            }
            if self.sourceUri != nil {
                map["SourceUri"] = self.sourceUri!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.tagsFailReason != nil {
                map["TagsFailReason"] = self.tagsFailReason!
            }
            if self.tagsModifyTime != nil {
                map["TagsModifyTime"] = self.tagsModifyTime!
            }
            if self.tagsStatus != nil {
                map["TagsStatus"] = self.tagsStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Address") {
                var model = FindImagesResponseBody.Images.Address()
                model.fromMap(dict["Address"] as! [String: Any])
                self.address = model
            }
            if dict.keys.contains("AddressFailReason") {
                self.addressFailReason = dict["AddressFailReason"] as! String
            }
            if dict.keys.contains("AddressModifyTime") {
                self.addressModifyTime = dict["AddressModifyTime"] as! String
            }
            if dict.keys.contains("AddressStatus") {
                self.addressStatus = dict["AddressStatus"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("CroppingSuggestion") {
                self.croppingSuggestion = dict["CroppingSuggestion"] as! [FindImagesResponseBody.Images.CroppingSuggestion]
            }
            if dict.keys.contains("CroppingSuggestionFailReason") {
                self.croppingSuggestionFailReason = dict["CroppingSuggestionFailReason"] as! String
            }
            if dict.keys.contains("CroppingSuggestionModifyTime") {
                self.croppingSuggestionModifyTime = dict["CroppingSuggestionModifyTime"] as! String
            }
            if dict.keys.contains("CroppingSuggestionStatus") {
                self.croppingSuggestionStatus = dict["CroppingSuggestionStatus"] as! String
            }
            if dict.keys.contains("Exif") {
                self.exif = dict["Exif"] as! String
            }
            if dict.keys.contains("ExternalId") {
                self.externalId = dict["ExternalId"] as! String
            }
            if dict.keys.contains("Faces") {
                self.faces = dict["Faces"] as! [FindImagesResponseBody.Images.Faces]
            }
            if dict.keys.contains("FacesFailReason") {
                self.facesFailReason = dict["FacesFailReason"] as! String
            }
            if dict.keys.contains("FacesModifyTime") {
                self.facesModifyTime = dict["FacesModifyTime"] as! String
            }
            if dict.keys.contains("FacesStatus") {
                self.facesStatus = dict["FacesStatus"] as! String
            }
            if dict.keys.contains("FileSize") {
                self.fileSize = dict["FileSize"] as! Int32
            }
            if dict.keys.contains("ImageFormat") {
                self.imageFormat = dict["ImageFormat"] as! String
            }
            if dict.keys.contains("ImageHeight") {
                self.imageHeight = dict["ImageHeight"] as! Int32
            }
            if dict.keys.contains("ImageQuality") {
                var model = FindImagesResponseBody.Images.ImageQuality()
                model.fromMap(dict["ImageQuality"] as! [String: Any])
                self.imageQuality = model
            }
            if dict.keys.contains("ImageQualityFailReason") {
                self.imageQualityFailReason = dict["ImageQualityFailReason"] as! String
            }
            if dict.keys.contains("ImageQualityModifyTime") {
                self.imageQualityModifyTime = dict["ImageQualityModifyTime"] as! String
            }
            if dict.keys.contains("ImageQualityStatus") {
                self.imageQualityStatus = dict["ImageQualityStatus"] as! String
            }
            if dict.keys.contains("ImageTime") {
                self.imageTime = dict["ImageTime"] as! String
            }
            if dict.keys.contains("ImageUri") {
                self.imageUri = dict["ImageUri"] as! String
            }
            if dict.keys.contains("ImageWidth") {
                self.imageWidth = dict["ImageWidth"] as! Int32
            }
            if dict.keys.contains("Location") {
                self.location = dict["Location"] as! String
            }
            if dict.keys.contains("ModifyTime") {
                self.modifyTime = dict["ModifyTime"] as! String
            }
            if dict.keys.contains("OCR") {
                self.OCR = dict["OCR"] as! [FindImagesResponseBody.Images.OCR]
            }
            if dict.keys.contains("OCRFailReason") {
                self.OCRFailReason = dict["OCRFailReason"] as! String
            }
            if dict.keys.contains("OCRModifyTime") {
                self.OCRModifyTime = dict["OCRModifyTime"] as! String
            }
            if dict.keys.contains("OCRStatus") {
                self.OCRStatus = dict["OCRStatus"] as! String
            }
            if dict.keys.contains("Orientation") {
                self.orientation = dict["Orientation"] as! String
            }
            if dict.keys.contains("RemarksA") {
                self.remarksA = dict["RemarksA"] as! String
            }
            if dict.keys.contains("RemarksArrayA") {
                self.remarksArrayA = dict["RemarksArrayA"] as! String
            }
            if dict.keys.contains("RemarksArrayB") {
                self.remarksArrayB = dict["RemarksArrayB"] as! String
            }
            if dict.keys.contains("RemarksB") {
                self.remarksB = dict["RemarksB"] as! String
            }
            if dict.keys.contains("RemarksC") {
                self.remarksC = dict["RemarksC"] as! String
            }
            if dict.keys.contains("RemarksD") {
                self.remarksD = dict["RemarksD"] as! String
            }
            if dict.keys.contains("SourcePosition") {
                self.sourcePosition = dict["SourcePosition"] as! String
            }
            if dict.keys.contains("SourceType") {
                self.sourceType = dict["SourceType"] as! String
            }
            if dict.keys.contains("SourceUri") {
                self.sourceUri = dict["SourceUri"] as! String
            }
            if dict.keys.contains("Tags") {
                self.tags = dict["Tags"] as! [FindImagesResponseBody.Images.Tags]
            }
            if dict.keys.contains("TagsFailReason") {
                self.tagsFailReason = dict["TagsFailReason"] as! String
            }
            if dict.keys.contains("TagsModifyTime") {
                self.tagsModifyTime = dict["TagsModifyTime"] as! String
            }
            if dict.keys.contains("TagsStatus") {
                self.tagsStatus = dict["TagsStatus"] as! String
            }
        }
    }
    public var images: [FindImagesResponseBody.Images]?

    public var nextMarker: String?

    public var requestId: String?

    public var setId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.images != nil {
            var tmp : [Any] = []
            for k in self.images! {
                tmp.append(k.toMap())
            }
            map["Images"] = tmp
        }
        if self.nextMarker != nil {
            map["NextMarker"] = self.nextMarker!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.setId != nil {
            map["SetId"] = self.setId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Images") {
            self.images = dict["Images"] as! [FindImagesResponseBody.Images]
        }
        if dict.keys.contains("NextMarker") {
            self.nextMarker = dict["NextMarker"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SetId") {
            self.setId = dict["SetId"] as! String
        }
    }
}

public class FindImagesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: FindImagesResponseBody?

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
            var model = FindImagesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class FindSimilarFacesRequest : Tea.TeaModel {
    public var faceId: String?

    public var imageUri: String?

    public var limit: Int32?

    public var minSimilarity: Double?

    public var project: String?

    public var responseFormat: String?

    public var setId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.faceId != nil {
            map["FaceId"] = self.faceId!
        }
        if self.imageUri != nil {
            map["ImageUri"] = self.imageUri!
        }
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.minSimilarity != nil {
            map["MinSimilarity"] = self.minSimilarity!
        }
        if self.project != nil {
            map["Project"] = self.project!
        }
        if self.responseFormat != nil {
            map["ResponseFormat"] = self.responseFormat!
        }
        if self.setId != nil {
            map["SetId"] = self.setId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FaceId") {
            self.faceId = dict["FaceId"] as! String
        }
        if dict.keys.contains("ImageUri") {
            self.imageUri = dict["ImageUri"] as! String
        }
        if dict.keys.contains("Limit") {
            self.limit = dict["Limit"] as! Int32
        }
        if dict.keys.contains("MinSimilarity") {
            self.minSimilarity = dict["MinSimilarity"] as! Double
        }
        if dict.keys.contains("Project") {
            self.project = dict["Project"] as! String
        }
        if dict.keys.contains("ResponseFormat") {
            self.responseFormat = dict["ResponseFormat"] as! String
        }
        if dict.keys.contains("SetId") {
            self.setId = dict["SetId"] as! String
        }
    }
}

public class FindSimilarFacesResponseBody : Tea.TeaModel {
    public class Faces : Tea.TeaModel {
        public class FaceAttributes : Tea.TeaModel {
            public class FaceBoundary : Tea.TeaModel {
                public var height: Int32?

                public var left_: Int32?

                public var top: Int32?

                public var width: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.height != nil {
                        map["Height"] = self.height!
                    }
                    if self.left_ != nil {
                        map["Left"] = self.left_!
                    }
                    if self.top != nil {
                        map["Top"] = self.top!
                    }
                    if self.width != nil {
                        map["Width"] = self.width!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Height") {
                        self.height = dict["Height"] as! Int32
                    }
                    if dict.keys.contains("Left") {
                        self.left_ = dict["Left"] as! Int32
                    }
                    if dict.keys.contains("Top") {
                        self.top = dict["Top"] as! Int32
                    }
                    if dict.keys.contains("Width") {
                        self.width = dict["Width"] as! Int32
                    }
                }
            }
            public var faceBoundary: FindSimilarFacesResponseBody.Faces.FaceAttributes.FaceBoundary?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.faceBoundary?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.faceBoundary != nil {
                    map["FaceBoundary"] = self.faceBoundary?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("FaceBoundary") {
                    var model = FindSimilarFacesResponseBody.Faces.FaceAttributes.FaceBoundary()
                    model.fromMap(dict["FaceBoundary"] as! [String: Any])
                    self.faceBoundary = model
                }
            }
        }
        public class SimilarFaces : Tea.TeaModel {
            public class FaceAttributes : Tea.TeaModel {
                public class FaceBoundary : Tea.TeaModel {
                    public var height: Int32?

                    public var left_: Int32?

                    public var top: Int32?

                    public var width: Int32?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.height != nil {
                            map["Height"] = self.height!
                        }
                        if self.left_ != nil {
                            map["Left"] = self.left_!
                        }
                        if self.top != nil {
                            map["Top"] = self.top!
                        }
                        if self.width != nil {
                            map["Width"] = self.width!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Height") {
                            self.height = dict["Height"] as! Int32
                        }
                        if dict.keys.contains("Left") {
                            self.left_ = dict["Left"] as! Int32
                        }
                        if dict.keys.contains("Top") {
                            self.top = dict["Top"] as! Int32
                        }
                        if dict.keys.contains("Width") {
                            self.width = dict["Width"] as! Int32
                        }
                    }
                }
                public var faceBoundary: FindSimilarFacesResponseBody.Faces.SimilarFaces.FaceAttributes.FaceBoundary?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.faceBoundary?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.faceBoundary != nil {
                        map["FaceBoundary"] = self.faceBoundary?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("FaceBoundary") {
                        var model = FindSimilarFacesResponseBody.Faces.SimilarFaces.FaceAttributes.FaceBoundary()
                        model.fromMap(dict["FaceBoundary"] as! [String: Any])
                        self.faceBoundary = model
                    }
                }
            }
            public var externalId: String?

            public var faceAttributes: FindSimilarFacesResponseBody.Faces.SimilarFaces.FaceAttributes?

            public var faceId: String?

            public var imageUri: String?

            public var similarity: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.faceAttributes?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.externalId != nil {
                    map["ExternalId"] = self.externalId!
                }
                if self.faceAttributes != nil {
                    map["FaceAttributes"] = self.faceAttributes?.toMap()
                }
                if self.faceId != nil {
                    map["FaceId"] = self.faceId!
                }
                if self.imageUri != nil {
                    map["ImageUri"] = self.imageUri!
                }
                if self.similarity != nil {
                    map["Similarity"] = self.similarity!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ExternalId") {
                    self.externalId = dict["ExternalId"] as! String
                }
                if dict.keys.contains("FaceAttributes") {
                    var model = FindSimilarFacesResponseBody.Faces.SimilarFaces.FaceAttributes()
                    model.fromMap(dict["FaceAttributes"] as! [String: Any])
                    self.faceAttributes = model
                }
                if dict.keys.contains("FaceId") {
                    self.faceId = dict["FaceId"] as! String
                }
                if dict.keys.contains("ImageUri") {
                    self.imageUri = dict["ImageUri"] as! String
                }
                if dict.keys.contains("Similarity") {
                    self.similarity = dict["Similarity"] as! Double
                }
            }
        }
        public var externalId: String?

        public var faceAttributes: FindSimilarFacesResponseBody.Faces.FaceAttributes?

        public var faceId: String?

        public var imageUri: String?

        public var similarFaces: [FindSimilarFacesResponseBody.Faces.SimilarFaces]?

        public var similarity: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.faceAttributes?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.externalId != nil {
                map["ExternalId"] = self.externalId!
            }
            if self.faceAttributes != nil {
                map["FaceAttributes"] = self.faceAttributes?.toMap()
            }
            if self.faceId != nil {
                map["FaceId"] = self.faceId!
            }
            if self.imageUri != nil {
                map["ImageUri"] = self.imageUri!
            }
            if self.similarFaces != nil {
                var tmp : [Any] = []
                for k in self.similarFaces! {
                    tmp.append(k.toMap())
                }
                map["SimilarFaces"] = tmp
            }
            if self.similarity != nil {
                map["Similarity"] = self.similarity!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ExternalId") {
                self.externalId = dict["ExternalId"] as! String
            }
            if dict.keys.contains("FaceAttributes") {
                var model = FindSimilarFacesResponseBody.Faces.FaceAttributes()
                model.fromMap(dict["FaceAttributes"] as! [String: Any])
                self.faceAttributes = model
            }
            if dict.keys.contains("FaceId") {
                self.faceId = dict["FaceId"] as! String
            }
            if dict.keys.contains("ImageUri") {
                self.imageUri = dict["ImageUri"] as! String
            }
            if dict.keys.contains("SimilarFaces") {
                self.similarFaces = dict["SimilarFaces"] as! [FindSimilarFacesResponseBody.Faces.SimilarFaces]
            }
            if dict.keys.contains("Similarity") {
                self.similarity = dict["Similarity"] as! Double
            }
        }
    }
    public var faces: [FindSimilarFacesResponseBody.Faces]?

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
        if self.faces != nil {
            var tmp : [Any] = []
            for k in self.faces! {
                tmp.append(k.toMap())
            }
            map["Faces"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Faces") {
            self.faces = dict["Faces"] as! [FindSimilarFacesResponseBody.Faces]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class FindSimilarFacesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: FindSimilarFacesResponseBody?

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
            var model = FindSimilarFacesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetImageRequest : Tea.TeaModel {
    public var imageUri: String?

    public var project: String?

    public var setId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageUri != nil {
            map["ImageUri"] = self.imageUri!
        }
        if self.project != nil {
            map["Project"] = self.project!
        }
        if self.setId != nil {
            map["SetId"] = self.setId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ImageUri") {
            self.imageUri = dict["ImageUri"] as! String
        }
        if dict.keys.contains("Project") {
            self.project = dict["Project"] as! String
        }
        if dict.keys.contains("SetId") {
            self.setId = dict["SetId"] as! String
        }
    }
}

public class GetImageResponseBody : Tea.TeaModel {
    public class Address : Tea.TeaModel {
        public var addressLine: String?

        public var city: String?

        public var country: String?

        public var district: String?

        public var province: String?

        public var township: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.addressLine != nil {
                map["AddressLine"] = self.addressLine!
            }
            if self.city != nil {
                map["City"] = self.city!
            }
            if self.country != nil {
                map["Country"] = self.country!
            }
            if self.district != nil {
                map["District"] = self.district!
            }
            if self.province != nil {
                map["Province"] = self.province!
            }
            if self.township != nil {
                map["Township"] = self.township!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AddressLine") {
                self.addressLine = dict["AddressLine"] as! String
            }
            if dict.keys.contains("City") {
                self.city = dict["City"] as! String
            }
            if dict.keys.contains("Country") {
                self.country = dict["Country"] as! String
            }
            if dict.keys.contains("District") {
                self.district = dict["District"] as! String
            }
            if dict.keys.contains("Province") {
                self.province = dict["Province"] as! String
            }
            if dict.keys.contains("Township") {
                self.township = dict["Township"] as! String
            }
        }
    }
    public class CroppingSuggestion : Tea.TeaModel {
        public class CroppingBoundary : Tea.TeaModel {
            public var height: Int32?

            public var left_: Int32?

            public var top: Int32?

            public var width: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.height != nil {
                    map["Height"] = self.height!
                }
                if self.left_ != nil {
                    map["Left"] = self.left_!
                }
                if self.top != nil {
                    map["Top"] = self.top!
                }
                if self.width != nil {
                    map["Width"] = self.width!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Height") {
                    self.height = dict["Height"] as! Int32
                }
                if dict.keys.contains("Left") {
                    self.left_ = dict["Left"] as! Int32
                }
                if dict.keys.contains("Top") {
                    self.top = dict["Top"] as! Int32
                }
                if dict.keys.contains("Width") {
                    self.width = dict["Width"] as! Int32
                }
            }
        }
        public var aspectRatio: String?

        public var croppingBoundary: GetImageResponseBody.CroppingSuggestion.CroppingBoundary?

        public var score: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.croppingBoundary?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aspectRatio != nil {
                map["AspectRatio"] = self.aspectRatio!
            }
            if self.croppingBoundary != nil {
                map["CroppingBoundary"] = self.croppingBoundary?.toMap()
            }
            if self.score != nil {
                map["Score"] = self.score!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AspectRatio") {
                self.aspectRatio = dict["AspectRatio"] as! String
            }
            if dict.keys.contains("CroppingBoundary") {
                var model = GetImageResponseBody.CroppingSuggestion.CroppingBoundary()
                model.fromMap(dict["CroppingBoundary"] as! [String: Any])
                self.croppingBoundary = model
            }
            if dict.keys.contains("Score") {
                self.score = dict["Score"] as! Double
            }
        }
    }
    public class Faces : Tea.TeaModel {
        public class EmotionDetails : Tea.TeaModel {
            public var ANGRY: Double?

            public var CALM: Double?

            public var DISGUSTED: Double?

            public var HAPPY: Double?

            public var SAD: Double?

            public var SCARED: Double?

            public var SURPRISED: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.ANGRY != nil {
                    map["ANGRY"] = self.ANGRY!
                }
                if self.CALM != nil {
                    map["CALM"] = self.CALM!
                }
                if self.DISGUSTED != nil {
                    map["DISGUSTED"] = self.DISGUSTED!
                }
                if self.HAPPY != nil {
                    map["HAPPY"] = self.HAPPY!
                }
                if self.SAD != nil {
                    map["SAD"] = self.SAD!
                }
                if self.SCARED != nil {
                    map["SCARED"] = self.SCARED!
                }
                if self.SURPRISED != nil {
                    map["SURPRISED"] = self.SURPRISED!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ANGRY") {
                    self.ANGRY = dict["ANGRY"] as! Double
                }
                if dict.keys.contains("CALM") {
                    self.CALM = dict["CALM"] as! Double
                }
                if dict.keys.contains("DISGUSTED") {
                    self.DISGUSTED = dict["DISGUSTED"] as! Double
                }
                if dict.keys.contains("HAPPY") {
                    self.HAPPY = dict["HAPPY"] as! Double
                }
                if dict.keys.contains("SAD") {
                    self.SAD = dict["SAD"] as! Double
                }
                if dict.keys.contains("SCARED") {
                    self.SCARED = dict["SCARED"] as! Double
                }
                if dict.keys.contains("SURPRISED") {
                    self.SURPRISED = dict["SURPRISED"] as! Double
                }
            }
        }
        public class FaceAttributes : Tea.TeaModel {
            public class FaceBoundary : Tea.TeaModel {
                public var height: Int32?

                public var left_: Int32?

                public var top: Int32?

                public var width: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.height != nil {
                        map["Height"] = self.height!
                    }
                    if self.left_ != nil {
                        map["Left"] = self.left_!
                    }
                    if self.top != nil {
                        map["Top"] = self.top!
                    }
                    if self.width != nil {
                        map["Width"] = self.width!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Height") {
                        self.height = dict["Height"] as! Int32
                    }
                    if dict.keys.contains("Left") {
                        self.left_ = dict["Left"] as! Int32
                    }
                    if dict.keys.contains("Top") {
                        self.top = dict["Top"] as! Int32
                    }
                    if dict.keys.contains("Width") {
                        self.width = dict["Width"] as! Int32
                    }
                }
            }
            public class HeadPose : Tea.TeaModel {
                public var pitch: Double?

                public var roll: Double?

                public var yaw: Double?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.pitch != nil {
                        map["Pitch"] = self.pitch!
                    }
                    if self.roll != nil {
                        map["Roll"] = self.roll!
                    }
                    if self.yaw != nil {
                        map["Yaw"] = self.yaw!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Pitch") {
                        self.pitch = dict["Pitch"] as! Double
                    }
                    if dict.keys.contains("Roll") {
                        self.roll = dict["Roll"] as! Double
                    }
                    if dict.keys.contains("Yaw") {
                        self.yaw = dict["Yaw"] as! Double
                    }
                }
            }
            public var beard: String?

            public var beardConfidence: Double?

            public var faceBoundary: GetImageResponseBody.Faces.FaceAttributes.FaceBoundary?

            public var glasses: String?

            public var glassesConfidence: Double?

            public var headPose: GetImageResponseBody.Faces.FaceAttributes.HeadPose?

            public var mask: String?

            public var maskConfidence: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.faceBoundary?.validate()
                try self.headPose?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.beard != nil {
                    map["Beard"] = self.beard!
                }
                if self.beardConfidence != nil {
                    map["BeardConfidence"] = self.beardConfidence!
                }
                if self.faceBoundary != nil {
                    map["FaceBoundary"] = self.faceBoundary?.toMap()
                }
                if self.glasses != nil {
                    map["Glasses"] = self.glasses!
                }
                if self.glassesConfidence != nil {
                    map["GlassesConfidence"] = self.glassesConfidence!
                }
                if self.headPose != nil {
                    map["HeadPose"] = self.headPose?.toMap()
                }
                if self.mask != nil {
                    map["Mask"] = self.mask!
                }
                if self.maskConfidence != nil {
                    map["MaskConfidence"] = self.maskConfidence!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Beard") {
                    self.beard = dict["Beard"] as! String
                }
                if dict.keys.contains("BeardConfidence") {
                    self.beardConfidence = dict["BeardConfidence"] as! Double
                }
                if dict.keys.contains("FaceBoundary") {
                    var model = GetImageResponseBody.Faces.FaceAttributes.FaceBoundary()
                    model.fromMap(dict["FaceBoundary"] as! [String: Any])
                    self.faceBoundary = model
                }
                if dict.keys.contains("Glasses") {
                    self.glasses = dict["Glasses"] as! String
                }
                if dict.keys.contains("GlassesConfidence") {
                    self.glassesConfidence = dict["GlassesConfidence"] as! Double
                }
                if dict.keys.contains("HeadPose") {
                    var model = GetImageResponseBody.Faces.FaceAttributes.HeadPose()
                    model.fromMap(dict["HeadPose"] as! [String: Any])
                    self.headPose = model
                }
                if dict.keys.contains("Mask") {
                    self.mask = dict["Mask"] as! String
                }
                if dict.keys.contains("MaskConfidence") {
                    self.maskConfidence = dict["MaskConfidence"] as! Double
                }
            }
        }
        public var age: String?

        public var attractive: Double?

        public var emotion: String?

        public var emotionConfidence: Double?

        public var emotionDetails: GetImageResponseBody.Faces.EmotionDetails?

        public var faceAttributes: GetImageResponseBody.Faces.FaceAttributes?

        public var faceConfidence: Double?

        public var faceId: String?

        public var faceQuality: Double?

        public var gender: String?

        public var genderConfidence: Double?

        public var groupId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.emotionDetails?.validate()
            try self.faceAttributes?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.age != nil {
                map["Age"] = self.age!
            }
            if self.attractive != nil {
                map["Attractive"] = self.attractive!
            }
            if self.emotion != nil {
                map["Emotion"] = self.emotion!
            }
            if self.emotionConfidence != nil {
                map["EmotionConfidence"] = self.emotionConfidence!
            }
            if self.emotionDetails != nil {
                map["EmotionDetails"] = self.emotionDetails?.toMap()
            }
            if self.faceAttributes != nil {
                map["FaceAttributes"] = self.faceAttributes?.toMap()
            }
            if self.faceConfidence != nil {
                map["FaceConfidence"] = self.faceConfidence!
            }
            if self.faceId != nil {
                map["FaceId"] = self.faceId!
            }
            if self.faceQuality != nil {
                map["FaceQuality"] = self.faceQuality!
            }
            if self.gender != nil {
                map["Gender"] = self.gender!
            }
            if self.genderConfidence != nil {
                map["GenderConfidence"] = self.genderConfidence!
            }
            if self.groupId != nil {
                map["GroupId"] = self.groupId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Age") {
                self.age = dict["Age"] as! String
            }
            if dict.keys.contains("Attractive") {
                self.attractive = dict["Attractive"] as! Double
            }
            if dict.keys.contains("Emotion") {
                self.emotion = dict["Emotion"] as! String
            }
            if dict.keys.contains("EmotionConfidence") {
                self.emotionConfidence = dict["EmotionConfidence"] as! Double
            }
            if dict.keys.contains("EmotionDetails") {
                var model = GetImageResponseBody.Faces.EmotionDetails()
                model.fromMap(dict["EmotionDetails"] as! [String: Any])
                self.emotionDetails = model
            }
            if dict.keys.contains("FaceAttributes") {
                var model = GetImageResponseBody.Faces.FaceAttributes()
                model.fromMap(dict["FaceAttributes"] as! [String: Any])
                self.faceAttributes = model
            }
            if dict.keys.contains("FaceConfidence") {
                self.faceConfidence = dict["FaceConfidence"] as! Double
            }
            if dict.keys.contains("FaceId") {
                self.faceId = dict["FaceId"] as! String
            }
            if dict.keys.contains("FaceQuality") {
                self.faceQuality = dict["FaceQuality"] as! Double
            }
            if dict.keys.contains("Gender") {
                self.gender = dict["Gender"] as! String
            }
            if dict.keys.contains("GenderConfidence") {
                self.genderConfidence = dict["GenderConfidence"] as! Double
            }
            if dict.keys.contains("GroupId") {
                self.groupId = dict["GroupId"] as! String
            }
        }
    }
    public class ImageQuality : Tea.TeaModel {
        public var clarity: Double?

        public var clarityScore: Double?

        public var color: Double?

        public var colorScore: Double?

        public var compositionScore: Double?

        public var contrast: Double?

        public var contrastScore: Double?

        public var exposure: Double?

        public var exposureScore: Double?

        public var overallScore: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.clarity != nil {
                map["Clarity"] = self.clarity!
            }
            if self.clarityScore != nil {
                map["ClarityScore"] = self.clarityScore!
            }
            if self.color != nil {
                map["Color"] = self.color!
            }
            if self.colorScore != nil {
                map["ColorScore"] = self.colorScore!
            }
            if self.compositionScore != nil {
                map["CompositionScore"] = self.compositionScore!
            }
            if self.contrast != nil {
                map["Contrast"] = self.contrast!
            }
            if self.contrastScore != nil {
                map["ContrastScore"] = self.contrastScore!
            }
            if self.exposure != nil {
                map["Exposure"] = self.exposure!
            }
            if self.exposureScore != nil {
                map["ExposureScore"] = self.exposureScore!
            }
            if self.overallScore != nil {
                map["OverallScore"] = self.overallScore!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Clarity") {
                self.clarity = dict["Clarity"] as! Double
            }
            if dict.keys.contains("ClarityScore") {
                self.clarityScore = dict["ClarityScore"] as! Double
            }
            if dict.keys.contains("Color") {
                self.color = dict["Color"] as! Double
            }
            if dict.keys.contains("ColorScore") {
                self.colorScore = dict["ColorScore"] as! Double
            }
            if dict.keys.contains("CompositionScore") {
                self.compositionScore = dict["CompositionScore"] as! Double
            }
            if dict.keys.contains("Contrast") {
                self.contrast = dict["Contrast"] as! Double
            }
            if dict.keys.contains("ContrastScore") {
                self.contrastScore = dict["ContrastScore"] as! Double
            }
            if dict.keys.contains("Exposure") {
                self.exposure = dict["Exposure"] as! Double
            }
            if dict.keys.contains("ExposureScore") {
                self.exposureScore = dict["ExposureScore"] as! Double
            }
            if dict.keys.contains("OverallScore") {
                self.overallScore = dict["OverallScore"] as! Double
            }
        }
    }
    public class OCR : Tea.TeaModel {
        public class OCRBoundary : Tea.TeaModel {
            public var height: Int32?

            public var left_: Int32?

            public var top: Int32?

            public var width: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.height != nil {
                    map["Height"] = self.height!
                }
                if self.left_ != nil {
                    map["Left"] = self.left_!
                }
                if self.top != nil {
                    map["Top"] = self.top!
                }
                if self.width != nil {
                    map["Width"] = self.width!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Height") {
                    self.height = dict["Height"] as! Int32
                }
                if dict.keys.contains("Left") {
                    self.left_ = dict["Left"] as! Int32
                }
                if dict.keys.contains("Top") {
                    self.top = dict["Top"] as! Int32
                }
                if dict.keys.contains("Width") {
                    self.width = dict["Width"] as! Int32
                }
            }
        }
        public var OCRBoundary: GetImageResponseBody.OCR.OCRBoundary?

        public var OCRConfidence: Double?

        public var OCRContents: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.OCRBoundary?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.OCRBoundary != nil {
                map["OCRBoundary"] = self.OCRBoundary?.toMap()
            }
            if self.OCRConfidence != nil {
                map["OCRConfidence"] = self.OCRConfidence!
            }
            if self.OCRContents != nil {
                map["OCRContents"] = self.OCRContents!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("OCRBoundary") {
                var model = GetImageResponseBody.OCR.OCRBoundary()
                model.fromMap(dict["OCRBoundary"] as! [String: Any])
                self.OCRBoundary = model
            }
            if dict.keys.contains("OCRConfidence") {
                self.OCRConfidence = dict["OCRConfidence"] as! Double
            }
            if dict.keys.contains("OCRContents") {
                self.OCRContents = dict["OCRContents"] as! String
            }
        }
    }
    public class Tags : Tea.TeaModel {
        public var centricScore: Double?

        public var parentTagName: String?

        public var tagConfidence: Double?

        public var tagLevel: Int32?

        public var tagName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.centricScore != nil {
                map["CentricScore"] = self.centricScore!
            }
            if self.parentTagName != nil {
                map["ParentTagName"] = self.parentTagName!
            }
            if self.tagConfidence != nil {
                map["TagConfidence"] = self.tagConfidence!
            }
            if self.tagLevel != nil {
                map["TagLevel"] = self.tagLevel!
            }
            if self.tagName != nil {
                map["TagName"] = self.tagName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CentricScore") {
                self.centricScore = dict["CentricScore"] as! Double
            }
            if dict.keys.contains("ParentTagName") {
                self.parentTagName = dict["ParentTagName"] as! String
            }
            if dict.keys.contains("TagConfidence") {
                self.tagConfidence = dict["TagConfidence"] as! Double
            }
            if dict.keys.contains("TagLevel") {
                self.tagLevel = dict["TagLevel"] as! Int32
            }
            if dict.keys.contains("TagName") {
                self.tagName = dict["TagName"] as! String
            }
        }
    }
    public var address: GetImageResponseBody.Address?

    public var addressFailReason: String?

    public var addressModifyTime: String?

    public var addressStatus: String?

    public var createTime: String?

    public var croppingSuggestion: [GetImageResponseBody.CroppingSuggestion]?

    public var croppingSuggestionFailReason: String?

    public var croppingSuggestionModifyTime: String?

    public var croppingSuggestionStatus: String?

    public var exif: String?

    public var externalId: String?

    public var faces: [GetImageResponseBody.Faces]?

    public var facesFailReason: String?

    public var facesModifyTime: String?

    public var facesStatus: String?

    public var fileSize: Int32?

    public var imageFormat: String?

    public var imageHeight: Int32?

    public var imageQuality: GetImageResponseBody.ImageQuality?

    public var imageQualityFailReason: String?

    public var imageQualityModifyTime: String?

    public var imageQualityStatus: String?

    public var imageTime: String?

    public var imageUri: String?

    public var imageWidth: Int32?

    public var location: String?

    public var modifyTime: String?

    public var OCR: [GetImageResponseBody.OCR]?

    public var OCRFailReason: String?

    public var OCRModifyTime: String?

    public var OCRStatus: String?

    public var orientation: String?

    public var remarksA: String?

    public var remarksArrayA: String?

    public var remarksArrayB: String?

    public var remarksB: String?

    public var remarksC: String?

    public var remarksD: String?

    public var requestId: String?

    public var setId: String?

    public var sourcePosition: String?

    public var sourceType: String?

    public var sourceUri: String?

    public var tags: [GetImageResponseBody.Tags]?

    public var tagsFailReason: String?

    public var tagsModifyTime: String?

    public var tagsStatus: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.address?.validate()
        try self.imageQuality?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.address != nil {
            map["Address"] = self.address?.toMap()
        }
        if self.addressFailReason != nil {
            map["AddressFailReason"] = self.addressFailReason!
        }
        if self.addressModifyTime != nil {
            map["AddressModifyTime"] = self.addressModifyTime!
        }
        if self.addressStatus != nil {
            map["AddressStatus"] = self.addressStatus!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.croppingSuggestion != nil {
            var tmp : [Any] = []
            for k in self.croppingSuggestion! {
                tmp.append(k.toMap())
            }
            map["CroppingSuggestion"] = tmp
        }
        if self.croppingSuggestionFailReason != nil {
            map["CroppingSuggestionFailReason"] = self.croppingSuggestionFailReason!
        }
        if self.croppingSuggestionModifyTime != nil {
            map["CroppingSuggestionModifyTime"] = self.croppingSuggestionModifyTime!
        }
        if self.croppingSuggestionStatus != nil {
            map["CroppingSuggestionStatus"] = self.croppingSuggestionStatus!
        }
        if self.exif != nil {
            map["Exif"] = self.exif!
        }
        if self.externalId != nil {
            map["ExternalId"] = self.externalId!
        }
        if self.faces != nil {
            var tmp : [Any] = []
            for k in self.faces! {
                tmp.append(k.toMap())
            }
            map["Faces"] = tmp
        }
        if self.facesFailReason != nil {
            map["FacesFailReason"] = self.facesFailReason!
        }
        if self.facesModifyTime != nil {
            map["FacesModifyTime"] = self.facesModifyTime!
        }
        if self.facesStatus != nil {
            map["FacesStatus"] = self.facesStatus!
        }
        if self.fileSize != nil {
            map["FileSize"] = self.fileSize!
        }
        if self.imageFormat != nil {
            map["ImageFormat"] = self.imageFormat!
        }
        if self.imageHeight != nil {
            map["ImageHeight"] = self.imageHeight!
        }
        if self.imageQuality != nil {
            map["ImageQuality"] = self.imageQuality?.toMap()
        }
        if self.imageQualityFailReason != nil {
            map["ImageQualityFailReason"] = self.imageQualityFailReason!
        }
        if self.imageQualityModifyTime != nil {
            map["ImageQualityModifyTime"] = self.imageQualityModifyTime!
        }
        if self.imageQualityStatus != nil {
            map["ImageQualityStatus"] = self.imageQualityStatus!
        }
        if self.imageTime != nil {
            map["ImageTime"] = self.imageTime!
        }
        if self.imageUri != nil {
            map["ImageUri"] = self.imageUri!
        }
        if self.imageWidth != nil {
            map["ImageWidth"] = self.imageWidth!
        }
        if self.location != nil {
            map["Location"] = self.location!
        }
        if self.modifyTime != nil {
            map["ModifyTime"] = self.modifyTime!
        }
        if self.OCR != nil {
            var tmp : [Any] = []
            for k in self.OCR! {
                tmp.append(k.toMap())
            }
            map["OCR"] = tmp
        }
        if self.OCRFailReason != nil {
            map["OCRFailReason"] = self.OCRFailReason!
        }
        if self.OCRModifyTime != nil {
            map["OCRModifyTime"] = self.OCRModifyTime!
        }
        if self.OCRStatus != nil {
            map["OCRStatus"] = self.OCRStatus!
        }
        if self.orientation != nil {
            map["Orientation"] = self.orientation!
        }
        if self.remarksA != nil {
            map["RemarksA"] = self.remarksA!
        }
        if self.remarksArrayA != nil {
            map["RemarksArrayA"] = self.remarksArrayA!
        }
        if self.remarksArrayB != nil {
            map["RemarksArrayB"] = self.remarksArrayB!
        }
        if self.remarksB != nil {
            map["RemarksB"] = self.remarksB!
        }
        if self.remarksC != nil {
            map["RemarksC"] = self.remarksC!
        }
        if self.remarksD != nil {
            map["RemarksD"] = self.remarksD!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.setId != nil {
            map["SetId"] = self.setId!
        }
        if self.sourcePosition != nil {
            map["SourcePosition"] = self.sourcePosition!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        if self.sourceUri != nil {
            map["SourceUri"] = self.sourceUri!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["Tags"] = tmp
        }
        if self.tagsFailReason != nil {
            map["TagsFailReason"] = self.tagsFailReason!
        }
        if self.tagsModifyTime != nil {
            map["TagsModifyTime"] = self.tagsModifyTime!
        }
        if self.tagsStatus != nil {
            map["TagsStatus"] = self.tagsStatus!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Address") {
            var model = GetImageResponseBody.Address()
            model.fromMap(dict["Address"] as! [String: Any])
            self.address = model
        }
        if dict.keys.contains("AddressFailReason") {
            self.addressFailReason = dict["AddressFailReason"] as! String
        }
        if dict.keys.contains("AddressModifyTime") {
            self.addressModifyTime = dict["AddressModifyTime"] as! String
        }
        if dict.keys.contains("AddressStatus") {
            self.addressStatus = dict["AddressStatus"] as! String
        }
        if dict.keys.contains("CreateTime") {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("CroppingSuggestion") {
            self.croppingSuggestion = dict["CroppingSuggestion"] as! [GetImageResponseBody.CroppingSuggestion]
        }
        if dict.keys.contains("CroppingSuggestionFailReason") {
            self.croppingSuggestionFailReason = dict["CroppingSuggestionFailReason"] as! String
        }
        if dict.keys.contains("CroppingSuggestionModifyTime") {
            self.croppingSuggestionModifyTime = dict["CroppingSuggestionModifyTime"] as! String
        }
        if dict.keys.contains("CroppingSuggestionStatus") {
            self.croppingSuggestionStatus = dict["CroppingSuggestionStatus"] as! String
        }
        if dict.keys.contains("Exif") {
            self.exif = dict["Exif"] as! String
        }
        if dict.keys.contains("ExternalId") {
            self.externalId = dict["ExternalId"] as! String
        }
        if dict.keys.contains("Faces") {
            self.faces = dict["Faces"] as! [GetImageResponseBody.Faces]
        }
        if dict.keys.contains("FacesFailReason") {
            self.facesFailReason = dict["FacesFailReason"] as! String
        }
        if dict.keys.contains("FacesModifyTime") {
            self.facesModifyTime = dict["FacesModifyTime"] as! String
        }
        if dict.keys.contains("FacesStatus") {
            self.facesStatus = dict["FacesStatus"] as! String
        }
        if dict.keys.contains("FileSize") {
            self.fileSize = dict["FileSize"] as! Int32
        }
        if dict.keys.contains("ImageFormat") {
            self.imageFormat = dict["ImageFormat"] as! String
        }
        if dict.keys.contains("ImageHeight") {
            self.imageHeight = dict["ImageHeight"] as! Int32
        }
        if dict.keys.contains("ImageQuality") {
            var model = GetImageResponseBody.ImageQuality()
            model.fromMap(dict["ImageQuality"] as! [String: Any])
            self.imageQuality = model
        }
        if dict.keys.contains("ImageQualityFailReason") {
            self.imageQualityFailReason = dict["ImageQualityFailReason"] as! String
        }
        if dict.keys.contains("ImageQualityModifyTime") {
            self.imageQualityModifyTime = dict["ImageQualityModifyTime"] as! String
        }
        if dict.keys.contains("ImageQualityStatus") {
            self.imageQualityStatus = dict["ImageQualityStatus"] as! String
        }
        if dict.keys.contains("ImageTime") {
            self.imageTime = dict["ImageTime"] as! String
        }
        if dict.keys.contains("ImageUri") {
            self.imageUri = dict["ImageUri"] as! String
        }
        if dict.keys.contains("ImageWidth") {
            self.imageWidth = dict["ImageWidth"] as! Int32
        }
        if dict.keys.contains("Location") {
            self.location = dict["Location"] as! String
        }
        if dict.keys.contains("ModifyTime") {
            self.modifyTime = dict["ModifyTime"] as! String
        }
        if dict.keys.contains("OCR") {
            self.OCR = dict["OCR"] as! [GetImageResponseBody.OCR]
        }
        if dict.keys.contains("OCRFailReason") {
            self.OCRFailReason = dict["OCRFailReason"] as! String
        }
        if dict.keys.contains("OCRModifyTime") {
            self.OCRModifyTime = dict["OCRModifyTime"] as! String
        }
        if dict.keys.contains("OCRStatus") {
            self.OCRStatus = dict["OCRStatus"] as! String
        }
        if dict.keys.contains("Orientation") {
            self.orientation = dict["Orientation"] as! String
        }
        if dict.keys.contains("RemarksA") {
            self.remarksA = dict["RemarksA"] as! String
        }
        if dict.keys.contains("RemarksArrayA") {
            self.remarksArrayA = dict["RemarksArrayA"] as! String
        }
        if dict.keys.contains("RemarksArrayB") {
            self.remarksArrayB = dict["RemarksArrayB"] as! String
        }
        if dict.keys.contains("RemarksB") {
            self.remarksB = dict["RemarksB"] as! String
        }
        if dict.keys.contains("RemarksC") {
            self.remarksC = dict["RemarksC"] as! String
        }
        if dict.keys.contains("RemarksD") {
            self.remarksD = dict["RemarksD"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SetId") {
            self.setId = dict["SetId"] as! String
        }
        if dict.keys.contains("SourcePosition") {
            self.sourcePosition = dict["SourcePosition"] as! String
        }
        if dict.keys.contains("SourceType") {
            self.sourceType = dict["SourceType"] as! String
        }
        if dict.keys.contains("SourceUri") {
            self.sourceUri = dict["SourceUri"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! [GetImageResponseBody.Tags]
        }
        if dict.keys.contains("TagsFailReason") {
            self.tagsFailReason = dict["TagsFailReason"] as! String
        }
        if dict.keys.contains("TagsModifyTime") {
            self.tagsModifyTime = dict["TagsModifyTime"] as! String
        }
        if dict.keys.contains("TagsStatus") {
            self.tagsStatus = dict["TagsStatus"] as! String
        }
    }
}

public class GetImageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetImageResponseBody?

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
            var model = GetImageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetImageCroppingSuggestionsRequest : Tea.TeaModel {
    public var aspectRatios: String?

    public var imageUri: String?

    public var project: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aspectRatios != nil {
            map["AspectRatios"] = self.aspectRatios!
        }
        if self.imageUri != nil {
            map["ImageUri"] = self.imageUri!
        }
        if self.project != nil {
            map["Project"] = self.project!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AspectRatios") {
            self.aspectRatios = dict["AspectRatios"] as! String
        }
        if dict.keys.contains("ImageUri") {
            self.imageUri = dict["ImageUri"] as! String
        }
        if dict.keys.contains("Project") {
            self.project = dict["Project"] as! String
        }
    }
}

public class GetImageCroppingSuggestionsResponseBody : Tea.TeaModel {
    public class CroppingSuggestions : Tea.TeaModel {
        public class CroppingBoundary : Tea.TeaModel {
            public var height: Int32?

            public var left_: Int32?

            public var top: Int32?

            public var width: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.height != nil {
                    map["Height"] = self.height!
                }
                if self.left_ != nil {
                    map["Left"] = self.left_!
                }
                if self.top != nil {
                    map["Top"] = self.top!
                }
                if self.width != nil {
                    map["Width"] = self.width!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Height") {
                    self.height = dict["Height"] as! Int32
                }
                if dict.keys.contains("Left") {
                    self.left_ = dict["Left"] as! Int32
                }
                if dict.keys.contains("Top") {
                    self.top = dict["Top"] as! Int32
                }
                if dict.keys.contains("Width") {
                    self.width = dict["Width"] as! Int32
                }
            }
        }
        public var aspectRatio: String?

        public var croppingBoundary: GetImageCroppingSuggestionsResponseBody.CroppingSuggestions.CroppingBoundary?

        public var score: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.croppingBoundary?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aspectRatio != nil {
                map["AspectRatio"] = self.aspectRatio!
            }
            if self.croppingBoundary != nil {
                map["CroppingBoundary"] = self.croppingBoundary?.toMap()
            }
            if self.score != nil {
                map["Score"] = self.score!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AspectRatio") {
                self.aspectRatio = dict["AspectRatio"] as! String
            }
            if dict.keys.contains("CroppingBoundary") {
                var model = GetImageCroppingSuggestionsResponseBody.CroppingSuggestions.CroppingBoundary()
                model.fromMap(dict["CroppingBoundary"] as! [String: Any])
                self.croppingBoundary = model
            }
            if dict.keys.contains("Score") {
                self.score = dict["Score"] as! Double
            }
        }
    }
    public var croppingSuggestions: [GetImageCroppingSuggestionsResponseBody.CroppingSuggestions]?

    public var imageUri: String?

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
        if self.croppingSuggestions != nil {
            var tmp : [Any] = []
            for k in self.croppingSuggestions! {
                tmp.append(k.toMap())
            }
            map["CroppingSuggestions"] = tmp
        }
        if self.imageUri != nil {
            map["ImageUri"] = self.imageUri!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CroppingSuggestions") {
            self.croppingSuggestions = dict["CroppingSuggestions"] as! [GetImageCroppingSuggestionsResponseBody.CroppingSuggestions]
        }
        if dict.keys.contains("ImageUri") {
            self.imageUri = dict["ImageUri"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetImageCroppingSuggestionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetImageCroppingSuggestionsResponseBody?

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
            var model = GetImageCroppingSuggestionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetImageQualityRequest : Tea.TeaModel {
    public var imageUri: String?

    public var project: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageUri != nil {
            map["ImageUri"] = self.imageUri!
        }
        if self.project != nil {
            map["Project"] = self.project!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ImageUri") {
            self.imageUri = dict["ImageUri"] as! String
        }
        if dict.keys.contains("Project") {
            self.project = dict["Project"] as! String
        }
    }
}

public class GetImageQualityResponseBody : Tea.TeaModel {
    public class ImageQuality : Tea.TeaModel {
        public var clarity: Double?

        public var clarityScore: Double?

        public var color: Double?

        public var colorScore: Double?

        public var compositionScore: Double?

        public var contrast: Double?

        public var contrastScore: Double?

        public var exposure: Double?

        public var exposureScore: Double?

        public var overallScore: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.clarity != nil {
                map["Clarity"] = self.clarity!
            }
            if self.clarityScore != nil {
                map["ClarityScore"] = self.clarityScore!
            }
            if self.color != nil {
                map["Color"] = self.color!
            }
            if self.colorScore != nil {
                map["ColorScore"] = self.colorScore!
            }
            if self.compositionScore != nil {
                map["CompositionScore"] = self.compositionScore!
            }
            if self.contrast != nil {
                map["Contrast"] = self.contrast!
            }
            if self.contrastScore != nil {
                map["ContrastScore"] = self.contrastScore!
            }
            if self.exposure != nil {
                map["Exposure"] = self.exposure!
            }
            if self.exposureScore != nil {
                map["ExposureScore"] = self.exposureScore!
            }
            if self.overallScore != nil {
                map["OverallScore"] = self.overallScore!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Clarity") {
                self.clarity = dict["Clarity"] as! Double
            }
            if dict.keys.contains("ClarityScore") {
                self.clarityScore = dict["ClarityScore"] as! Double
            }
            if dict.keys.contains("Color") {
                self.color = dict["Color"] as! Double
            }
            if dict.keys.contains("ColorScore") {
                self.colorScore = dict["ColorScore"] as! Double
            }
            if dict.keys.contains("CompositionScore") {
                self.compositionScore = dict["CompositionScore"] as! Double
            }
            if dict.keys.contains("Contrast") {
                self.contrast = dict["Contrast"] as! Double
            }
            if dict.keys.contains("ContrastScore") {
                self.contrastScore = dict["ContrastScore"] as! Double
            }
            if dict.keys.contains("Exposure") {
                self.exposure = dict["Exposure"] as! Double
            }
            if dict.keys.contains("ExposureScore") {
                self.exposureScore = dict["ExposureScore"] as! Double
            }
            if dict.keys.contains("OverallScore") {
                self.overallScore = dict["OverallScore"] as! Double
            }
        }
    }
    public var imageQuality: GetImageQualityResponseBody.ImageQuality?

    public var imageUri: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.imageQuality?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageQuality != nil {
            map["ImageQuality"] = self.imageQuality?.toMap()
        }
        if self.imageUri != nil {
            map["ImageUri"] = self.imageUri!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ImageQuality") {
            var model = GetImageQualityResponseBody.ImageQuality()
            model.fromMap(dict["ImageQuality"] as! [String: Any])
            self.imageQuality = model
        }
        if dict.keys.contains("ImageUri") {
            self.imageUri = dict["ImageUri"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetImageQualityResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetImageQualityResponseBody?

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
            var model = GetImageQualityResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetMediaMetaRequest : Tea.TeaModel {
    public var mediaUri: String?

    public var project: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.mediaUri != nil {
            map["MediaUri"] = self.mediaUri!
        }
        if self.project != nil {
            map["Project"] = self.project!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MediaUri") {
            self.mediaUri = dict["MediaUri"] as! String
        }
        if dict.keys.contains("Project") {
            self.project = dict["Project"] as! String
        }
    }
}

public class GetMediaMetaResponseBody : Tea.TeaModel {
    public class MediaMeta : Tea.TeaModel {
        public class MediaFormat : Tea.TeaModel {
            public class Address : Tea.TeaModel {
                public var addressLine: String?

                public var city: String?

                public var country: String?

                public var district: String?

                public var province: String?

                public var township: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.addressLine != nil {
                        map["AddressLine"] = self.addressLine!
                    }
                    if self.city != nil {
                        map["City"] = self.city!
                    }
                    if self.country != nil {
                        map["Country"] = self.country!
                    }
                    if self.district != nil {
                        map["District"] = self.district!
                    }
                    if self.province != nil {
                        map["Province"] = self.province!
                    }
                    if self.township != nil {
                        map["Township"] = self.township!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AddressLine") {
                        self.addressLine = dict["AddressLine"] as! String
                    }
                    if dict.keys.contains("City") {
                        self.city = dict["City"] as! String
                    }
                    if dict.keys.contains("Country") {
                        self.country = dict["Country"] as! String
                    }
                    if dict.keys.contains("District") {
                        self.district = dict["District"] as! String
                    }
                    if dict.keys.contains("Province") {
                        self.province = dict["Province"] as! String
                    }
                    if dict.keys.contains("Township") {
                        self.township = dict["Township"] as! String
                    }
                }
            }
            public class Tag : Tea.TeaModel {
                public var album: String?

                public var albumArtist: String?

                public var artist: String?

                public var composer: String?

                public var creationTime: String?

                public var language: String?

                public var performer: String?

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
                    if self.album != nil {
                        map["Album"] = self.album!
                    }
                    if self.albumArtist != nil {
                        map["AlbumArtist"] = self.albumArtist!
                    }
                    if self.artist != nil {
                        map["Artist"] = self.artist!
                    }
                    if self.composer != nil {
                        map["Composer"] = self.composer!
                    }
                    if self.creationTime != nil {
                        map["CreationTime"] = self.creationTime!
                    }
                    if self.language != nil {
                        map["Language"] = self.language!
                    }
                    if self.performer != nil {
                        map["Performer"] = self.performer!
                    }
                    if self.title != nil {
                        map["Title"] = self.title!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Album") {
                        self.album = dict["Album"] as! String
                    }
                    if dict.keys.contains("AlbumArtist") {
                        self.albumArtist = dict["AlbumArtist"] as! String
                    }
                    if dict.keys.contains("Artist") {
                        self.artist = dict["Artist"] as! String
                    }
                    if dict.keys.contains("Composer") {
                        self.composer = dict["Composer"] as! String
                    }
                    if dict.keys.contains("CreationTime") {
                        self.creationTime = dict["CreationTime"] as! String
                    }
                    if dict.keys.contains("Language") {
                        self.language = dict["Language"] as! String
                    }
                    if dict.keys.contains("Performer") {
                        self.performer = dict["Performer"] as! String
                    }
                    if dict.keys.contains("Title") {
                        self.title = dict["Title"] as! String
                    }
                }
            }
            public var address: GetMediaMetaResponseBody.MediaMeta.MediaFormat.Address?

            public var bitrate: String?

            public var creationTime: String?

            public var duration: String?

            public var formatLongName: String?

            public var formatName: String?

            public var location: String?

            public var numberPrograms: Int32?

            public var numberStreams: Int32?

            public var size: String?

            public var startTime: String?

            public var tag: GetMediaMetaResponseBody.MediaMeta.MediaFormat.Tag?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.address?.validate()
                try self.tag?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.address != nil {
                    map["Address"] = self.address?.toMap()
                }
                if self.bitrate != nil {
                    map["Bitrate"] = self.bitrate!
                }
                if self.creationTime != nil {
                    map["CreationTime"] = self.creationTime!
                }
                if self.duration != nil {
                    map["Duration"] = self.duration!
                }
                if self.formatLongName != nil {
                    map["FormatLongName"] = self.formatLongName!
                }
                if self.formatName != nil {
                    map["FormatName"] = self.formatName!
                }
                if self.location != nil {
                    map["Location"] = self.location!
                }
                if self.numberPrograms != nil {
                    map["NumberPrograms"] = self.numberPrograms!
                }
                if self.numberStreams != nil {
                    map["NumberStreams"] = self.numberStreams!
                }
                if self.size != nil {
                    map["Size"] = self.size!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                if self.tag != nil {
                    map["Tag"] = self.tag?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Address") {
                    var model = GetMediaMetaResponseBody.MediaMeta.MediaFormat.Address()
                    model.fromMap(dict["Address"] as! [String: Any])
                    self.address = model
                }
                if dict.keys.contains("Bitrate") {
                    self.bitrate = dict["Bitrate"] as! String
                }
                if dict.keys.contains("CreationTime") {
                    self.creationTime = dict["CreationTime"] as! String
                }
                if dict.keys.contains("Duration") {
                    self.duration = dict["Duration"] as! String
                }
                if dict.keys.contains("FormatLongName") {
                    self.formatLongName = dict["FormatLongName"] as! String
                }
                if dict.keys.contains("FormatName") {
                    self.formatName = dict["FormatName"] as! String
                }
                if dict.keys.contains("Location") {
                    self.location = dict["Location"] as! String
                }
                if dict.keys.contains("NumberPrograms") {
                    self.numberPrograms = dict["NumberPrograms"] as! Int32
                }
                if dict.keys.contains("NumberStreams") {
                    self.numberStreams = dict["NumberStreams"] as! Int32
                }
                if dict.keys.contains("Size") {
                    self.size = dict["Size"] as! String
                }
                if dict.keys.contains("StartTime") {
                    self.startTime = dict["StartTime"] as! String
                }
                if dict.keys.contains("Tag") {
                    var model = GetMediaMetaResponseBody.MediaMeta.MediaFormat.Tag()
                    model.fromMap(dict["Tag"] as! [String: Any])
                    self.tag = model
                }
            }
        }
        public class MediaStreams : Tea.TeaModel {
            public class AudioStreams : Tea.TeaModel {
                public var bitrate: String?

                public var channelLayout: String?

                public var channels: Int32?

                public var codecLongName: String?

                public var codecName: String?

                public var codecTag: String?

                public var codecTagString: String?

                public var codecTimeBase: String?

                public var duration: String?

                public var frames: String?

                public var index: Int32?

                public var language: String?

                public var sampleFormat: String?

                public var sampleRate: String?

                public var startTime: String?

                public var timeBase: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.bitrate != nil {
                        map["Bitrate"] = self.bitrate!
                    }
                    if self.channelLayout != nil {
                        map["ChannelLayout"] = self.channelLayout!
                    }
                    if self.channels != nil {
                        map["Channels"] = self.channels!
                    }
                    if self.codecLongName != nil {
                        map["CodecLongName"] = self.codecLongName!
                    }
                    if self.codecName != nil {
                        map["CodecName"] = self.codecName!
                    }
                    if self.codecTag != nil {
                        map["CodecTag"] = self.codecTag!
                    }
                    if self.codecTagString != nil {
                        map["CodecTagString"] = self.codecTagString!
                    }
                    if self.codecTimeBase != nil {
                        map["CodecTimeBase"] = self.codecTimeBase!
                    }
                    if self.duration != nil {
                        map["Duration"] = self.duration!
                    }
                    if self.frames != nil {
                        map["Frames"] = self.frames!
                    }
                    if self.index != nil {
                        map["Index"] = self.index!
                    }
                    if self.language != nil {
                        map["Language"] = self.language!
                    }
                    if self.sampleFormat != nil {
                        map["SampleFormat"] = self.sampleFormat!
                    }
                    if self.sampleRate != nil {
                        map["SampleRate"] = self.sampleRate!
                    }
                    if self.startTime != nil {
                        map["StartTime"] = self.startTime!
                    }
                    if self.timeBase != nil {
                        map["TimeBase"] = self.timeBase!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Bitrate") {
                        self.bitrate = dict["Bitrate"] as! String
                    }
                    if dict.keys.contains("ChannelLayout") {
                        self.channelLayout = dict["ChannelLayout"] as! String
                    }
                    if dict.keys.contains("Channels") {
                        self.channels = dict["Channels"] as! Int32
                    }
                    if dict.keys.contains("CodecLongName") {
                        self.codecLongName = dict["CodecLongName"] as! String
                    }
                    if dict.keys.contains("CodecName") {
                        self.codecName = dict["CodecName"] as! String
                    }
                    if dict.keys.contains("CodecTag") {
                        self.codecTag = dict["CodecTag"] as! String
                    }
                    if dict.keys.contains("CodecTagString") {
                        self.codecTagString = dict["CodecTagString"] as! String
                    }
                    if dict.keys.contains("CodecTimeBase") {
                        self.codecTimeBase = dict["CodecTimeBase"] as! String
                    }
                    if dict.keys.contains("Duration") {
                        self.duration = dict["Duration"] as! String
                    }
                    if dict.keys.contains("Frames") {
                        self.frames = dict["Frames"] as! String
                    }
                    if dict.keys.contains("Index") {
                        self.index = dict["Index"] as! Int32
                    }
                    if dict.keys.contains("Language") {
                        self.language = dict["Language"] as! String
                    }
                    if dict.keys.contains("SampleFormat") {
                        self.sampleFormat = dict["SampleFormat"] as! String
                    }
                    if dict.keys.contains("SampleRate") {
                        self.sampleRate = dict["SampleRate"] as! String
                    }
                    if dict.keys.contains("StartTime") {
                        self.startTime = dict["StartTime"] as! String
                    }
                    if dict.keys.contains("TimeBase") {
                        self.timeBase = dict["TimeBase"] as! String
                    }
                }
            }
            public class SubtitleStreams : Tea.TeaModel {
                public var index: Int32?

                public var language: String?

                public override init() {
                    super.init()
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
                    if self.language != nil {
                        map["Language"] = self.language!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Index") {
                        self.index = dict["Index"] as! Int32
                    }
                    if dict.keys.contains("Language") {
                        self.language = dict["Language"] as! String
                    }
                }
            }
            public class VideoStreams : Tea.TeaModel {
                public var averageFrameRate: String?

                public var bitrate: String?

                public var codecLongName: String?

                public var codecName: String?

                public var codecTag: String?

                public var codecTagString: String?

                public var codecTimeBase: String?

                public var displayAspectRatio: String?

                public var duration: String?

                public var frameRrate: String?

                public var frames: String?

                public var hasBFrames: Int32?

                public var height: Int32?

                public var index: Int32?

                public var language: String?

                public var level: Int32?

                public var pixelFormat: String?

                public var profile: String?

                public var rotate: String?

                public var sampleAspectRatio: String?

                public var startTime: String?

                public var timeBase: String?

                public var width: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.averageFrameRate != nil {
                        map["AverageFrameRate"] = self.averageFrameRate!
                    }
                    if self.bitrate != nil {
                        map["Bitrate"] = self.bitrate!
                    }
                    if self.codecLongName != nil {
                        map["CodecLongName"] = self.codecLongName!
                    }
                    if self.codecName != nil {
                        map["CodecName"] = self.codecName!
                    }
                    if self.codecTag != nil {
                        map["CodecTag"] = self.codecTag!
                    }
                    if self.codecTagString != nil {
                        map["CodecTagString"] = self.codecTagString!
                    }
                    if self.codecTimeBase != nil {
                        map["CodecTimeBase"] = self.codecTimeBase!
                    }
                    if self.displayAspectRatio != nil {
                        map["DisplayAspectRatio"] = self.displayAspectRatio!
                    }
                    if self.duration != nil {
                        map["Duration"] = self.duration!
                    }
                    if self.frameRrate != nil {
                        map["FrameRrate"] = self.frameRrate!
                    }
                    if self.frames != nil {
                        map["Frames"] = self.frames!
                    }
                    if self.hasBFrames != nil {
                        map["HasBFrames"] = self.hasBFrames!
                    }
                    if self.height != nil {
                        map["Height"] = self.height!
                    }
                    if self.index != nil {
                        map["Index"] = self.index!
                    }
                    if self.language != nil {
                        map["Language"] = self.language!
                    }
                    if self.level != nil {
                        map["Level"] = self.level!
                    }
                    if self.pixelFormat != nil {
                        map["PixelFormat"] = self.pixelFormat!
                    }
                    if self.profile != nil {
                        map["Profile"] = self.profile!
                    }
                    if self.rotate != nil {
                        map["Rotate"] = self.rotate!
                    }
                    if self.sampleAspectRatio != nil {
                        map["SampleAspectRatio"] = self.sampleAspectRatio!
                    }
                    if self.startTime != nil {
                        map["StartTime"] = self.startTime!
                    }
                    if self.timeBase != nil {
                        map["TimeBase"] = self.timeBase!
                    }
                    if self.width != nil {
                        map["Width"] = self.width!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AverageFrameRate") {
                        self.averageFrameRate = dict["AverageFrameRate"] as! String
                    }
                    if dict.keys.contains("Bitrate") {
                        self.bitrate = dict["Bitrate"] as! String
                    }
                    if dict.keys.contains("CodecLongName") {
                        self.codecLongName = dict["CodecLongName"] as! String
                    }
                    if dict.keys.contains("CodecName") {
                        self.codecName = dict["CodecName"] as! String
                    }
                    if dict.keys.contains("CodecTag") {
                        self.codecTag = dict["CodecTag"] as! String
                    }
                    if dict.keys.contains("CodecTagString") {
                        self.codecTagString = dict["CodecTagString"] as! String
                    }
                    if dict.keys.contains("CodecTimeBase") {
                        self.codecTimeBase = dict["CodecTimeBase"] as! String
                    }
                    if dict.keys.contains("DisplayAspectRatio") {
                        self.displayAspectRatio = dict["DisplayAspectRatio"] as! String
                    }
                    if dict.keys.contains("Duration") {
                        self.duration = dict["Duration"] as! String
                    }
                    if dict.keys.contains("FrameRrate") {
                        self.frameRrate = dict["FrameRrate"] as! String
                    }
                    if dict.keys.contains("Frames") {
                        self.frames = dict["Frames"] as! String
                    }
                    if dict.keys.contains("HasBFrames") {
                        self.hasBFrames = dict["HasBFrames"] as! Int32
                    }
                    if dict.keys.contains("Height") {
                        self.height = dict["Height"] as! Int32
                    }
                    if dict.keys.contains("Index") {
                        self.index = dict["Index"] as! Int32
                    }
                    if dict.keys.contains("Language") {
                        self.language = dict["Language"] as! String
                    }
                    if dict.keys.contains("Level") {
                        self.level = dict["Level"] as! Int32
                    }
                    if dict.keys.contains("PixelFormat") {
                        self.pixelFormat = dict["PixelFormat"] as! String
                    }
                    if dict.keys.contains("Profile") {
                        self.profile = dict["Profile"] as! String
                    }
                    if dict.keys.contains("Rotate") {
                        self.rotate = dict["Rotate"] as! String
                    }
                    if dict.keys.contains("SampleAspectRatio") {
                        self.sampleAspectRatio = dict["SampleAspectRatio"] as! String
                    }
                    if dict.keys.contains("StartTime") {
                        self.startTime = dict["StartTime"] as! String
                    }
                    if dict.keys.contains("TimeBase") {
                        self.timeBase = dict["TimeBase"] as! String
                    }
                    if dict.keys.contains("Width") {
                        self.width = dict["Width"] as! Int32
                    }
                }
            }
            public var audioStreams: [GetMediaMetaResponseBody.MediaMeta.MediaStreams.AudioStreams]?

            public var subtitleStreams: [GetMediaMetaResponseBody.MediaMeta.MediaStreams.SubtitleStreams]?

            public var videoStreams: [GetMediaMetaResponseBody.MediaMeta.MediaStreams.VideoStreams]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.audioStreams != nil {
                    var tmp : [Any] = []
                    for k in self.audioStreams! {
                        tmp.append(k.toMap())
                    }
                    map["AudioStreams"] = tmp
                }
                if self.subtitleStreams != nil {
                    var tmp : [Any] = []
                    for k in self.subtitleStreams! {
                        tmp.append(k.toMap())
                    }
                    map["SubtitleStreams"] = tmp
                }
                if self.videoStreams != nil {
                    var tmp : [Any] = []
                    for k in self.videoStreams! {
                        tmp.append(k.toMap())
                    }
                    map["VideoStreams"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AudioStreams") {
                    self.audioStreams = dict["AudioStreams"] as! [GetMediaMetaResponseBody.MediaMeta.MediaStreams.AudioStreams]
                }
                if dict.keys.contains("SubtitleStreams") {
                    self.subtitleStreams = dict["SubtitleStreams"] as! [GetMediaMetaResponseBody.MediaMeta.MediaStreams.SubtitleStreams]
                }
                if dict.keys.contains("VideoStreams") {
                    self.videoStreams = dict["VideoStreams"] as! [GetMediaMetaResponseBody.MediaMeta.MediaStreams.VideoStreams]
                }
            }
        }
        public var mediaFormat: GetMediaMetaResponseBody.MediaMeta.MediaFormat?

        public var mediaStreams: GetMediaMetaResponseBody.MediaMeta.MediaStreams?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.mediaFormat?.validate()
            try self.mediaStreams?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.mediaFormat != nil {
                map["MediaFormat"] = self.mediaFormat?.toMap()
            }
            if self.mediaStreams != nil {
                map["MediaStreams"] = self.mediaStreams?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("MediaFormat") {
                var model = GetMediaMetaResponseBody.MediaMeta.MediaFormat()
                model.fromMap(dict["MediaFormat"] as! [String: Any])
                self.mediaFormat = model
            }
            if dict.keys.contains("MediaStreams") {
                var model = GetMediaMetaResponseBody.MediaMeta.MediaStreams()
                model.fromMap(dict["MediaStreams"] as! [String: Any])
                self.mediaStreams = model
            }
        }
    }
    public var mediaMeta: GetMediaMetaResponseBody.MediaMeta?

    public var mediaUri: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.mediaMeta?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.mediaMeta != nil {
            map["MediaMeta"] = self.mediaMeta?.toMap()
        }
        if self.mediaUri != nil {
            map["MediaUri"] = self.mediaUri!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MediaMeta") {
            var model = GetMediaMetaResponseBody.MediaMeta()
            model.fromMap(dict["MediaMeta"] as! [String: Any])
            self.mediaMeta = model
        }
        if dict.keys.contains("MediaUri") {
            self.mediaUri = dict["MediaUri"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetMediaMetaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetMediaMetaResponseBody?

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
            var model = GetMediaMetaResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetOfficeConversionTaskRequest : Tea.TeaModel {
    public var project: String?

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
        if self.project != nil {
            map["Project"] = self.project!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Project") {
            self.project = dict["Project"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class GetOfficeConversionTaskResponseBody : Tea.TeaModel {
    public class FailDetail : Tea.TeaModel {
        public var code: String?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") {
                self.code = dict["Code"] as! String
            }
        }
    }
    public var createTime: String?

    public var externalID: String?

    public var failDetail: GetOfficeConversionTaskResponseBody.FailDetail?

    public var finishTime: String?

    public var imageSpec: String?

    public var notifyEndpoint: String?

    public var notifyTopicName: String?

    public var pageCount: Int32?

    public var percent: Int32?

    public var requestId: String?

    public var srcUri: String?

    public var status: String?

    public var taskId: String?

    public var tgtType: String?

    public var tgtUri: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.failDetail?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.externalID != nil {
            map["ExternalID"] = self.externalID!
        }
        if self.failDetail != nil {
            map["FailDetail"] = self.failDetail?.toMap()
        }
        if self.finishTime != nil {
            map["FinishTime"] = self.finishTime!
        }
        if self.imageSpec != nil {
            map["ImageSpec"] = self.imageSpec!
        }
        if self.notifyEndpoint != nil {
            map["NotifyEndpoint"] = self.notifyEndpoint!
        }
        if self.notifyTopicName != nil {
            map["NotifyTopicName"] = self.notifyTopicName!
        }
        if self.pageCount != nil {
            map["PageCount"] = self.pageCount!
        }
        if self.percent != nil {
            map["Percent"] = self.percent!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.srcUri != nil {
            map["SrcUri"] = self.srcUri!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.tgtType != nil {
            map["TgtType"] = self.tgtType!
        }
        if self.tgtUri != nil {
            map["TgtUri"] = self.tgtUri!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CreateTime") {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("ExternalID") {
            self.externalID = dict["ExternalID"] as! String
        }
        if dict.keys.contains("FailDetail") {
            var model = GetOfficeConversionTaskResponseBody.FailDetail()
            model.fromMap(dict["FailDetail"] as! [String: Any])
            self.failDetail = model
        }
        if dict.keys.contains("FinishTime") {
            self.finishTime = dict["FinishTime"] as! String
        }
        if dict.keys.contains("ImageSpec") {
            self.imageSpec = dict["ImageSpec"] as! String
        }
        if dict.keys.contains("NotifyEndpoint") {
            self.notifyEndpoint = dict["NotifyEndpoint"] as! String
        }
        if dict.keys.contains("NotifyTopicName") {
            self.notifyTopicName = dict["NotifyTopicName"] as! String
        }
        if dict.keys.contains("PageCount") {
            self.pageCount = dict["PageCount"] as! Int32
        }
        if dict.keys.contains("Percent") {
            self.percent = dict["Percent"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SrcUri") {
            self.srcUri = dict["SrcUri"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("TgtType") {
            self.tgtType = dict["TgtType"] as! String
        }
        if dict.keys.contains("TgtUri") {
            self.tgtUri = dict["TgtUri"] as! String
        }
    }
}

public class GetOfficeConversionTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOfficeConversionTaskResponseBody?

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
            var model = GetOfficeConversionTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetOfficePreviewURLRequest : Tea.TeaModel {
    public var project: String?

    public var srcType: String?

    public var srcUri: String?

    public var watermarkFillStyle: String?

    public var watermarkFont: String?

    public var watermarkHorizontal: Int32?

    public var watermarkRotate: Double?

    public var watermarkType: Int32?

    public var watermarkValue: String?

    public var watermarkVertical: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.project != nil {
            map["Project"] = self.project!
        }
        if self.srcType != nil {
            map["SrcType"] = self.srcType!
        }
        if self.srcUri != nil {
            map["SrcUri"] = self.srcUri!
        }
        if self.watermarkFillStyle != nil {
            map["WatermarkFillStyle"] = self.watermarkFillStyle!
        }
        if self.watermarkFont != nil {
            map["WatermarkFont"] = self.watermarkFont!
        }
        if self.watermarkHorizontal != nil {
            map["WatermarkHorizontal"] = self.watermarkHorizontal!
        }
        if self.watermarkRotate != nil {
            map["WatermarkRotate"] = self.watermarkRotate!
        }
        if self.watermarkType != nil {
            map["WatermarkType"] = self.watermarkType!
        }
        if self.watermarkValue != nil {
            map["WatermarkValue"] = self.watermarkValue!
        }
        if self.watermarkVertical != nil {
            map["WatermarkVertical"] = self.watermarkVertical!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Project") {
            self.project = dict["Project"] as! String
        }
        if dict.keys.contains("SrcType") {
            self.srcType = dict["SrcType"] as! String
        }
        if dict.keys.contains("SrcUri") {
            self.srcUri = dict["SrcUri"] as! String
        }
        if dict.keys.contains("WatermarkFillStyle") {
            self.watermarkFillStyle = dict["WatermarkFillStyle"] as! String
        }
        if dict.keys.contains("WatermarkFont") {
            self.watermarkFont = dict["WatermarkFont"] as! String
        }
        if dict.keys.contains("WatermarkHorizontal") {
            self.watermarkHorizontal = dict["WatermarkHorizontal"] as! Int32
        }
        if dict.keys.contains("WatermarkRotate") {
            self.watermarkRotate = dict["WatermarkRotate"] as! Double
        }
        if dict.keys.contains("WatermarkType") {
            self.watermarkType = dict["WatermarkType"] as! Int32
        }
        if dict.keys.contains("WatermarkValue") {
            self.watermarkValue = dict["WatermarkValue"] as! String
        }
        if dict.keys.contains("WatermarkVertical") {
            self.watermarkVertical = dict["WatermarkVertical"] as! Int32
        }
    }
}

public class GetOfficePreviewURLResponseBody : Tea.TeaModel {
    public var accessToken: String?

    public var accessTokenExpiredTime: String?

    public var previewURL: String?

    public var refreshToken: String?

    public var refreshTokenExpiredTime: String?

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
        if self.accessToken != nil {
            map["AccessToken"] = self.accessToken!
        }
        if self.accessTokenExpiredTime != nil {
            map["AccessTokenExpiredTime"] = self.accessTokenExpiredTime!
        }
        if self.previewURL != nil {
            map["PreviewURL"] = self.previewURL!
        }
        if self.refreshToken != nil {
            map["RefreshToken"] = self.refreshToken!
        }
        if self.refreshTokenExpiredTime != nil {
            map["RefreshTokenExpiredTime"] = self.refreshTokenExpiredTime!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessToken") {
            self.accessToken = dict["AccessToken"] as! String
        }
        if dict.keys.contains("AccessTokenExpiredTime") {
            self.accessTokenExpiredTime = dict["AccessTokenExpiredTime"] as! String
        }
        if dict.keys.contains("PreviewURL") {
            self.previewURL = dict["PreviewURL"] as! String
        }
        if dict.keys.contains("RefreshToken") {
            self.refreshToken = dict["RefreshToken"] as! String
        }
        if dict.keys.contains("RefreshTokenExpiredTime") {
            self.refreshTokenExpiredTime = dict["RefreshTokenExpiredTime"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetOfficePreviewURLResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOfficePreviewURLResponseBody?

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
            var model = GetOfficePreviewURLResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetProjectRequest : Tea.TeaModel {
    public var project: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.project != nil {
            map["Project"] = self.project!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Project") {
            self.project = dict["Project"] as! String
        }
    }
}

public class GetProjectResponseBody : Tea.TeaModel {
    public var billingType: String?

    public var CU: Int32?

    public var createTime: String?

    public var endpoint: String?

    public var modifyTime: String?

    public var project: String?

    public var regionId: String?

    public var requestId: String?

    public var serviceRole: String?

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
        if self.billingType != nil {
            map["BillingType"] = self.billingType!
        }
        if self.CU != nil {
            map["CU"] = self.CU!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.endpoint != nil {
            map["Endpoint"] = self.endpoint!
        }
        if self.modifyTime != nil {
            map["ModifyTime"] = self.modifyTime!
        }
        if self.project != nil {
            map["Project"] = self.project!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.serviceRole != nil {
            map["ServiceRole"] = self.serviceRole!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BillingType") {
            self.billingType = dict["BillingType"] as! String
        }
        if dict.keys.contains("CU") {
            self.CU = dict["CU"] as! Int32
        }
        if dict.keys.contains("CreateTime") {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("Endpoint") {
            self.endpoint = dict["Endpoint"] as! String
        }
        if dict.keys.contains("ModifyTime") {
            self.modifyTime = dict["ModifyTime"] as! String
        }
        if dict.keys.contains("Project") {
            self.project = dict["Project"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ServiceRole") {
            self.serviceRole = dict["ServiceRole"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class GetProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetProjectResponseBody?

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
            var model = GetProjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetSetRequest : Tea.TeaModel {
    public var project: String?

    public var setId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.project != nil {
            map["Project"] = self.project!
        }
        if self.setId != nil {
            map["SetId"] = self.setId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Project") {
            self.project = dict["Project"] as! String
        }
        if dict.keys.contains("SetId") {
            self.setId = dict["SetId"] as! String
        }
    }
}

public class GetSetResponseBody : Tea.TeaModel {
    public var createTime: String?

    public var faceCount: Int32?

    public var imageCount: Int32?

    public var modifyTime: String?

    public var requestId: String?

    public var setId: String?

    public var setName: String?

    public var videoCount: Int32?

    public var videoLength: Int32?

    public override init() {
        super.init()
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
        if self.faceCount != nil {
            map["FaceCount"] = self.faceCount!
        }
        if self.imageCount != nil {
            map["ImageCount"] = self.imageCount!
        }
        if self.modifyTime != nil {
            map["ModifyTime"] = self.modifyTime!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.setId != nil {
            map["SetId"] = self.setId!
        }
        if self.setName != nil {
            map["SetName"] = self.setName!
        }
        if self.videoCount != nil {
            map["VideoCount"] = self.videoCount!
        }
        if self.videoLength != nil {
            map["VideoLength"] = self.videoLength!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CreateTime") {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("FaceCount") {
            self.faceCount = dict["FaceCount"] as! Int32
        }
        if dict.keys.contains("ImageCount") {
            self.imageCount = dict["ImageCount"] as! Int32
        }
        if dict.keys.contains("ModifyTime") {
            self.modifyTime = dict["ModifyTime"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SetId") {
            self.setId = dict["SetId"] as! String
        }
        if dict.keys.contains("SetName") {
            self.setName = dict["SetName"] as! String
        }
        if dict.keys.contains("VideoCount") {
            self.videoCount = dict["VideoCount"] as! Int32
        }
        if dict.keys.contains("VideoLength") {
            self.videoLength = dict["VideoLength"] as! Int32
        }
    }
}

public class GetSetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSetResponseBody?

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
            var model = GetSetResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetVideoRequest : Tea.TeaModel {
    public var project: String?

    public var setId: String?

    public var videoUri: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.project != nil {
            map["Project"] = self.project!
        }
        if self.setId != nil {
            map["SetId"] = self.setId!
        }
        if self.videoUri != nil {
            map["VideoUri"] = self.videoUri!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Project") {
            self.project = dict["Project"] as! String
        }
        if dict.keys.contains("SetId") {
            self.setId = dict["SetId"] as! String
        }
        if dict.keys.contains("VideoUri") {
            self.videoUri = dict["VideoUri"] as! String
        }
    }
}

public class GetVideoResponseBody : Tea.TeaModel {
    public class VideoTags : Tea.TeaModel {
        public var parentTagName: String?

        public var tagConfidence: Double?

        public var tagLevel: Int32?

        public var tagName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.parentTagName != nil {
                map["ParentTagName"] = self.parentTagName!
            }
            if self.tagConfidence != nil {
                map["TagConfidence"] = self.tagConfidence!
            }
            if self.tagLevel != nil {
                map["TagLevel"] = self.tagLevel!
            }
            if self.tagName != nil {
                map["TagName"] = self.tagName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ParentTagName") {
                self.parentTagName = dict["ParentTagName"] as! String
            }
            if dict.keys.contains("TagConfidence") {
                self.tagConfidence = dict["TagConfidence"] as! Double
            }
            if dict.keys.contains("TagLevel") {
                self.tagLevel = dict["TagLevel"] as! Int32
            }
            if dict.keys.contains("TagName") {
                self.tagName = dict["TagName"] as! String
            }
        }
    }
    public var createTime: String?

    public var externalId: String?

    public var fileSize: Int32?

    public var modifyTime: String?

    public var processFailReason: String?

    public var processModifyTime: String?

    public var processStatus: String?

    public var remarksA: String?

    public var remarksB: String?

    public var remarksC: String?

    public var remarksD: String?

    public var requestId: String?

    public var setId: String?

    public var sourcePosition: String?

    public var sourceType: String?

    public var sourceUri: String?

    public var videoDuration: Double?

    public var videoFacesFailReason: String?

    public var videoFacesModifyTime: String?

    public var videoFacesStatus: String?

    public var videoFormat: String?

    public var videoFrameTagsFailReason: String?

    public var videoFrameTagsModifyTime: String?

    public var videoFrameTagsStatus: String?

    public var videoFrames: Int32?

    public var videoHeight: Int32?

    public var videoInfo: String?

    public var videoOCRFailReason: String?

    public var videoOCRModifyTime: String?

    public var videoOCRStatus: String?

    public var videoSTTFailReason: String?

    public var videoSTTModifyTime: String?

    public var videoSTTStatus: String?

    public var videoTags: [GetVideoResponseBody.VideoTags]?

    public var videoTagsFailReason: String?

    public var videoTagsModifyTime: String?

    public var videoTagsStatus: String?

    public var videoUri: String?

    public var videoWidth: Int32?

    public override init() {
        super.init()
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
        if self.externalId != nil {
            map["ExternalId"] = self.externalId!
        }
        if self.fileSize != nil {
            map["FileSize"] = self.fileSize!
        }
        if self.modifyTime != nil {
            map["ModifyTime"] = self.modifyTime!
        }
        if self.processFailReason != nil {
            map["ProcessFailReason"] = self.processFailReason!
        }
        if self.processModifyTime != nil {
            map["ProcessModifyTime"] = self.processModifyTime!
        }
        if self.processStatus != nil {
            map["ProcessStatus"] = self.processStatus!
        }
        if self.remarksA != nil {
            map["RemarksA"] = self.remarksA!
        }
        if self.remarksB != nil {
            map["RemarksB"] = self.remarksB!
        }
        if self.remarksC != nil {
            map["RemarksC"] = self.remarksC!
        }
        if self.remarksD != nil {
            map["RemarksD"] = self.remarksD!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.setId != nil {
            map["SetId"] = self.setId!
        }
        if self.sourcePosition != nil {
            map["SourcePosition"] = self.sourcePosition!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        if self.sourceUri != nil {
            map["SourceUri"] = self.sourceUri!
        }
        if self.videoDuration != nil {
            map["VideoDuration"] = self.videoDuration!
        }
        if self.videoFacesFailReason != nil {
            map["VideoFacesFailReason"] = self.videoFacesFailReason!
        }
        if self.videoFacesModifyTime != nil {
            map["VideoFacesModifyTime"] = self.videoFacesModifyTime!
        }
        if self.videoFacesStatus != nil {
            map["VideoFacesStatus"] = self.videoFacesStatus!
        }
        if self.videoFormat != nil {
            map["VideoFormat"] = self.videoFormat!
        }
        if self.videoFrameTagsFailReason != nil {
            map["VideoFrameTagsFailReason"] = self.videoFrameTagsFailReason!
        }
        if self.videoFrameTagsModifyTime != nil {
            map["VideoFrameTagsModifyTime"] = self.videoFrameTagsModifyTime!
        }
        if self.videoFrameTagsStatus != nil {
            map["VideoFrameTagsStatus"] = self.videoFrameTagsStatus!
        }
        if self.videoFrames != nil {
            map["VideoFrames"] = self.videoFrames!
        }
        if self.videoHeight != nil {
            map["VideoHeight"] = self.videoHeight!
        }
        if self.videoInfo != nil {
            map["VideoInfo"] = self.videoInfo!
        }
        if self.videoOCRFailReason != nil {
            map["VideoOCRFailReason"] = self.videoOCRFailReason!
        }
        if self.videoOCRModifyTime != nil {
            map["VideoOCRModifyTime"] = self.videoOCRModifyTime!
        }
        if self.videoOCRStatus != nil {
            map["VideoOCRStatus"] = self.videoOCRStatus!
        }
        if self.videoSTTFailReason != nil {
            map["VideoSTTFailReason"] = self.videoSTTFailReason!
        }
        if self.videoSTTModifyTime != nil {
            map["VideoSTTModifyTime"] = self.videoSTTModifyTime!
        }
        if self.videoSTTStatus != nil {
            map["VideoSTTStatus"] = self.videoSTTStatus!
        }
        if self.videoTags != nil {
            var tmp : [Any] = []
            for k in self.videoTags! {
                tmp.append(k.toMap())
            }
            map["VideoTags"] = tmp
        }
        if self.videoTagsFailReason != nil {
            map["VideoTagsFailReason"] = self.videoTagsFailReason!
        }
        if self.videoTagsModifyTime != nil {
            map["VideoTagsModifyTime"] = self.videoTagsModifyTime!
        }
        if self.videoTagsStatus != nil {
            map["VideoTagsStatus"] = self.videoTagsStatus!
        }
        if self.videoUri != nil {
            map["VideoUri"] = self.videoUri!
        }
        if self.videoWidth != nil {
            map["VideoWidth"] = self.videoWidth!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CreateTime") {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("ExternalId") {
            self.externalId = dict["ExternalId"] as! String
        }
        if dict.keys.contains("FileSize") {
            self.fileSize = dict["FileSize"] as! Int32
        }
        if dict.keys.contains("ModifyTime") {
            self.modifyTime = dict["ModifyTime"] as! String
        }
        if dict.keys.contains("ProcessFailReason") {
            self.processFailReason = dict["ProcessFailReason"] as! String
        }
        if dict.keys.contains("ProcessModifyTime") {
            self.processModifyTime = dict["ProcessModifyTime"] as! String
        }
        if dict.keys.contains("ProcessStatus") {
            self.processStatus = dict["ProcessStatus"] as! String
        }
        if dict.keys.contains("RemarksA") {
            self.remarksA = dict["RemarksA"] as! String
        }
        if dict.keys.contains("RemarksB") {
            self.remarksB = dict["RemarksB"] as! String
        }
        if dict.keys.contains("RemarksC") {
            self.remarksC = dict["RemarksC"] as! String
        }
        if dict.keys.contains("RemarksD") {
            self.remarksD = dict["RemarksD"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SetId") {
            self.setId = dict["SetId"] as! String
        }
        if dict.keys.contains("SourcePosition") {
            self.sourcePosition = dict["SourcePosition"] as! String
        }
        if dict.keys.contains("SourceType") {
            self.sourceType = dict["SourceType"] as! String
        }
        if dict.keys.contains("SourceUri") {
            self.sourceUri = dict["SourceUri"] as! String
        }
        if dict.keys.contains("VideoDuration") {
            self.videoDuration = dict["VideoDuration"] as! Double
        }
        if dict.keys.contains("VideoFacesFailReason") {
            self.videoFacesFailReason = dict["VideoFacesFailReason"] as! String
        }
        if dict.keys.contains("VideoFacesModifyTime") {
            self.videoFacesModifyTime = dict["VideoFacesModifyTime"] as! String
        }
        if dict.keys.contains("VideoFacesStatus") {
            self.videoFacesStatus = dict["VideoFacesStatus"] as! String
        }
        if dict.keys.contains("VideoFormat") {
            self.videoFormat = dict["VideoFormat"] as! String
        }
        if dict.keys.contains("VideoFrameTagsFailReason") {
            self.videoFrameTagsFailReason = dict["VideoFrameTagsFailReason"] as! String
        }
        if dict.keys.contains("VideoFrameTagsModifyTime") {
            self.videoFrameTagsModifyTime = dict["VideoFrameTagsModifyTime"] as! String
        }
        if dict.keys.contains("VideoFrameTagsStatus") {
            self.videoFrameTagsStatus = dict["VideoFrameTagsStatus"] as! String
        }
        if dict.keys.contains("VideoFrames") {
            self.videoFrames = dict["VideoFrames"] as! Int32
        }
        if dict.keys.contains("VideoHeight") {
            self.videoHeight = dict["VideoHeight"] as! Int32
        }
        if dict.keys.contains("VideoInfo") {
            self.videoInfo = dict["VideoInfo"] as! String
        }
        if dict.keys.contains("VideoOCRFailReason") {
            self.videoOCRFailReason = dict["VideoOCRFailReason"] as! String
        }
        if dict.keys.contains("VideoOCRModifyTime") {
            self.videoOCRModifyTime = dict["VideoOCRModifyTime"] as! String
        }
        if dict.keys.contains("VideoOCRStatus") {
            self.videoOCRStatus = dict["VideoOCRStatus"] as! String
        }
        if dict.keys.contains("VideoSTTFailReason") {
            self.videoSTTFailReason = dict["VideoSTTFailReason"] as! String
        }
        if dict.keys.contains("VideoSTTModifyTime") {
            self.videoSTTModifyTime = dict["VideoSTTModifyTime"] as! String
        }
        if dict.keys.contains("VideoSTTStatus") {
            self.videoSTTStatus = dict["VideoSTTStatus"] as! String
        }
        if dict.keys.contains("VideoTags") {
            self.videoTags = dict["VideoTags"] as! [GetVideoResponseBody.VideoTags]
        }
        if dict.keys.contains("VideoTagsFailReason") {
            self.videoTagsFailReason = dict["VideoTagsFailReason"] as! String
        }
        if dict.keys.contains("VideoTagsModifyTime") {
            self.videoTagsModifyTime = dict["VideoTagsModifyTime"] as! String
        }
        if dict.keys.contains("VideoTagsStatus") {
            self.videoTagsStatus = dict["VideoTagsStatus"] as! String
        }
        if dict.keys.contains("VideoUri") {
            self.videoUri = dict["VideoUri"] as! String
        }
        if dict.keys.contains("VideoWidth") {
            self.videoWidth = dict["VideoWidth"] as! Int32
        }
    }
}

public class GetVideoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetVideoResponseBody?

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
            var model = GetVideoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetVideoTaskRequest : Tea.TeaModel {
    public var project: String?

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
        if self.project != nil {
            map["Project"] = self.project!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.taskType != nil {
            map["TaskType"] = self.taskType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Project") {
            self.project = dict["Project"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("TaskType") {
            self.taskType = dict["TaskType"] as! String
        }
    }
}

public class GetVideoTaskResponseBody : Tea.TeaModel {
    public var endTime: String?

    public var errorMessage: String?

    public var notifyEndpoint: String?

    public var notifyTopicName: String?

    public var parameters: String?

    public var progress: Int32?

    public var requestId: String?

    public var result: String?

    public var startTime: String?

    public var status: String?

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
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.notifyEndpoint != nil {
            map["NotifyEndpoint"] = self.notifyEndpoint!
        }
        if self.notifyTopicName != nil {
            map["NotifyTopicName"] = self.notifyTopicName!
        }
        if self.parameters != nil {
            map["Parameters"] = self.parameters!
        }
        if self.progress != nil {
            map["Progress"] = self.progress!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.taskType != nil {
            map["TaskType"] = self.taskType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("ErrorMessage") {
            self.errorMessage = dict["ErrorMessage"] as! String
        }
        if dict.keys.contains("NotifyEndpoint") {
            self.notifyEndpoint = dict["NotifyEndpoint"] as! String
        }
        if dict.keys.contains("NotifyTopicName") {
            self.notifyTopicName = dict["NotifyTopicName"] as! String
        }
        if dict.keys.contains("Parameters") {
            self.parameters = dict["Parameters"] as! String
        }
        if dict.keys.contains("Progress") {
            self.progress = dict["Progress"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("TaskType") {
            self.taskType = dict["TaskType"] as! String
        }
    }
}

public class GetVideoTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetVideoTaskResponseBody?

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
            var model = GetVideoTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetWebofficeURLRequest : Tea.TeaModel {
    public var file: String?

    public var fileID: String?

    public var hidecmb: Bool?

    public var notifyEndpoint: String?

    public var notifyTopicName: String?

    public var permission: String?

    public var project: String?

    public var srcType: String?

    public var user: String?

    public var watermark: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.file != nil {
            map["File"] = self.file!
        }
        if self.fileID != nil {
            map["FileID"] = self.fileID!
        }
        if self.hidecmb != nil {
            map["Hidecmb"] = self.hidecmb!
        }
        if self.notifyEndpoint != nil {
            map["NotifyEndpoint"] = self.notifyEndpoint!
        }
        if self.notifyTopicName != nil {
            map["NotifyTopicName"] = self.notifyTopicName!
        }
        if self.permission != nil {
            map["Permission"] = self.permission!
        }
        if self.project != nil {
            map["Project"] = self.project!
        }
        if self.srcType != nil {
            map["SrcType"] = self.srcType!
        }
        if self.user != nil {
            map["User"] = self.user!
        }
        if self.watermark != nil {
            map["Watermark"] = self.watermark!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("File") {
            self.file = dict["File"] as! String
        }
        if dict.keys.contains("FileID") {
            self.fileID = dict["FileID"] as! String
        }
        if dict.keys.contains("Hidecmb") {
            self.hidecmb = dict["Hidecmb"] as! Bool
        }
        if dict.keys.contains("NotifyEndpoint") {
            self.notifyEndpoint = dict["NotifyEndpoint"] as! String
        }
        if dict.keys.contains("NotifyTopicName") {
            self.notifyTopicName = dict["NotifyTopicName"] as! String
        }
        if dict.keys.contains("Permission") {
            self.permission = dict["Permission"] as! String
        }
        if dict.keys.contains("Project") {
            self.project = dict["Project"] as! String
        }
        if dict.keys.contains("SrcType") {
            self.srcType = dict["SrcType"] as! String
        }
        if dict.keys.contains("User") {
            self.user = dict["User"] as! String
        }
        if dict.keys.contains("Watermark") {
            self.watermark = dict["Watermark"] as! String
        }
    }
}

public class GetWebofficeURLResponseBody : Tea.TeaModel {
    public var accessToken: String?

    public var accessTokenExpiredTime: String?

    public var refreshToken: String?

    public var refreshTokenExpiredTime: String?

    public var requestId: String?

    public var webofficeURL: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessToken != nil {
            map["AccessToken"] = self.accessToken!
        }
        if self.accessTokenExpiredTime != nil {
            map["AccessTokenExpiredTime"] = self.accessTokenExpiredTime!
        }
        if self.refreshToken != nil {
            map["RefreshToken"] = self.refreshToken!
        }
        if self.refreshTokenExpiredTime != nil {
            map["RefreshTokenExpiredTime"] = self.refreshTokenExpiredTime!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.webofficeURL != nil {
            map["WebofficeURL"] = self.webofficeURL!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessToken") {
            self.accessToken = dict["AccessToken"] as! String
        }
        if dict.keys.contains("AccessTokenExpiredTime") {
            self.accessTokenExpiredTime = dict["AccessTokenExpiredTime"] as! String
        }
        if dict.keys.contains("RefreshToken") {
            self.refreshToken = dict["RefreshToken"] as! String
        }
        if dict.keys.contains("RefreshTokenExpiredTime") {
            self.refreshTokenExpiredTime = dict["RefreshTokenExpiredTime"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("WebofficeURL") {
            self.webofficeURL = dict["WebofficeURL"] as! String
        }
    }
}

public class GetWebofficeURLResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetWebofficeURLResponseBody?

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
            var model = GetWebofficeURLResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class IndexImageRequest : Tea.TeaModel {
    public var externalId: String?

    public var imageUri: String?

    public var notifyEndpoint: String?

    public var notifyTopicName: String?

    public var project: String?

    public var remarksA: String?

    public var remarksArrayA: String?

    public var remarksArrayB: String?

    public var remarksB: String?

    public var remarksC: String?

    public var remarksD: String?

    public var setId: String?

    public var sourcePosition: String?

    public var sourceType: String?

    public var sourceUri: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.externalId != nil {
            map["ExternalId"] = self.externalId!
        }
        if self.imageUri != nil {
            map["ImageUri"] = self.imageUri!
        }
        if self.notifyEndpoint != nil {
            map["NotifyEndpoint"] = self.notifyEndpoint!
        }
        if self.notifyTopicName != nil {
            map["NotifyTopicName"] = self.notifyTopicName!
        }
        if self.project != nil {
            map["Project"] = self.project!
        }
        if self.remarksA != nil {
            map["RemarksA"] = self.remarksA!
        }
        if self.remarksArrayA != nil {
            map["RemarksArrayA"] = self.remarksArrayA!
        }
        if self.remarksArrayB != nil {
            map["RemarksArrayB"] = self.remarksArrayB!
        }
        if self.remarksB != nil {
            map["RemarksB"] = self.remarksB!
        }
        if self.remarksC != nil {
            map["RemarksC"] = self.remarksC!
        }
        if self.remarksD != nil {
            map["RemarksD"] = self.remarksD!
        }
        if self.setId != nil {
            map["SetId"] = self.setId!
        }
        if self.sourcePosition != nil {
            map["SourcePosition"] = self.sourcePosition!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        if self.sourceUri != nil {
            map["SourceUri"] = self.sourceUri!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExternalId") {
            self.externalId = dict["ExternalId"] as! String
        }
        if dict.keys.contains("ImageUri") {
            self.imageUri = dict["ImageUri"] as! String
        }
        if dict.keys.contains("NotifyEndpoint") {
            self.notifyEndpoint = dict["NotifyEndpoint"] as! String
        }
        if dict.keys.contains("NotifyTopicName") {
            self.notifyTopicName = dict["NotifyTopicName"] as! String
        }
        if dict.keys.contains("Project") {
            self.project = dict["Project"] as! String
        }
        if dict.keys.contains("RemarksA") {
            self.remarksA = dict["RemarksA"] as! String
        }
        if dict.keys.contains("RemarksArrayA") {
            self.remarksArrayA = dict["RemarksArrayA"] as! String
        }
        if dict.keys.contains("RemarksArrayB") {
            self.remarksArrayB = dict["RemarksArrayB"] as! String
        }
        if dict.keys.contains("RemarksB") {
            self.remarksB = dict["RemarksB"] as! String
        }
        if dict.keys.contains("RemarksC") {
            self.remarksC = dict["RemarksC"] as! String
        }
        if dict.keys.contains("RemarksD") {
            self.remarksD = dict["RemarksD"] as! String
        }
        if dict.keys.contains("SetId") {
            self.setId = dict["SetId"] as! String
        }
        if dict.keys.contains("SourcePosition") {
            self.sourcePosition = dict["SourcePosition"] as! String
        }
        if dict.keys.contains("SourceType") {
            self.sourceType = dict["SourceType"] as! String
        }
        if dict.keys.contains("SourceUri") {
            self.sourceUri = dict["SourceUri"] as! String
        }
    }
}

public class IndexImageResponseBody : Tea.TeaModel {
    public var createTime: String?

    public var externalId: String?

    public var imageUri: String?

    public var modifyTime: String?

    public var remarksA: String?

    public var remarksArrayA: String?

    public var remarksArrayB: String?

    public var remarksB: String?

    public var remarksC: String?

    public var remarksD: String?

    public var requestId: String?

    public var setId: String?

    public override init() {
        super.init()
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
        if self.externalId != nil {
            map["ExternalId"] = self.externalId!
        }
        if self.imageUri != nil {
            map["ImageUri"] = self.imageUri!
        }
        if self.modifyTime != nil {
            map["ModifyTime"] = self.modifyTime!
        }
        if self.remarksA != nil {
            map["RemarksA"] = self.remarksA!
        }
        if self.remarksArrayA != nil {
            map["RemarksArrayA"] = self.remarksArrayA!
        }
        if self.remarksArrayB != nil {
            map["RemarksArrayB"] = self.remarksArrayB!
        }
        if self.remarksB != nil {
            map["RemarksB"] = self.remarksB!
        }
        if self.remarksC != nil {
            map["RemarksC"] = self.remarksC!
        }
        if self.remarksD != nil {
            map["RemarksD"] = self.remarksD!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.setId != nil {
            map["SetId"] = self.setId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CreateTime") {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("ExternalId") {
            self.externalId = dict["ExternalId"] as! String
        }
        if dict.keys.contains("ImageUri") {
            self.imageUri = dict["ImageUri"] as! String
        }
        if dict.keys.contains("ModifyTime") {
            self.modifyTime = dict["ModifyTime"] as! String
        }
        if dict.keys.contains("RemarksA") {
            self.remarksA = dict["RemarksA"] as! String
        }
        if dict.keys.contains("RemarksArrayA") {
            self.remarksArrayA = dict["RemarksArrayA"] as! String
        }
        if dict.keys.contains("RemarksArrayB") {
            self.remarksArrayB = dict["RemarksArrayB"] as! String
        }
        if dict.keys.contains("RemarksB") {
            self.remarksB = dict["RemarksB"] as! String
        }
        if dict.keys.contains("RemarksC") {
            self.remarksC = dict["RemarksC"] as! String
        }
        if dict.keys.contains("RemarksD") {
            self.remarksD = dict["RemarksD"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SetId") {
            self.setId = dict["SetId"] as! String
        }
    }
}

public class IndexImageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: IndexImageResponseBody?

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
            var model = IndexImageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class IndexVideoRequest : Tea.TeaModel {
    public var externalId: String?

    public var notifyEndpoint: String?

    public var notifyTopicName: String?

    public var project: String?

    public var remarksA: String?

    public var remarksB: String?

    public var remarksC: String?

    public var remarksD: String?

    public var setId: String?

    public var tgtUri: String?

    public var videoUri: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.externalId != nil {
            map["ExternalId"] = self.externalId!
        }
        if self.notifyEndpoint != nil {
            map["NotifyEndpoint"] = self.notifyEndpoint!
        }
        if self.notifyTopicName != nil {
            map["NotifyTopicName"] = self.notifyTopicName!
        }
        if self.project != nil {
            map["Project"] = self.project!
        }
        if self.remarksA != nil {
            map["RemarksA"] = self.remarksA!
        }
        if self.remarksB != nil {
            map["RemarksB"] = self.remarksB!
        }
        if self.remarksC != nil {
            map["RemarksC"] = self.remarksC!
        }
        if self.remarksD != nil {
            map["RemarksD"] = self.remarksD!
        }
        if self.setId != nil {
            map["SetId"] = self.setId!
        }
        if self.tgtUri != nil {
            map["TgtUri"] = self.tgtUri!
        }
        if self.videoUri != nil {
            map["VideoUri"] = self.videoUri!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExternalId") {
            self.externalId = dict["ExternalId"] as! String
        }
        if dict.keys.contains("NotifyEndpoint") {
            self.notifyEndpoint = dict["NotifyEndpoint"] as! String
        }
        if dict.keys.contains("NotifyTopicName") {
            self.notifyTopicName = dict["NotifyTopicName"] as! String
        }
        if dict.keys.contains("Project") {
            self.project = dict["Project"] as! String
        }
        if dict.keys.contains("RemarksA") {
            self.remarksA = dict["RemarksA"] as! String
        }
        if dict.keys.contains("RemarksB") {
            self.remarksB = dict["RemarksB"] as! String
        }
        if dict.keys.contains("RemarksC") {
            self.remarksC = dict["RemarksC"] as! String
        }
        if dict.keys.contains("RemarksD") {
            self.remarksD = dict["RemarksD"] as! String
        }
        if dict.keys.contains("SetId") {
            self.setId = dict["SetId"] as! String
        }
        if dict.keys.contains("TgtUri") {
            self.tgtUri = dict["TgtUri"] as! String
        }
        if dict.keys.contains("VideoUri") {
            self.videoUri = dict["VideoUri"] as! String
        }
    }
}

public class IndexVideoResponseBody : Tea.TeaModel {
    public var createTime: String?

    public var externalId: String?

    public var modifyTime: String?

    public var remarksA: String?

    public var remarksB: String?

    public var remarksC: String?

    public var remarksD: String?

    public var requestId: String?

    public var setId: String?

    public var videoUri: String?

    public override init() {
        super.init()
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
        if self.externalId != nil {
            map["ExternalId"] = self.externalId!
        }
        if self.modifyTime != nil {
            map["ModifyTime"] = self.modifyTime!
        }
        if self.remarksA != nil {
            map["RemarksA"] = self.remarksA!
        }
        if self.remarksB != nil {
            map["RemarksB"] = self.remarksB!
        }
        if self.remarksC != nil {
            map["RemarksC"] = self.remarksC!
        }
        if self.remarksD != nil {
            map["RemarksD"] = self.remarksD!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.setId != nil {
            map["SetId"] = self.setId!
        }
        if self.videoUri != nil {
            map["VideoUri"] = self.videoUri!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CreateTime") {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("ExternalId") {
            self.externalId = dict["ExternalId"] as! String
        }
        if dict.keys.contains("ModifyTime") {
            self.modifyTime = dict["ModifyTime"] as! String
        }
        if dict.keys.contains("RemarksA") {
            self.remarksA = dict["RemarksA"] as! String
        }
        if dict.keys.contains("RemarksB") {
            self.remarksB = dict["RemarksB"] as! String
        }
        if dict.keys.contains("RemarksC") {
            self.remarksC = dict["RemarksC"] as! String
        }
        if dict.keys.contains("RemarksD") {
            self.remarksD = dict["RemarksD"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SetId") {
            self.setId = dict["SetId"] as! String
        }
        if dict.keys.contains("VideoUri") {
            self.videoUri = dict["VideoUri"] as! String
        }
    }
}

public class IndexVideoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: IndexVideoResponseBody?

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
            var model = IndexVideoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListFaceGroupsRequest : Tea.TeaModel {
    public var externalId: String?

    public var limit: Int32?

    public var marker: String?

    public var order: String?

    public var orderBy: String?

    public var project: String?

    public var remarksAQuery: String?

    public var remarksArrayAQuery: String?

    public var remarksArrayBQuery: String?

    public var remarksBQuery: String?

    public var remarksCQuery: String?

    public var remarksDQuery: String?

    public var setId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.externalId != nil {
            map["ExternalId"] = self.externalId!
        }
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.marker != nil {
            map["Marker"] = self.marker!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.orderBy != nil {
            map["OrderBy"] = self.orderBy!
        }
        if self.project != nil {
            map["Project"] = self.project!
        }
        if self.remarksAQuery != nil {
            map["RemarksAQuery"] = self.remarksAQuery!
        }
        if self.remarksArrayAQuery != nil {
            map["RemarksArrayAQuery"] = self.remarksArrayAQuery!
        }
        if self.remarksArrayBQuery != nil {
            map["RemarksArrayBQuery"] = self.remarksArrayBQuery!
        }
        if self.remarksBQuery != nil {
            map["RemarksBQuery"] = self.remarksBQuery!
        }
        if self.remarksCQuery != nil {
            map["RemarksCQuery"] = self.remarksCQuery!
        }
        if self.remarksDQuery != nil {
            map["RemarksDQuery"] = self.remarksDQuery!
        }
        if self.setId != nil {
            map["SetId"] = self.setId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExternalId") {
            self.externalId = dict["ExternalId"] as! String
        }
        if dict.keys.contains("Limit") {
            self.limit = dict["Limit"] as! Int32
        }
        if dict.keys.contains("Marker") {
            self.marker = dict["Marker"] as! String
        }
        if dict.keys.contains("Order") {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("OrderBy") {
            self.orderBy = dict["OrderBy"] as! String
        }
        if dict.keys.contains("Project") {
            self.project = dict["Project"] as! String
        }
        if dict.keys.contains("RemarksAQuery") {
            self.remarksAQuery = dict["RemarksAQuery"] as! String
        }
        if dict.keys.contains("RemarksArrayAQuery") {
            self.remarksArrayAQuery = dict["RemarksArrayAQuery"] as! String
        }
        if dict.keys.contains("RemarksArrayBQuery") {
            self.remarksArrayBQuery = dict["RemarksArrayBQuery"] as! String
        }
        if dict.keys.contains("RemarksBQuery") {
            self.remarksBQuery = dict["RemarksBQuery"] as! String
        }
        if dict.keys.contains("RemarksCQuery") {
            self.remarksCQuery = dict["RemarksCQuery"] as! String
        }
        if dict.keys.contains("RemarksDQuery") {
            self.remarksDQuery = dict["RemarksDQuery"] as! String
        }
        if dict.keys.contains("SetId") {
            self.setId = dict["SetId"] as! String
        }
    }
}

public class ListFaceGroupsResponseBody : Tea.TeaModel {
    public class FaceGroups : Tea.TeaModel {
        public class GroupCoverFace : Tea.TeaModel {
            public class FaceBoundary : Tea.TeaModel {
                public var height: Int32?

                public var left_: Int32?

                public var top: Int32?

                public var width: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.height != nil {
                        map["Height"] = self.height!
                    }
                    if self.left_ != nil {
                        map["Left"] = self.left_!
                    }
                    if self.top != nil {
                        map["Top"] = self.top!
                    }
                    if self.width != nil {
                        map["Width"] = self.width!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Height") {
                        self.height = dict["Height"] as! Int32
                    }
                    if dict.keys.contains("Left") {
                        self.left_ = dict["Left"] as! Int32
                    }
                    if dict.keys.contains("Top") {
                        self.top = dict["Top"] as! Int32
                    }
                    if dict.keys.contains("Width") {
                        self.width = dict["Width"] as! Int32
                    }
                }
            }
            public var externalId: String?

            public var faceBoundary: ListFaceGroupsResponseBody.FaceGroups.GroupCoverFace.FaceBoundary?

            public var faceId: String?

            public var imageHeight: Int64?

            public var imageUri: String?

            public var imageWidth: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.faceBoundary?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.externalId != nil {
                    map["ExternalId"] = self.externalId!
                }
                if self.faceBoundary != nil {
                    map["FaceBoundary"] = self.faceBoundary?.toMap()
                }
                if self.faceId != nil {
                    map["FaceId"] = self.faceId!
                }
                if self.imageHeight != nil {
                    map["ImageHeight"] = self.imageHeight!
                }
                if self.imageUri != nil {
                    map["ImageUri"] = self.imageUri!
                }
                if self.imageWidth != nil {
                    map["ImageWidth"] = self.imageWidth!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ExternalId") {
                    self.externalId = dict["ExternalId"] as! String
                }
                if dict.keys.contains("FaceBoundary") {
                    var model = ListFaceGroupsResponseBody.FaceGroups.GroupCoverFace.FaceBoundary()
                    model.fromMap(dict["FaceBoundary"] as! [String: Any])
                    self.faceBoundary = model
                }
                if dict.keys.contains("FaceId") {
                    self.faceId = dict["FaceId"] as! String
                }
                if dict.keys.contains("ImageHeight") {
                    self.imageHeight = dict["ImageHeight"] as! Int64
                }
                if dict.keys.contains("ImageUri") {
                    self.imageUri = dict["ImageUri"] as! String
                }
                if dict.keys.contains("ImageWidth") {
                    self.imageWidth = dict["ImageWidth"] as! Int64
                }
            }
        }
        public var averageAge: Double?

        public var createTime: String?

        public var externalId: String?

        public var faceCount: Int32?

        public var gender: String?

        public var groupCoverFace: ListFaceGroupsResponseBody.FaceGroups.GroupCoverFace?

        public var groupId: String?

        public var groupName: String?

        public var imageCount: Int32?

        public var maxAge: Double?

        public var minAge: Double?

        public var modifyTime: String?

        public var remarksA: String?

        public var remarksArrayA: String?

        public var remarksArrayB: String?

        public var remarksB: String?

        public var remarksC: String?

        public var remarksD: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.groupCoverFace?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.averageAge != nil {
                map["AverageAge"] = self.averageAge!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.externalId != nil {
                map["ExternalId"] = self.externalId!
            }
            if self.faceCount != nil {
                map["FaceCount"] = self.faceCount!
            }
            if self.gender != nil {
                map["Gender"] = self.gender!
            }
            if self.groupCoverFace != nil {
                map["GroupCoverFace"] = self.groupCoverFace?.toMap()
            }
            if self.groupId != nil {
                map["GroupId"] = self.groupId!
            }
            if self.groupName != nil {
                map["GroupName"] = self.groupName!
            }
            if self.imageCount != nil {
                map["ImageCount"] = self.imageCount!
            }
            if self.maxAge != nil {
                map["MaxAge"] = self.maxAge!
            }
            if self.minAge != nil {
                map["MinAge"] = self.minAge!
            }
            if self.modifyTime != nil {
                map["ModifyTime"] = self.modifyTime!
            }
            if self.remarksA != nil {
                map["RemarksA"] = self.remarksA!
            }
            if self.remarksArrayA != nil {
                map["RemarksArrayA"] = self.remarksArrayA!
            }
            if self.remarksArrayB != nil {
                map["RemarksArrayB"] = self.remarksArrayB!
            }
            if self.remarksB != nil {
                map["RemarksB"] = self.remarksB!
            }
            if self.remarksC != nil {
                map["RemarksC"] = self.remarksC!
            }
            if self.remarksD != nil {
                map["RemarksD"] = self.remarksD!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AverageAge") {
                self.averageAge = dict["AverageAge"] as! Double
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("ExternalId") {
                self.externalId = dict["ExternalId"] as! String
            }
            if dict.keys.contains("FaceCount") {
                self.faceCount = dict["FaceCount"] as! Int32
            }
            if dict.keys.contains("Gender") {
                self.gender = dict["Gender"] as! String
            }
            if dict.keys.contains("GroupCoverFace") {
                var model = ListFaceGroupsResponseBody.FaceGroups.GroupCoverFace()
                model.fromMap(dict["GroupCoverFace"] as! [String: Any])
                self.groupCoverFace = model
            }
            if dict.keys.contains("GroupId") {
                self.groupId = dict["GroupId"] as! String
            }
            if dict.keys.contains("GroupName") {
                self.groupName = dict["GroupName"] as! String
            }
            if dict.keys.contains("ImageCount") {
                self.imageCount = dict["ImageCount"] as! Int32
            }
            if dict.keys.contains("MaxAge") {
                self.maxAge = dict["MaxAge"] as! Double
            }
            if dict.keys.contains("MinAge") {
                self.minAge = dict["MinAge"] as! Double
            }
            if dict.keys.contains("ModifyTime") {
                self.modifyTime = dict["ModifyTime"] as! String
            }
            if dict.keys.contains("RemarksA") {
                self.remarksA = dict["RemarksA"] as! String
            }
            if dict.keys.contains("RemarksArrayA") {
                self.remarksArrayA = dict["RemarksArrayA"] as! String
            }
            if dict.keys.contains("RemarksArrayB") {
                self.remarksArrayB = dict["RemarksArrayB"] as! String
            }
            if dict.keys.contains("RemarksB") {
                self.remarksB = dict["RemarksB"] as! String
            }
            if dict.keys.contains("RemarksC") {
                self.remarksC = dict["RemarksC"] as! String
            }
            if dict.keys.contains("RemarksD") {
                self.remarksD = dict["RemarksD"] as! String
            }
        }
    }
    public var faceGroups: [ListFaceGroupsResponseBody.FaceGroups]?

    public var nextMarker: String?

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
        if self.faceGroups != nil {
            var tmp : [Any] = []
            for k in self.faceGroups! {
                tmp.append(k.toMap())
            }
            map["FaceGroups"] = tmp
        }
        if self.nextMarker != nil {
            map["NextMarker"] = self.nextMarker!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FaceGroups") {
            self.faceGroups = dict["FaceGroups"] as! [ListFaceGroupsResponseBody.FaceGroups]
        }
        if dict.keys.contains("NextMarker") {
            self.nextMarker = dict["NextMarker"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListFaceGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListFaceGroupsResponseBody?

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
            var model = ListFaceGroupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListImagesRequest : Tea.TeaModel {
    public var createTimeStart: String?

    public var limit: Int32?

    public var marker: String?

    public var project: String?

    public var setId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createTimeStart != nil {
            map["CreateTimeStart"] = self.createTimeStart!
        }
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.marker != nil {
            map["Marker"] = self.marker!
        }
        if self.project != nil {
            map["Project"] = self.project!
        }
        if self.setId != nil {
            map["SetId"] = self.setId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CreateTimeStart") {
            self.createTimeStart = dict["CreateTimeStart"] as! String
        }
        if dict.keys.contains("Limit") {
            self.limit = dict["Limit"] as! Int32
        }
        if dict.keys.contains("Marker") {
            self.marker = dict["Marker"] as! String
        }
        if dict.keys.contains("Project") {
            self.project = dict["Project"] as! String
        }
        if dict.keys.contains("SetId") {
            self.setId = dict["SetId"] as! String
        }
    }
}

public class ListImagesResponseBody : Tea.TeaModel {
    public class Images : Tea.TeaModel {
        public class Address : Tea.TeaModel {
            public var addressLine: String?

            public var city: String?

            public var country: String?

            public var district: String?

            public var province: String?

            public var township: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.addressLine != nil {
                    map["AddressLine"] = self.addressLine!
                }
                if self.city != nil {
                    map["City"] = self.city!
                }
                if self.country != nil {
                    map["Country"] = self.country!
                }
                if self.district != nil {
                    map["District"] = self.district!
                }
                if self.province != nil {
                    map["Province"] = self.province!
                }
                if self.township != nil {
                    map["Township"] = self.township!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AddressLine") {
                    self.addressLine = dict["AddressLine"] as! String
                }
                if dict.keys.contains("City") {
                    self.city = dict["City"] as! String
                }
                if dict.keys.contains("Country") {
                    self.country = dict["Country"] as! String
                }
                if dict.keys.contains("District") {
                    self.district = dict["District"] as! String
                }
                if dict.keys.contains("Province") {
                    self.province = dict["Province"] as! String
                }
                if dict.keys.contains("Township") {
                    self.township = dict["Township"] as! String
                }
            }
        }
        public class CroppingSuggestion : Tea.TeaModel {
            public class CroppingBoundary : Tea.TeaModel {
                public var height: Int32?

                public var left_: Int32?

                public var top: Int32?

                public var width: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.height != nil {
                        map["Height"] = self.height!
                    }
                    if self.left_ != nil {
                        map["Left"] = self.left_!
                    }
                    if self.top != nil {
                        map["Top"] = self.top!
                    }
                    if self.width != nil {
                        map["Width"] = self.width!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Height") {
                        self.height = dict["Height"] as! Int32
                    }
                    if dict.keys.contains("Left") {
                        self.left_ = dict["Left"] as! Int32
                    }
                    if dict.keys.contains("Top") {
                        self.top = dict["Top"] as! Int32
                    }
                    if dict.keys.contains("Width") {
                        self.width = dict["Width"] as! Int32
                    }
                }
            }
            public var aspectRatio: String?

            public var croppingBoundary: ListImagesResponseBody.Images.CroppingSuggestion.CroppingBoundary?

            public var score: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.croppingBoundary?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.aspectRatio != nil {
                    map["AspectRatio"] = self.aspectRatio!
                }
                if self.croppingBoundary != nil {
                    map["CroppingBoundary"] = self.croppingBoundary?.toMap()
                }
                if self.score != nil {
                    map["Score"] = self.score!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AspectRatio") {
                    self.aspectRatio = dict["AspectRatio"] as! String
                }
                if dict.keys.contains("CroppingBoundary") {
                    var model = ListImagesResponseBody.Images.CroppingSuggestion.CroppingBoundary()
                    model.fromMap(dict["CroppingBoundary"] as! [String: Any])
                    self.croppingBoundary = model
                }
                if dict.keys.contains("Score") {
                    self.score = dict["Score"] as! Double
                }
            }
        }
        public class Faces : Tea.TeaModel {
            public class EmotionDetails : Tea.TeaModel {
                public var ANGRY: Double?

                public var CALM: Double?

                public var DISGUSTED: Double?

                public var HAPPY: Double?

                public var SAD: Double?

                public var SCARED: Double?

                public var SURPRISED: Double?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.ANGRY != nil {
                        map["ANGRY"] = self.ANGRY!
                    }
                    if self.CALM != nil {
                        map["CALM"] = self.CALM!
                    }
                    if self.DISGUSTED != nil {
                        map["DISGUSTED"] = self.DISGUSTED!
                    }
                    if self.HAPPY != nil {
                        map["HAPPY"] = self.HAPPY!
                    }
                    if self.SAD != nil {
                        map["SAD"] = self.SAD!
                    }
                    if self.SCARED != nil {
                        map["SCARED"] = self.SCARED!
                    }
                    if self.SURPRISED != nil {
                        map["SURPRISED"] = self.SURPRISED!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ANGRY") {
                        self.ANGRY = dict["ANGRY"] as! Double
                    }
                    if dict.keys.contains("CALM") {
                        self.CALM = dict["CALM"] as! Double
                    }
                    if dict.keys.contains("DISGUSTED") {
                        self.DISGUSTED = dict["DISGUSTED"] as! Double
                    }
                    if dict.keys.contains("HAPPY") {
                        self.HAPPY = dict["HAPPY"] as! Double
                    }
                    if dict.keys.contains("SAD") {
                        self.SAD = dict["SAD"] as! Double
                    }
                    if dict.keys.contains("SCARED") {
                        self.SCARED = dict["SCARED"] as! Double
                    }
                    if dict.keys.contains("SURPRISED") {
                        self.SURPRISED = dict["SURPRISED"] as! Double
                    }
                }
            }
            public class FaceAttributes : Tea.TeaModel {
                public class FaceBoundary : Tea.TeaModel {
                    public var height: Int32?

                    public var left_: Int32?

                    public var top: Int32?

                    public var width: Int32?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.height != nil {
                            map["Height"] = self.height!
                        }
                        if self.left_ != nil {
                            map["Left"] = self.left_!
                        }
                        if self.top != nil {
                            map["Top"] = self.top!
                        }
                        if self.width != nil {
                            map["Width"] = self.width!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Height") {
                            self.height = dict["Height"] as! Int32
                        }
                        if dict.keys.contains("Left") {
                            self.left_ = dict["Left"] as! Int32
                        }
                        if dict.keys.contains("Top") {
                            self.top = dict["Top"] as! Int32
                        }
                        if dict.keys.contains("Width") {
                            self.width = dict["Width"] as! Int32
                        }
                    }
                }
                public class HeadPose : Tea.TeaModel {
                    public var pitch: Double?

                    public var roll: Double?

                    public var yaw: Double?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.pitch != nil {
                            map["Pitch"] = self.pitch!
                        }
                        if self.roll != nil {
                            map["Roll"] = self.roll!
                        }
                        if self.yaw != nil {
                            map["Yaw"] = self.yaw!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Pitch") {
                            self.pitch = dict["Pitch"] as! Double
                        }
                        if dict.keys.contains("Roll") {
                            self.roll = dict["Roll"] as! Double
                        }
                        if dict.keys.contains("Yaw") {
                            self.yaw = dict["Yaw"] as! Double
                        }
                    }
                }
                public var beard: String?

                public var beardConfidence: Double?

                public var faceBoundary: ListImagesResponseBody.Images.Faces.FaceAttributes.FaceBoundary?

                public var glasses: String?

                public var glassesConfidence: Double?

                public var headPose: ListImagesResponseBody.Images.Faces.FaceAttributes.HeadPose?

                public var mask: String?

                public var maskConfidence: Double?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.faceBoundary?.validate()
                    try self.headPose?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.beard != nil {
                        map["Beard"] = self.beard!
                    }
                    if self.beardConfidence != nil {
                        map["BeardConfidence"] = self.beardConfidence!
                    }
                    if self.faceBoundary != nil {
                        map["FaceBoundary"] = self.faceBoundary?.toMap()
                    }
                    if self.glasses != nil {
                        map["Glasses"] = self.glasses!
                    }
                    if self.glassesConfidence != nil {
                        map["GlassesConfidence"] = self.glassesConfidence!
                    }
                    if self.headPose != nil {
                        map["HeadPose"] = self.headPose?.toMap()
                    }
                    if self.mask != nil {
                        map["Mask"] = self.mask!
                    }
                    if self.maskConfidence != nil {
                        map["MaskConfidence"] = self.maskConfidence!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Beard") {
                        self.beard = dict["Beard"] as! String
                    }
                    if dict.keys.contains("BeardConfidence") {
                        self.beardConfidence = dict["BeardConfidence"] as! Double
                    }
                    if dict.keys.contains("FaceBoundary") {
                        var model = ListImagesResponseBody.Images.Faces.FaceAttributes.FaceBoundary()
                        model.fromMap(dict["FaceBoundary"] as! [String: Any])
                        self.faceBoundary = model
                    }
                    if dict.keys.contains("Glasses") {
                        self.glasses = dict["Glasses"] as! String
                    }
                    if dict.keys.contains("GlassesConfidence") {
                        self.glassesConfidence = dict["GlassesConfidence"] as! Double
                    }
                    if dict.keys.contains("HeadPose") {
                        var model = ListImagesResponseBody.Images.Faces.FaceAttributes.HeadPose()
                        model.fromMap(dict["HeadPose"] as! [String: Any])
                        self.headPose = model
                    }
                    if dict.keys.contains("Mask") {
                        self.mask = dict["Mask"] as! String
                    }
                    if dict.keys.contains("MaskConfidence") {
                        self.maskConfidence = dict["MaskConfidence"] as! Double
                    }
                }
            }
            public var age: Int32?

            public var attractive: Double?

            public var emotion: String?

            public var emotionConfidence: Double?

            public var emotionDetails: ListImagesResponseBody.Images.Faces.EmotionDetails?

            public var faceAttributes: ListImagesResponseBody.Images.Faces.FaceAttributes?

            public var faceConfidence: Double?

            public var faceId: String?

            public var faceQuality: Double?

            public var gender: String?

            public var genderConfidence: Double?

            public var groupId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.emotionDetails?.validate()
                try self.faceAttributes?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.age != nil {
                    map["Age"] = self.age!
                }
                if self.attractive != nil {
                    map["Attractive"] = self.attractive!
                }
                if self.emotion != nil {
                    map["Emotion"] = self.emotion!
                }
                if self.emotionConfidence != nil {
                    map["EmotionConfidence"] = self.emotionConfidence!
                }
                if self.emotionDetails != nil {
                    map["EmotionDetails"] = self.emotionDetails?.toMap()
                }
                if self.faceAttributes != nil {
                    map["FaceAttributes"] = self.faceAttributes?.toMap()
                }
                if self.faceConfidence != nil {
                    map["FaceConfidence"] = self.faceConfidence!
                }
                if self.faceId != nil {
                    map["FaceId"] = self.faceId!
                }
                if self.faceQuality != nil {
                    map["FaceQuality"] = self.faceQuality!
                }
                if self.gender != nil {
                    map["Gender"] = self.gender!
                }
                if self.genderConfidence != nil {
                    map["GenderConfidence"] = self.genderConfidence!
                }
                if self.groupId != nil {
                    map["GroupId"] = self.groupId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Age") {
                    self.age = dict["Age"] as! Int32
                }
                if dict.keys.contains("Attractive") {
                    self.attractive = dict["Attractive"] as! Double
                }
                if dict.keys.contains("Emotion") {
                    self.emotion = dict["Emotion"] as! String
                }
                if dict.keys.contains("EmotionConfidence") {
                    self.emotionConfidence = dict["EmotionConfidence"] as! Double
                }
                if dict.keys.contains("EmotionDetails") {
                    var model = ListImagesResponseBody.Images.Faces.EmotionDetails()
                    model.fromMap(dict["EmotionDetails"] as! [String: Any])
                    self.emotionDetails = model
                }
                if dict.keys.contains("FaceAttributes") {
                    var model = ListImagesResponseBody.Images.Faces.FaceAttributes()
                    model.fromMap(dict["FaceAttributes"] as! [String: Any])
                    self.faceAttributes = model
                }
                if dict.keys.contains("FaceConfidence") {
                    self.faceConfidence = dict["FaceConfidence"] as! Double
                }
                if dict.keys.contains("FaceId") {
                    self.faceId = dict["FaceId"] as! String
                }
                if dict.keys.contains("FaceQuality") {
                    self.faceQuality = dict["FaceQuality"] as! Double
                }
                if dict.keys.contains("Gender") {
                    self.gender = dict["Gender"] as! String
                }
                if dict.keys.contains("GenderConfidence") {
                    self.genderConfidence = dict["GenderConfidence"] as! Double
                }
                if dict.keys.contains("GroupId") {
                    self.groupId = dict["GroupId"] as! String
                }
            }
        }
        public class ImageQuality : Tea.TeaModel {
            public var clarity: Double?

            public var clarityScore: Double?

            public var color: Double?

            public var colorScore: Double?

            public var compositionScore: Double?

            public var contrast: Double?

            public var contrastScore: Double?

            public var exposure: Double?

            public var exposureScore: Double?

            public var overallScore: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.clarity != nil {
                    map["Clarity"] = self.clarity!
                }
                if self.clarityScore != nil {
                    map["ClarityScore"] = self.clarityScore!
                }
                if self.color != nil {
                    map["Color"] = self.color!
                }
                if self.colorScore != nil {
                    map["ColorScore"] = self.colorScore!
                }
                if self.compositionScore != nil {
                    map["CompositionScore"] = self.compositionScore!
                }
                if self.contrast != nil {
                    map["Contrast"] = self.contrast!
                }
                if self.contrastScore != nil {
                    map["ContrastScore"] = self.contrastScore!
                }
                if self.exposure != nil {
                    map["Exposure"] = self.exposure!
                }
                if self.exposureScore != nil {
                    map["ExposureScore"] = self.exposureScore!
                }
                if self.overallScore != nil {
                    map["OverallScore"] = self.overallScore!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Clarity") {
                    self.clarity = dict["Clarity"] as! Double
                }
                if dict.keys.contains("ClarityScore") {
                    self.clarityScore = dict["ClarityScore"] as! Double
                }
                if dict.keys.contains("Color") {
                    self.color = dict["Color"] as! Double
                }
                if dict.keys.contains("ColorScore") {
                    self.colorScore = dict["ColorScore"] as! Double
                }
                if dict.keys.contains("CompositionScore") {
                    self.compositionScore = dict["CompositionScore"] as! Double
                }
                if dict.keys.contains("Contrast") {
                    self.contrast = dict["Contrast"] as! Double
                }
                if dict.keys.contains("ContrastScore") {
                    self.contrastScore = dict["ContrastScore"] as! Double
                }
                if dict.keys.contains("Exposure") {
                    self.exposure = dict["Exposure"] as! Double
                }
                if dict.keys.contains("ExposureScore") {
                    self.exposureScore = dict["ExposureScore"] as! Double
                }
                if dict.keys.contains("OverallScore") {
                    self.overallScore = dict["OverallScore"] as! Double
                }
            }
        }
        public class OCR : Tea.TeaModel {
            public class OCRBoundary : Tea.TeaModel {
                public var height: Int32?

                public var left_: Int32?

                public var top: Int32?

                public var width: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.height != nil {
                        map["Height"] = self.height!
                    }
                    if self.left_ != nil {
                        map["Left"] = self.left_!
                    }
                    if self.top != nil {
                        map["Top"] = self.top!
                    }
                    if self.width != nil {
                        map["Width"] = self.width!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Height") {
                        self.height = dict["Height"] as! Int32
                    }
                    if dict.keys.contains("Left") {
                        self.left_ = dict["Left"] as! Int32
                    }
                    if dict.keys.contains("Top") {
                        self.top = dict["Top"] as! Int32
                    }
                    if dict.keys.contains("Width") {
                        self.width = dict["Width"] as! Int32
                    }
                }
            }
            public var OCRBoundary: ListImagesResponseBody.Images.OCR.OCRBoundary?

            public var OCRConfidence: Double?

            public var OCRContents: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.OCRBoundary?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.OCRBoundary != nil {
                    map["OCRBoundary"] = self.OCRBoundary?.toMap()
                }
                if self.OCRConfidence != nil {
                    map["OCRConfidence"] = self.OCRConfidence!
                }
                if self.OCRContents != nil {
                    map["OCRContents"] = self.OCRContents!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("OCRBoundary") {
                    var model = ListImagesResponseBody.Images.OCR.OCRBoundary()
                    model.fromMap(dict["OCRBoundary"] as! [String: Any])
                    self.OCRBoundary = model
                }
                if dict.keys.contains("OCRConfidence") {
                    self.OCRConfidence = dict["OCRConfidence"] as! Double
                }
                if dict.keys.contains("OCRContents") {
                    self.OCRContents = dict["OCRContents"] as! String
                }
            }
        }
        public class Tags : Tea.TeaModel {
            public var centricScore: Double?

            public var parentTagName: String?

            public var tagConfidence: Double?

            public var tagLevel: Int32?

            public var tagName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.centricScore != nil {
                    map["CentricScore"] = self.centricScore!
                }
                if self.parentTagName != nil {
                    map["ParentTagName"] = self.parentTagName!
                }
                if self.tagConfidence != nil {
                    map["TagConfidence"] = self.tagConfidence!
                }
                if self.tagLevel != nil {
                    map["TagLevel"] = self.tagLevel!
                }
                if self.tagName != nil {
                    map["TagName"] = self.tagName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CentricScore") {
                    self.centricScore = dict["CentricScore"] as! Double
                }
                if dict.keys.contains("ParentTagName") {
                    self.parentTagName = dict["ParentTagName"] as! String
                }
                if dict.keys.contains("TagConfidence") {
                    self.tagConfidence = dict["TagConfidence"] as! Double
                }
                if dict.keys.contains("TagLevel") {
                    self.tagLevel = dict["TagLevel"] as! Int32
                }
                if dict.keys.contains("TagName") {
                    self.tagName = dict["TagName"] as! String
                }
            }
        }
        public var address: ListImagesResponseBody.Images.Address?

        public var addressFailReason: String?

        public var addressModifyTime: String?

        public var addressStatus: String?

        public var createTime: String?

        public var croppingSuggestion: [ListImagesResponseBody.Images.CroppingSuggestion]?

        public var croppingSuggestionFailReason: String?

        public var croppingSuggestionModifyTime: String?

        public var croppingSuggestionStatus: String?

        public var exif: String?

        public var externalId: String?

        public var faces: [ListImagesResponseBody.Images.Faces]?

        public var facesFailReason: String?

        public var facesModifyTime: String?

        public var facesStatus: String?

        public var fileSize: Int32?

        public var imageFormat: String?

        public var imageHeight: Int32?

        public var imageQuality: ListImagesResponseBody.Images.ImageQuality?

        public var imageQualityFailReason: String?

        public var imageQualityModifyTime: String?

        public var imageQualityStatus: String?

        public var imageTime: String?

        public var imageUri: String?

        public var imageWidth: Int32?

        public var location: String?

        public var modifyTime: String?

        public var OCR: [ListImagesResponseBody.Images.OCR]?

        public var OCRFailReason: String?

        public var OCRModifyTime: String?

        public var OCRStatus: String?

        public var orientation: String?

        public var remarksA: String?

        public var remarksArrayA: String?

        public var remarksArrayB: String?

        public var remarksB: String?

        public var remarksC: String?

        public var remarksD: String?

        public var sourcePosition: String?

        public var sourceType: String?

        public var sourceUri: String?

        public var tags: [ListImagesResponseBody.Images.Tags]?

        public var tagsFailReason: String?

        public var tagsModifyTime: String?

        public var tagsStatus: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.address?.validate()
            try self.imageQuality?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.address != nil {
                map["Address"] = self.address?.toMap()
            }
            if self.addressFailReason != nil {
                map["AddressFailReason"] = self.addressFailReason!
            }
            if self.addressModifyTime != nil {
                map["AddressModifyTime"] = self.addressModifyTime!
            }
            if self.addressStatus != nil {
                map["AddressStatus"] = self.addressStatus!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.croppingSuggestion != nil {
                var tmp : [Any] = []
                for k in self.croppingSuggestion! {
                    tmp.append(k.toMap())
                }
                map["CroppingSuggestion"] = tmp
            }
            if self.croppingSuggestionFailReason != nil {
                map["CroppingSuggestionFailReason"] = self.croppingSuggestionFailReason!
            }
            if self.croppingSuggestionModifyTime != nil {
                map["CroppingSuggestionModifyTime"] = self.croppingSuggestionModifyTime!
            }
            if self.croppingSuggestionStatus != nil {
                map["CroppingSuggestionStatus"] = self.croppingSuggestionStatus!
            }
            if self.exif != nil {
                map["Exif"] = self.exif!
            }
            if self.externalId != nil {
                map["ExternalId"] = self.externalId!
            }
            if self.faces != nil {
                var tmp : [Any] = []
                for k in self.faces! {
                    tmp.append(k.toMap())
                }
                map["Faces"] = tmp
            }
            if self.facesFailReason != nil {
                map["FacesFailReason"] = self.facesFailReason!
            }
            if self.facesModifyTime != nil {
                map["FacesModifyTime"] = self.facesModifyTime!
            }
            if self.facesStatus != nil {
                map["FacesStatus"] = self.facesStatus!
            }
            if self.fileSize != nil {
                map["FileSize"] = self.fileSize!
            }
            if self.imageFormat != nil {
                map["ImageFormat"] = self.imageFormat!
            }
            if self.imageHeight != nil {
                map["ImageHeight"] = self.imageHeight!
            }
            if self.imageQuality != nil {
                map["ImageQuality"] = self.imageQuality?.toMap()
            }
            if self.imageQualityFailReason != nil {
                map["ImageQualityFailReason"] = self.imageQualityFailReason!
            }
            if self.imageQualityModifyTime != nil {
                map["ImageQualityModifyTime"] = self.imageQualityModifyTime!
            }
            if self.imageQualityStatus != nil {
                map["ImageQualityStatus"] = self.imageQualityStatus!
            }
            if self.imageTime != nil {
                map["ImageTime"] = self.imageTime!
            }
            if self.imageUri != nil {
                map["ImageUri"] = self.imageUri!
            }
            if self.imageWidth != nil {
                map["ImageWidth"] = self.imageWidth!
            }
            if self.location != nil {
                map["Location"] = self.location!
            }
            if self.modifyTime != nil {
                map["ModifyTime"] = self.modifyTime!
            }
            if self.OCR != nil {
                var tmp : [Any] = []
                for k in self.OCR! {
                    tmp.append(k.toMap())
                }
                map["OCR"] = tmp
            }
            if self.OCRFailReason != nil {
                map["OCRFailReason"] = self.OCRFailReason!
            }
            if self.OCRModifyTime != nil {
                map["OCRModifyTime"] = self.OCRModifyTime!
            }
            if self.OCRStatus != nil {
                map["OCRStatus"] = self.OCRStatus!
            }
            if self.orientation != nil {
                map["Orientation"] = self.orientation!
            }
            if self.remarksA != nil {
                map["RemarksA"] = self.remarksA!
            }
            if self.remarksArrayA != nil {
                map["RemarksArrayA"] = self.remarksArrayA!
            }
            if self.remarksArrayB != nil {
                map["RemarksArrayB"] = self.remarksArrayB!
            }
            if self.remarksB != nil {
                map["RemarksB"] = self.remarksB!
            }
            if self.remarksC != nil {
                map["RemarksC"] = self.remarksC!
            }
            if self.remarksD != nil {
                map["RemarksD"] = self.remarksD!
            }
            if self.sourcePosition != nil {
                map["SourcePosition"] = self.sourcePosition!
            }
            if self.sourceType != nil {
                map["SourceType"] = self.sourceType!
            }
            if self.sourceUri != nil {
                map["SourceUri"] = self.sourceUri!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.tagsFailReason != nil {
                map["TagsFailReason"] = self.tagsFailReason!
            }
            if self.tagsModifyTime != nil {
                map["TagsModifyTime"] = self.tagsModifyTime!
            }
            if self.tagsStatus != nil {
                map["TagsStatus"] = self.tagsStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Address") {
                var model = ListImagesResponseBody.Images.Address()
                model.fromMap(dict["Address"] as! [String: Any])
                self.address = model
            }
            if dict.keys.contains("AddressFailReason") {
                self.addressFailReason = dict["AddressFailReason"] as! String
            }
            if dict.keys.contains("AddressModifyTime") {
                self.addressModifyTime = dict["AddressModifyTime"] as! String
            }
            if dict.keys.contains("AddressStatus") {
                self.addressStatus = dict["AddressStatus"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("CroppingSuggestion") {
                self.croppingSuggestion = dict["CroppingSuggestion"] as! [ListImagesResponseBody.Images.CroppingSuggestion]
            }
            if dict.keys.contains("CroppingSuggestionFailReason") {
                self.croppingSuggestionFailReason = dict["CroppingSuggestionFailReason"] as! String
            }
            if dict.keys.contains("CroppingSuggestionModifyTime") {
                self.croppingSuggestionModifyTime = dict["CroppingSuggestionModifyTime"] as! String
            }
            if dict.keys.contains("CroppingSuggestionStatus") {
                self.croppingSuggestionStatus = dict["CroppingSuggestionStatus"] as! String
            }
            if dict.keys.contains("Exif") {
                self.exif = dict["Exif"] as! String
            }
            if dict.keys.contains("ExternalId") {
                self.externalId = dict["ExternalId"] as! String
            }
            if dict.keys.contains("Faces") {
                self.faces = dict["Faces"] as! [ListImagesResponseBody.Images.Faces]
            }
            if dict.keys.contains("FacesFailReason") {
                self.facesFailReason = dict["FacesFailReason"] as! String
            }
            if dict.keys.contains("FacesModifyTime") {
                self.facesModifyTime = dict["FacesModifyTime"] as! String
            }
            if dict.keys.contains("FacesStatus") {
                self.facesStatus = dict["FacesStatus"] as! String
            }
            if dict.keys.contains("FileSize") {
                self.fileSize = dict["FileSize"] as! Int32
            }
            if dict.keys.contains("ImageFormat") {
                self.imageFormat = dict["ImageFormat"] as! String
            }
            if dict.keys.contains("ImageHeight") {
                self.imageHeight = dict["ImageHeight"] as! Int32
            }
            if dict.keys.contains("ImageQuality") {
                var model = ListImagesResponseBody.Images.ImageQuality()
                model.fromMap(dict["ImageQuality"] as! [String: Any])
                self.imageQuality = model
            }
            if dict.keys.contains("ImageQualityFailReason") {
                self.imageQualityFailReason = dict["ImageQualityFailReason"] as! String
            }
            if dict.keys.contains("ImageQualityModifyTime") {
                self.imageQualityModifyTime = dict["ImageQualityModifyTime"] as! String
            }
            if dict.keys.contains("ImageQualityStatus") {
                self.imageQualityStatus = dict["ImageQualityStatus"] as! String
            }
            if dict.keys.contains("ImageTime") {
                self.imageTime = dict["ImageTime"] as! String
            }
            if dict.keys.contains("ImageUri") {
                self.imageUri = dict["ImageUri"] as! String
            }
            if dict.keys.contains("ImageWidth") {
                self.imageWidth = dict["ImageWidth"] as! Int32
            }
            if dict.keys.contains("Location") {
                self.location = dict["Location"] as! String
            }
            if dict.keys.contains("ModifyTime") {
                self.modifyTime = dict["ModifyTime"] as! String
            }
            if dict.keys.contains("OCR") {
                self.OCR = dict["OCR"] as! [ListImagesResponseBody.Images.OCR]
            }
            if dict.keys.contains("OCRFailReason") {
                self.OCRFailReason = dict["OCRFailReason"] as! String
            }
            if dict.keys.contains("OCRModifyTime") {
                self.OCRModifyTime = dict["OCRModifyTime"] as! String
            }
            if dict.keys.contains("OCRStatus") {
                self.OCRStatus = dict["OCRStatus"] as! String
            }
            if dict.keys.contains("Orientation") {
                self.orientation = dict["Orientation"] as! String
            }
            if dict.keys.contains("RemarksA") {
                self.remarksA = dict["RemarksA"] as! String
            }
            if dict.keys.contains("RemarksArrayA") {
                self.remarksArrayA = dict["RemarksArrayA"] as! String
            }
            if dict.keys.contains("RemarksArrayB") {
                self.remarksArrayB = dict["RemarksArrayB"] as! String
            }
            if dict.keys.contains("RemarksB") {
                self.remarksB = dict["RemarksB"] as! String
            }
            if dict.keys.contains("RemarksC") {
                self.remarksC = dict["RemarksC"] as! String
            }
            if dict.keys.contains("RemarksD") {
                self.remarksD = dict["RemarksD"] as! String
            }
            if dict.keys.contains("SourcePosition") {
                self.sourcePosition = dict["SourcePosition"] as! String
            }
            if dict.keys.contains("SourceType") {
                self.sourceType = dict["SourceType"] as! String
            }
            if dict.keys.contains("SourceUri") {
                self.sourceUri = dict["SourceUri"] as! String
            }
            if dict.keys.contains("Tags") {
                self.tags = dict["Tags"] as! [ListImagesResponseBody.Images.Tags]
            }
            if dict.keys.contains("TagsFailReason") {
                self.tagsFailReason = dict["TagsFailReason"] as! String
            }
            if dict.keys.contains("TagsModifyTime") {
                self.tagsModifyTime = dict["TagsModifyTime"] as! String
            }
            if dict.keys.contains("TagsStatus") {
                self.tagsStatus = dict["TagsStatus"] as! String
            }
        }
    }
    public var images: [ListImagesResponseBody.Images]?

    public var nextMarker: String?

    public var requestId: String?

    public var setId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.images != nil {
            var tmp : [Any] = []
            for k in self.images! {
                tmp.append(k.toMap())
            }
            map["Images"] = tmp
        }
        if self.nextMarker != nil {
            map["NextMarker"] = self.nextMarker!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.setId != nil {
            map["SetId"] = self.setId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Images") {
            self.images = dict["Images"] as! [ListImagesResponseBody.Images]
        }
        if dict.keys.contains("NextMarker") {
            self.nextMarker = dict["NextMarker"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SetId") {
            self.setId = dict["SetId"] as! String
        }
    }
}

public class ListImagesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListImagesResponseBody?

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
            var model = ListImagesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListOfficeConversionTaskRequest : Tea.TeaModel {
    public var marker: String?

    public var maxKeys: Int32?

    public var project: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.marker != nil {
            map["Marker"] = self.marker!
        }
        if self.maxKeys != nil {
            map["MaxKeys"] = self.maxKeys!
        }
        if self.project != nil {
            map["Project"] = self.project!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Marker") {
            self.marker = dict["Marker"] as! String
        }
        if dict.keys.contains("MaxKeys") {
            self.maxKeys = dict["MaxKeys"] as! Int32
        }
        if dict.keys.contains("Project") {
            self.project = dict["Project"] as! String
        }
    }
}

public class ListOfficeConversionTaskResponseBody : Tea.TeaModel {
    public class Tasks : Tea.TeaModel {
        public var createTime: String?

        public var externalID: String?

        public var finishTime: String?

        public var imageSpec: String?

        public var notifyEndpoint: String?

        public var notifyTopicName: String?

        public var pageCount: Int32?

        public var percent: Int32?

        public var srcUri: String?

        public var status: String?

        public var taskId: String?

        public var tgtType: String?

        public var tgtUri: String?

        public override init() {
            super.init()
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
            if self.externalID != nil {
                map["ExternalID"] = self.externalID!
            }
            if self.finishTime != nil {
                map["FinishTime"] = self.finishTime!
            }
            if self.imageSpec != nil {
                map["ImageSpec"] = self.imageSpec!
            }
            if self.notifyEndpoint != nil {
                map["NotifyEndpoint"] = self.notifyEndpoint!
            }
            if self.notifyTopicName != nil {
                map["NotifyTopicName"] = self.notifyTopicName!
            }
            if self.pageCount != nil {
                map["PageCount"] = self.pageCount!
            }
            if self.percent != nil {
                map["Percent"] = self.percent!
            }
            if self.srcUri != nil {
                map["SrcUri"] = self.srcUri!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.tgtType != nil {
                map["TgtType"] = self.tgtType!
            }
            if self.tgtUri != nil {
                map["TgtUri"] = self.tgtUri!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("ExternalID") {
                self.externalID = dict["ExternalID"] as! String
            }
            if dict.keys.contains("FinishTime") {
                self.finishTime = dict["FinishTime"] as! String
            }
            if dict.keys.contains("ImageSpec") {
                self.imageSpec = dict["ImageSpec"] as! String
            }
            if dict.keys.contains("NotifyEndpoint") {
                self.notifyEndpoint = dict["NotifyEndpoint"] as! String
            }
            if dict.keys.contains("NotifyTopicName") {
                self.notifyTopicName = dict["NotifyTopicName"] as! String
            }
            if dict.keys.contains("PageCount") {
                self.pageCount = dict["PageCount"] as! Int32
            }
            if dict.keys.contains("Percent") {
                self.percent = dict["Percent"] as! Int32
            }
            if dict.keys.contains("SrcUri") {
                self.srcUri = dict["SrcUri"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! String
            }
            if dict.keys.contains("TgtType") {
                self.tgtType = dict["TgtType"] as! String
            }
            if dict.keys.contains("TgtUri") {
                self.tgtUri = dict["TgtUri"] as! String
            }
        }
    }
    public var nextMarker: String?

    public var requestId: String?

    public var tasks: [ListOfficeConversionTaskResponseBody.Tasks]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nextMarker != nil {
            map["NextMarker"] = self.nextMarker!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tasks != nil {
            var tmp : [Any] = []
            for k in self.tasks! {
                tmp.append(k.toMap())
            }
            map["Tasks"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NextMarker") {
            self.nextMarker = dict["NextMarker"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Tasks") {
            self.tasks = dict["Tasks"] as! [ListOfficeConversionTaskResponseBody.Tasks]
        }
    }
}

public class ListOfficeConversionTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListOfficeConversionTaskResponseBody?

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
            var model = ListOfficeConversionTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListProjectsRequest : Tea.TeaModel {
    public var marker: String?

    public var maxKeys: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.marker != nil {
            map["Marker"] = self.marker!
        }
        if self.maxKeys != nil {
            map["MaxKeys"] = self.maxKeys!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Marker") {
            self.marker = dict["Marker"] as! String
        }
        if dict.keys.contains("MaxKeys") {
            self.maxKeys = dict["MaxKeys"] as! Int32
        }
    }
}

public class ListProjectsResponseBody : Tea.TeaModel {
    public class Projects : Tea.TeaModel {
        public var billingType: String?

        public var CU: Int32?

        public var createTime: String?

        public var endpoint: String?

        public var modifyTime: String?

        public var project: String?

        public var regionId: String?

        public var serviceRole: String?

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
            if self.billingType != nil {
                map["BillingType"] = self.billingType!
            }
            if self.CU != nil {
                map["CU"] = self.CU!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.endpoint != nil {
                map["Endpoint"] = self.endpoint!
            }
            if self.modifyTime != nil {
                map["ModifyTime"] = self.modifyTime!
            }
            if self.project != nil {
                map["Project"] = self.project!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.serviceRole != nil {
                map["ServiceRole"] = self.serviceRole!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BillingType") {
                self.billingType = dict["BillingType"] as! String
            }
            if dict.keys.contains("CU") {
                self.CU = dict["CU"] as! Int32
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Endpoint") {
                self.endpoint = dict["Endpoint"] as! String
            }
            if dict.keys.contains("ModifyTime") {
                self.modifyTime = dict["ModifyTime"] as! String
            }
            if dict.keys.contains("Project") {
                self.project = dict["Project"] as! String
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("ServiceRole") {
                self.serviceRole = dict["ServiceRole"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var nextMarker: String?

    public var projects: [ListProjectsResponseBody.Projects]?

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
        if self.nextMarker != nil {
            map["NextMarker"] = self.nextMarker!
        }
        if self.projects != nil {
            var tmp : [Any] = []
            for k in self.projects! {
                tmp.append(k.toMap())
            }
            map["Projects"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NextMarker") {
            self.nextMarker = dict["NextMarker"] as! String
        }
        if dict.keys.contains("Projects") {
            self.projects = dict["Projects"] as! [ListProjectsResponseBody.Projects]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListProjectsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListProjectsResponseBody?

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
            var model = ListProjectsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListSetTagsRequest : Tea.TeaModel {
    public var project: String?

    public var setId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.project != nil {
            map["Project"] = self.project!
        }
        if self.setId != nil {
            map["SetId"] = self.setId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Project") {
            self.project = dict["Project"] as! String
        }
        if dict.keys.contains("SetId") {
            self.setId = dict["SetId"] as! String
        }
    }
}

public class ListSetTagsResponseBody : Tea.TeaModel {
    public class Tags : Tea.TeaModel {
        public var tagCount: Int32?

        public var tagLevel: Int32?

        public var tagName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.tagCount != nil {
                map["TagCount"] = self.tagCount!
            }
            if self.tagLevel != nil {
                map["TagLevel"] = self.tagLevel!
            }
            if self.tagName != nil {
                map["TagName"] = self.tagName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TagCount") {
                self.tagCount = dict["TagCount"] as! Int32
            }
            if dict.keys.contains("TagLevel") {
                self.tagLevel = dict["TagLevel"] as! Int32
            }
            if dict.keys.contains("TagName") {
                self.tagName = dict["TagName"] as! String
            }
        }
    }
    public var requestId: String?

    public var setId: String?

    public var tags: [ListSetTagsResponseBody.Tags]?

    public override init() {
        super.init()
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
        if self.setId != nil {
            map["SetId"] = self.setId!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["Tags"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SetId") {
            self.setId = dict["SetId"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! [ListSetTagsResponseBody.Tags]
        }
    }
}

public class ListSetTagsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSetTagsResponseBody?

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
            var model = ListSetTagsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListSetsRequest : Tea.TeaModel {
    public var marker: String?

    public var project: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.marker != nil {
            map["Marker"] = self.marker!
        }
        if self.project != nil {
            map["Project"] = self.project!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Marker") {
            self.marker = dict["Marker"] as! String
        }
        if dict.keys.contains("Project") {
            self.project = dict["Project"] as! String
        }
    }
}

public class ListSetsResponseBody : Tea.TeaModel {
    public class Sets : Tea.TeaModel {
        public var createTime: String?

        public var faceCount: Int32?

        public var imageCount: Int32?

        public var modifyTime: String?

        public var setId: String?

        public var setName: String?

        public var videoCount: Int32?

        public var videoLength: Int32?

        public override init() {
            super.init()
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
            if self.faceCount != nil {
                map["FaceCount"] = self.faceCount!
            }
            if self.imageCount != nil {
                map["ImageCount"] = self.imageCount!
            }
            if self.modifyTime != nil {
                map["ModifyTime"] = self.modifyTime!
            }
            if self.setId != nil {
                map["SetId"] = self.setId!
            }
            if self.setName != nil {
                map["SetName"] = self.setName!
            }
            if self.videoCount != nil {
                map["VideoCount"] = self.videoCount!
            }
            if self.videoLength != nil {
                map["VideoLength"] = self.videoLength!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("FaceCount") {
                self.faceCount = dict["FaceCount"] as! Int32
            }
            if dict.keys.contains("ImageCount") {
                self.imageCount = dict["ImageCount"] as! Int32
            }
            if dict.keys.contains("ModifyTime") {
                self.modifyTime = dict["ModifyTime"] as! String
            }
            if dict.keys.contains("SetId") {
                self.setId = dict["SetId"] as! String
            }
            if dict.keys.contains("SetName") {
                self.setName = dict["SetName"] as! String
            }
            if dict.keys.contains("VideoCount") {
                self.videoCount = dict["VideoCount"] as! Int32
            }
            if dict.keys.contains("VideoLength") {
                self.videoLength = dict["VideoLength"] as! Int32
            }
        }
    }
    public var nextMarker: String?

    public var requestId: String?

    public var sets: [ListSetsResponseBody.Sets]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nextMarker != nil {
            map["NextMarker"] = self.nextMarker!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.sets != nil {
            var tmp : [Any] = []
            for k in self.sets! {
                tmp.append(k.toMap())
            }
            map["Sets"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NextMarker") {
            self.nextMarker = dict["NextMarker"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Sets") {
            self.sets = dict["Sets"] as! [ListSetsResponseBody.Sets]
        }
    }
}

public class ListSetsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSetsResponseBody?

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
            var model = ListSetsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListVideoTasksRequest : Tea.TeaModel {
    public var marker: String?

    public var maxKeys: Int32?

    public var project: String?

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
        if self.marker != nil {
            map["Marker"] = self.marker!
        }
        if self.maxKeys != nil {
            map["MaxKeys"] = self.maxKeys!
        }
        if self.project != nil {
            map["Project"] = self.project!
        }
        if self.taskType != nil {
            map["TaskType"] = self.taskType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Marker") {
            self.marker = dict["Marker"] as! String
        }
        if dict.keys.contains("MaxKeys") {
            self.maxKeys = dict["MaxKeys"] as! Int32
        }
        if dict.keys.contains("Project") {
            self.project = dict["Project"] as! String
        }
        if dict.keys.contains("TaskType") {
            self.taskType = dict["TaskType"] as! String
        }
    }
}

public class ListVideoTasksResponseBody : Tea.TeaModel {
    public class Tasks : Tea.TeaModel {
        public var endTime: String?

        public var errorMessage: String?

        public var notifyEndpoint: String?

        public var notifyTopicName: String?

        public var parameters: String?

        public var progress: Int32?

        public var result: String?

        public var startTime: String?

        public var status: String?

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
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.errorMessage != nil {
                map["ErrorMessage"] = self.errorMessage!
            }
            if self.notifyEndpoint != nil {
                map["NotifyEndpoint"] = self.notifyEndpoint!
            }
            if self.notifyTopicName != nil {
                map["NotifyTopicName"] = self.notifyTopicName!
            }
            if self.parameters != nil {
                map["Parameters"] = self.parameters!
            }
            if self.progress != nil {
                map["Progress"] = self.progress!
            }
            if self.result != nil {
                map["Result"] = self.result!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.taskType != nil {
                map["TaskType"] = self.taskType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EndTime") {
                self.endTime = dict["EndTime"] as! String
            }
            if dict.keys.contains("ErrorMessage") {
                self.errorMessage = dict["ErrorMessage"] as! String
            }
            if dict.keys.contains("NotifyEndpoint") {
                self.notifyEndpoint = dict["NotifyEndpoint"] as! String
            }
            if dict.keys.contains("NotifyTopicName") {
                self.notifyTopicName = dict["NotifyTopicName"] as! String
            }
            if dict.keys.contains("Parameters") {
                self.parameters = dict["Parameters"] as! String
            }
            if dict.keys.contains("Progress") {
                self.progress = dict["Progress"] as! Int32
            }
            if dict.keys.contains("Result") {
                self.result = dict["Result"] as! String
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! String
            }
            if dict.keys.contains("TaskType") {
                self.taskType = dict["TaskType"] as! String
            }
        }
    }
    public var nextMarker: String?

    public var requestId: String?

    public var tasks: [ListVideoTasksResponseBody.Tasks]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nextMarker != nil {
            map["NextMarker"] = self.nextMarker!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tasks != nil {
            var tmp : [Any] = []
            for k in self.tasks! {
                tmp.append(k.toMap())
            }
            map["Tasks"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NextMarker") {
            self.nextMarker = dict["NextMarker"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Tasks") {
            self.tasks = dict["Tasks"] as! [ListVideoTasksResponseBody.Tasks]
        }
    }
}

public class ListVideoTasksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListVideoTasksResponseBody?

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
            var model = ListVideoTasksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListVideosRequest : Tea.TeaModel {
    public var createTimeStart: String?

    public var marker: String?

    public var project: String?

    public var setId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createTimeStart != nil {
            map["CreateTimeStart"] = self.createTimeStart!
        }
        if self.marker != nil {
            map["Marker"] = self.marker!
        }
        if self.project != nil {
            map["Project"] = self.project!
        }
        if self.setId != nil {
            map["SetId"] = self.setId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CreateTimeStart") {
            self.createTimeStart = dict["CreateTimeStart"] as! String
        }
        if dict.keys.contains("Marker") {
            self.marker = dict["Marker"] as! String
        }
        if dict.keys.contains("Project") {
            self.project = dict["Project"] as! String
        }
        if dict.keys.contains("SetId") {
            self.setId = dict["SetId"] as! String
        }
    }
}

public class ListVideosResponseBody : Tea.TeaModel {
    public class Videos : Tea.TeaModel {
        public class VideoTags : Tea.TeaModel {
            public var parentTagName: String?

            public var tagConfidence: Double?

            public var tagLevel: Int32?

            public var tagName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.parentTagName != nil {
                    map["ParentTagName"] = self.parentTagName!
                }
                if self.tagConfidence != nil {
                    map["TagConfidence"] = self.tagConfidence!
                }
                if self.tagLevel != nil {
                    map["TagLevel"] = self.tagLevel!
                }
                if self.tagName != nil {
                    map["TagName"] = self.tagName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ParentTagName") {
                    self.parentTagName = dict["ParentTagName"] as! String
                }
                if dict.keys.contains("TagConfidence") {
                    self.tagConfidence = dict["TagConfidence"] as! Double
                }
                if dict.keys.contains("TagLevel") {
                    self.tagLevel = dict["TagLevel"] as! Int32
                }
                if dict.keys.contains("TagName") {
                    self.tagName = dict["TagName"] as! String
                }
            }
        }
        public var createTime: String?

        public var externalId: String?

        public var fileSize: Int32?

        public var modifyTime: String?

        public var processFailReason: String?

        public var processModifyTime: String?

        public var processStatus: String?

        public var remarksA: String?

        public var remarksB: String?

        public var remarksC: String?

        public var remarksD: String?

        public var sourcePosition: String?

        public var sourceType: String?

        public var sourceUri: String?

        public var videoDuration: Double?

        public var videoFormat: String?

        public var videoFrames: Int32?

        public var videoHeight: Int32?

        public var videoTags: [ListVideosResponseBody.Videos.VideoTags]?

        public var videoTagsFailReason: String?

        public var videoTagsModifyTime: String?

        public var videoTagsStatus: String?

        public var videoUri: String?

        public var videoWidth: Int32?

        public override init() {
            super.init()
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
            if self.externalId != nil {
                map["ExternalId"] = self.externalId!
            }
            if self.fileSize != nil {
                map["FileSize"] = self.fileSize!
            }
            if self.modifyTime != nil {
                map["ModifyTime"] = self.modifyTime!
            }
            if self.processFailReason != nil {
                map["ProcessFailReason"] = self.processFailReason!
            }
            if self.processModifyTime != nil {
                map["ProcessModifyTime"] = self.processModifyTime!
            }
            if self.processStatus != nil {
                map["ProcessStatus"] = self.processStatus!
            }
            if self.remarksA != nil {
                map["RemarksA"] = self.remarksA!
            }
            if self.remarksB != nil {
                map["RemarksB"] = self.remarksB!
            }
            if self.remarksC != nil {
                map["RemarksC"] = self.remarksC!
            }
            if self.remarksD != nil {
                map["RemarksD"] = self.remarksD!
            }
            if self.sourcePosition != nil {
                map["SourcePosition"] = self.sourcePosition!
            }
            if self.sourceType != nil {
                map["SourceType"] = self.sourceType!
            }
            if self.sourceUri != nil {
                map["SourceUri"] = self.sourceUri!
            }
            if self.videoDuration != nil {
                map["VideoDuration"] = self.videoDuration!
            }
            if self.videoFormat != nil {
                map["VideoFormat"] = self.videoFormat!
            }
            if self.videoFrames != nil {
                map["VideoFrames"] = self.videoFrames!
            }
            if self.videoHeight != nil {
                map["VideoHeight"] = self.videoHeight!
            }
            if self.videoTags != nil {
                var tmp : [Any] = []
                for k in self.videoTags! {
                    tmp.append(k.toMap())
                }
                map["VideoTags"] = tmp
            }
            if self.videoTagsFailReason != nil {
                map["VideoTagsFailReason"] = self.videoTagsFailReason!
            }
            if self.videoTagsModifyTime != nil {
                map["VideoTagsModifyTime"] = self.videoTagsModifyTime!
            }
            if self.videoTagsStatus != nil {
                map["VideoTagsStatus"] = self.videoTagsStatus!
            }
            if self.videoUri != nil {
                map["VideoUri"] = self.videoUri!
            }
            if self.videoWidth != nil {
                map["VideoWidth"] = self.videoWidth!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("ExternalId") {
                self.externalId = dict["ExternalId"] as! String
            }
            if dict.keys.contains("FileSize") {
                self.fileSize = dict["FileSize"] as! Int32
            }
            if dict.keys.contains("ModifyTime") {
                self.modifyTime = dict["ModifyTime"] as! String
            }
            if dict.keys.contains("ProcessFailReason") {
                self.processFailReason = dict["ProcessFailReason"] as! String
            }
            if dict.keys.contains("ProcessModifyTime") {
                self.processModifyTime = dict["ProcessModifyTime"] as! String
            }
            if dict.keys.contains("ProcessStatus") {
                self.processStatus = dict["ProcessStatus"] as! String
            }
            if dict.keys.contains("RemarksA") {
                self.remarksA = dict["RemarksA"] as! String
            }
            if dict.keys.contains("RemarksB") {
                self.remarksB = dict["RemarksB"] as! String
            }
            if dict.keys.contains("RemarksC") {
                self.remarksC = dict["RemarksC"] as! String
            }
            if dict.keys.contains("RemarksD") {
                self.remarksD = dict["RemarksD"] as! String
            }
            if dict.keys.contains("SourcePosition") {
                self.sourcePosition = dict["SourcePosition"] as! String
            }
            if dict.keys.contains("SourceType") {
                self.sourceType = dict["SourceType"] as! String
            }
            if dict.keys.contains("SourceUri") {
                self.sourceUri = dict["SourceUri"] as! String
            }
            if dict.keys.contains("VideoDuration") {
                self.videoDuration = dict["VideoDuration"] as! Double
            }
            if dict.keys.contains("VideoFormat") {
                self.videoFormat = dict["VideoFormat"] as! String
            }
            if dict.keys.contains("VideoFrames") {
                self.videoFrames = dict["VideoFrames"] as! Int32
            }
            if dict.keys.contains("VideoHeight") {
                self.videoHeight = dict["VideoHeight"] as! Int32
            }
            if dict.keys.contains("VideoTags") {
                self.videoTags = dict["VideoTags"] as! [ListVideosResponseBody.Videos.VideoTags]
            }
            if dict.keys.contains("VideoTagsFailReason") {
                self.videoTagsFailReason = dict["VideoTagsFailReason"] as! String
            }
            if dict.keys.contains("VideoTagsModifyTime") {
                self.videoTagsModifyTime = dict["VideoTagsModifyTime"] as! String
            }
            if dict.keys.contains("VideoTagsStatus") {
                self.videoTagsStatus = dict["VideoTagsStatus"] as! String
            }
            if dict.keys.contains("VideoUri") {
                self.videoUri = dict["VideoUri"] as! String
            }
            if dict.keys.contains("VideoWidth") {
                self.videoWidth = dict["VideoWidth"] as! Int32
            }
        }
    }
    public var nextMarker: String?

    public var requestId: String?

    public var setId: String?

    public var videos: [ListVideosResponseBody.Videos]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nextMarker != nil {
            map["NextMarker"] = self.nextMarker!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.setId != nil {
            map["SetId"] = self.setId!
        }
        if self.videos != nil {
            var tmp : [Any] = []
            for k in self.videos! {
                tmp.append(k.toMap())
            }
            map["Videos"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NextMarker") {
            self.nextMarker = dict["NextMarker"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SetId") {
            self.setId = dict["SetId"] as! String
        }
        if dict.keys.contains("Videos") {
            self.videos = dict["Videos"] as! [ListVideosResponseBody.Videos]
        }
    }
}

public class ListVideosResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListVideosResponseBody?

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
            var model = ListVideosResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class OpenImmServiceRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
    }
}

public class OpenImmServiceResponseBody : Tea.TeaModel {
    public var orderId: String?

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
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OrderId") {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class OpenImmServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OpenImmServiceResponseBody?

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
            var model = OpenImmServiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PutProjectRequest : Tea.TeaModel {
    public var project: String?

    public var serviceRole: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.project != nil {
            map["Project"] = self.project!
        }
        if self.serviceRole != nil {
            map["ServiceRole"] = self.serviceRole!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Project") {
            self.project = dict["Project"] as! String
        }
        if dict.keys.contains("ServiceRole") {
            self.serviceRole = dict["ServiceRole"] as! String
        }
    }
}

public class PutProjectResponseBody : Tea.TeaModel {
    public var billingType: String?

    public var CU: Int32?

    public var createTime: String?

    public var endpoint: String?

    public var modifyTime: String?

    public var project: String?

    public var regionId: String?

    public var requestId: String?

    public var serviceRole: String?

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
        if self.billingType != nil {
            map["BillingType"] = self.billingType!
        }
        if self.CU != nil {
            map["CU"] = self.CU!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.endpoint != nil {
            map["Endpoint"] = self.endpoint!
        }
        if self.modifyTime != nil {
            map["ModifyTime"] = self.modifyTime!
        }
        if self.project != nil {
            map["Project"] = self.project!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.serviceRole != nil {
            map["ServiceRole"] = self.serviceRole!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BillingType") {
            self.billingType = dict["BillingType"] as! String
        }
        if dict.keys.contains("CU") {
            self.CU = dict["CU"] as! Int32
        }
        if dict.keys.contains("CreateTime") {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("Endpoint") {
            self.endpoint = dict["Endpoint"] as! String
        }
        if dict.keys.contains("ModifyTime") {
            self.modifyTime = dict["ModifyTime"] as! String
        }
        if dict.keys.contains("Project") {
            self.project = dict["Project"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ServiceRole") {
            self.serviceRole = dict["ServiceRole"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class PutProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PutProjectResponseBody?

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
            var model = PutProjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RefreshOfficePreviewTokenRequest : Tea.TeaModel {
    public var accessToken: String?

    public var project: String?

    public var refreshToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessToken != nil {
            map["AccessToken"] = self.accessToken!
        }
        if self.project != nil {
            map["Project"] = self.project!
        }
        if self.refreshToken != nil {
            map["RefreshToken"] = self.refreshToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessToken") {
            self.accessToken = dict["AccessToken"] as! String
        }
        if dict.keys.contains("Project") {
            self.project = dict["Project"] as! String
        }
        if dict.keys.contains("RefreshToken") {
            self.refreshToken = dict["RefreshToken"] as! String
        }
    }
}

public class RefreshOfficePreviewTokenResponseBody : Tea.TeaModel {
    public var accessToken: String?

    public var accessTokenExpiredTime: String?

    public var refreshToken: String?

    public var refreshTokenExpiredTime: String?

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
        if self.accessToken != nil {
            map["AccessToken"] = self.accessToken!
        }
        if self.accessTokenExpiredTime != nil {
            map["AccessTokenExpiredTime"] = self.accessTokenExpiredTime!
        }
        if self.refreshToken != nil {
            map["RefreshToken"] = self.refreshToken!
        }
        if self.refreshTokenExpiredTime != nil {
            map["RefreshTokenExpiredTime"] = self.refreshTokenExpiredTime!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessToken") {
            self.accessToken = dict["AccessToken"] as! String
        }
        if dict.keys.contains("AccessTokenExpiredTime") {
            self.accessTokenExpiredTime = dict["AccessTokenExpiredTime"] as! String
        }
        if dict.keys.contains("RefreshToken") {
            self.refreshToken = dict["RefreshToken"] as! String
        }
        if dict.keys.contains("RefreshTokenExpiredTime") {
            self.refreshTokenExpiredTime = dict["RefreshTokenExpiredTime"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RefreshOfficePreviewTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RefreshOfficePreviewTokenResponseBody?

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
            var model = RefreshOfficePreviewTokenResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RefreshWebofficeTokenRequest : Tea.TeaModel {
    public var accessToken: String?

    public var project: String?

    public var refreshToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessToken != nil {
            map["AccessToken"] = self.accessToken!
        }
        if self.project != nil {
            map["Project"] = self.project!
        }
        if self.refreshToken != nil {
            map["RefreshToken"] = self.refreshToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessToken") {
            self.accessToken = dict["AccessToken"] as! String
        }
        if dict.keys.contains("Project") {
            self.project = dict["Project"] as! String
        }
        if dict.keys.contains("RefreshToken") {
            self.refreshToken = dict["RefreshToken"] as! String
        }
    }
}

public class RefreshWebofficeTokenResponseBody : Tea.TeaModel {
    public var accessToken: String?

    public var accessTokenExpiredTime: String?

    public var refreshToken: String?

    public var refreshTokenExpiredTime: String?

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
        if self.accessToken != nil {
            map["AccessToken"] = self.accessToken!
        }
        if self.accessTokenExpiredTime != nil {
            map["AccessTokenExpiredTime"] = self.accessTokenExpiredTime!
        }
        if self.refreshToken != nil {
            map["RefreshToken"] = self.refreshToken!
        }
        if self.refreshTokenExpiredTime != nil {
            map["RefreshTokenExpiredTime"] = self.refreshTokenExpiredTime!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessToken") {
            self.accessToken = dict["AccessToken"] as! String
        }
        if dict.keys.contains("AccessTokenExpiredTime") {
            self.accessTokenExpiredTime = dict["AccessTokenExpiredTime"] as! String
        }
        if dict.keys.contains("RefreshToken") {
            self.refreshToken = dict["RefreshToken"] as! String
        }
        if dict.keys.contains("RefreshTokenExpiredTime") {
            self.refreshTokenExpiredTime = dict["RefreshTokenExpiredTime"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RefreshWebofficeTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RefreshWebofficeTokenResponseBody?

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
            var model = RefreshWebofficeTokenResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateFaceGroupRequest : Tea.TeaModel {
    public var externalId: String?

    public var groupCoverFaceId: String?

    public var groupId: String?

    public var groupName: String?

    public var project: String?

    public var remarksA: String?

    public var remarksArrayA: String?

    public var remarksArrayB: String?

    public var remarksB: String?

    public var remarksC: String?

    public var remarksD: String?

    public var resetItems: String?

    public var setId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.externalId != nil {
            map["ExternalId"] = self.externalId!
        }
        if self.groupCoverFaceId != nil {
            map["GroupCoverFaceId"] = self.groupCoverFaceId!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.project != nil {
            map["Project"] = self.project!
        }
        if self.remarksA != nil {
            map["RemarksA"] = self.remarksA!
        }
        if self.remarksArrayA != nil {
            map["RemarksArrayA"] = self.remarksArrayA!
        }
        if self.remarksArrayB != nil {
            map["RemarksArrayB"] = self.remarksArrayB!
        }
        if self.remarksB != nil {
            map["RemarksB"] = self.remarksB!
        }
        if self.remarksC != nil {
            map["RemarksC"] = self.remarksC!
        }
        if self.remarksD != nil {
            map["RemarksD"] = self.remarksD!
        }
        if self.resetItems != nil {
            map["ResetItems"] = self.resetItems!
        }
        if self.setId != nil {
            map["SetId"] = self.setId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExternalId") {
            self.externalId = dict["ExternalId"] as! String
        }
        if dict.keys.contains("GroupCoverFaceId") {
            self.groupCoverFaceId = dict["GroupCoverFaceId"] as! String
        }
        if dict.keys.contains("GroupId") {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("GroupName") {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("Project") {
            self.project = dict["Project"] as! String
        }
        if dict.keys.contains("RemarksA") {
            self.remarksA = dict["RemarksA"] as! String
        }
        if dict.keys.contains("RemarksArrayA") {
            self.remarksArrayA = dict["RemarksArrayA"] as! String
        }
        if dict.keys.contains("RemarksArrayB") {
            self.remarksArrayB = dict["RemarksArrayB"] as! String
        }
        if dict.keys.contains("RemarksB") {
            self.remarksB = dict["RemarksB"] as! String
        }
        if dict.keys.contains("RemarksC") {
            self.remarksC = dict["RemarksC"] as! String
        }
        if dict.keys.contains("RemarksD") {
            self.remarksD = dict["RemarksD"] as! String
        }
        if dict.keys.contains("ResetItems") {
            self.resetItems = dict["ResetItems"] as! String
        }
        if dict.keys.contains("SetId") {
            self.setId = dict["SetId"] as! String
        }
    }
}

public class UpdateFaceGroupResponseBody : Tea.TeaModel {
    public var groupId: String?

    public var requestId: String?

    public var setId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.setId != nil {
            map["SetId"] = self.setId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupId") {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SetId") {
            self.setId = dict["SetId"] as! String
        }
    }
}

public class UpdateFaceGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateFaceGroupResponseBody?

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
            var model = UpdateFaceGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateImageRequest : Tea.TeaModel {
    public class Faces : Tea.TeaModel {
        public var faceId: String?

        public var groupId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.faceId != nil {
                map["FaceId"] = self.faceId!
            }
            if self.groupId != nil {
                map["GroupId"] = self.groupId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FaceId") {
                self.faceId = dict["FaceId"] as! String
            }
            if dict.keys.contains("GroupId") {
                self.groupId = dict["GroupId"] as! String
            }
        }
    }
    public var externalId: String?

    public var faces: [UpdateImageRequest.Faces]?

    public var imageUri: String?

    public var project: String?

    public var remarksA: String?

    public var remarksArrayA: String?

    public var remarksArrayB: String?

    public var remarksB: String?

    public var remarksC: String?

    public var remarksD: String?

    public var setId: String?

    public var sourcePosition: String?

    public var sourceType: String?

    public var sourceUri: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.externalId != nil {
            map["ExternalId"] = self.externalId!
        }
        if self.faces != nil {
            var tmp : [Any] = []
            for k in self.faces! {
                tmp.append(k.toMap())
            }
            map["Faces"] = tmp
        }
        if self.imageUri != nil {
            map["ImageUri"] = self.imageUri!
        }
        if self.project != nil {
            map["Project"] = self.project!
        }
        if self.remarksA != nil {
            map["RemarksA"] = self.remarksA!
        }
        if self.remarksArrayA != nil {
            map["RemarksArrayA"] = self.remarksArrayA!
        }
        if self.remarksArrayB != nil {
            map["RemarksArrayB"] = self.remarksArrayB!
        }
        if self.remarksB != nil {
            map["RemarksB"] = self.remarksB!
        }
        if self.remarksC != nil {
            map["RemarksC"] = self.remarksC!
        }
        if self.remarksD != nil {
            map["RemarksD"] = self.remarksD!
        }
        if self.setId != nil {
            map["SetId"] = self.setId!
        }
        if self.sourcePosition != nil {
            map["SourcePosition"] = self.sourcePosition!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        if self.sourceUri != nil {
            map["SourceUri"] = self.sourceUri!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExternalId") {
            self.externalId = dict["ExternalId"] as! String
        }
        if dict.keys.contains("Faces") {
            self.faces = dict["Faces"] as! [UpdateImageRequest.Faces]
        }
        if dict.keys.contains("ImageUri") {
            self.imageUri = dict["ImageUri"] as! String
        }
        if dict.keys.contains("Project") {
            self.project = dict["Project"] as! String
        }
        if dict.keys.contains("RemarksA") {
            self.remarksA = dict["RemarksA"] as! String
        }
        if dict.keys.contains("RemarksArrayA") {
            self.remarksArrayA = dict["RemarksArrayA"] as! String
        }
        if dict.keys.contains("RemarksArrayB") {
            self.remarksArrayB = dict["RemarksArrayB"] as! String
        }
        if dict.keys.contains("RemarksB") {
            self.remarksB = dict["RemarksB"] as! String
        }
        if dict.keys.contains("RemarksC") {
            self.remarksC = dict["RemarksC"] as! String
        }
        if dict.keys.contains("RemarksD") {
            self.remarksD = dict["RemarksD"] as! String
        }
        if dict.keys.contains("SetId") {
            self.setId = dict["SetId"] as! String
        }
        if dict.keys.contains("SourcePosition") {
            self.sourcePosition = dict["SourcePosition"] as! String
        }
        if dict.keys.contains("SourceType") {
            self.sourceType = dict["SourceType"] as! String
        }
        if dict.keys.contains("SourceUri") {
            self.sourceUri = dict["SourceUri"] as! String
        }
    }
}

public class UpdateImageShrinkRequest : Tea.TeaModel {
    public var externalId: String?

    public var facesShrink: String?

    public var imageUri: String?

    public var project: String?

    public var remarksA: String?

    public var remarksArrayA: String?

    public var remarksArrayB: String?

    public var remarksB: String?

    public var remarksC: String?

    public var remarksD: String?

    public var setId: String?

    public var sourcePosition: String?

    public var sourceType: String?

    public var sourceUri: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.externalId != nil {
            map["ExternalId"] = self.externalId!
        }
        if self.facesShrink != nil {
            map["Faces"] = self.facesShrink!
        }
        if self.imageUri != nil {
            map["ImageUri"] = self.imageUri!
        }
        if self.project != nil {
            map["Project"] = self.project!
        }
        if self.remarksA != nil {
            map["RemarksA"] = self.remarksA!
        }
        if self.remarksArrayA != nil {
            map["RemarksArrayA"] = self.remarksArrayA!
        }
        if self.remarksArrayB != nil {
            map["RemarksArrayB"] = self.remarksArrayB!
        }
        if self.remarksB != nil {
            map["RemarksB"] = self.remarksB!
        }
        if self.remarksC != nil {
            map["RemarksC"] = self.remarksC!
        }
        if self.remarksD != nil {
            map["RemarksD"] = self.remarksD!
        }
        if self.setId != nil {
            map["SetId"] = self.setId!
        }
        if self.sourcePosition != nil {
            map["SourcePosition"] = self.sourcePosition!
        }
        if self.sourceType != nil {
            map["SourceType"] = self.sourceType!
        }
        if self.sourceUri != nil {
            map["SourceUri"] = self.sourceUri!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExternalId") {
            self.externalId = dict["ExternalId"] as! String
        }
        if dict.keys.contains("Faces") {
            self.facesShrink = dict["Faces"] as! String
        }
        if dict.keys.contains("ImageUri") {
            self.imageUri = dict["ImageUri"] as! String
        }
        if dict.keys.contains("Project") {
            self.project = dict["Project"] as! String
        }
        if dict.keys.contains("RemarksA") {
            self.remarksA = dict["RemarksA"] as! String
        }
        if dict.keys.contains("RemarksArrayA") {
            self.remarksArrayA = dict["RemarksArrayA"] as! String
        }
        if dict.keys.contains("RemarksArrayB") {
            self.remarksArrayB = dict["RemarksArrayB"] as! String
        }
        if dict.keys.contains("RemarksB") {
            self.remarksB = dict["RemarksB"] as! String
        }
        if dict.keys.contains("RemarksC") {
            self.remarksC = dict["RemarksC"] as! String
        }
        if dict.keys.contains("RemarksD") {
            self.remarksD = dict["RemarksD"] as! String
        }
        if dict.keys.contains("SetId") {
            self.setId = dict["SetId"] as! String
        }
        if dict.keys.contains("SourcePosition") {
            self.sourcePosition = dict["SourcePosition"] as! String
        }
        if dict.keys.contains("SourceType") {
            self.sourceType = dict["SourceType"] as! String
        }
        if dict.keys.contains("SourceUri") {
            self.sourceUri = dict["SourceUri"] as! String
        }
    }
}

public class UpdateImageResponseBody : Tea.TeaModel {
    public var createTime: String?

    public var externalId: String?

    public var imageUri: String?

    public var modifyTime: String?

    public var remarksA: String?

    public var remarksArrayA: String?

    public var remarksArrayB: String?

    public var remarksB: String?

    public var remarksC: String?

    public var remarksD: String?

    public var requestId: String?

    public var setId: String?

    public override init() {
        super.init()
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
        if self.externalId != nil {
            map["ExternalId"] = self.externalId!
        }
        if self.imageUri != nil {
            map["ImageUri"] = self.imageUri!
        }
        if self.modifyTime != nil {
            map["ModifyTime"] = self.modifyTime!
        }
        if self.remarksA != nil {
            map["RemarksA"] = self.remarksA!
        }
        if self.remarksArrayA != nil {
            map["RemarksArrayA"] = self.remarksArrayA!
        }
        if self.remarksArrayB != nil {
            map["RemarksArrayB"] = self.remarksArrayB!
        }
        if self.remarksB != nil {
            map["RemarksB"] = self.remarksB!
        }
        if self.remarksC != nil {
            map["RemarksC"] = self.remarksC!
        }
        if self.remarksD != nil {
            map["RemarksD"] = self.remarksD!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.setId != nil {
            map["SetId"] = self.setId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CreateTime") {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("ExternalId") {
            self.externalId = dict["ExternalId"] as! String
        }
        if dict.keys.contains("ImageUri") {
            self.imageUri = dict["ImageUri"] as! String
        }
        if dict.keys.contains("ModifyTime") {
            self.modifyTime = dict["ModifyTime"] as! String
        }
        if dict.keys.contains("RemarksA") {
            self.remarksA = dict["RemarksA"] as! String
        }
        if dict.keys.contains("RemarksArrayA") {
            self.remarksArrayA = dict["RemarksArrayA"] as! String
        }
        if dict.keys.contains("RemarksArrayB") {
            self.remarksArrayB = dict["RemarksArrayB"] as! String
        }
        if dict.keys.contains("RemarksB") {
            self.remarksB = dict["RemarksB"] as! String
        }
        if dict.keys.contains("RemarksC") {
            self.remarksC = dict["RemarksC"] as! String
        }
        if dict.keys.contains("RemarksD") {
            self.remarksD = dict["RemarksD"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SetId") {
            self.setId = dict["SetId"] as! String
        }
    }
}

public class UpdateImageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateImageResponseBody?

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
            var model = UpdateImageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateProjectRequest : Tea.TeaModel {
    public var newCU: Int32?

    public var newServiceRole: String?

    public var project: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.newCU != nil {
            map["NewCU"] = self.newCU!
        }
        if self.newServiceRole != nil {
            map["NewServiceRole"] = self.newServiceRole!
        }
        if self.project != nil {
            map["Project"] = self.project!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NewCU") {
            self.newCU = dict["NewCU"] as! Int32
        }
        if dict.keys.contains("NewServiceRole") {
            self.newServiceRole = dict["NewServiceRole"] as! String
        }
        if dict.keys.contains("Project") {
            self.project = dict["Project"] as! String
        }
    }
}

public class UpdateProjectResponseBody : Tea.TeaModel {
    public var CU: Int32?

    public var createTime: String?

    public var modifyTime: String?

    public var project: String?

    public var regionId: String?

    public var requestId: String?

    public var serviceRole: String?

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
        if self.CU != nil {
            map["CU"] = self.CU!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.modifyTime != nil {
            map["ModifyTime"] = self.modifyTime!
        }
        if self.project != nil {
            map["Project"] = self.project!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.serviceRole != nil {
            map["ServiceRole"] = self.serviceRole!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CU") {
            self.CU = dict["CU"] as! Int32
        }
        if dict.keys.contains("CreateTime") {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("ModifyTime") {
            self.modifyTime = dict["ModifyTime"] as! String
        }
        if dict.keys.contains("Project") {
            self.project = dict["Project"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ServiceRole") {
            self.serviceRole = dict["ServiceRole"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class UpdateProjectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateProjectResponseBody?

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
            var model = UpdateProjectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateSetRequest : Tea.TeaModel {
    public var project: String?

    public var setId: String?

    public var setName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.project != nil {
            map["Project"] = self.project!
        }
        if self.setId != nil {
            map["SetId"] = self.setId!
        }
        if self.setName != nil {
            map["SetName"] = self.setName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Project") {
            self.project = dict["Project"] as! String
        }
        if dict.keys.contains("SetId") {
            self.setId = dict["SetId"] as! String
        }
        if dict.keys.contains("SetName") {
            self.setName = dict["SetName"] as! String
        }
    }
}

public class UpdateSetResponseBody : Tea.TeaModel {
    public var createTime: String?

    public var modifyTime: String?

    public var requestId: String?

    public var setId: String?

    public var setName: String?

    public override init() {
        super.init()
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
        if self.modifyTime != nil {
            map["ModifyTime"] = self.modifyTime!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.setId != nil {
            map["SetId"] = self.setId!
        }
        if self.setName != nil {
            map["SetName"] = self.setName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CreateTime") {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("ModifyTime") {
            self.modifyTime = dict["ModifyTime"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SetId") {
            self.setId = dict["SetId"] as! String
        }
        if dict.keys.contains("SetName") {
            self.setName = dict["SetName"] as! String
        }
    }
}

public class UpdateSetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateSetResponseBody?

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
            var model = UpdateSetResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
