import Foundation
import Tea
import TeaUtils
import AlibabaCloudOssSdk
import AlibabacloudOpenPlatform20191219
import AlibabaCloudOSSUtil
import TeaFileForm
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CreateAnnualDocSummaryTaskRequest : Tea.TeaModel {
    public class DocInfos : Tea.TeaModel {
        public var docId: String?

        public var docYear: Int32?

        public var endPage: Int32?

        public var libraryId: String?

        public var startPage: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.docId != nil {
                map["docId"] = self.docId!
            }
            if self.docYear != nil {
                map["docYear"] = self.docYear!
            }
            if self.endPage != nil {
                map["endPage"] = self.endPage!
            }
            if self.libraryId != nil {
                map["libraryId"] = self.libraryId!
            }
            if self.startPage != nil {
                map["startPage"] = self.startPage!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("docId") {
                self.docId = dict["docId"] as! String
            }
            if dict.keys.contains("docYear") {
                self.docYear = dict["docYear"] as! Int32
            }
            if dict.keys.contains("endPage") {
                self.endPage = dict["endPage"] as! Int32
            }
            if dict.keys.contains("libraryId") {
                self.libraryId = dict["libraryId"] as! String
            }
            if dict.keys.contains("startPage") {
                self.startPage = dict["startPage"] as! Int32
            }
        }
    }
    public var anaYears: [Int32]?

    public var docInfos: [CreateAnnualDocSummaryTaskRequest.DocInfos]?

    public var enableTable: Bool?

    public var instruction: String?

    public var modelId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.anaYears != nil {
            map["anaYears"] = self.anaYears!
        }
        if self.docInfos != nil {
            var tmp : [Any] = []
            for k in self.docInfos! {
                tmp.append(k.toMap())
            }
            map["docInfos"] = tmp
        }
        if self.enableTable != nil {
            map["enableTable"] = self.enableTable!
        }
        if self.instruction != nil {
            map["instruction"] = self.instruction!
        }
        if self.modelId != nil {
            map["modelId"] = self.modelId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("anaYears") {
            self.anaYears = dict["anaYears"] as! [Int32]
        }
        if dict.keys.contains("docInfos") {
            var tmp : [CreateAnnualDocSummaryTaskRequest.DocInfos] = []
            for v in dict["docInfos"] as! [Any] {
                var model = CreateAnnualDocSummaryTaskRequest.DocInfos()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.docInfos = tmp
        }
        if dict.keys.contains("enableTable") {
            self.enableTable = dict["enableTable"] as! Bool
        }
        if dict.keys.contains("instruction") {
            self.instruction = dict["instruction"] as! String
        }
        if dict.keys.contains("modelId") {
            self.modelId = dict["modelId"] as! String
        }
    }
}

public class CreateAnnualDocSummaryTaskResponseBody : Tea.TeaModel {
    public var cost: Int64?

    public var data: String?

    public var dataType: String?

    public var errCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var time: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cost != nil {
            map["cost"] = self.cost!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.dataType != nil {
            map["dataType"] = self.dataType!
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.time != nil {
            map["time"] = self.time!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("cost") {
            self.cost = dict["cost"] as! Int64
        }
        if dict.keys.contains("data") {
            self.data = dict["data"] as! String
        }
        if dict.keys.contains("dataType") {
            self.dataType = dict["dataType"] as! String
        }
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("time") {
            self.time = dict["time"] as! String
        }
    }
}

public class CreateAnnualDocSummaryTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAnnualDocSummaryTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateAnnualDocSummaryTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateDialogRequest : Tea.TeaModel {
    public var channel: String?

    public var enableLibrary: Bool?

    public var metaData: [String: Any]?

    public var playCode: String?

    public var qaLibraryList: [String]?

    public var requestId: String?

    public var selfDirected: Bool?

    public override init() {
        super.init()
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
            map["channel"] = self.channel!
        }
        if self.enableLibrary != nil {
            map["enableLibrary"] = self.enableLibrary!
        }
        if self.metaData != nil {
            map["metaData"] = self.metaData!
        }
        if self.playCode != nil {
            map["playCode"] = self.playCode!
        }
        if self.qaLibraryList != nil {
            map["qaLibraryList"] = self.qaLibraryList!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.selfDirected != nil {
            map["selfDirected"] = self.selfDirected!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("channel") {
            self.channel = dict["channel"] as! String
        }
        if dict.keys.contains("enableLibrary") {
            self.enableLibrary = dict["enableLibrary"] as! Bool
        }
        if dict.keys.contains("metaData") {
            self.metaData = dict["metaData"] as! [String: Any]
        }
        if dict.keys.contains("playCode") {
            self.playCode = dict["playCode"] as! String
        }
        if dict.keys.contains("qaLibraryList") {
            self.qaLibraryList = dict["qaLibraryList"] as! [String]
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("selfDirected") {
            self.selfDirected = dict["selfDirected"] as! Bool
        }
    }
}

public class CreateDialogResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var openingRemarks: String?

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
            if self.openingRemarks != nil {
                map["openingRemarks"] = self.openingRemarks!
            }
            if self.sessionId != nil {
                map["sessionId"] = self.sessionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("openingRemarks") {
                self.openingRemarks = dict["openingRemarks"] as! String
            }
            if dict.keys.contains("sessionId") {
                self.sessionId = dict["sessionId"] as! String
            }
        }
    }
    public var cost: Int64?

    public var data: CreateDialogResponseBody.Data?

    public var dataType: String?

    public var errCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var time: String?

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
        if self.cost != nil {
            map["cost"] = self.cost!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.dataType != nil {
            map["dataType"] = self.dataType!
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.time != nil {
            map["time"] = self.time!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("cost") {
            self.cost = dict["cost"] as! Int64
        }
        if dict.keys.contains("data") {
            var model = CreateDialogResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("dataType") {
            self.dataType = dict["dataType"] as! String
        }
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("time") {
            self.time = dict["time"] as! String
        }
    }
}

public class CreateDialogResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDialogResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateDialogResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateDialogAnalysisTaskRequest : Tea.TeaModel {
    public class ConversationList : Tea.TeaModel {
        public class DialogueList : Tea.TeaModel {
            public var content: String?

            public var role: String?

            public override init() {
                super.init()
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
                    map["content"] = self.content!
                }
                if self.role != nil {
                    map["role"] = self.role!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("content") {
                    self.content = dict["content"] as! String
                }
                if dict.keys.contains("role") {
                    self.role = dict["role"] as! String
                }
            }
        }
        public var dialogueList: [CreateDialogAnalysisTaskRequest.ConversationList.DialogueList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dialogueList != nil {
                var tmp : [Any] = []
                for k in self.dialogueList! {
                    tmp.append(k.toMap())
                }
                map["dialogueList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("dialogueList") {
                var tmp : [CreateDialogAnalysisTaskRequest.ConversationList.DialogueList] = []
                for v in dict["dialogueList"] as! [Any] {
                    var model = CreateDialogAnalysisTaskRequest.ConversationList.DialogueList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.dialogueList = tmp
            }
        }
    }
    public var analysisNodes: [String]?

    public var conversationList: [CreateDialogAnalysisTaskRequest.ConversationList]?

    public var metaData: [String: Any]?

    public var playCode: String?

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
        if self.analysisNodes != nil {
            map["analysisNodes"] = self.analysisNodes!
        }
        if self.conversationList != nil {
            var tmp : [Any] = []
            for k in self.conversationList! {
                tmp.append(k.toMap())
            }
            map["conversationList"] = tmp
        }
        if self.metaData != nil {
            map["metaData"] = self.metaData!
        }
        if self.playCode != nil {
            map["playCode"] = self.playCode!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("analysisNodes") {
            self.analysisNodes = dict["analysisNodes"] as! [String]
        }
        if dict.keys.contains("conversationList") {
            var tmp : [CreateDialogAnalysisTaskRequest.ConversationList] = []
            for v in dict["conversationList"] as! [Any] {
                var model = CreateDialogAnalysisTaskRequest.ConversationList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.conversationList = tmp
        }
        if dict.keys.contains("metaData") {
            self.metaData = dict["metaData"] as! [String: Any]
        }
        if dict.keys.contains("playCode") {
            self.playCode = dict["playCode"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class CreateDialogAnalysisTaskResponseBody : Tea.TeaModel {
    public var cost: Int64?

    public var data: [String]?

    public var dataType: String?

    public var errCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var time: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cost != nil {
            map["cost"] = self.cost!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.dataType != nil {
            map["dataType"] = self.dataType!
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.time != nil {
            map["time"] = self.time!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("cost") {
            self.cost = dict["cost"] as! Int64
        }
        if dict.keys.contains("data") {
            self.data = dict["data"] as! [String]
        }
        if dict.keys.contains("dataType") {
            self.dataType = dict["dataType"] as! String
        }
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("time") {
            self.time = dict["time"] as! String
        }
    }
}

public class CreateDialogAnalysisTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDialogAnalysisTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateDialogAnalysisTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateDocsSummaryTaskRequest : Tea.TeaModel {
    public class DocInfos : Tea.TeaModel {
        public var docId: String?

        public var endPage: Int32?

        public var libraryId: String?

        public var startPage: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.docId != nil {
                map["docId"] = self.docId!
            }
            if self.endPage != nil {
                map["endPage"] = self.endPage!
            }
            if self.libraryId != nil {
                map["libraryId"] = self.libraryId!
            }
            if self.startPage != nil {
                map["startPage"] = self.startPage!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("docId") {
                self.docId = dict["docId"] as! String
            }
            if dict.keys.contains("endPage") {
                self.endPage = dict["endPage"] as! Int32
            }
            if dict.keys.contains("libraryId") {
                self.libraryId = dict["libraryId"] as! String
            }
            if dict.keys.contains("startPage") {
                self.startPage = dict["startPage"] as! Int32
            }
        }
    }
    public var docInfos: [CreateDocsSummaryTaskRequest.DocInfos]?

    public var enableTable: Bool?

    public var instruction: String?

    public var modelId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.docInfos != nil {
            var tmp : [Any] = []
            for k in self.docInfos! {
                tmp.append(k.toMap())
            }
            map["docInfos"] = tmp
        }
        if self.enableTable != nil {
            map["enableTable"] = self.enableTable!
        }
        if self.instruction != nil {
            map["instruction"] = self.instruction!
        }
        if self.modelId != nil {
            map["modelId"] = self.modelId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("docInfos") {
            var tmp : [CreateDocsSummaryTaskRequest.DocInfos] = []
            for v in dict["docInfos"] as! [Any] {
                var model = CreateDocsSummaryTaskRequest.DocInfos()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.docInfos = tmp
        }
        if dict.keys.contains("enableTable") {
            self.enableTable = dict["enableTable"] as! Bool
        }
        if dict.keys.contains("instruction") {
            self.instruction = dict["instruction"] as! String
        }
        if dict.keys.contains("modelId") {
            self.modelId = dict["modelId"] as! String
        }
    }
}

public class CreateDocsSummaryTaskResponseBody : Tea.TeaModel {
    public var cost: Int64?

    public var data: String?

    public var dataType: String?

    public var errCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var time: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cost != nil {
            map["cost"] = self.cost!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.dataType != nil {
            map["dataType"] = self.dataType!
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.time != nil {
            map["time"] = self.time!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("cost") {
            self.cost = dict["cost"] as! Int64
        }
        if dict.keys.contains("data") {
            self.data = dict["data"] as! String
        }
        if dict.keys.contains("dataType") {
            self.dataType = dict["dataType"] as! String
        }
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("time") {
            self.time = dict["time"] as! String
        }
    }
}

public class CreateDocsSummaryTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDocsSummaryTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateDocsSummaryTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateFinReportSummaryTaskRequest : Tea.TeaModel {
    public var docId: String?

    public var enableTable: Bool?

    public var endPage: Int32?

    public var instruction: String?

    public var libraryId: String?

    public var modelId: String?

    public var startPage: Int32?

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
        if self.docId != nil {
            map["docId"] = self.docId!
        }
        if self.enableTable != nil {
            map["enableTable"] = self.enableTable!
        }
        if self.endPage != nil {
            map["endPage"] = self.endPage!
        }
        if self.instruction != nil {
            map["instruction"] = self.instruction!
        }
        if self.libraryId != nil {
            map["libraryId"] = self.libraryId!
        }
        if self.modelId != nil {
            map["modelId"] = self.modelId!
        }
        if self.startPage != nil {
            map["startPage"] = self.startPage!
        }
        if self.taskType != nil {
            map["taskType"] = self.taskType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("docId") {
            self.docId = dict["docId"] as! String
        }
        if dict.keys.contains("enableTable") {
            self.enableTable = dict["enableTable"] as! Bool
        }
        if dict.keys.contains("endPage") {
            self.endPage = dict["endPage"] as! Int32
        }
        if dict.keys.contains("instruction") {
            self.instruction = dict["instruction"] as! String
        }
        if dict.keys.contains("libraryId") {
            self.libraryId = dict["libraryId"] as! String
        }
        if dict.keys.contains("modelId") {
            self.modelId = dict["modelId"] as! String
        }
        if dict.keys.contains("startPage") {
            self.startPage = dict["startPage"] as! Int32
        }
        if dict.keys.contains("taskType") {
            self.taskType = dict["taskType"] as! String
        }
    }
}

public class CreateFinReportSummaryTaskResponseBody : Tea.TeaModel {
    public var cost: Int64?

    public var data: String?

    public var dataType: String?

    public var errCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var time: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cost != nil {
            map["cost"] = self.cost!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.dataType != nil {
            map["dataType"] = self.dataType!
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.time != nil {
            map["time"] = self.time!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("cost") {
            self.cost = dict["cost"] as! Int64
        }
        if dict.keys.contains("data") {
            self.data = dict["data"] as! String
        }
        if dict.keys.contains("dataType") {
            self.dataType = dict["dataType"] as! String
        }
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("time") {
            self.time = dict["time"] as! String
        }
    }
}

public class CreateFinReportSummaryTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateFinReportSummaryTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateFinReportSummaryTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateLibraryRequest : Tea.TeaModel {
    public class IndexSetting : Tea.TeaModel {
        public class ChunkStrategy : Tea.TeaModel {
            public var docTreeSplit: Bool?

            public var docTreeSplitSize: Int32?

            public var enhanceGraph: Bool?

            public var enhanceTable: Bool?

            public var overlap: Int32?

            public var sentenceSplit: Bool?

            public var sentenceSplitSize: Int32?

            public var size: Int32?

            public var split: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.docTreeSplit != nil {
                    map["docTreeSplit"] = self.docTreeSplit!
                }
                if self.docTreeSplitSize != nil {
                    map["docTreeSplitSize"] = self.docTreeSplitSize!
                }
                if self.enhanceGraph != nil {
                    map["enhanceGraph"] = self.enhanceGraph!
                }
                if self.enhanceTable != nil {
                    map["enhanceTable"] = self.enhanceTable!
                }
                if self.overlap != nil {
                    map["overlap"] = self.overlap!
                }
                if self.sentenceSplit != nil {
                    map["sentenceSplit"] = self.sentenceSplit!
                }
                if self.sentenceSplitSize != nil {
                    map["sentenceSplitSize"] = self.sentenceSplitSize!
                }
                if self.size != nil {
                    map["size"] = self.size!
                }
                if self.split != nil {
                    map["split"] = self.split!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("docTreeSplit") {
                    self.docTreeSplit = dict["docTreeSplit"] as! Bool
                }
                if dict.keys.contains("docTreeSplitSize") {
                    self.docTreeSplitSize = dict["docTreeSplitSize"] as! Int32
                }
                if dict.keys.contains("enhanceGraph") {
                    self.enhanceGraph = dict["enhanceGraph"] as! Bool
                }
                if dict.keys.contains("enhanceTable") {
                    self.enhanceTable = dict["enhanceTable"] as! Bool
                }
                if dict.keys.contains("overlap") {
                    self.overlap = dict["overlap"] as! Int32
                }
                if dict.keys.contains("sentenceSplit") {
                    self.sentenceSplit = dict["sentenceSplit"] as! Bool
                }
                if dict.keys.contains("sentenceSplitSize") {
                    self.sentenceSplitSize = dict["sentenceSplitSize"] as! Int32
                }
                if dict.keys.contains("size") {
                    self.size = dict["size"] as! Int32
                }
                if dict.keys.contains("split") {
                    self.split = dict["split"] as! Bool
                }
            }
        }
        public class ModelConfig : Tea.TeaModel {
            public var temperature: Double?

            public var topP: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.temperature != nil {
                    map["temperature"] = self.temperature!
                }
                if self.topP != nil {
                    map["topP"] = self.topP!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("temperature") {
                    self.temperature = dict["temperature"] as! Double
                }
                if dict.keys.contains("topP") {
                    self.topP = dict["topP"] as! Double
                }
            }
        }
        public class QueryEnhancer : Tea.TeaModel {
            public var enableFollowUp: Bool?

            public var enableMultiQuery: Bool?

            public var enableOpenQa: Bool?

            public var enableQueryRewrite: Bool?

            public var enableSession: Bool?

            public var localKnowledgeId: String?

            public var withDocumentReference: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.enableFollowUp != nil {
                    map["enableFollowUp"] = self.enableFollowUp!
                }
                if self.enableMultiQuery != nil {
                    map["enableMultiQuery"] = self.enableMultiQuery!
                }
                if self.enableOpenQa != nil {
                    map["enableOpenQa"] = self.enableOpenQa!
                }
                if self.enableQueryRewrite != nil {
                    map["enableQueryRewrite"] = self.enableQueryRewrite!
                }
                if self.enableSession != nil {
                    map["enableSession"] = self.enableSession!
                }
                if self.localKnowledgeId != nil {
                    map["localKnowledgeId"] = self.localKnowledgeId!
                }
                if self.withDocumentReference != nil {
                    map["withDocumentReference"] = self.withDocumentReference!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("enableFollowUp") {
                    self.enableFollowUp = dict["enableFollowUp"] as! Bool
                }
                if dict.keys.contains("enableMultiQuery") {
                    self.enableMultiQuery = dict["enableMultiQuery"] as! Bool
                }
                if dict.keys.contains("enableOpenQa") {
                    self.enableOpenQa = dict["enableOpenQa"] as! Bool
                }
                if dict.keys.contains("enableQueryRewrite") {
                    self.enableQueryRewrite = dict["enableQueryRewrite"] as! Bool
                }
                if dict.keys.contains("enableSession") {
                    self.enableSession = dict["enableSession"] as! Bool
                }
                if dict.keys.contains("localKnowledgeId") {
                    self.localKnowledgeId = dict["localKnowledgeId"] as! String
                }
                if dict.keys.contains("withDocumentReference") {
                    self.withDocumentReference = dict["withDocumentReference"] as! Bool
                }
            }
        }
        public class RecallStrategy : Tea.TeaModel {
            public var documentRankType: String?

            public var limit: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.documentRankType != nil {
                    map["documentRankType"] = self.documentRankType!
                }
                if self.limit != nil {
                    map["limit"] = self.limit!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("documentRankType") {
                    self.documentRankType = dict["documentRankType"] as! String
                }
                if dict.keys.contains("limit") {
                    self.limit = dict["limit"] as! Int32
                }
            }
        }
        public class TextIndexSetting : Tea.TeaModel {
            public var category: String?

            public var enable: Bool?

            public var indexAnalyzer: String?

            public var rankThreshold: Double?

            public var searchAnalyzer: String?

            public var topK: Int32?

            public override init() {
                super.init()
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
                    map["category"] = self.category!
                }
                if self.enable != nil {
                    map["enable"] = self.enable!
                }
                if self.indexAnalyzer != nil {
                    map["indexAnalyzer"] = self.indexAnalyzer!
                }
                if self.rankThreshold != nil {
                    map["rankThreshold"] = self.rankThreshold!
                }
                if self.searchAnalyzer != nil {
                    map["searchAnalyzer"] = self.searchAnalyzer!
                }
                if self.topK != nil {
                    map["topK"] = self.topK!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("category") {
                    self.category = dict["category"] as! String
                }
                if dict.keys.contains("enable") {
                    self.enable = dict["enable"] as! Bool
                }
                if dict.keys.contains("indexAnalyzer") {
                    self.indexAnalyzer = dict["indexAnalyzer"] as! String
                }
                if dict.keys.contains("rankThreshold") {
                    self.rankThreshold = dict["rankThreshold"] as! Double
                }
                if dict.keys.contains("searchAnalyzer") {
                    self.searchAnalyzer = dict["searchAnalyzer"] as! String
                }
                if dict.keys.contains("topK") {
                    self.topK = dict["topK"] as! Int32
                }
            }
        }
        public class VectorIndexSetting : Tea.TeaModel {
            public var category: String?

            public var embeddingType: String?

            public var enable: Bool?

            public var rankThreshold: Double?

            public var topK: Int32?

            public override init() {
                super.init()
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
                    map["category"] = self.category!
                }
                if self.embeddingType != nil {
                    map["embeddingType"] = self.embeddingType!
                }
                if self.enable != nil {
                    map["enable"] = self.enable!
                }
                if self.rankThreshold != nil {
                    map["rankThreshold"] = self.rankThreshold!
                }
                if self.topK != nil {
                    map["topK"] = self.topK!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("category") {
                    self.category = dict["category"] as! String
                }
                if dict.keys.contains("embeddingType") {
                    self.embeddingType = dict["embeddingType"] as! String
                }
                if dict.keys.contains("enable") {
                    self.enable = dict["enable"] as! Bool
                }
                if dict.keys.contains("rankThreshold") {
                    self.rankThreshold = dict["rankThreshold"] as! Double
                }
                if dict.keys.contains("topK") {
                    self.topK = dict["topK"] as! Int32
                }
            }
        }
        public var chunkStrategy: CreateLibraryRequest.IndexSetting.ChunkStrategy?

        public var modelConfig: CreateLibraryRequest.IndexSetting.ModelConfig?

        public var promptRoleStyle: String?

        public var queryEnhancer: CreateLibraryRequest.IndexSetting.QueryEnhancer?

        public var recallStrategy: CreateLibraryRequest.IndexSetting.RecallStrategy?

        public var textIndexSetting: CreateLibraryRequest.IndexSetting.TextIndexSetting?

        public var vectorIndexSetting: CreateLibraryRequest.IndexSetting.VectorIndexSetting?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.chunkStrategy?.validate()
            try self.modelConfig?.validate()
            try self.queryEnhancer?.validate()
            try self.recallStrategy?.validate()
            try self.textIndexSetting?.validate()
            try self.vectorIndexSetting?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.chunkStrategy != nil {
                map["chunkStrategy"] = self.chunkStrategy?.toMap()
            }
            if self.modelConfig != nil {
                map["modelConfig"] = self.modelConfig?.toMap()
            }
            if self.promptRoleStyle != nil {
                map["promptRoleStyle"] = self.promptRoleStyle!
            }
            if self.queryEnhancer != nil {
                map["queryEnhancer"] = self.queryEnhancer?.toMap()
            }
            if self.recallStrategy != nil {
                map["recallStrategy"] = self.recallStrategy?.toMap()
            }
            if self.textIndexSetting != nil {
                map["textIndexSetting"] = self.textIndexSetting?.toMap()
            }
            if self.vectorIndexSetting != nil {
                map["vectorIndexSetting"] = self.vectorIndexSetting?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("chunkStrategy") {
                var model = CreateLibraryRequest.IndexSetting.ChunkStrategy()
                model.fromMap(dict["chunkStrategy"] as! [String: Any])
                self.chunkStrategy = model
            }
            if dict.keys.contains("modelConfig") {
                var model = CreateLibraryRequest.IndexSetting.ModelConfig()
                model.fromMap(dict["modelConfig"] as! [String: Any])
                self.modelConfig = model
            }
            if dict.keys.contains("promptRoleStyle") {
                self.promptRoleStyle = dict["promptRoleStyle"] as! String
            }
            if dict.keys.contains("queryEnhancer") {
                var model = CreateLibraryRequest.IndexSetting.QueryEnhancer()
                model.fromMap(dict["queryEnhancer"] as! [String: Any])
                self.queryEnhancer = model
            }
            if dict.keys.contains("recallStrategy") {
                var model = CreateLibraryRequest.IndexSetting.RecallStrategy()
                model.fromMap(dict["recallStrategy"] as! [String: Any])
                self.recallStrategy = model
            }
            if dict.keys.contains("textIndexSetting") {
                var model = CreateLibraryRequest.IndexSetting.TextIndexSetting()
                model.fromMap(dict["textIndexSetting"] as! [String: Any])
                self.textIndexSetting = model
            }
            if dict.keys.contains("vectorIndexSetting") {
                var model = CreateLibraryRequest.IndexSetting.VectorIndexSetting()
                model.fromMap(dict["vectorIndexSetting"] as! [String: Any])
                self.vectorIndexSetting = model
            }
        }
    }
    public var description_: String?

    public var indexSetting: CreateLibraryRequest.IndexSetting?

    public var libraryName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.indexSetting?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.indexSetting != nil {
            map["indexSetting"] = self.indexSetting?.toMap()
        }
        if self.libraryName != nil {
            map["libraryName"] = self.libraryName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("indexSetting") {
            var model = CreateLibraryRequest.IndexSetting()
            model.fromMap(dict["indexSetting"] as! [String: Any])
            self.indexSetting = model
        }
        if dict.keys.contains("libraryName") {
            self.libraryName = dict["libraryName"] as! String
        }
    }
}

public class CreateLibraryResponseBody : Tea.TeaModel {
    public var cost: Int64?

    public var data: String?

    public var dataType: String?

    public var errCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var time: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cost != nil {
            map["cost"] = self.cost!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.dataType != nil {
            map["dataType"] = self.dataType!
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.time != nil {
            map["time"] = self.time!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("cost") {
            self.cost = dict["cost"] as! Int64
        }
        if dict.keys.contains("data") {
            self.data = dict["data"] as! String
        }
        if dict.keys.contains("dataType") {
            self.dataType = dict["dataType"] as! String
        }
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("time") {
            self.time = dict["time"] as! String
        }
    }
}

public class CreateLibraryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateLibraryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateLibraryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreatePdfTranslateTaskRequest : Tea.TeaModel {
    public var docId: String?

    public var knowledge: String?

    public var libraryId: String?

    public var modelId: String?

    public var translateTo: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.docId != nil {
            map["docId"] = self.docId!
        }
        if self.knowledge != nil {
            map["knowledge"] = self.knowledge!
        }
        if self.libraryId != nil {
            map["libraryId"] = self.libraryId!
        }
        if self.modelId != nil {
            map["modelId"] = self.modelId!
        }
        if self.translateTo != nil {
            map["translateTo"] = self.translateTo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("docId") {
            self.docId = dict["docId"] as! String
        }
        if dict.keys.contains("knowledge") {
            self.knowledge = dict["knowledge"] as! String
        }
        if dict.keys.contains("libraryId") {
            self.libraryId = dict["libraryId"] as! String
        }
        if dict.keys.contains("modelId") {
            self.modelId = dict["modelId"] as! String
        }
        if dict.keys.contains("translateTo") {
            self.translateTo = dict["translateTo"] as! String
        }
    }
}

public class CreatePdfTranslateTaskResponseBody : Tea.TeaModel {
    public var cost: Int64?

    public var data: String?

    public var dataType: String?

    public var errCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var time: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cost != nil {
            map["cost"] = self.cost!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.dataType != nil {
            map["dataType"] = self.dataType!
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.time != nil {
            map["time"] = self.time!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("cost") {
            self.cost = dict["cost"] as! Int64
        }
        if dict.keys.contains("data") {
            self.data = dict["data"] as! String
        }
        if dict.keys.contains("dataType") {
            self.dataType = dict["dataType"] as! String
        }
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("time") {
            self.time = dict["time"] as! String
        }
    }
}

public class CreatePdfTranslateTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreatePdfTranslateTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreatePdfTranslateTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreatePredefinedDocumentRequest : Tea.TeaModel {
    public class Chunks : Tea.TeaModel {
        public var chunkMeta: [String: Any]?

        public var chunkOrder: Int32?

        public var chunkText: String?

        public var chunkType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.chunkMeta != nil {
                map["chunkMeta"] = self.chunkMeta!
            }
            if self.chunkOrder != nil {
                map["chunkOrder"] = self.chunkOrder!
            }
            if self.chunkText != nil {
                map["chunkText"] = self.chunkText!
            }
            if self.chunkType != nil {
                map["chunkType"] = self.chunkType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("chunkMeta") {
                self.chunkMeta = dict["chunkMeta"] as! [String: Any]
            }
            if dict.keys.contains("chunkOrder") {
                self.chunkOrder = dict["chunkOrder"] as! Int32
            }
            if dict.keys.contains("chunkText") {
                self.chunkText = dict["chunkText"] as! String
            }
            if dict.keys.contains("chunkType") {
                self.chunkType = dict["chunkType"] as! String
            }
        }
    }
    public var chunks: [CreatePredefinedDocumentRequest.Chunks]?

    public var libraryId: String?

    public var metadata: [String: Any]?

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
        if self.chunks != nil {
            var tmp : [Any] = []
            for k in self.chunks! {
                tmp.append(k.toMap())
            }
            map["chunks"] = tmp
        }
        if self.libraryId != nil {
            map["libraryId"] = self.libraryId!
        }
        if self.metadata != nil {
            map["metadata"] = self.metadata!
        }
        if self.title != nil {
            map["title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("chunks") {
            var tmp : [CreatePredefinedDocumentRequest.Chunks] = []
            for v in dict["chunks"] as! [Any] {
                var model = CreatePredefinedDocumentRequest.Chunks()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.chunks = tmp
        }
        if dict.keys.contains("libraryId") {
            self.libraryId = dict["libraryId"] as! String
        }
        if dict.keys.contains("metadata") {
            self.metadata = dict["metadata"] as! [String: Any]
        }
        if dict.keys.contains("title") {
            self.title = dict["title"] as! String
        }
    }
}

public class CreatePredefinedDocumentResponseBody : Tea.TeaModel {
    public var cost: Int64?

    public var data: String?

    public var dataType: String?

    public var errCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var time: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cost != nil {
            map["cost"] = self.cost!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.dataType != nil {
            map["dataType"] = self.dataType!
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.time != nil {
            map["time"] = self.time!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("cost") {
            self.cost = dict["cost"] as! Int64
        }
        if dict.keys.contains("data") {
            self.data = dict["data"] as! String
        }
        if dict.keys.contains("dataType") {
            self.dataType = dict["dataType"] as! String
        }
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("time") {
            self.time = dict["time"] as! String
        }
    }
}

public class CreatePredefinedDocumentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreatePredefinedDocumentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreatePredefinedDocumentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateQualityCheckTaskRequest : Tea.TeaModel {
    public class ConversationList : Tea.TeaModel {
        public class DialogueList : Tea.TeaModel {
            public var begin: Int32?

            public var beginTime: String?

            public var content: String?

            public var customerId: String?

            public var customerServiceId: String?

            public var customerServiceType: String?

            public var end: Int32?

            public var role: String?

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
                if self.begin != nil {
                    map["begin"] = self.begin!
                }
                if self.beginTime != nil {
                    map["beginTime"] = self.beginTime!
                }
                if self.content != nil {
                    map["content"] = self.content!
                }
                if self.customerId != nil {
                    map["customerId"] = self.customerId!
                }
                if self.customerServiceId != nil {
                    map["customerServiceId"] = self.customerServiceId!
                }
                if self.customerServiceType != nil {
                    map["customerServiceType"] = self.customerServiceType!
                }
                if self.end != nil {
                    map["end"] = self.end!
                }
                if self.role != nil {
                    map["role"] = self.role!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("begin") {
                    self.begin = dict["begin"] as! Int32
                }
                if dict.keys.contains("beginTime") {
                    self.beginTime = dict["beginTime"] as! String
                }
                if dict.keys.contains("content") {
                    self.content = dict["content"] as! String
                }
                if dict.keys.contains("customerId") {
                    self.customerId = dict["customerId"] as! String
                }
                if dict.keys.contains("customerServiceId") {
                    self.customerServiceId = dict["customerServiceId"] as! String
                }
                if dict.keys.contains("customerServiceType") {
                    self.customerServiceType = dict["customerServiceType"] as! String
                }
                if dict.keys.contains("end") {
                    self.end = dict["end"] as! Int32
                }
                if dict.keys.contains("role") {
                    self.role = dict["role"] as! String
                }
                if dict.keys.contains("type") {
                    self.type = dict["type"] as! String
                }
            }
        }
        public var callType: String?

        public var customerId: String?

        public var customerName: String?

        public var customerServiceId: String?

        public var customerServiceName: String?

        public var dialogueList: [CreateQualityCheckTaskRequest.ConversationList.DialogueList]?

        public var gmtService: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.callType != nil {
                map["callType"] = self.callType!
            }
            if self.customerId != nil {
                map["customerId"] = self.customerId!
            }
            if self.customerName != nil {
                map["customerName"] = self.customerName!
            }
            if self.customerServiceId != nil {
                map["customerServiceId"] = self.customerServiceId!
            }
            if self.customerServiceName != nil {
                map["customerServiceName"] = self.customerServiceName!
            }
            if self.dialogueList != nil {
                var tmp : [Any] = []
                for k in self.dialogueList! {
                    tmp.append(k.toMap())
                }
                map["dialogueList"] = tmp
            }
            if self.gmtService != nil {
                map["gmtService"] = self.gmtService!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("callType") {
                self.callType = dict["callType"] as! String
            }
            if dict.keys.contains("customerId") {
                self.customerId = dict["customerId"] as! String
            }
            if dict.keys.contains("customerName") {
                self.customerName = dict["customerName"] as! String
            }
            if dict.keys.contains("customerServiceId") {
                self.customerServiceId = dict["customerServiceId"] as! String
            }
            if dict.keys.contains("customerServiceName") {
                self.customerServiceName = dict["customerServiceName"] as! String
            }
            if dict.keys.contains("dialogueList") {
                var tmp : [CreateQualityCheckTaskRequest.ConversationList.DialogueList] = []
                for v in dict["dialogueList"] as! [Any] {
                    var model = CreateQualityCheckTaskRequest.ConversationList.DialogueList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.dialogueList = tmp
            }
            if dict.keys.contains("gmtService") {
                self.gmtService = dict["gmtService"] as! String
            }
        }
    }
    public var conversationList: CreateQualityCheckTaskRequest.ConversationList?

    public var gmtService: String?

    public var metaData: [String: String]?

    public var qualityGroup: [String]?

    public var requestId: String?

    public var type: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.conversationList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.conversationList != nil {
            map["conversationList"] = self.conversationList?.toMap()
        }
        if self.gmtService != nil {
            map["gmtService"] = self.gmtService!
        }
        if self.metaData != nil {
            map["metaData"] = self.metaData!
        }
        if self.qualityGroup != nil {
            map["qualityGroup"] = self.qualityGroup!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("conversationList") {
            var model = CreateQualityCheckTaskRequest.ConversationList()
            model.fromMap(dict["conversationList"] as! [String: Any])
            self.conversationList = model
        }
        if dict.keys.contains("gmtService") {
            self.gmtService = dict["gmtService"] as! String
        }
        if dict.keys.contains("metaData") {
            self.metaData = dict["metaData"] as! [String: String]
        }
        if dict.keys.contains("qualityGroup") {
            self.qualityGroup = dict["qualityGroup"] as! [String]
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("type") {
            self.type = dict["type"] as! String
        }
    }
}

public class CreateQualityCheckTaskResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("taskId") {
                self.taskId = dict["taskId"] as! String
            }
        }
    }
    public var cost: Int64?

    public var data: CreateQualityCheckTaskResponseBody.Data?

    public var dataType: String?

    public var errCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var time: String?

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
        if self.cost != nil {
            map["cost"] = self.cost!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.dataType != nil {
            map["dataType"] = self.dataType!
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.time != nil {
            map["time"] = self.time!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("cost") {
            self.cost = dict["cost"] as! Int64
        }
        if dict.keys.contains("data") {
            var model = CreateQualityCheckTaskResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("dataType") {
            self.dataType = dict["dataType"] as! String
        }
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("time") {
            self.time = dict["time"] as! String
        }
    }
}

public class CreateQualityCheckTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateQualityCheckTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateQualityCheckTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteDocumentRequest : Tea.TeaModel {
    public var docIds: [String]?

    public var libraryId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.docIds != nil {
            map["docIds"] = self.docIds!
        }
        if self.libraryId != nil {
            map["libraryId"] = self.libraryId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("docIds") {
            self.docIds = dict["docIds"] as! [String]
        }
        if dict.keys.contains("libraryId") {
            self.libraryId = dict["libraryId"] as! String
        }
    }
}

public class DeleteDocumentResponseBody : Tea.TeaModel {
    public var cost: Int64?

    public var data: Bool?

    public var dataType: String?

    public var errCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var time: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cost != nil {
            map["cost"] = self.cost!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.dataType != nil {
            map["dataType"] = self.dataType!
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.time != nil {
            map["time"] = self.time!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("cost") {
            self.cost = dict["cost"] as! Int64
        }
        if dict.keys.contains("data") {
            self.data = dict["data"] as! Bool
        }
        if dict.keys.contains("dataType") {
            self.dataType = dict["dataType"] as! String
        }
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("time") {
            self.time = dict["time"] as! String
        }
    }
}

public class DeleteDocumentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDocumentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteDocumentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteLibraryRequest : Tea.TeaModel {
    public var libraryId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.libraryId != nil {
            map["libraryId"] = self.libraryId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("libraryId") {
            self.libraryId = dict["libraryId"] as! String
        }
    }
}

public class DeleteLibraryResponseBody : Tea.TeaModel {
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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class DeleteLibraryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteLibraryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteLibraryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class EvictTaskRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("taskId") {
            self.taskId = dict["taskId"] as! String
        }
    }
}

public class EvictTaskResponseBody : Tea.TeaModel {
    public var cost: Int64?

    public var data: String?

    public var dataType: String?

    public var errCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var time: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cost != nil {
            map["cost"] = self.cost!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.dataType != nil {
            map["dataType"] = self.dataType!
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.time != nil {
            map["time"] = self.time!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("cost") {
            self.cost = dict["cost"] as! Int64
        }
        if dict.keys.contains("data") {
            self.data = dict["data"] as! String
        }
        if dict.keys.contains("dataType") {
            self.dataType = dict["dataType"] as! String
        }
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("time") {
            self.time = dict["time"] as! String
        }
    }
}

public class EvictTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EvictTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = EvictTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GenDocQaResultRequest : Tea.TeaModel {
    public var docId: String?

    public var libraryId: String?

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
        if self.docId != nil {
            map["docId"] = self.docId!
        }
        if self.libraryId != nil {
            map["libraryId"] = self.libraryId!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("docId") {
            self.docId = dict["docId"] as! String
        }
        if dict.keys.contains("libraryId") {
            self.libraryId = dict["libraryId"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class GenDocQaResultResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ParseQaResults : Tea.TeaModel {
            public var answer: String?

            public var question: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.answer != nil {
                    map["answer"] = self.answer!
                }
                if self.question != nil {
                    map["question"] = self.question!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("answer") {
                    self.answer = dict["answer"] as! String
                }
                if dict.keys.contains("question") {
                    self.question = dict["question"] as! String
                }
            }
        }
        public var currentStatus: String?

        public var docId: String?

        public var libraryId: String?

        public var parseQaResults: [GenDocQaResultResponseBody.Data.ParseQaResults]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.currentStatus != nil {
                map["currentStatus"] = self.currentStatus!
            }
            if self.docId != nil {
                map["docId"] = self.docId!
            }
            if self.libraryId != nil {
                map["libraryId"] = self.libraryId!
            }
            if self.parseQaResults != nil {
                var tmp : [Any] = []
                for k in self.parseQaResults! {
                    tmp.append(k.toMap())
                }
                map["parseQaResults"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("currentStatus") {
                self.currentStatus = dict["currentStatus"] as! String
            }
            if dict.keys.contains("docId") {
                self.docId = dict["docId"] as! String
            }
            if dict.keys.contains("libraryId") {
                self.libraryId = dict["libraryId"] as! String
            }
            if dict.keys.contains("parseQaResults") {
                var tmp : [GenDocQaResultResponseBody.Data.ParseQaResults] = []
                for v in dict["parseQaResults"] as! [Any] {
                    var model = GenDocQaResultResponseBody.Data.ParseQaResults()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.parseQaResults = tmp
            }
        }
    }
    public var cost: Int64?

    public var data: GenDocQaResultResponseBody.Data?

    public var dataType: String?

    public var errCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var time: String?

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
        if self.cost != nil {
            map["cost"] = self.cost!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.dataType != nil {
            map["dataType"] = self.dataType!
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.time != nil {
            map["time"] = self.time!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("cost") {
            self.cost = dict["cost"] as! Int64
        }
        if dict.keys.contains("data") {
            var model = GenDocQaResultResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("dataType") {
            self.dataType = dict["dataType"] as! String
        }
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("time") {
            self.time = dict["time"] as! String
        }
    }
}

public class GenDocQaResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GenDocQaResultResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GenDocQaResultResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAppConfigResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var embeddingTypeList: [[String: String]]?

        public var frontendConfig: [String: Bool]?

        public var libraryDocumentStatusList: [[String: String]]?

        public var llmHelperTypeList: [[String: String]]?

        public var textIndexCategoryList: [String]?

        public var vectorIndexCategoryList: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.embeddingTypeList != nil {
                map["embeddingTypeList"] = self.embeddingTypeList!
            }
            if self.frontendConfig != nil {
                map["frontendConfig"] = self.frontendConfig!
            }
            if self.libraryDocumentStatusList != nil {
                map["libraryDocumentStatusList"] = self.libraryDocumentStatusList!
            }
            if self.llmHelperTypeList != nil {
                map["llmHelperTypeList"] = self.llmHelperTypeList!
            }
            if self.textIndexCategoryList != nil {
                map["textIndexCategoryList"] = self.textIndexCategoryList!
            }
            if self.vectorIndexCategoryList != nil {
                map["vectorIndexCategoryList"] = self.vectorIndexCategoryList!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("embeddingTypeList") {
                self.embeddingTypeList = dict["embeddingTypeList"] as! [[String: String]]
            }
            if dict.keys.contains("frontendConfig") {
                self.frontendConfig = dict["frontendConfig"] as! [String: Bool]
            }
            if dict.keys.contains("libraryDocumentStatusList") {
                self.libraryDocumentStatusList = dict["libraryDocumentStatusList"] as! [[String: String]]
            }
            if dict.keys.contains("llmHelperTypeList") {
                self.llmHelperTypeList = dict["llmHelperTypeList"] as! [[String: String]]
            }
            if dict.keys.contains("textIndexCategoryList") {
                self.textIndexCategoryList = dict["textIndexCategoryList"] as! [String]
            }
            if dict.keys.contains("vectorIndexCategoryList") {
                self.vectorIndexCategoryList = dict["vectorIndexCategoryList"] as! [String]
            }
        }
    }
    public var cost: Int64?

    public var data: GetAppConfigResponseBody.Data?

    public var dataType: String?

    public var errCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var time: String?

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
        if self.cost != nil {
            map["cost"] = self.cost!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.dataType != nil {
            map["dataType"] = self.dataType!
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.time != nil {
            map["time"] = self.time!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("cost") {
            self.cost = dict["cost"] as! Int64
        }
        if dict.keys.contains("data") {
            var model = GetAppConfigResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("dataType") {
            self.dataType = dict["dataType"] as! String
        }
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("time") {
            self.time = dict["time"] as! String
        }
    }
}

public class GetAppConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAppConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetAppConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetChatQuestionRespRequest : Tea.TeaModel {
    public var batchId: String?

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
        if self.batchId != nil {
            map["batchId"] = self.batchId!
        }
        if self.sessionId != nil {
            map["sessionId"] = self.sessionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("batchId") {
            self.batchId = dict["batchId"] as! String
        }
        if dict.keys.contains("sessionId") {
            self.sessionId = dict["sessionId"] as! String
        }
    }
}

public class GetChatQuestionRespResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class QuestionList : Tea.TeaModel {
            public var content: String?

            public var gmtCreate: String?

            public var oriContent: String?

            public var reply: String?

            public var sessionId: String?

            public var type: String?

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
                if self.content != nil {
                    map["content"] = self.content!
                }
                if self.gmtCreate != nil {
                    map["gmtCreate"] = self.gmtCreate!
                }
                if self.oriContent != nil {
                    map["oriContent"] = self.oriContent!
                }
                if self.reply != nil {
                    map["reply"] = self.reply!
                }
                if self.sessionId != nil {
                    map["sessionId"] = self.sessionId!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                if self.userId != nil {
                    map["userId"] = self.userId!
                }
                if self.userName != nil {
                    map["userName"] = self.userName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("content") {
                    self.content = dict["content"] as! String
                }
                if dict.keys.contains("gmtCreate") {
                    self.gmtCreate = dict["gmtCreate"] as! String
                }
                if dict.keys.contains("oriContent") {
                    self.oriContent = dict["oriContent"] as! String
                }
                if dict.keys.contains("reply") {
                    self.reply = dict["reply"] as! String
                }
                if dict.keys.contains("sessionId") {
                    self.sessionId = dict["sessionId"] as! String
                }
                if dict.keys.contains("type") {
                    self.type = dict["type"] as! String
                }
                if dict.keys.contains("userId") {
                    self.userId = dict["userId"] as! String
                }
                if dict.keys.contains("userName") {
                    self.userName = dict["userName"] as! String
                }
            }
        }
        public var currentState: String?

        public var questionList: [GetChatQuestionRespResponseBody.Data.QuestionList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.currentState != nil {
                map["currentState"] = self.currentState!
            }
            if self.questionList != nil {
                var tmp : [Any] = []
                for k in self.questionList! {
                    tmp.append(k.toMap())
                }
                map["questionList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("currentState") {
                self.currentState = dict["currentState"] as! String
            }
            if dict.keys.contains("questionList") {
                var tmp : [GetChatQuestionRespResponseBody.Data.QuestionList] = []
                for v in dict["questionList"] as! [Any] {
                    var model = GetChatQuestionRespResponseBody.Data.QuestionList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.questionList = tmp
            }
        }
    }
    public var cost: Int64?

    public var data: GetChatQuestionRespResponseBody.Data?

    public var dataType: String?

    public var errCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var time: String?

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
        if self.cost != nil {
            map["cost"] = self.cost!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.dataType != nil {
            map["dataType"] = self.dataType!
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.time != nil {
            map["time"] = self.time!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("cost") {
            self.cost = dict["cost"] as! Int64
        }
        if dict.keys.contains("data") {
            var model = GetChatQuestionRespResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("dataType") {
            self.dataType = dict["dataType"] as! String
        }
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("time") {
            self.time = dict["time"] as! String
        }
    }
}

public class GetChatQuestionRespResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetChatQuestionRespResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetChatQuestionRespResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDialogAnalysisResultRequest : Tea.TeaModel {
    public var asc: Bool?

    public var endTime: String?

    public var sessionIds: [String]?

    public var startTime: String?

    public var useUrl: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.asc != nil {
            map["asc"] = self.asc!
        }
        if self.endTime != nil {
            map["endTime"] = self.endTime!
        }
        if self.sessionIds != nil {
            map["sessionIds"] = self.sessionIds!
        }
        if self.startTime != nil {
            map["startTime"] = self.startTime!
        }
        if self.useUrl != nil {
            map["useUrl"] = self.useUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("asc") {
            self.asc = dict["asc"] as! Bool
        }
        if dict.keys.contains("endTime") {
            self.endTime = dict["endTime"] as! String
        }
        if dict.keys.contains("sessionIds") {
            self.sessionIds = dict["sessionIds"] as! [String]
        }
        if dict.keys.contains("startTime") {
            self.startTime = dict["startTime"] as! String
        }
        if dict.keys.contains("useUrl") {
            self.useUrl = dict["useUrl"] as! Bool
        }
    }
}

public class GetDialogAnalysisResultResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class DialogAnalysisRespList : Tea.TeaModel {
            public class AnalysisResp : Tea.TeaModel {
                public class DialogLabels : Tea.TeaModel {
                    public var name: String?

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
                        if self.name != nil {
                            map["name"] = self.name!
                        }
                        if self.value != nil {
                            map["value"] = self.value!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("name") {
                            self.name = dict["name"] as! String
                        }
                        if dict.keys.contains("value") {
                            self.value = dict["value"] as! String
                        }
                    }
                }
                public var dialogExecPlan: String?

                public var dialogLabels: [GetDialogAnalysisResultResponseBody.Data.DialogAnalysisRespList.AnalysisResp.DialogLabels]?

                public var dialogOpenAnalysis: [String: Any]?

                public var dialogProcessAnalysis: [String: Any]?

                public var dialogSop: String?

                public var dialogSummary: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.dialogExecPlan != nil {
                        map["dialogExecPlan"] = self.dialogExecPlan!
                    }
                    if self.dialogLabels != nil {
                        var tmp : [Any] = []
                        for k in self.dialogLabels! {
                            tmp.append(k.toMap())
                        }
                        map["dialogLabels"] = tmp
                    }
                    if self.dialogOpenAnalysis != nil {
                        map["dialogOpenAnalysis"] = self.dialogOpenAnalysis!
                    }
                    if self.dialogProcessAnalysis != nil {
                        map["dialogProcessAnalysis"] = self.dialogProcessAnalysis!
                    }
                    if self.dialogSop != nil {
                        map["dialogSop"] = self.dialogSop!
                    }
                    if self.dialogSummary != nil {
                        map["dialogSummary"] = self.dialogSummary!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("dialogExecPlan") {
                        self.dialogExecPlan = dict["dialogExecPlan"] as! String
                    }
                    if dict.keys.contains("dialogLabels") {
                        var tmp : [GetDialogAnalysisResultResponseBody.Data.DialogAnalysisRespList.AnalysisResp.DialogLabels] = []
                        for v in dict["dialogLabels"] as! [Any] {
                            var model = GetDialogAnalysisResultResponseBody.Data.DialogAnalysisRespList.AnalysisResp.DialogLabels()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.dialogLabels = tmp
                    }
                    if dict.keys.contains("dialogOpenAnalysis") {
                        self.dialogOpenAnalysis = dict["dialogOpenAnalysis"] as! [String: Any]
                    }
                    if dict.keys.contains("dialogProcessAnalysis") {
                        self.dialogProcessAnalysis = dict["dialogProcessAnalysis"] as! [String: Any]
                    }
                    if dict.keys.contains("dialogSop") {
                        self.dialogSop = dict["dialogSop"] as! String
                    }
                    if dict.keys.contains("dialogSummary") {
                        self.dialogSummary = dict["dialogSummary"] as! String
                    }
                }
            }
            public var analysisResp: GetDialogAnalysisResultResponseBody.Data.DialogAnalysisRespList.AnalysisResp?

            public var gmtCreate: String?

            public var ossUrl: String?

            public var sessionId: String?

            public var status: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.analysisResp?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.analysisResp != nil {
                    map["analysisResp"] = self.analysisResp?.toMap()
                }
                if self.gmtCreate != nil {
                    map["gmtCreate"] = self.gmtCreate!
                }
                if self.ossUrl != nil {
                    map["ossUrl"] = self.ossUrl!
                }
                if self.sessionId != nil {
                    map["sessionId"] = self.sessionId!
                }
                if self.status != nil {
                    map["status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("analysisResp") {
                    var model = GetDialogAnalysisResultResponseBody.Data.DialogAnalysisRespList.AnalysisResp()
                    model.fromMap(dict["analysisResp"] as! [String: Any])
                    self.analysisResp = model
                }
                if dict.keys.contains("gmtCreate") {
                    self.gmtCreate = dict["gmtCreate"] as! String
                }
                if dict.keys.contains("ossUrl") {
                    self.ossUrl = dict["ossUrl"] as! String
                }
                if dict.keys.contains("sessionId") {
                    self.sessionId = dict["sessionId"] as! String
                }
                if dict.keys.contains("status") {
                    self.status = dict["status"] as! String
                }
            }
        }
        public var dialogAnalysisRespList: [GetDialogAnalysisResultResponseBody.Data.DialogAnalysisRespList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dialogAnalysisRespList != nil {
                var tmp : [Any] = []
                for k in self.dialogAnalysisRespList! {
                    tmp.append(k.toMap())
                }
                map["dialogAnalysisRespList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("dialogAnalysisRespList") {
                var tmp : [GetDialogAnalysisResultResponseBody.Data.DialogAnalysisRespList] = []
                for v in dict["dialogAnalysisRespList"] as! [Any] {
                    var model = GetDialogAnalysisResultResponseBody.Data.DialogAnalysisRespList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.dialogAnalysisRespList = tmp
            }
        }
    }
    public var cost: Int64?

    public var data: GetDialogAnalysisResultResponseBody.Data?

    public var dataType: String?

    public var errCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var time: String?

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
        if self.cost != nil {
            map["cost"] = self.cost!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.dataType != nil {
            map["dataType"] = self.dataType!
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.time != nil {
            map["time"] = self.time!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("cost") {
            self.cost = dict["cost"] as! Int64
        }
        if dict.keys.contains("data") {
            var model = GetDialogAnalysisResultResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("dataType") {
            self.dataType = dict["dataType"] as! String
        }
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("time") {
            self.time = dict["time"] as! String
        }
    }
}

public class GetDialogAnalysisResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDialogAnalysisResultResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetDialogAnalysisResultResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDialogDetailRequest : Tea.TeaModel {
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
        if self.sessionId != nil {
            map["sessionId"] = self.sessionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("sessionId") {
            self.sessionId = dict["sessionId"] as! String
        }
    }
}

public class GetDialogDetailResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class DialogueList : Tea.TeaModel {
            public var content: String?

            public var customerId: String?

            public var customerServiceId: String?

            public var customerServiceType: String?

            public var hangUpDialog: Bool?

            public var id: Int64?

            public var intentCode: String?

            public var intentName: String?

            public var role: String?

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
                if self.content != nil {
                    map["content"] = self.content!
                }
                if self.customerId != nil {
                    map["customerId"] = self.customerId!
                }
                if self.customerServiceId != nil {
                    map["customerServiceId"] = self.customerServiceId!
                }
                if self.customerServiceType != nil {
                    map["customerServiceType"] = self.customerServiceType!
                }
                if self.hangUpDialog != nil {
                    map["hangUpDialog"] = self.hangUpDialog!
                }
                if self.id != nil {
                    map["id"] = self.id!
                }
                if self.intentCode != nil {
                    map["intentCode"] = self.intentCode!
                }
                if self.intentName != nil {
                    map["intentName"] = self.intentName!
                }
                if self.role != nil {
                    map["role"] = self.role!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("content") {
                    self.content = dict["content"] as! String
                }
                if dict.keys.contains("customerId") {
                    self.customerId = dict["customerId"] as! String
                }
                if dict.keys.contains("customerServiceId") {
                    self.customerServiceId = dict["customerServiceId"] as! String
                }
                if dict.keys.contains("customerServiceType") {
                    self.customerServiceType = dict["customerServiceType"] as! String
                }
                if dict.keys.contains("hangUpDialog") {
                    self.hangUpDialog = dict["hangUpDialog"] as! Bool
                }
                if dict.keys.contains("id") {
                    self.id = dict["id"] as! Int64
                }
                if dict.keys.contains("intentCode") {
                    self.intentCode = dict["intentCode"] as! String
                }
                if dict.keys.contains("intentName") {
                    self.intentName = dict["intentName"] as! String
                }
                if dict.keys.contains("role") {
                    self.role = dict["role"] as! String
                }
                if dict.keys.contains("type") {
                    self.type = dict["type"] as! String
                }
            }
        }
        public var dialogueList: [GetDialogDetailResponseBody.Data.DialogueList]?

        public var gmtCreate: String?

        public var status: String?

        public var totalDialogTurns: Int32?

        public var validDialogTurns: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dialogueList != nil {
                var tmp : [Any] = []
                for k in self.dialogueList! {
                    tmp.append(k.toMap())
                }
                map["dialogueList"] = tmp
            }
            if self.gmtCreate != nil {
                map["gmtCreate"] = self.gmtCreate!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.totalDialogTurns != nil {
                map["totalDialogTurns"] = self.totalDialogTurns!
            }
            if self.validDialogTurns != nil {
                map["validDialogTurns"] = self.validDialogTurns!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("dialogueList") {
                var tmp : [GetDialogDetailResponseBody.Data.DialogueList] = []
                for v in dict["dialogueList"] as! [Any] {
                    var model = GetDialogDetailResponseBody.Data.DialogueList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.dialogueList = tmp
            }
            if dict.keys.contains("gmtCreate") {
                self.gmtCreate = dict["gmtCreate"] as! String
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("totalDialogTurns") {
                self.totalDialogTurns = dict["totalDialogTurns"] as! Int32
            }
            if dict.keys.contains("validDialogTurns") {
                self.validDialogTurns = dict["validDialogTurns"] as! Int32
            }
        }
    }
    public var cost: Int64?

    public var data: GetDialogDetailResponseBody.Data?

    public var dataType: String?

    public var errCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var time: String?

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
        if self.cost != nil {
            map["cost"] = self.cost!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.dataType != nil {
            map["dataType"] = self.dataType!
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.time != nil {
            map["time"] = self.time!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("cost") {
            self.cost = dict["cost"] as! Int64
        }
        if dict.keys.contains("data") {
            var model = GetDialogDetailResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("dataType") {
            self.dataType = dict["dataType"] as! String
        }
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("time") {
            self.time = dict["time"] as! String
        }
    }
}

public class GetDialogDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDialogDetailResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetDialogDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDocumentChunkListRequest : Tea.TeaModel {
    public var chunkIdList: [String]?

    public var docId: String?

    public var libraryId: String?

    public var order: String?

    public var orderBy: String?

    public var page: Int32?

    public var pageSize: Int32?

    public var searchQuery: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.chunkIdList != nil {
            map["chunkIdList"] = self.chunkIdList!
        }
        if self.docId != nil {
            map["docId"] = self.docId!
        }
        if self.libraryId != nil {
            map["libraryId"] = self.libraryId!
        }
        if self.order != nil {
            map["order"] = self.order!
        }
        if self.orderBy != nil {
            map["orderBy"] = self.orderBy!
        }
        if self.page != nil {
            map["page"] = self.page!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.searchQuery != nil {
            map["searchQuery"] = self.searchQuery!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("chunkIdList") {
            self.chunkIdList = dict["chunkIdList"] as! [String]
        }
        if dict.keys.contains("docId") {
            self.docId = dict["docId"] as! String
        }
        if dict.keys.contains("libraryId") {
            self.libraryId = dict["libraryId"] as! String
        }
        if dict.keys.contains("order") {
            self.order = dict["order"] as! String
        }
        if dict.keys.contains("orderBy") {
            self.orderBy = dict["orderBy"] as! String
        }
        if dict.keys.contains("page") {
            self.page = dict["page"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("searchQuery") {
            self.searchQuery = dict["searchQuery"] as! String
        }
    }
}

public class GetDocumentChunkListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Records : Tea.TeaModel {
            public class Pos : Tea.TeaModel {
                public var axisArray: [Double]?

                public var page: Int32?

                public var textHighlightArea: [Int32]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.axisArray != nil {
                        map["axisArray"] = self.axisArray!
                    }
                    if self.page != nil {
                        map["page"] = self.page!
                    }
                    if self.textHighlightArea != nil {
                        map["textHighlightArea"] = self.textHighlightArea!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("axisArray") {
                        self.axisArray = dict["axisArray"] as! [Double]
                    }
                    if dict.keys.contains("page") {
                        self.page = dict["page"] as! Int32
                    }
                    if dict.keys.contains("textHighlightArea") {
                        self.textHighlightArea = dict["textHighlightArea"] as! [Int32]
                    }
                }
            }
            public var chunkId: String?

            public var chunkMeta: [String: Any]?

            public var chunkOssUrl: String?

            public var chunkText: String?

            public var chunkType: String?

            public var docId: String?

            public var fileType: String?

            public var libraryId: String?

            public var libraryName: String?

            public var nextChunkId: String?

            public var pos: [GetDocumentChunkListResponseBody.Data.Records.Pos]?

            public var preChunkId: String?

            public var score: Double?

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
                if self.chunkId != nil {
                    map["chunkId"] = self.chunkId!
                }
                if self.chunkMeta != nil {
                    map["chunkMeta"] = self.chunkMeta!
                }
                if self.chunkOssUrl != nil {
                    map["chunkOssUrl"] = self.chunkOssUrl!
                }
                if self.chunkText != nil {
                    map["chunkText"] = self.chunkText!
                }
                if self.chunkType != nil {
                    map["chunkType"] = self.chunkType!
                }
                if self.docId != nil {
                    map["docId"] = self.docId!
                }
                if self.fileType != nil {
                    map["fileType"] = self.fileType!
                }
                if self.libraryId != nil {
                    map["libraryId"] = self.libraryId!
                }
                if self.libraryName != nil {
                    map["libraryName"] = self.libraryName!
                }
                if self.nextChunkId != nil {
                    map["nextChunkId"] = self.nextChunkId!
                }
                if self.pos != nil {
                    var tmp : [Any] = []
                    for k in self.pos! {
                        tmp.append(k.toMap())
                    }
                    map["pos"] = tmp
                }
                if self.preChunkId != nil {
                    map["preChunkId"] = self.preChunkId!
                }
                if self.score != nil {
                    map["score"] = self.score!
                }
                if self.title != nil {
                    map["title"] = self.title!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("chunkId") {
                    self.chunkId = dict["chunkId"] as! String
                }
                if dict.keys.contains("chunkMeta") {
                    self.chunkMeta = dict["chunkMeta"] as! [String: Any]
                }
                if dict.keys.contains("chunkOssUrl") {
                    self.chunkOssUrl = dict["chunkOssUrl"] as! String
                }
                if dict.keys.contains("chunkText") {
                    self.chunkText = dict["chunkText"] as! String
                }
                if dict.keys.contains("chunkType") {
                    self.chunkType = dict["chunkType"] as! String
                }
                if dict.keys.contains("docId") {
                    self.docId = dict["docId"] as! String
                }
                if dict.keys.contains("fileType") {
                    self.fileType = dict["fileType"] as! String
                }
                if dict.keys.contains("libraryId") {
                    self.libraryId = dict["libraryId"] as! String
                }
                if dict.keys.contains("libraryName") {
                    self.libraryName = dict["libraryName"] as! String
                }
                if dict.keys.contains("nextChunkId") {
                    self.nextChunkId = dict["nextChunkId"] as! String
                }
                if dict.keys.contains("pos") {
                    var tmp : [GetDocumentChunkListResponseBody.Data.Records.Pos] = []
                    for v in dict["pos"] as! [Any] {
                        var model = GetDocumentChunkListResponseBody.Data.Records.Pos()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.pos = tmp
                }
                if dict.keys.contains("preChunkId") {
                    self.preChunkId = dict["preChunkId"] as! String
                }
                if dict.keys.contains("score") {
                    self.score = dict["score"] as! Double
                }
                if dict.keys.contains("title") {
                    self.title = dict["title"] as! String
                }
            }
        }
        public var currentPage: Int64?

        public var pageSize: Int64?

        public var records: [GetDocumentChunkListResponseBody.Data.Records]?

        public var totalPages: Int64?

        public var totalRecords: Int64?

        public override init() {
            super.init()
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
                map["currentPage"] = self.currentPage!
            }
            if self.pageSize != nil {
                map["pageSize"] = self.pageSize!
            }
            if self.records != nil {
                var tmp : [Any] = []
                for k in self.records! {
                    tmp.append(k.toMap())
                }
                map["records"] = tmp
            }
            if self.totalPages != nil {
                map["totalPages"] = self.totalPages!
            }
            if self.totalRecords != nil {
                map["totalRecords"] = self.totalRecords!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("currentPage") {
                self.currentPage = dict["currentPage"] as! Int64
            }
            if dict.keys.contains("pageSize") {
                self.pageSize = dict["pageSize"] as! Int64
            }
            if dict.keys.contains("records") {
                var tmp : [GetDocumentChunkListResponseBody.Data.Records] = []
                for v in dict["records"] as! [Any] {
                    var model = GetDocumentChunkListResponseBody.Data.Records()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.records = tmp
            }
            if dict.keys.contains("totalPages") {
                self.totalPages = dict["totalPages"] as! Int64
            }
            if dict.keys.contains("totalRecords") {
                self.totalRecords = dict["totalRecords"] as! Int64
            }
        }
    }
    public var cost: Int64?

    public var data: GetDocumentChunkListResponseBody.Data?

    public var dataType: String?

    public var errCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var time: String?

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
        if self.cost != nil {
            map["cost"] = self.cost!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.dataType != nil {
            map["dataType"] = self.dataType!
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.time != nil {
            map["time"] = self.time!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("cost") {
            self.cost = dict["cost"] as! Int64
        }
        if dict.keys.contains("data") {
            var model = GetDocumentChunkListResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("dataType") {
            self.dataType = dict["dataType"] as! String
        }
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("time") {
            self.time = dict["time"] as! String
        }
    }
}

public class GetDocumentChunkListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDocumentChunkListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetDocumentChunkListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDocumentListRequest : Tea.TeaModel {
    public var libraryId: String?

    public var page: Int32?

    public var pageSize: Int32?

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
        if self.libraryId != nil {
            map["libraryId"] = self.libraryId!
        }
        if self.page != nil {
            map["page"] = self.page!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("libraryId") {
            self.libraryId = dict["libraryId"] as! String
        }
        if dict.keys.contains("page") {
            self.page = dict["page"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("status") {
            self.status = dict["status"] as! String
        }
    }
}

public class GetDocumentListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Records : Tea.TeaModel {
            public var docId: String?

            public var documentMeta: [String: Any]?

            public var fileType: String?

            public var gmtCreate: String?

            public var gmtModified: String?

            public var libraryId: String?

            public var statusCode: String?

            public var title: String?

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
                if self.docId != nil {
                    map["docId"] = self.docId!
                }
                if self.documentMeta != nil {
                    map["documentMeta"] = self.documentMeta!
                }
                if self.fileType != nil {
                    map["fileType"] = self.fileType!
                }
                if self.gmtCreate != nil {
                    map["gmtCreate"] = self.gmtCreate!
                }
                if self.gmtModified != nil {
                    map["gmtModified"] = self.gmtModified!
                }
                if self.libraryId != nil {
                    map["libraryId"] = self.libraryId!
                }
                if self.statusCode != nil {
                    map["statusCode"] = self.statusCode!
                }
                if self.title != nil {
                    map["title"] = self.title!
                }
                if self.url != nil {
                    map["url"] = self.url!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("docId") {
                    self.docId = dict["docId"] as! String
                }
                if dict.keys.contains("documentMeta") {
                    self.documentMeta = dict["documentMeta"] as! [String: Any]
                }
                if dict.keys.contains("fileType") {
                    self.fileType = dict["fileType"] as! String
                }
                if dict.keys.contains("gmtCreate") {
                    self.gmtCreate = dict["gmtCreate"] as! String
                }
                if dict.keys.contains("gmtModified") {
                    self.gmtModified = dict["gmtModified"] as! String
                }
                if dict.keys.contains("libraryId") {
                    self.libraryId = dict["libraryId"] as! String
                }
                if dict.keys.contains("statusCode") {
                    self.statusCode = dict["statusCode"] as! String
                }
                if dict.keys.contains("title") {
                    self.title = dict["title"] as! String
                }
                if dict.keys.contains("url") {
                    self.url = dict["url"] as! String
                }
            }
        }
        public var currentPage: Int64?

        public var pageSize: Int64?

        public var records: [GetDocumentListResponseBody.Data.Records]?

        public var totalPages: Int64?

        public var totalRecords: Int64?

        public override init() {
            super.init()
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
                map["currentPage"] = self.currentPage!
            }
            if self.pageSize != nil {
                map["pageSize"] = self.pageSize!
            }
            if self.records != nil {
                var tmp : [Any] = []
                for k in self.records! {
                    tmp.append(k.toMap())
                }
                map["records"] = tmp
            }
            if self.totalPages != nil {
                map["totalPages"] = self.totalPages!
            }
            if self.totalRecords != nil {
                map["totalRecords"] = self.totalRecords!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("currentPage") {
                self.currentPage = dict["currentPage"] as! Int64
            }
            if dict.keys.contains("pageSize") {
                self.pageSize = dict["pageSize"] as! Int64
            }
            if dict.keys.contains("records") {
                var tmp : [GetDocumentListResponseBody.Data.Records] = []
                for v in dict["records"] as! [Any] {
                    var model = GetDocumentListResponseBody.Data.Records()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.records = tmp
            }
            if dict.keys.contains("totalPages") {
                self.totalPages = dict["totalPages"] as! Int64
            }
            if dict.keys.contains("totalRecords") {
                self.totalRecords = dict["totalRecords"] as! Int64
            }
        }
    }
    public var cost: Int64?

    public var data: GetDocumentListResponseBody.Data?

    public var dataType: String?

    public var errCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var time: String?

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
        if self.cost != nil {
            map["cost"] = self.cost!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.dataType != nil {
            map["dataType"] = self.dataType!
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.time != nil {
            map["time"] = self.time!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("cost") {
            self.cost = dict["cost"] as! Int64
        }
        if dict.keys.contains("data") {
            var model = GetDocumentListResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("dataType") {
            self.dataType = dict["dataType"] as! String
        }
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("time") {
            self.time = dict["time"] as! String
        }
    }
}

public class GetDocumentListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDocumentListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetDocumentListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDocumentUrlRequest : Tea.TeaModel {
    public var documentId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.documentId != nil {
            map["documentId"] = self.documentId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("documentId") {
            self.documentId = dict["documentId"] as! String
        }
    }
}

public class GetDocumentUrlResponseBody : Tea.TeaModel {
    public var cost: Int64?

    public var data: String?

    public var dataType: String?

    public var errCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var time: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cost != nil {
            map["cost"] = self.cost!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.dataType != nil {
            map["dataType"] = self.dataType!
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.time != nil {
            map["time"] = self.time!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("cost") {
            self.cost = dict["cost"] as! Int64
        }
        if dict.keys.contains("data") {
            self.data = dict["data"] as! String
        }
        if dict.keys.contains("dataType") {
            self.dataType = dict["dataType"] as! String
        }
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("time") {
            self.time = dict["time"] as! String
        }
    }
}

public class GetDocumentUrlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDocumentUrlResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetDocumentUrlResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetFilterDocumentListRequest : Tea.TeaModel {
    public class And : Tea.TeaModel {
        public var boost: Double?

        public var key: String?

        public var operator_: String?

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
            if self.boost != nil {
                map["boost"] = self.boost!
            }
            if self.key != nil {
                map["key"] = self.key!
            }
            if self.operator_ != nil {
                map["operator"] = self.operator_!
            }
            if self.value != nil {
                map["value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("boost") {
                self.boost = dict["boost"] as! Double
            }
            if dict.keys.contains("key") {
                self.key = dict["key"] as! String
            }
            if dict.keys.contains("operator") {
                self.operator_ = dict["operator"] as! String
            }
            if dict.keys.contains("value") {
                self.value = dict["value"] as! String
            }
        }
    }
    public class Or : Tea.TeaModel {
        public var boost: Double?

        public var key: String?

        public var operator_: String?

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
            if self.boost != nil {
                map["boost"] = self.boost!
            }
            if self.key != nil {
                map["key"] = self.key!
            }
            if self.operator_ != nil {
                map["operator"] = self.operator_!
            }
            if self.value != nil {
                map["value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("boost") {
                self.boost = dict["boost"] as! Double
            }
            if dict.keys.contains("key") {
                self.key = dict["key"] as! String
            }
            if dict.keys.contains("operator") {
                self.operator_ = dict["operator"] as! String
            }
            if dict.keys.contains("value") {
                self.value = dict["value"] as! String
            }
        }
    }
    public var and: [GetFilterDocumentListRequest.And]?

    public var docIdList: [String]?

    public var libraryId: String?

    public var or: [GetFilterDocumentListRequest.Or]?

    public var page: Int32?

    public var pageSize: Int32?

    public var status: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.and != nil {
            var tmp : [Any] = []
            for k in self.and! {
                tmp.append(k.toMap())
            }
            map["and"] = tmp
        }
        if self.docIdList != nil {
            map["docIdList"] = self.docIdList!
        }
        if self.libraryId != nil {
            map["libraryId"] = self.libraryId!
        }
        if self.or != nil {
            var tmp : [Any] = []
            for k in self.or! {
                tmp.append(k.toMap())
            }
            map["or"] = tmp
        }
        if self.page != nil {
            map["page"] = self.page!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("and") {
            var tmp : [GetFilterDocumentListRequest.And] = []
            for v in dict["and"] as! [Any] {
                var model = GetFilterDocumentListRequest.And()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.and = tmp
        }
        if dict.keys.contains("docIdList") {
            self.docIdList = dict["docIdList"] as! [String]
        }
        if dict.keys.contains("libraryId") {
            self.libraryId = dict["libraryId"] as! String
        }
        if dict.keys.contains("or") {
            var tmp : [GetFilterDocumentListRequest.Or] = []
            for v in dict["or"] as! [Any] {
                var model = GetFilterDocumentListRequest.Or()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.or = tmp
        }
        if dict.keys.contains("page") {
            self.page = dict["page"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("status") {
            self.status = dict["status"] as! [String]
        }
    }
}

public class GetFilterDocumentListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Records : Tea.TeaModel {
            public var docId: String?

            public var documentMeta: [String: Any]?

            public var fileType: String?

            public var gmtCreate: String?

            public var gmtModified: String?

            public var libraryId: String?

            public var statusCode: String?

            public var title: String?

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
                if self.docId != nil {
                    map["docId"] = self.docId!
                }
                if self.documentMeta != nil {
                    map["documentMeta"] = self.documentMeta!
                }
                if self.fileType != nil {
                    map["fileType"] = self.fileType!
                }
                if self.gmtCreate != nil {
                    map["gmtCreate"] = self.gmtCreate!
                }
                if self.gmtModified != nil {
                    map["gmtModified"] = self.gmtModified!
                }
                if self.libraryId != nil {
                    map["libraryId"] = self.libraryId!
                }
                if self.statusCode != nil {
                    map["statusCode"] = self.statusCode!
                }
                if self.title != nil {
                    map["title"] = self.title!
                }
                if self.url != nil {
                    map["url"] = self.url!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("docId") {
                    self.docId = dict["docId"] as! String
                }
                if dict.keys.contains("documentMeta") {
                    self.documentMeta = dict["documentMeta"] as! [String: Any]
                }
                if dict.keys.contains("fileType") {
                    self.fileType = dict["fileType"] as! String
                }
                if dict.keys.contains("gmtCreate") {
                    self.gmtCreate = dict["gmtCreate"] as! String
                }
                if dict.keys.contains("gmtModified") {
                    self.gmtModified = dict["gmtModified"] as! String
                }
                if dict.keys.contains("libraryId") {
                    self.libraryId = dict["libraryId"] as! String
                }
                if dict.keys.contains("statusCode") {
                    self.statusCode = dict["statusCode"] as! String
                }
                if dict.keys.contains("title") {
                    self.title = dict["title"] as! String
                }
                if dict.keys.contains("url") {
                    self.url = dict["url"] as! String
                }
            }
        }
        public var currentPage: Int64?

        public var pageSize: Int64?

        public var records: [GetFilterDocumentListResponseBody.Data.Records]?

        public var totalPages: Int64?

        public var totalRecords: Int64?

        public override init() {
            super.init()
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
                map["currentPage"] = self.currentPage!
            }
            if self.pageSize != nil {
                map["pageSize"] = self.pageSize!
            }
            if self.records != nil {
                var tmp : [Any] = []
                for k in self.records! {
                    tmp.append(k.toMap())
                }
                map["records"] = tmp
            }
            if self.totalPages != nil {
                map["totalPages"] = self.totalPages!
            }
            if self.totalRecords != nil {
                map["totalRecords"] = self.totalRecords!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("currentPage") {
                self.currentPage = dict["currentPage"] as! Int64
            }
            if dict.keys.contains("pageSize") {
                self.pageSize = dict["pageSize"] as! Int64
            }
            if dict.keys.contains("records") {
                var tmp : [GetFilterDocumentListResponseBody.Data.Records] = []
                for v in dict["records"] as! [Any] {
                    var model = GetFilterDocumentListResponseBody.Data.Records()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.records = tmp
            }
            if dict.keys.contains("totalPages") {
                self.totalPages = dict["totalPages"] as! Int64
            }
            if dict.keys.contains("totalRecords") {
                self.totalRecords = dict["totalRecords"] as! Int64
            }
        }
    }
    public var cost: Int64?

    public var data: GetFilterDocumentListResponseBody.Data?

    public var dataType: String?

    public var errCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var time: String?

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
        if self.cost != nil {
            map["cost"] = self.cost!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.dataType != nil {
            map["dataType"] = self.dataType!
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.time != nil {
            map["time"] = self.time!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("cost") {
            self.cost = dict["cost"] as! Int64
        }
        if dict.keys.contains("data") {
            var model = GetFilterDocumentListResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("dataType") {
            self.dataType = dict["dataType"] as! String
        }
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("time") {
            self.time = dict["time"] as! String
        }
    }
}

public class GetFilterDocumentListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetFilterDocumentListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetFilterDocumentListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetHistoryListByBizTypeRequest : Tea.TeaModel {
    public var bizId: String?

    public var bizType: String?

    public var page: Int32?

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
        if self.bizId != nil {
            map["bizId"] = self.bizId!
        }
        if self.bizType != nil {
            map["bizType"] = self.bizType!
        }
        if self.page != nil {
            map["page"] = self.page!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("bizId") {
            self.bizId = dict["bizId"] as! String
        }
        if dict.keys.contains("bizType") {
            self.bizType = dict["bizType"] as! String
        }
        if dict.keys.contains("page") {
            self.page = dict["page"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
    }
}

public class GetHistoryListByBizTypeResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Records : Tea.TeaModel {
            public var bizId: String?

            public var bizType: String?

            public var extraMessage: Any?

            public var gmtCreate: String?

            public var gmtModified: String?

            public var id: Int64?

            public var llmAnswer: String?

            public var llmPrompt: String?

            public var llmType: String?

            public var sessionId: String?

            public var userQuery: String?

            public override init() {
                super.init()
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
                    map["bizId"] = self.bizId!
                }
                if self.bizType != nil {
                    map["bizType"] = self.bizType!
                }
                if self.extraMessage != nil {
                    map["extraMessage"] = self.extraMessage!
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
                if self.llmAnswer != nil {
                    map["llmAnswer"] = self.llmAnswer!
                }
                if self.llmPrompt != nil {
                    map["llmPrompt"] = self.llmPrompt!
                }
                if self.llmType != nil {
                    map["llmType"] = self.llmType!
                }
                if self.sessionId != nil {
                    map["sessionId"] = self.sessionId!
                }
                if self.userQuery != nil {
                    map["userQuery"] = self.userQuery!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("bizId") {
                    self.bizId = dict["bizId"] as! String
                }
                if dict.keys.contains("bizType") {
                    self.bizType = dict["bizType"] as! String
                }
                if dict.keys.contains("extraMessage") {
                    self.extraMessage = dict["extraMessage"] as! Any
                }
                if dict.keys.contains("gmtCreate") {
                    self.gmtCreate = dict["gmtCreate"] as! String
                }
                if dict.keys.contains("gmtModified") {
                    self.gmtModified = dict["gmtModified"] as! String
                }
                if dict.keys.contains("id") {
                    self.id = dict["id"] as! Int64
                }
                if dict.keys.contains("llmAnswer") {
                    self.llmAnswer = dict["llmAnswer"] as! String
                }
                if dict.keys.contains("llmPrompt") {
                    self.llmPrompt = dict["llmPrompt"] as! String
                }
                if dict.keys.contains("llmType") {
                    self.llmType = dict["llmType"] as! String
                }
                if dict.keys.contains("sessionId") {
                    self.sessionId = dict["sessionId"] as! String
                }
                if dict.keys.contains("userQuery") {
                    self.userQuery = dict["userQuery"] as! String
                }
            }
        }
        public var currentPage: Int64?

        public var pageSize: Int64?

        public var records: [GetHistoryListByBizTypeResponseBody.Data.Records]?

        public var totalPages: Int64?

        public var totalRecords: Int64?

        public override init() {
            super.init()
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
                map["currentPage"] = self.currentPage!
            }
            if self.pageSize != nil {
                map["pageSize"] = self.pageSize!
            }
            if self.records != nil {
                var tmp : [Any] = []
                for k in self.records! {
                    tmp.append(k.toMap())
                }
                map["records"] = tmp
            }
            if self.totalPages != nil {
                map["totalPages"] = self.totalPages!
            }
            if self.totalRecords != nil {
                map["totalRecords"] = self.totalRecords!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("currentPage") {
                self.currentPage = dict["currentPage"] as! Int64
            }
            if dict.keys.contains("pageSize") {
                self.pageSize = dict["pageSize"] as! Int64
            }
            if dict.keys.contains("records") {
                var tmp : [GetHistoryListByBizTypeResponseBody.Data.Records] = []
                for v in dict["records"] as! [Any] {
                    var model = GetHistoryListByBizTypeResponseBody.Data.Records()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.records = tmp
            }
            if dict.keys.contains("totalPages") {
                self.totalPages = dict["totalPages"] as! Int64
            }
            if dict.keys.contains("totalRecords") {
                self.totalRecords = dict["totalRecords"] as! Int64
            }
        }
    }
    public var cost: Int64?

    public var data: GetHistoryListByBizTypeResponseBody.Data?

    public var dataType: String?

    public var errCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var time: String?

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
        if self.cost != nil {
            map["cost"] = self.cost!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.dataType != nil {
            map["dataType"] = self.dataType!
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.time != nil {
            map["time"] = self.time!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("cost") {
            self.cost = dict["cost"] as! Int64
        }
        if dict.keys.contains("data") {
            var model = GetHistoryListByBizTypeResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("dataType") {
            self.dataType = dict["dataType"] as! String
        }
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("time") {
            self.time = dict["time"] as! String
        }
    }
}

public class GetHistoryListByBizTypeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetHistoryListByBizTypeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetHistoryListByBizTypeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetLibraryRequest : Tea.TeaModel {
    public var libraryId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.libraryId != nil {
            map["libraryId"] = self.libraryId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("libraryId") {
            self.libraryId = dict["libraryId"] as! String
        }
    }
}

public class GetLibraryResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class IndexSetting : Tea.TeaModel {
            public class ChunkStrategy : Tea.TeaModel {
                public var docTreeSplit: Bool?

                public var docTreeSplitSize: Int32?

                public var enhanceGraph: Bool?

                public var enhanceTable: Bool?

                public var overlap: Int32?

                public var sentenceSplit: Bool?

                public var sentenceSplitSize: Int32?

                public var size: Int32?

                public var split: Bool?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.docTreeSplit != nil {
                        map["docTreeSplit"] = self.docTreeSplit!
                    }
                    if self.docTreeSplitSize != nil {
                        map["docTreeSplitSize"] = self.docTreeSplitSize!
                    }
                    if self.enhanceGraph != nil {
                        map["enhanceGraph"] = self.enhanceGraph!
                    }
                    if self.enhanceTable != nil {
                        map["enhanceTable"] = self.enhanceTable!
                    }
                    if self.overlap != nil {
                        map["overlap"] = self.overlap!
                    }
                    if self.sentenceSplit != nil {
                        map["sentenceSplit"] = self.sentenceSplit!
                    }
                    if self.sentenceSplitSize != nil {
                        map["sentenceSplitSize"] = self.sentenceSplitSize!
                    }
                    if self.size != nil {
                        map["size"] = self.size!
                    }
                    if self.split != nil {
                        map["split"] = self.split!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("docTreeSplit") {
                        self.docTreeSplit = dict["docTreeSplit"] as! Bool
                    }
                    if dict.keys.contains("docTreeSplitSize") {
                        self.docTreeSplitSize = dict["docTreeSplitSize"] as! Int32
                    }
                    if dict.keys.contains("enhanceGraph") {
                        self.enhanceGraph = dict["enhanceGraph"] as! Bool
                    }
                    if dict.keys.contains("enhanceTable") {
                        self.enhanceTable = dict["enhanceTable"] as! Bool
                    }
                    if dict.keys.contains("overlap") {
                        self.overlap = dict["overlap"] as! Int32
                    }
                    if dict.keys.contains("sentenceSplit") {
                        self.sentenceSplit = dict["sentenceSplit"] as! Bool
                    }
                    if dict.keys.contains("sentenceSplitSize") {
                        self.sentenceSplitSize = dict["sentenceSplitSize"] as! Int32
                    }
                    if dict.keys.contains("size") {
                        self.size = dict["size"] as! Int32
                    }
                    if dict.keys.contains("split") {
                        self.split = dict["split"] as! Bool
                    }
                }
            }
            public class ModelConfig : Tea.TeaModel {
                public var temperature: Double?

                public var topP: Double?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.temperature != nil {
                        map["temperature"] = self.temperature!
                    }
                    if self.topP != nil {
                        map["topP"] = self.topP!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("temperature") {
                        self.temperature = dict["temperature"] as! Double
                    }
                    if dict.keys.contains("topP") {
                        self.topP = dict["topP"] as! Double
                    }
                }
            }
            public class QueryEnhancer : Tea.TeaModel {
                public var enableFollowUp: Bool?

                public var enableMultiQuery: Bool?

                public var enableOpenQa: Bool?

                public var enableQueryRewrite: Bool?

                public var enableSession: Bool?

                public var localKnowledgeId: String?

                public var withDocumentReference: Bool?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.enableFollowUp != nil {
                        map["enableFollowUp"] = self.enableFollowUp!
                    }
                    if self.enableMultiQuery != nil {
                        map["enableMultiQuery"] = self.enableMultiQuery!
                    }
                    if self.enableOpenQa != nil {
                        map["enableOpenQa"] = self.enableOpenQa!
                    }
                    if self.enableQueryRewrite != nil {
                        map["enableQueryRewrite"] = self.enableQueryRewrite!
                    }
                    if self.enableSession != nil {
                        map["enableSession"] = self.enableSession!
                    }
                    if self.localKnowledgeId != nil {
                        map["localKnowledgeId"] = self.localKnowledgeId!
                    }
                    if self.withDocumentReference != nil {
                        map["withDocumentReference"] = self.withDocumentReference!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("enableFollowUp") {
                        self.enableFollowUp = dict["enableFollowUp"] as! Bool
                    }
                    if dict.keys.contains("enableMultiQuery") {
                        self.enableMultiQuery = dict["enableMultiQuery"] as! Bool
                    }
                    if dict.keys.contains("enableOpenQa") {
                        self.enableOpenQa = dict["enableOpenQa"] as! Bool
                    }
                    if dict.keys.contains("enableQueryRewrite") {
                        self.enableQueryRewrite = dict["enableQueryRewrite"] as! Bool
                    }
                    if dict.keys.contains("enableSession") {
                        self.enableSession = dict["enableSession"] as! Bool
                    }
                    if dict.keys.contains("localKnowledgeId") {
                        self.localKnowledgeId = dict["localKnowledgeId"] as! String
                    }
                    if dict.keys.contains("withDocumentReference") {
                        self.withDocumentReference = dict["withDocumentReference"] as! Bool
                    }
                }
            }
            public class RecallStrategy : Tea.TeaModel {
                public var documentRankType: String?

                public var limit: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.documentRankType != nil {
                        map["documentRankType"] = self.documentRankType!
                    }
                    if self.limit != nil {
                        map["limit"] = self.limit!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("documentRankType") {
                        self.documentRankType = dict["documentRankType"] as! String
                    }
                    if dict.keys.contains("limit") {
                        self.limit = dict["limit"] as! Int32
                    }
                }
            }
            public class TextIndexSetting : Tea.TeaModel {
                public var category: String?

                public var enable: Bool?

                public var indexAnalyzer: String?

                public var rankThreshold: Double?

                public var searchAnalyzer: String?

                public var topK: Int32?

                public override init() {
                    super.init()
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
                        map["category"] = self.category!
                    }
                    if self.enable != nil {
                        map["enable"] = self.enable!
                    }
                    if self.indexAnalyzer != nil {
                        map["indexAnalyzer"] = self.indexAnalyzer!
                    }
                    if self.rankThreshold != nil {
                        map["rankThreshold"] = self.rankThreshold!
                    }
                    if self.searchAnalyzer != nil {
                        map["searchAnalyzer"] = self.searchAnalyzer!
                    }
                    if self.topK != nil {
                        map["topK"] = self.topK!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("category") {
                        self.category = dict["category"] as! String
                    }
                    if dict.keys.contains("enable") {
                        self.enable = dict["enable"] as! Bool
                    }
                    if dict.keys.contains("indexAnalyzer") {
                        self.indexAnalyzer = dict["indexAnalyzer"] as! String
                    }
                    if dict.keys.contains("rankThreshold") {
                        self.rankThreshold = dict["rankThreshold"] as! Double
                    }
                    if dict.keys.contains("searchAnalyzer") {
                        self.searchAnalyzer = dict["searchAnalyzer"] as! String
                    }
                    if dict.keys.contains("topK") {
                        self.topK = dict["topK"] as! Int32
                    }
                }
            }
            public class VectorIndexSetting : Tea.TeaModel {
                public var category: String?

                public var embeddingType: String?

                public var enable: Bool?

                public var rankThreshold: Double?

                public var topK: Int32?

                public override init() {
                    super.init()
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
                        map["category"] = self.category!
                    }
                    if self.embeddingType != nil {
                        map["embeddingType"] = self.embeddingType!
                    }
                    if self.enable != nil {
                        map["enable"] = self.enable!
                    }
                    if self.rankThreshold != nil {
                        map["rankThreshold"] = self.rankThreshold!
                    }
                    if self.topK != nil {
                        map["topK"] = self.topK!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("category") {
                        self.category = dict["category"] as! String
                    }
                    if dict.keys.contains("embeddingType") {
                        self.embeddingType = dict["embeddingType"] as! String
                    }
                    if dict.keys.contains("enable") {
                        self.enable = dict["enable"] as! Bool
                    }
                    if dict.keys.contains("rankThreshold") {
                        self.rankThreshold = dict["rankThreshold"] as! Double
                    }
                    if dict.keys.contains("topK") {
                        self.topK = dict["topK"] as! Int32
                    }
                }
            }
            public var chunkStrategy: GetLibraryResponseBody.Data.IndexSetting.ChunkStrategy?

            public var modelConfig: GetLibraryResponseBody.Data.IndexSetting.ModelConfig?

            public var promptRoleStyle: String?

            public var queryEnhancer: GetLibraryResponseBody.Data.IndexSetting.QueryEnhancer?

            public var recallStrategy: GetLibraryResponseBody.Data.IndexSetting.RecallStrategy?

            public var textIndexSetting: GetLibraryResponseBody.Data.IndexSetting.TextIndexSetting?

            public var vectorIndexSetting: GetLibraryResponseBody.Data.IndexSetting.VectorIndexSetting?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.chunkStrategy?.validate()
                try self.modelConfig?.validate()
                try self.queryEnhancer?.validate()
                try self.recallStrategy?.validate()
                try self.textIndexSetting?.validate()
                try self.vectorIndexSetting?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.chunkStrategy != nil {
                    map["chunkStrategy"] = self.chunkStrategy?.toMap()
                }
                if self.modelConfig != nil {
                    map["modelConfig"] = self.modelConfig?.toMap()
                }
                if self.promptRoleStyle != nil {
                    map["promptRoleStyle"] = self.promptRoleStyle!
                }
                if self.queryEnhancer != nil {
                    map["queryEnhancer"] = self.queryEnhancer?.toMap()
                }
                if self.recallStrategy != nil {
                    map["recallStrategy"] = self.recallStrategy?.toMap()
                }
                if self.textIndexSetting != nil {
                    map["textIndexSetting"] = self.textIndexSetting?.toMap()
                }
                if self.vectorIndexSetting != nil {
                    map["vectorIndexSetting"] = self.vectorIndexSetting?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("chunkStrategy") {
                    var model = GetLibraryResponseBody.Data.IndexSetting.ChunkStrategy()
                    model.fromMap(dict["chunkStrategy"] as! [String: Any])
                    self.chunkStrategy = model
                }
                if dict.keys.contains("modelConfig") {
                    var model = GetLibraryResponseBody.Data.IndexSetting.ModelConfig()
                    model.fromMap(dict["modelConfig"] as! [String: Any])
                    self.modelConfig = model
                }
                if dict.keys.contains("promptRoleStyle") {
                    self.promptRoleStyle = dict["promptRoleStyle"] as! String
                }
                if dict.keys.contains("queryEnhancer") {
                    var model = GetLibraryResponseBody.Data.IndexSetting.QueryEnhancer()
                    model.fromMap(dict["queryEnhancer"] as! [String: Any])
                    self.queryEnhancer = model
                }
                if dict.keys.contains("recallStrategy") {
                    var model = GetLibraryResponseBody.Data.IndexSetting.RecallStrategy()
                    model.fromMap(dict["recallStrategy"] as! [String: Any])
                    self.recallStrategy = model
                }
                if dict.keys.contains("textIndexSetting") {
                    var model = GetLibraryResponseBody.Data.IndexSetting.TextIndexSetting()
                    model.fromMap(dict["textIndexSetting"] as! [String: Any])
                    self.textIndexSetting = model
                }
                if dict.keys.contains("vectorIndexSetting") {
                    var model = GetLibraryResponseBody.Data.IndexSetting.VectorIndexSetting()
                    model.fromMap(dict["vectorIndexSetting"] as! [String: Any])
                    self.vectorIndexSetting = model
                }
            }
        }
        public var description_: String?

        public var documentCount: Int64?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var id: String?

        public var indexSetting: GetLibraryResponseBody.Data.IndexSetting?

        public var libraryName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.indexSetting?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.documentCount != nil {
                map["documentCount"] = self.documentCount!
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
            if self.indexSetting != nil {
                map["indexSetting"] = self.indexSetting?.toMap()
            }
            if self.libraryName != nil {
                map["libraryName"] = self.libraryName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("documentCount") {
                self.documentCount = dict["documentCount"] as! Int64
            }
            if dict.keys.contains("gmtCreate") {
                self.gmtCreate = dict["gmtCreate"] as! String
            }
            if dict.keys.contains("gmtModified") {
                self.gmtModified = dict["gmtModified"] as! String
            }
            if dict.keys.contains("id") {
                self.id = dict["id"] as! String
            }
            if dict.keys.contains("indexSetting") {
                var model = GetLibraryResponseBody.Data.IndexSetting()
                model.fromMap(dict["indexSetting"] as! [String: Any])
                self.indexSetting = model
            }
            if dict.keys.contains("libraryName") {
                self.libraryName = dict["libraryName"] as! String
            }
        }
    }
    public var cost: Int64?

    public var data: GetLibraryResponseBody.Data?

    public var dataType: String?

    public var errCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var time: String?

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
        if self.cost != nil {
            map["cost"] = self.cost!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.dataType != nil {
            map["dataType"] = self.dataType!
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.time != nil {
            map["time"] = self.time!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("cost") {
            self.cost = dict["cost"] as! Int64
        }
        if dict.keys.contains("data") {
            var model = GetLibraryResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("dataType") {
            self.dataType = dict["dataType"] as! String
        }
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("time") {
            self.time = dict["time"] as! String
        }
    }
}

public class GetLibraryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetLibraryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetLibraryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetLibraryListRequest : Tea.TeaModel {
    public var page: Int32?

    public var pageSize: Int32?

    public var query: String?

    public override init() {
        super.init()
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
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.query != nil {
            map["query"] = self.query!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("page") {
            self.page = dict["page"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("query") {
            self.query = dict["query"] as! String
        }
    }
}

public class GetLibraryListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Records : Tea.TeaModel {
            public class IndexSetting : Tea.TeaModel {
                public class ChunkStrategy : Tea.TeaModel {
                    public var docTreeSplit: Bool?

                    public var docTreeSplitSize: Int32?

                    public var enhanceGraph: Bool?

                    public var enhanceTable: Bool?

                    public var overlap: Int32?

                    public var sentenceSplit: Bool?

                    public var sentenceSplitSize: Int32?

                    public var size: Int32?

                    public var split: Bool?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.docTreeSplit != nil {
                            map["docTreeSplit"] = self.docTreeSplit!
                        }
                        if self.docTreeSplitSize != nil {
                            map["docTreeSplitSize"] = self.docTreeSplitSize!
                        }
                        if self.enhanceGraph != nil {
                            map["enhanceGraph"] = self.enhanceGraph!
                        }
                        if self.enhanceTable != nil {
                            map["enhanceTable"] = self.enhanceTable!
                        }
                        if self.overlap != nil {
                            map["overlap"] = self.overlap!
                        }
                        if self.sentenceSplit != nil {
                            map["sentenceSplit"] = self.sentenceSplit!
                        }
                        if self.sentenceSplitSize != nil {
                            map["sentenceSplitSize"] = self.sentenceSplitSize!
                        }
                        if self.size != nil {
                            map["size"] = self.size!
                        }
                        if self.split != nil {
                            map["split"] = self.split!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("docTreeSplit") {
                            self.docTreeSplit = dict["docTreeSplit"] as! Bool
                        }
                        if dict.keys.contains("docTreeSplitSize") {
                            self.docTreeSplitSize = dict["docTreeSplitSize"] as! Int32
                        }
                        if dict.keys.contains("enhanceGraph") {
                            self.enhanceGraph = dict["enhanceGraph"] as! Bool
                        }
                        if dict.keys.contains("enhanceTable") {
                            self.enhanceTable = dict["enhanceTable"] as! Bool
                        }
                        if dict.keys.contains("overlap") {
                            self.overlap = dict["overlap"] as! Int32
                        }
                        if dict.keys.contains("sentenceSplit") {
                            self.sentenceSplit = dict["sentenceSplit"] as! Bool
                        }
                        if dict.keys.contains("sentenceSplitSize") {
                            self.sentenceSplitSize = dict["sentenceSplitSize"] as! Int32
                        }
                        if dict.keys.contains("size") {
                            self.size = dict["size"] as! Int32
                        }
                        if dict.keys.contains("split") {
                            self.split = dict["split"] as! Bool
                        }
                    }
                }
                public class ModelConfig : Tea.TeaModel {
                    public var temperature: Double?

                    public var topP: Double?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.temperature != nil {
                            map["temperature"] = self.temperature!
                        }
                        if self.topP != nil {
                            map["topP"] = self.topP!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("temperature") {
                            self.temperature = dict["temperature"] as! Double
                        }
                        if dict.keys.contains("topP") {
                            self.topP = dict["topP"] as! Double
                        }
                    }
                }
                public class QueryEnhancer : Tea.TeaModel {
                    public var enableFollowUp: Bool?

                    public var enableMultiQuery: Bool?

                    public var enableOpenQa: Bool?

                    public var enableQueryRewrite: Bool?

                    public var enableSession: Bool?

                    public var localKnowledgeId: String?

                    public var withDocumentReference: Bool?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.enableFollowUp != nil {
                            map["enableFollowUp"] = self.enableFollowUp!
                        }
                        if self.enableMultiQuery != nil {
                            map["enableMultiQuery"] = self.enableMultiQuery!
                        }
                        if self.enableOpenQa != nil {
                            map["enableOpenQa"] = self.enableOpenQa!
                        }
                        if self.enableQueryRewrite != nil {
                            map["enableQueryRewrite"] = self.enableQueryRewrite!
                        }
                        if self.enableSession != nil {
                            map["enableSession"] = self.enableSession!
                        }
                        if self.localKnowledgeId != nil {
                            map["localKnowledgeId"] = self.localKnowledgeId!
                        }
                        if self.withDocumentReference != nil {
                            map["withDocumentReference"] = self.withDocumentReference!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("enableFollowUp") {
                            self.enableFollowUp = dict["enableFollowUp"] as! Bool
                        }
                        if dict.keys.contains("enableMultiQuery") {
                            self.enableMultiQuery = dict["enableMultiQuery"] as! Bool
                        }
                        if dict.keys.contains("enableOpenQa") {
                            self.enableOpenQa = dict["enableOpenQa"] as! Bool
                        }
                        if dict.keys.contains("enableQueryRewrite") {
                            self.enableQueryRewrite = dict["enableQueryRewrite"] as! Bool
                        }
                        if dict.keys.contains("enableSession") {
                            self.enableSession = dict["enableSession"] as! Bool
                        }
                        if dict.keys.contains("localKnowledgeId") {
                            self.localKnowledgeId = dict["localKnowledgeId"] as! String
                        }
                        if dict.keys.contains("withDocumentReference") {
                            self.withDocumentReference = dict["withDocumentReference"] as! Bool
                        }
                    }
                }
                public class RecallStrategy : Tea.TeaModel {
                    public var documentRankType: String?

                    public var limit: Int32?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.documentRankType != nil {
                            map["documentRankType"] = self.documentRankType!
                        }
                        if self.limit != nil {
                            map["limit"] = self.limit!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("documentRankType") {
                            self.documentRankType = dict["documentRankType"] as! String
                        }
                        if dict.keys.contains("limit") {
                            self.limit = dict["limit"] as! Int32
                        }
                    }
                }
                public class TextIndexSetting : Tea.TeaModel {
                    public var category: String?

                    public var enable: Bool?

                    public var indexAnalyzer: String?

                    public var rankThreshold: Double?

                    public var searchAnalyzer: String?

                    public var topK: Int32?

                    public override init() {
                        super.init()
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
                            map["category"] = self.category!
                        }
                        if self.enable != nil {
                            map["enable"] = self.enable!
                        }
                        if self.indexAnalyzer != nil {
                            map["indexAnalyzer"] = self.indexAnalyzer!
                        }
                        if self.rankThreshold != nil {
                            map["rankThreshold"] = self.rankThreshold!
                        }
                        if self.searchAnalyzer != nil {
                            map["searchAnalyzer"] = self.searchAnalyzer!
                        }
                        if self.topK != nil {
                            map["topK"] = self.topK!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("category") {
                            self.category = dict["category"] as! String
                        }
                        if dict.keys.contains("enable") {
                            self.enable = dict["enable"] as! Bool
                        }
                        if dict.keys.contains("indexAnalyzer") {
                            self.indexAnalyzer = dict["indexAnalyzer"] as! String
                        }
                        if dict.keys.contains("rankThreshold") {
                            self.rankThreshold = dict["rankThreshold"] as! Double
                        }
                        if dict.keys.contains("searchAnalyzer") {
                            self.searchAnalyzer = dict["searchAnalyzer"] as! String
                        }
                        if dict.keys.contains("topK") {
                            self.topK = dict["topK"] as! Int32
                        }
                    }
                }
                public class VectorIndexSetting : Tea.TeaModel {
                    public var category: String?

                    public var embeddingType: String?

                    public var enable: Bool?

                    public var rankThreshold: Double?

                    public var topK: Int32?

                    public override init() {
                        super.init()
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
                            map["category"] = self.category!
                        }
                        if self.embeddingType != nil {
                            map["embeddingType"] = self.embeddingType!
                        }
                        if self.enable != nil {
                            map["enable"] = self.enable!
                        }
                        if self.rankThreshold != nil {
                            map["rankThreshold"] = self.rankThreshold!
                        }
                        if self.topK != nil {
                            map["topK"] = self.topK!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("category") {
                            self.category = dict["category"] as! String
                        }
                        if dict.keys.contains("embeddingType") {
                            self.embeddingType = dict["embeddingType"] as! String
                        }
                        if dict.keys.contains("enable") {
                            self.enable = dict["enable"] as! Bool
                        }
                        if dict.keys.contains("rankThreshold") {
                            self.rankThreshold = dict["rankThreshold"] as! Double
                        }
                        if dict.keys.contains("topK") {
                            self.topK = dict["topK"] as! Int32
                        }
                    }
                }
                public var chunkStrategy: GetLibraryListResponseBody.Data.Records.IndexSetting.ChunkStrategy?

                public var modelConfig: GetLibraryListResponseBody.Data.Records.IndexSetting.ModelConfig?

                public var promptRoleStyle: String?

                public var queryEnhancer: GetLibraryListResponseBody.Data.Records.IndexSetting.QueryEnhancer?

                public var recallStrategy: GetLibraryListResponseBody.Data.Records.IndexSetting.RecallStrategy?

                public var textIndexSetting: GetLibraryListResponseBody.Data.Records.IndexSetting.TextIndexSetting?

                public var vectorIndexSetting: GetLibraryListResponseBody.Data.Records.IndexSetting.VectorIndexSetting?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.chunkStrategy?.validate()
                    try self.modelConfig?.validate()
                    try self.queryEnhancer?.validate()
                    try self.recallStrategy?.validate()
                    try self.textIndexSetting?.validate()
                    try self.vectorIndexSetting?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.chunkStrategy != nil {
                        map["chunkStrategy"] = self.chunkStrategy?.toMap()
                    }
                    if self.modelConfig != nil {
                        map["modelConfig"] = self.modelConfig?.toMap()
                    }
                    if self.promptRoleStyle != nil {
                        map["promptRoleStyle"] = self.promptRoleStyle!
                    }
                    if self.queryEnhancer != nil {
                        map["queryEnhancer"] = self.queryEnhancer?.toMap()
                    }
                    if self.recallStrategy != nil {
                        map["recallStrategy"] = self.recallStrategy?.toMap()
                    }
                    if self.textIndexSetting != nil {
                        map["textIndexSetting"] = self.textIndexSetting?.toMap()
                    }
                    if self.vectorIndexSetting != nil {
                        map["vectorIndexSetting"] = self.vectorIndexSetting?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("chunkStrategy") {
                        var model = GetLibraryListResponseBody.Data.Records.IndexSetting.ChunkStrategy()
                        model.fromMap(dict["chunkStrategy"] as! [String: Any])
                        self.chunkStrategy = model
                    }
                    if dict.keys.contains("modelConfig") {
                        var model = GetLibraryListResponseBody.Data.Records.IndexSetting.ModelConfig()
                        model.fromMap(dict["modelConfig"] as! [String: Any])
                        self.modelConfig = model
                    }
                    if dict.keys.contains("promptRoleStyle") {
                        self.promptRoleStyle = dict["promptRoleStyle"] as! String
                    }
                    if dict.keys.contains("queryEnhancer") {
                        var model = GetLibraryListResponseBody.Data.Records.IndexSetting.QueryEnhancer()
                        model.fromMap(dict["queryEnhancer"] as! [String: Any])
                        self.queryEnhancer = model
                    }
                    if dict.keys.contains("recallStrategy") {
                        var model = GetLibraryListResponseBody.Data.Records.IndexSetting.RecallStrategy()
                        model.fromMap(dict["recallStrategy"] as! [String: Any])
                        self.recallStrategy = model
                    }
                    if dict.keys.contains("textIndexSetting") {
                        var model = GetLibraryListResponseBody.Data.Records.IndexSetting.TextIndexSetting()
                        model.fromMap(dict["textIndexSetting"] as! [String: Any])
                        self.textIndexSetting = model
                    }
                    if dict.keys.contains("vectorIndexSetting") {
                        var model = GetLibraryListResponseBody.Data.Records.IndexSetting.VectorIndexSetting()
                        model.fromMap(dict["vectorIndexSetting"] as! [String: Any])
                        self.vectorIndexSetting = model
                    }
                }
            }
            public var description_: String?

            public var documentCount: Int64?

            public var gmtCreate: String?

            public var gmtModified: String?

            public var id: String?

            public var indexSetting: GetLibraryListResponseBody.Data.Records.IndexSetting?

            public var libraryName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.indexSetting?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.description_ != nil {
                    map["description"] = self.description_!
                }
                if self.documentCount != nil {
                    map["documentCount"] = self.documentCount!
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
                if self.indexSetting != nil {
                    map["indexSetting"] = self.indexSetting?.toMap()
                }
                if self.libraryName != nil {
                    map["libraryName"] = self.libraryName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("description") {
                    self.description_ = dict["description"] as! String
                }
                if dict.keys.contains("documentCount") {
                    self.documentCount = dict["documentCount"] as! Int64
                }
                if dict.keys.contains("gmtCreate") {
                    self.gmtCreate = dict["gmtCreate"] as! String
                }
                if dict.keys.contains("gmtModified") {
                    self.gmtModified = dict["gmtModified"] as! String
                }
                if dict.keys.contains("id") {
                    self.id = dict["id"] as! String
                }
                if dict.keys.contains("indexSetting") {
                    var model = GetLibraryListResponseBody.Data.Records.IndexSetting()
                    model.fromMap(dict["indexSetting"] as! [String: Any])
                    self.indexSetting = model
                }
                if dict.keys.contains("libraryName") {
                    self.libraryName = dict["libraryName"] as! String
                }
            }
        }
        public var currentPage: Int64?

        public var pageSize: Int64?

        public var records: [GetLibraryListResponseBody.Data.Records]?

        public var totalPages: Int64?

        public var totalRecords: Int64?

        public override init() {
            super.init()
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
                map["currentPage"] = self.currentPage!
            }
            if self.pageSize != nil {
                map["pageSize"] = self.pageSize!
            }
            if self.records != nil {
                var tmp : [Any] = []
                for k in self.records! {
                    tmp.append(k.toMap())
                }
                map["records"] = tmp
            }
            if self.totalPages != nil {
                map["totalPages"] = self.totalPages!
            }
            if self.totalRecords != nil {
                map["totalRecords"] = self.totalRecords!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("currentPage") {
                self.currentPage = dict["currentPage"] as! Int64
            }
            if dict.keys.contains("pageSize") {
                self.pageSize = dict["pageSize"] as! Int64
            }
            if dict.keys.contains("records") {
                var tmp : [GetLibraryListResponseBody.Data.Records] = []
                for v in dict["records"] as! [Any] {
                    var model = GetLibraryListResponseBody.Data.Records()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.records = tmp
            }
            if dict.keys.contains("totalPages") {
                self.totalPages = dict["totalPages"] as! Int64
            }
            if dict.keys.contains("totalRecords") {
                self.totalRecords = dict["totalRecords"] as! Int64
            }
        }
    }
    public var cost: Int64?

    public var data: GetLibraryListResponseBody.Data?

    public var dataType: String?

    public var errCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var time: String?

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
        if self.cost != nil {
            map["cost"] = self.cost!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.dataType != nil {
            map["dataType"] = self.dataType!
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.time != nil {
            map["time"] = self.time!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("cost") {
            self.cost = dict["cost"] as! Int64
        }
        if dict.keys.contains("data") {
            var model = GetLibraryListResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("dataType") {
            self.dataType = dict["dataType"] as! String
        }
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("time") {
            self.time = dict["time"] as! String
        }
    }
}

public class GetLibraryListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetLibraryListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetLibraryListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetParseResultRequest : Tea.TeaModel {
    public var docId: String?

    public var libraryId: String?

    public var useUrlResult: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.docId != nil {
            map["docId"] = self.docId!
        }
        if self.libraryId != nil {
            map["libraryId"] = self.libraryId!
        }
        if self.useUrlResult != nil {
            map["useUrlResult"] = self.useUrlResult!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("docId") {
            self.docId = dict["docId"] as! String
        }
        if dict.keys.contains("libraryId") {
            self.libraryId = dict["libraryId"] as! String
        }
        if dict.keys.contains("useUrlResult") {
            self.useUrlResult = dict["useUrlResult"] as! Bool
        }
    }
}

public class GetParseResultResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var fileType: String?

        public var providerType: String?

        public var requestId: String?

        public var result: [String: Any]?

        public var resultUrl: String?

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
            if self.fileType != nil {
                map["fileType"] = self.fileType!
            }
            if self.providerType != nil {
                map["providerType"] = self.providerType!
            }
            if self.requestId != nil {
                map["requestId"] = self.requestId!
            }
            if self.result != nil {
                map["result"] = self.result!
            }
            if self.resultUrl != nil {
                map["resultUrl"] = self.resultUrl!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("fileType") {
                self.fileType = dict["fileType"] as! String
            }
            if dict.keys.contains("providerType") {
                self.providerType = dict["providerType"] as! String
            }
            if dict.keys.contains("requestId") {
                self.requestId = dict["requestId"] as! String
            }
            if dict.keys.contains("result") {
                self.result = dict["result"] as! [String: Any]
            }
            if dict.keys.contains("resultUrl") {
                self.resultUrl = dict["resultUrl"] as! String
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
        }
    }
    public var cost: Int64?

    public var data: GetParseResultResponseBody.Data?

    public var dataType: String?

    public var errCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var time: String?

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
        if self.cost != nil {
            map["cost"] = self.cost!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.dataType != nil {
            map["dataType"] = self.dataType!
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.time != nil {
            map["time"] = self.time!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("cost") {
            self.cost = dict["cost"] as! Int64
        }
        if dict.keys.contains("data") {
            var model = GetParseResultResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("dataType") {
            self.dataType = dict["dataType"] as! String
        }
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("time") {
            self.time = dict["time"] as! String
        }
    }
}

public class GetParseResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetParseResultResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetParseResultResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetQualityCheckTaskResultRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("taskId") {
            self.taskId = dict["taskId"] as! String
        }
    }
}

public class GetQualityCheckTaskResultResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ConversationList : Tea.TeaModel {
            public class DialogueList : Tea.TeaModel {
                public var begin: Int32?

                public var beginTime: String?

                public var content: String?

                public var customerId: String?

                public var customerServiceId: String?

                public var customerServiceType: String?

                public var end: Int32?

                public var id: Int32?

                public var role: String?

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
                    if self.begin != nil {
                        map["begin"] = self.begin!
                    }
                    if self.beginTime != nil {
                        map["beginTime"] = self.beginTime!
                    }
                    if self.content != nil {
                        map["content"] = self.content!
                    }
                    if self.customerId != nil {
                        map["customerId"] = self.customerId!
                    }
                    if self.customerServiceId != nil {
                        map["customerServiceId"] = self.customerServiceId!
                    }
                    if self.customerServiceType != nil {
                        map["customerServiceType"] = self.customerServiceType!
                    }
                    if self.end != nil {
                        map["end"] = self.end!
                    }
                    if self.id != nil {
                        map["id"] = self.id!
                    }
                    if self.role != nil {
                        map["role"] = self.role!
                    }
                    if self.type != nil {
                        map["type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("begin") {
                        self.begin = dict["begin"] as! Int32
                    }
                    if dict.keys.contains("beginTime") {
                        self.beginTime = dict["beginTime"] as! String
                    }
                    if dict.keys.contains("content") {
                        self.content = dict["content"] as! String
                    }
                    if dict.keys.contains("customerId") {
                        self.customerId = dict["customerId"] as! String
                    }
                    if dict.keys.contains("customerServiceId") {
                        self.customerServiceId = dict["customerServiceId"] as! String
                    }
                    if dict.keys.contains("customerServiceType") {
                        self.customerServiceType = dict["customerServiceType"] as! String
                    }
                    if dict.keys.contains("end") {
                        self.end = dict["end"] as! Int32
                    }
                    if dict.keys.contains("id") {
                        self.id = dict["id"] as! Int32
                    }
                    if dict.keys.contains("role") {
                        self.role = dict["role"] as! String
                    }
                    if dict.keys.contains("type") {
                        self.type = dict["type"] as! String
                    }
                }
            }
            public var callType: String?

            public var customerId: String?

            public var customerName: String?

            public var customerServiceId: String?

            public var customerServiceName: String?

            public var dialogueList: [GetQualityCheckTaskResultResponseBody.Data.ConversationList.DialogueList]?

            public var gmtService: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.callType != nil {
                    map["callType"] = self.callType!
                }
                if self.customerId != nil {
                    map["customerId"] = self.customerId!
                }
                if self.customerName != nil {
                    map["customerName"] = self.customerName!
                }
                if self.customerServiceId != nil {
                    map["customerServiceId"] = self.customerServiceId!
                }
                if self.customerServiceName != nil {
                    map["customerServiceName"] = self.customerServiceName!
                }
                if self.dialogueList != nil {
                    var tmp : [Any] = []
                    for k in self.dialogueList! {
                        tmp.append(k.toMap())
                    }
                    map["dialogueList"] = tmp
                }
                if self.gmtService != nil {
                    map["gmtService"] = self.gmtService!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("callType") {
                    self.callType = dict["callType"] as! String
                }
                if dict.keys.contains("customerId") {
                    self.customerId = dict["customerId"] as! String
                }
                if dict.keys.contains("customerName") {
                    self.customerName = dict["customerName"] as! String
                }
                if dict.keys.contains("customerServiceId") {
                    self.customerServiceId = dict["customerServiceId"] as! String
                }
                if dict.keys.contains("customerServiceName") {
                    self.customerServiceName = dict["customerServiceName"] as! String
                }
                if dict.keys.contains("dialogueList") {
                    var tmp : [GetQualityCheckTaskResultResponseBody.Data.ConversationList.DialogueList] = []
                    for v in dict["dialogueList"] as! [Any] {
                        var model = GetQualityCheckTaskResultResponseBody.Data.ConversationList.DialogueList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.dialogueList = tmp
                }
                if dict.keys.contains("gmtService") {
                    self.gmtService = dict["gmtService"] as! String
                }
            }
        }
        public class QualityCheckList : Tea.TeaModel {
            public class OriginDialogue : Tea.TeaModel {
                public var begin: Int32?

                public var beginTime: String?

                public var content: String?

                public var customerId: String?

                public var customerServiceId: String?

                public var customerServiceType: String?

                public var end: Int32?

                public var id: Int32?

                public var role: String?

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
                    if self.begin != nil {
                        map["begin"] = self.begin!
                    }
                    if self.beginTime != nil {
                        map["beginTime"] = self.beginTime!
                    }
                    if self.content != nil {
                        map["content"] = self.content!
                    }
                    if self.customerId != nil {
                        map["customerId"] = self.customerId!
                    }
                    if self.customerServiceId != nil {
                        map["customerServiceId"] = self.customerServiceId!
                    }
                    if self.customerServiceType != nil {
                        map["customerServiceType"] = self.customerServiceType!
                    }
                    if self.end != nil {
                        map["end"] = self.end!
                    }
                    if self.id != nil {
                        map["id"] = self.id!
                    }
                    if self.role != nil {
                        map["role"] = self.role!
                    }
                    if self.type != nil {
                        map["type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("begin") {
                        self.begin = dict["begin"] as! Int32
                    }
                    if dict.keys.contains("beginTime") {
                        self.beginTime = dict["beginTime"] as! String
                    }
                    if dict.keys.contains("content") {
                        self.content = dict["content"] as! String
                    }
                    if dict.keys.contains("customerId") {
                        self.customerId = dict["customerId"] as! String
                    }
                    if dict.keys.contains("customerServiceId") {
                        self.customerServiceId = dict["customerServiceId"] as! String
                    }
                    if dict.keys.contains("customerServiceType") {
                        self.customerServiceType = dict["customerServiceType"] as! String
                    }
                    if dict.keys.contains("end") {
                        self.end = dict["end"] as! Int32
                    }
                    if dict.keys.contains("id") {
                        self.id = dict["id"] as! Int32
                    }
                    if dict.keys.contains("role") {
                        self.role = dict["role"] as! String
                    }
                    if dict.keys.contains("type") {
                        self.type = dict["type"] as! String
                    }
                }
            }
            public var bizType: String?

            public var checkExplanation: String?

            public var checkPassed: String?

            public var checkProcess: String?

            public var checked: String?

            public var gmtEnd: String?

            public var gmtStart: String?

            public var mode: String?

            public var originDialogue: [GetQualityCheckTaskResultResponseBody.Data.QualityCheckList.OriginDialogue]?

            public var qualityGroupId: String?

            public var ruleDescription: String?

            public var ruleId: String?

            public var ruleType: String?

            public var subNodeCol: [Any]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bizType != nil {
                    map["bizType"] = self.bizType!
                }
                if self.checkExplanation != nil {
                    map["checkExplanation"] = self.checkExplanation!
                }
                if self.checkPassed != nil {
                    map["checkPassed"] = self.checkPassed!
                }
                if self.checkProcess != nil {
                    map["checkProcess"] = self.checkProcess!
                }
                if self.checked != nil {
                    map["checked"] = self.checked!
                }
                if self.gmtEnd != nil {
                    map["gmtEnd"] = self.gmtEnd!
                }
                if self.gmtStart != nil {
                    map["gmtStart"] = self.gmtStart!
                }
                if self.mode != nil {
                    map["mode"] = self.mode!
                }
                if self.originDialogue != nil {
                    var tmp : [Any] = []
                    for k in self.originDialogue! {
                        tmp.append(k.toMap())
                    }
                    map["originDialogue"] = tmp
                }
                if self.qualityGroupId != nil {
                    map["qualityGroupId"] = self.qualityGroupId!
                }
                if self.ruleDescription != nil {
                    map["ruleDescription"] = self.ruleDescription!
                }
                if self.ruleId != nil {
                    map["ruleId"] = self.ruleId!
                }
                if self.ruleType != nil {
                    map["ruleType"] = self.ruleType!
                }
                if self.subNodeCol != nil {
                    map["subNodeCol"] = self.subNodeCol!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("bizType") {
                    self.bizType = dict["bizType"] as! String
                }
                if dict.keys.contains("checkExplanation") {
                    self.checkExplanation = dict["checkExplanation"] as! String
                }
                if dict.keys.contains("checkPassed") {
                    self.checkPassed = dict["checkPassed"] as! String
                }
                if dict.keys.contains("checkProcess") {
                    self.checkProcess = dict["checkProcess"] as! String
                }
                if dict.keys.contains("checked") {
                    self.checked = dict["checked"] as! String
                }
                if dict.keys.contains("gmtEnd") {
                    self.gmtEnd = dict["gmtEnd"] as! String
                }
                if dict.keys.contains("gmtStart") {
                    self.gmtStart = dict["gmtStart"] as! String
                }
                if dict.keys.contains("mode") {
                    self.mode = dict["mode"] as! String
                }
                if dict.keys.contains("originDialogue") {
                    var tmp : [GetQualityCheckTaskResultResponseBody.Data.QualityCheckList.OriginDialogue] = []
                    for v in dict["originDialogue"] as! [Any] {
                        var model = GetQualityCheckTaskResultResponseBody.Data.QualityCheckList.OriginDialogue()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.originDialogue = tmp
                }
                if dict.keys.contains("qualityGroupId") {
                    self.qualityGroupId = dict["qualityGroupId"] as! String
                }
                if dict.keys.contains("ruleDescription") {
                    self.ruleDescription = dict["ruleDescription"] as! String
                }
                if dict.keys.contains("ruleId") {
                    self.ruleId = dict["ruleId"] as! String
                }
                if dict.keys.contains("ruleType") {
                    self.ruleType = dict["ruleType"] as! String
                }
                if dict.keys.contains("subNodeCol") {
                    self.subNodeCol = dict["subNodeCol"] as! [Any]
                }
            }
        }
        public var conversationList: GetQualityCheckTaskResultResponseBody.Data.ConversationList?

        public var gmtCreate: String?

        public var gmtEnd: String?

        public var gmtStart: String?

        public var qualityCheckList: [GetQualityCheckTaskResultResponseBody.Data.QualityCheckList]?

        public var status: String?

        public var taskId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.conversationList?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.conversationList != nil {
                map["conversationList"] = self.conversationList?.toMap()
            }
            if self.gmtCreate != nil {
                map["gmtCreate"] = self.gmtCreate!
            }
            if self.gmtEnd != nil {
                map["gmtEnd"] = self.gmtEnd!
            }
            if self.gmtStart != nil {
                map["gmtStart"] = self.gmtStart!
            }
            if self.qualityCheckList != nil {
                var tmp : [Any] = []
                for k in self.qualityCheckList! {
                    tmp.append(k.toMap())
                }
                map["qualityCheckList"] = tmp
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.taskId != nil {
                map["taskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("conversationList") {
                var model = GetQualityCheckTaskResultResponseBody.Data.ConversationList()
                model.fromMap(dict["conversationList"] as! [String: Any])
                self.conversationList = model
            }
            if dict.keys.contains("gmtCreate") {
                self.gmtCreate = dict["gmtCreate"] as! String
            }
            if dict.keys.contains("gmtEnd") {
                self.gmtEnd = dict["gmtEnd"] as! String
            }
            if dict.keys.contains("gmtStart") {
                self.gmtStart = dict["gmtStart"] as! String
            }
            if dict.keys.contains("qualityCheckList") {
                var tmp : [GetQualityCheckTaskResultResponseBody.Data.QualityCheckList] = []
                for v in dict["qualityCheckList"] as! [Any] {
                    var model = GetQualityCheckTaskResultResponseBody.Data.QualityCheckList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.qualityCheckList = tmp
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("taskId") {
                self.taskId = dict["taskId"] as! String
            }
        }
    }
    public var cost: Int64?

    public var data: GetQualityCheckTaskResultResponseBody.Data?

    public var dataType: String?

    public var errCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var time: String?

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
        if self.cost != nil {
            map["cost"] = self.cost!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.dataType != nil {
            map["dataType"] = self.dataType!
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.time != nil {
            map["time"] = self.time!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("cost") {
            self.cost = dict["cost"] as! Int64
        }
        if dict.keys.contains("data") {
            var model = GetQualityCheckTaskResultResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("dataType") {
            self.dataType = dict["dataType"] as! String
        }
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("time") {
            self.time = dict["time"] as! String
        }
    }
}

public class GetQualityCheckTaskResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetQualityCheckTaskResultResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetQualityCheckTaskResultResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetSummaryTaskResultRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("taskId") {
            self.taskId = dict["taskId"] as! String
        }
    }
}

public class GetSummaryTaskResultResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Choices : Tea.TeaModel {
            public class Message : Tea.TeaModel {
                public var content: String?

                public var role: String?

                public var toolCalls: [[String: Any]]?

                public override init() {
                    super.init()
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
                        map["content"] = self.content!
                    }
                    if self.role != nil {
                        map["role"] = self.role!
                    }
                    if self.toolCalls != nil {
                        map["toolCalls"] = self.toolCalls!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("content") {
                        self.content = dict["content"] as! String
                    }
                    if dict.keys.contains("role") {
                        self.role = dict["role"] as! String
                    }
                    if dict.keys.contains("toolCalls") {
                        self.toolCalls = dict["toolCalls"] as! [[String: Any]]
                    }
                }
            }
            public var finishReason: String?

            public var index: Int32?

            public var message: GetSummaryTaskResultResponseBody.Data.Choices.Message?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.message?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.finishReason != nil {
                    map["finishReason"] = self.finishReason!
                }
                if self.index != nil {
                    map["index"] = self.index!
                }
                if self.message != nil {
                    map["message"] = self.message?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("finishReason") {
                    self.finishReason = dict["finishReason"] as! String
                }
                if dict.keys.contains("index") {
                    self.index = dict["index"] as! Int32
                }
                if dict.keys.contains("message") {
                    var model = GetSummaryTaskResultResponseBody.Data.Choices.Message()
                    model.fromMap(dict["message"] as! [String: Any])
                    self.message = model
                }
            }
        }
        public class Usage : Tea.TeaModel {
            public var imageCount: Int32?

            public var imageTokens: Int32?

            public var inputTokens: Int32?

            public var outputTokens: Int32?

            public var totalTokens: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.imageCount != nil {
                    map["imageCount"] = self.imageCount!
                }
                if self.imageTokens != nil {
                    map["imageTokens"] = self.imageTokens!
                }
                if self.inputTokens != nil {
                    map["inputTokens"] = self.inputTokens!
                }
                if self.outputTokens != nil {
                    map["outputTokens"] = self.outputTokens!
                }
                if self.totalTokens != nil {
                    map["totalTokens"] = self.totalTokens!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("imageCount") {
                    self.imageCount = dict["imageCount"] as! Int32
                }
                if dict.keys.contains("imageTokens") {
                    self.imageTokens = dict["imageTokens"] as! Int32
                }
                if dict.keys.contains("inputTokens") {
                    self.inputTokens = dict["inputTokens"] as! Int32
                }
                if dict.keys.contains("outputTokens") {
                    self.outputTokens = dict["outputTokens"] as! Int32
                }
                if dict.keys.contains("totalTokens") {
                    self.totalTokens = dict["totalTokens"] as! Int32
                }
            }
        }
        public var choices: [GetSummaryTaskResultResponseBody.Data.Choices]?

        public var created: Int64?

        public var id: String?

        public var modelId: String?

        public var requestId: String?

        public var time: String?

        public var totalTokens: Int32?

        public var usage: GetSummaryTaskResultResponseBody.Data.Usage?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.usage?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.choices != nil {
                var tmp : [Any] = []
                for k in self.choices! {
                    tmp.append(k.toMap())
                }
                map["choices"] = tmp
            }
            if self.created != nil {
                map["created"] = self.created!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.modelId != nil {
                map["modelId"] = self.modelId!
            }
            if self.requestId != nil {
                map["requestId"] = self.requestId!
            }
            if self.time != nil {
                map["time"] = self.time!
            }
            if self.totalTokens != nil {
                map["totalTokens"] = self.totalTokens!
            }
            if self.usage != nil {
                map["usage"] = self.usage?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("choices") {
                var tmp : [GetSummaryTaskResultResponseBody.Data.Choices] = []
                for v in dict["choices"] as! [Any] {
                    var model = GetSummaryTaskResultResponseBody.Data.Choices()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.choices = tmp
            }
            if dict.keys.contains("created") {
                self.created = dict["created"] as! Int64
            }
            if dict.keys.contains("id") {
                self.id = dict["id"] as! String
            }
            if dict.keys.contains("modelId") {
                self.modelId = dict["modelId"] as! String
            }
            if dict.keys.contains("requestId") {
                self.requestId = dict["requestId"] as! String
            }
            if dict.keys.contains("time") {
                self.time = dict["time"] as! String
            }
            if dict.keys.contains("totalTokens") {
                self.totalTokens = dict["totalTokens"] as! Int32
            }
            if dict.keys.contains("usage") {
                var model = GetSummaryTaskResultResponseBody.Data.Usage()
                model.fromMap(dict["usage"] as! [String: Any])
                self.usage = model
            }
        }
    }
    public var cost: Int64?

    public var data: GetSummaryTaskResultResponseBody.Data?

    public var dataType: String?

    public var errCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var time: String?

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
        if self.cost != nil {
            map["cost"] = self.cost!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.dataType != nil {
            map["dataType"] = self.dataType!
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.time != nil {
            map["time"] = self.time!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("cost") {
            self.cost = dict["cost"] as! Int64
        }
        if dict.keys.contains("data") {
            var model = GetSummaryTaskResultResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("dataType") {
            self.dataType = dict["dataType"] as! String
        }
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("time") {
            self.time = dict["time"] as! String
        }
    }
}

public class GetSummaryTaskResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSummaryTaskResultResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetSummaryTaskResultResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetTaskResultRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("taskId") {
            self.taskId = dict["taskId"] as! String
        }
    }
}

public class GetTaskResultResponseBody : Tea.TeaModel {
    public var cost: Int64?

    public var data: [String: Any]?

    public var dataType: String?

    public var errCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var time: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cost != nil {
            map["cost"] = self.cost!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.dataType != nil {
            map["dataType"] = self.dataType!
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.time != nil {
            map["time"] = self.time!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("cost") {
            self.cost = dict["cost"] as! Int64
        }
        if dict.keys.contains("data") {
            self.data = dict["data"] as! [String: Any]
        }
        if dict.keys.contains("dataType") {
            self.dataType = dict["dataType"] as! String
        }
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("time") {
            self.time = dict["time"] as! String
        }
    }
}

public class GetTaskResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTaskResultResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetTaskResultResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetTaskStatusRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("taskId") {
            self.taskId = dict["taskId"] as! String
        }
    }
}

public class GetTaskStatusResponseBody : Tea.TeaModel {
    public var cost: Int64?

    public var data: String?

    public var dataType: String?

    public var errCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var time: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cost != nil {
            map["cost"] = self.cost!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.dataType != nil {
            map["dataType"] = self.dataType!
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.time != nil {
            map["time"] = self.time!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("cost") {
            self.cost = dict["cost"] as! Int64
        }
        if dict.keys.contains("data") {
            self.data = dict["data"] as! String
        }
        if dict.keys.contains("dataType") {
            self.dataType = dict["dataType"] as! String
        }
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("time") {
            self.time = dict["time"] as! String
        }
    }
}

public class GetTaskStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTaskStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetTaskStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class InvokePluginRequest : Tea.TeaModel {
    public var params: [String: Any]?

    public var pluginId: String?

    public override init() {
        super.init()
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
            map["params"] = self.params!
        }
        if self.pluginId != nil {
            map["pluginId"] = self.pluginId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("params") {
            self.params = dict["params"] as! [String: Any]
        }
        if dict.keys.contains("pluginId") {
            self.pluginId = dict["pluginId"] as! String
        }
    }
}

public class InvokePluginResponseBody : Tea.TeaModel {
    public var cost: Int64?

    public var data: [String: Any]?

    public var dataType: String?

    public var errCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var time: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cost != nil {
            map["cost"] = self.cost!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.dataType != nil {
            map["dataType"] = self.dataType!
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.time != nil {
            map["time"] = self.time!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("cost") {
            self.cost = dict["cost"] as! Int64
        }
        if dict.keys.contains("data") {
            self.data = dict["data"] as! [String: Any]
        }
        if dict.keys.contains("dataType") {
            self.dataType = dict["dataType"] as! String
        }
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("time") {
            self.time = dict["time"] as! String
        }
    }
}

public class InvokePluginResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: InvokePluginResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = InvokePluginResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PreviewDocumentRequest : Tea.TeaModel {
    public var documentId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.documentId != nil {
            map["documentId"] = self.documentId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("documentId") {
            self.documentId = dict["documentId"] as! String
        }
    }
}

public class PreviewDocumentResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var previewType: String?

        public var title: String?

        public var uploadTime: String?

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
            if self.previewType != nil {
                map["previewType"] = self.previewType!
            }
            if self.title != nil {
                map["title"] = self.title!
            }
            if self.uploadTime != nil {
                map["uploadTime"] = self.uploadTime!
            }
            if self.url != nil {
                map["url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("previewType") {
                self.previewType = dict["previewType"] as! String
            }
            if dict.keys.contains("title") {
                self.title = dict["title"] as! String
            }
            if dict.keys.contains("uploadTime") {
                self.uploadTime = dict["uploadTime"] as! String
            }
            if dict.keys.contains("url") {
                self.url = dict["url"] as! String
            }
        }
    }
    public var cost: Int64?

    public var data: PreviewDocumentResponseBody.Data?

    public var dataType: String?

    public var errCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var time: String?

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
        if self.cost != nil {
            map["cost"] = self.cost!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.dataType != nil {
            map["dataType"] = self.dataType!
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.time != nil {
            map["time"] = self.time!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("cost") {
            self.cost = dict["cost"] as! Int64
        }
        if dict.keys.contains("data") {
            var model = PreviewDocumentResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("dataType") {
            self.dataType = dict["dataType"] as! String
        }
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("time") {
            self.time = dict["time"] as! String
        }
    }
}

public class PreviewDocumentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PreviewDocumentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = PreviewDocumentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ReIndexRequest : Tea.TeaModel {
    public var documentId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.documentId != nil {
            map["documentId"] = self.documentId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("documentId") {
            self.documentId = dict["documentId"] as! String
        }
    }
}

public class ReIndexResponseBody : Tea.TeaModel {
    public var cost: Int64?

    public var data: String?

    public var dataType: String?

    public var errCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var time: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cost != nil {
            map["cost"] = self.cost!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.dataType != nil {
            map["dataType"] = self.dataType!
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.time != nil {
            map["time"] = self.time!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("cost") {
            self.cost = dict["cost"] as! Int64
        }
        if dict.keys.contains("data") {
            self.data = dict["data"] as! String
        }
        if dict.keys.contains("dataType") {
            self.dataType = dict["dataType"] as! String
        }
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("time") {
            self.time = dict["time"] as! String
        }
    }
}

public class ReIndexResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReIndexResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ReIndexResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RealTimeDialogRequest : Tea.TeaModel {
    public class ConversationModel : Tea.TeaModel {
        public var begin: Int32?

        public var beginTime: String?

        public var content: String?

        public var customerId: String?

        public var customerServiceId: String?

        public var customerServiceType: String?

        public var end: Int32?

        public var role: Int32?

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
            if self.begin != nil {
                map["begin"] = self.begin!
            }
            if self.beginTime != nil {
                map["beginTime"] = self.beginTime!
            }
            if self.content != nil {
                map["content"] = self.content!
            }
            if self.customerId != nil {
                map["customerId"] = self.customerId!
            }
            if self.customerServiceId != nil {
                map["customerServiceId"] = self.customerServiceId!
            }
            if self.customerServiceType != nil {
                map["customerServiceType"] = self.customerServiceType!
            }
            if self.end != nil {
                map["end"] = self.end!
            }
            if self.role != nil {
                map["role"] = self.role!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("begin") {
                self.begin = dict["begin"] as! Int32
            }
            if dict.keys.contains("beginTime") {
                self.beginTime = dict["beginTime"] as! String
            }
            if dict.keys.contains("content") {
                self.content = dict["content"] as! String
            }
            if dict.keys.contains("customerId") {
                self.customerId = dict["customerId"] as! String
            }
            if dict.keys.contains("customerServiceId") {
                self.customerServiceId = dict["customerServiceId"] as! String
            }
            if dict.keys.contains("customerServiceType") {
                self.customerServiceType = dict["customerServiceType"] as! String
            }
            if dict.keys.contains("end") {
                self.end = dict["end"] as! Int32
            }
            if dict.keys.contains("role") {
                self.role = dict["role"] as! Int32
            }
            if dict.keys.contains("type") {
                self.type = dict["type"] as! String
            }
        }
    }
    public var analysis: Bool?

    public var bizType: String?

    public var conversationModel: [RealTimeDialogRequest.ConversationModel]?

    public var dialogMemoryTurns: Int32?

    public var metaData: [String: Any]?

    public var opType: String?

    public var recommend: Bool?

    public var scriptContentPlayed: String?

    public var sessionId: String?

    public var stream: Bool?

    public var userVad: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.analysis != nil {
            map["analysis"] = self.analysis!
        }
        if self.bizType != nil {
            map["bizType"] = self.bizType!
        }
        if self.conversationModel != nil {
            var tmp : [Any] = []
            for k in self.conversationModel! {
                tmp.append(k.toMap())
            }
            map["conversationModel"] = tmp
        }
        if self.dialogMemoryTurns != nil {
            map["dialogMemoryTurns"] = self.dialogMemoryTurns!
        }
        if self.metaData != nil {
            map["metaData"] = self.metaData!
        }
        if self.opType != nil {
            map["opType"] = self.opType!
        }
        if self.recommend != nil {
            map["recommend"] = self.recommend!
        }
        if self.scriptContentPlayed != nil {
            map["scriptContentPlayed"] = self.scriptContentPlayed!
        }
        if self.sessionId != nil {
            map["sessionId"] = self.sessionId!
        }
        if self.stream != nil {
            map["stream"] = self.stream!
        }
        if self.userVad != nil {
            map["userVad"] = self.userVad!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("analysis") {
            self.analysis = dict["analysis"] as! Bool
        }
        if dict.keys.contains("bizType") {
            self.bizType = dict["bizType"] as! String
        }
        if dict.keys.contains("conversationModel") {
            var tmp : [RealTimeDialogRequest.ConversationModel] = []
            for v in dict["conversationModel"] as! [Any] {
                var model = RealTimeDialogRequest.ConversationModel()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.conversationModel = tmp
        }
        if dict.keys.contains("dialogMemoryTurns") {
            self.dialogMemoryTurns = dict["dialogMemoryTurns"] as! Int32
        }
        if dict.keys.contains("metaData") {
            self.metaData = dict["metaData"] as! [String: Any]
        }
        if dict.keys.contains("opType") {
            self.opType = dict["opType"] as! String
        }
        if dict.keys.contains("recommend") {
            self.recommend = dict["recommend"] as! Bool
        }
        if dict.keys.contains("scriptContentPlayed") {
            self.scriptContentPlayed = dict["scriptContentPlayed"] as! String
        }
        if dict.keys.contains("sessionId") {
            self.sessionId = dict["sessionId"] as! String
        }
        if dict.keys.contains("stream") {
            self.stream = dict["stream"] as! Bool
        }
        if dict.keys.contains("userVad") {
            self.userVad = dict["userVad"] as! Bool
        }
    }
}

public class RealTimeDialogResponseBody : Tea.TeaModel {
    public class Choices : Tea.TeaModel {
        public class Delta : Tea.TeaModel {
            public var analysisProcess: String?

            public var callTime: String?

            public var hangUpDialog: Bool?

            public var intentionCode: String?

            public var intentionName: String?

            public var intentionScript: String?

            public var interrupt: Bool?

            public var recommendIntention: String?

            public var recommendScript: String?

            public var selfDirectedScript: String?

            public var selfDirectedScriptFullContent: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.analysisProcess != nil {
                    map["analysisProcess"] = self.analysisProcess!
                }
                if self.callTime != nil {
                    map["callTime"] = self.callTime!
                }
                if self.hangUpDialog != nil {
                    map["hangUpDialog"] = self.hangUpDialog!
                }
                if self.intentionCode != nil {
                    map["intentionCode"] = self.intentionCode!
                }
                if self.intentionName != nil {
                    map["intentionName"] = self.intentionName!
                }
                if self.intentionScript != nil {
                    map["intentionScript"] = self.intentionScript!
                }
                if self.interrupt != nil {
                    map["interrupt"] = self.interrupt!
                }
                if self.recommendIntention != nil {
                    map["recommendIntention"] = self.recommendIntention!
                }
                if self.recommendScript != nil {
                    map["recommendScript"] = self.recommendScript!
                }
                if self.selfDirectedScript != nil {
                    map["selfDirectedScript"] = self.selfDirectedScript!
                }
                if self.selfDirectedScriptFullContent != nil {
                    map["selfDirectedScriptFullContent"] = self.selfDirectedScriptFullContent!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("analysisProcess") {
                    self.analysisProcess = dict["analysisProcess"] as! String
                }
                if dict.keys.contains("callTime") {
                    self.callTime = dict["callTime"] as! String
                }
                if dict.keys.contains("hangUpDialog") {
                    self.hangUpDialog = dict["hangUpDialog"] as! Bool
                }
                if dict.keys.contains("intentionCode") {
                    self.intentionCode = dict["intentionCode"] as! String
                }
                if dict.keys.contains("intentionName") {
                    self.intentionName = dict["intentionName"] as! String
                }
                if dict.keys.contains("intentionScript") {
                    self.intentionScript = dict["intentionScript"] as! String
                }
                if dict.keys.contains("interrupt") {
                    self.interrupt = dict["interrupt"] as! Bool
                }
                if dict.keys.contains("recommendIntention") {
                    self.recommendIntention = dict["recommendIntention"] as! String
                }
                if dict.keys.contains("recommendScript") {
                    self.recommendScript = dict["recommendScript"] as! String
                }
                if dict.keys.contains("selfDirectedScript") {
                    self.selfDirectedScript = dict["selfDirectedScript"] as! String
                }
                if dict.keys.contains("selfDirectedScriptFullContent") {
                    self.selfDirectedScriptFullContent = dict["selfDirectedScriptFullContent"] as! String
                }
            }
        }
        public class Message : Tea.TeaModel {
            public var analysisProcess: String?

            public var callTime: String?

            public var hangUpDialog: Bool?

            public var intentionCode: String?

            public var intentionName: String?

            public var intentionScript: String?

            public var interrupt: Bool?

            public var recommendIntention: String?

            public var recommendScript: String?

            public var selfDirectedScript: String?

            public var selfDirectedScriptFullContent: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.analysisProcess != nil {
                    map["analysisProcess"] = self.analysisProcess!
                }
                if self.callTime != nil {
                    map["callTime"] = self.callTime!
                }
                if self.hangUpDialog != nil {
                    map["hangUpDialog"] = self.hangUpDialog!
                }
                if self.intentionCode != nil {
                    map["intentionCode"] = self.intentionCode!
                }
                if self.intentionName != nil {
                    map["intentionName"] = self.intentionName!
                }
                if self.intentionScript != nil {
                    map["intentionScript"] = self.intentionScript!
                }
                if self.interrupt != nil {
                    map["interrupt"] = self.interrupt!
                }
                if self.recommendIntention != nil {
                    map["recommendIntention"] = self.recommendIntention!
                }
                if self.recommendScript != nil {
                    map["recommendScript"] = self.recommendScript!
                }
                if self.selfDirectedScript != nil {
                    map["selfDirectedScript"] = self.selfDirectedScript!
                }
                if self.selfDirectedScriptFullContent != nil {
                    map["selfDirectedScriptFullContent"] = self.selfDirectedScriptFullContent!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("analysisProcess") {
                    self.analysisProcess = dict["analysisProcess"] as! String
                }
                if dict.keys.contains("callTime") {
                    self.callTime = dict["callTime"] as! String
                }
                if dict.keys.contains("hangUpDialog") {
                    self.hangUpDialog = dict["hangUpDialog"] as! Bool
                }
                if dict.keys.contains("intentionCode") {
                    self.intentionCode = dict["intentionCode"] as! String
                }
                if dict.keys.contains("intentionName") {
                    self.intentionName = dict["intentionName"] as! String
                }
                if dict.keys.contains("intentionScript") {
                    self.intentionScript = dict["intentionScript"] as! String
                }
                if dict.keys.contains("interrupt") {
                    self.interrupt = dict["interrupt"] as! Bool
                }
                if dict.keys.contains("recommendIntention") {
                    self.recommendIntention = dict["recommendIntention"] as! String
                }
                if dict.keys.contains("recommendScript") {
                    self.recommendScript = dict["recommendScript"] as! String
                }
                if dict.keys.contains("selfDirectedScript") {
                    self.selfDirectedScript = dict["selfDirectedScript"] as! String
                }
                if dict.keys.contains("selfDirectedScriptFullContent") {
                    self.selfDirectedScriptFullContent = dict["selfDirectedScriptFullContent"] as! String
                }
            }
        }
        public var delta: RealTimeDialogResponseBody.Choices.Delta?

        public var finishReason: String?

        public var index: Int32?

        public var message: RealTimeDialogResponseBody.Choices.Message?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.delta?.validate()
            try self.message?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.delta != nil {
                map["delta"] = self.delta?.toMap()
            }
            if self.finishReason != nil {
                map["finishReason"] = self.finishReason!
            }
            if self.index != nil {
                map["index"] = self.index!
            }
            if self.message != nil {
                map["message"] = self.message?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("delta") {
                var model = RealTimeDialogResponseBody.Choices.Delta()
                model.fromMap(dict["delta"] as! [String: Any])
                self.delta = model
            }
            if dict.keys.contains("finishReason") {
                self.finishReason = dict["finishReason"] as! String
            }
            if dict.keys.contains("index") {
                self.index = dict["index"] as! Int32
            }
            if dict.keys.contains("message") {
                var model = RealTimeDialogResponseBody.Choices.Message()
                model.fromMap(dict["message"] as! [String: Any])
                self.message = model
            }
        }
    }
    public var choices: [RealTimeDialogResponseBody.Choices]?

    public var created: String?

    public var id: String?

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
        if self.choices != nil {
            var tmp : [Any] = []
            for k in self.choices! {
                tmp.append(k.toMap())
            }
            map["choices"] = tmp
        }
        if self.created != nil {
            map["created"] = self.created!
        }
        if self.id != nil {
            map["id"] = self.id!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("choices") {
            var tmp : [RealTimeDialogResponseBody.Choices] = []
            for v in dict["choices"] as! [Any] {
                var model = RealTimeDialogResponseBody.Choices()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.choices = tmp
        }
        if dict.keys.contains("created") {
            self.created = dict["created"] as! String
        }
        if dict.keys.contains("id") {
            self.id = dict["id"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
    }
}

public class RealTimeDialogResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RealTimeDialogResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RealTimeDialogResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RealtimeDialogAssistRequest : Tea.TeaModel {
    public class ConversationModel : Tea.TeaModel {
        public var content: String?

        public var customerId: String?

        public var customerServiceId: String?

        public var customerServiceType: String?

        public var role: Int32?

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
            if self.content != nil {
                map["content"] = self.content!
            }
            if self.customerId != nil {
                map["customerId"] = self.customerId!
            }
            if self.customerServiceId != nil {
                map["customerServiceId"] = self.customerServiceId!
            }
            if self.customerServiceType != nil {
                map["customerServiceType"] = self.customerServiceType!
            }
            if self.role != nil {
                map["role"] = self.role!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("content") {
                self.content = dict["content"] as! String
            }
            if dict.keys.contains("customerId") {
                self.customerId = dict["customerId"] as! String
            }
            if dict.keys.contains("customerServiceId") {
                self.customerServiceId = dict["customerServiceId"] as! String
            }
            if dict.keys.contains("customerServiceType") {
                self.customerServiceType = dict["customerServiceType"] as! String
            }
            if dict.keys.contains("role") {
                self.role = dict["role"] as! Int32
            }
            if dict.keys.contains("type") {
                self.type = dict["type"] as! String
            }
        }
    }
    public var analysis: Bool?

    public var bizType: String?

    public var conversationModel: [RealtimeDialogAssistRequest.ConversationModel]?

    public var dialogMemoryTurns: Int32?

    public var hangUpDialog: Bool?

    public var metaData: [String: Any]?

    public var requestId: String?

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
        if self.analysis != nil {
            map["analysis"] = self.analysis!
        }
        if self.bizType != nil {
            map["bizType"] = self.bizType!
        }
        if self.conversationModel != nil {
            var tmp : [Any] = []
            for k in self.conversationModel! {
                tmp.append(k.toMap())
            }
            map["conversationModel"] = tmp
        }
        if self.dialogMemoryTurns != nil {
            map["dialogMemoryTurns"] = self.dialogMemoryTurns!
        }
        if self.hangUpDialog != nil {
            map["hangUpDialog"] = self.hangUpDialog!
        }
        if self.metaData != nil {
            map["metaData"] = self.metaData!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.sessionId != nil {
            map["sessionId"] = self.sessionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("analysis") {
            self.analysis = dict["analysis"] as! Bool
        }
        if dict.keys.contains("bizType") {
            self.bizType = dict["bizType"] as! String
        }
        if dict.keys.contains("conversationModel") {
            var tmp : [RealtimeDialogAssistRequest.ConversationModel] = []
            for v in dict["conversationModel"] as! [Any] {
                var model = RealtimeDialogAssistRequest.ConversationModel()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.conversationModel = tmp
        }
        if dict.keys.contains("dialogMemoryTurns") {
            self.dialogMemoryTurns = dict["dialogMemoryTurns"] as! Int32
        }
        if dict.keys.contains("hangUpDialog") {
            self.hangUpDialog = dict["hangUpDialog"] as! Bool
        }
        if dict.keys.contains("metaData") {
            self.metaData = dict["metaData"] as! [String: Any]
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("sessionId") {
            self.sessionId = dict["sessionId"] as! String
        }
    }
}

public class RealtimeDialogAssistResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class AssistScripts : Tea.TeaModel {
            public var assistScript: String?

            public var intentCode: String?

            public var intentLabels: String?

            public var intentName: String?

            public var isDefault: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.assistScript != nil {
                    map["assistScript"] = self.assistScript!
                }
                if self.intentCode != nil {
                    map["intentCode"] = self.intentCode!
                }
                if self.intentLabels != nil {
                    map["intentLabels"] = self.intentLabels!
                }
                if self.intentName != nil {
                    map["intentName"] = self.intentName!
                }
                if self.isDefault != nil {
                    map["isDefault"] = self.isDefault!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("assistScript") {
                    self.assistScript = dict["assistScript"] as! String
                }
                if dict.keys.contains("intentCode") {
                    self.intentCode = dict["intentCode"] as! String
                }
                if dict.keys.contains("intentLabels") {
                    self.intentLabels = dict["intentLabels"] as! String
                }
                if dict.keys.contains("intentName") {
                    self.intentName = dict["intentName"] as! String
                }
                if dict.keys.contains("isDefault") {
                    self.isDefault = dict["isDefault"] as! Bool
                }
            }
        }
        public class AssistSop : Tea.TeaModel {
            public var assistSop: String?

            public var intentCode: String?

            public var intentName: String?

            public var isDefault: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.assistSop != nil {
                    map["assistSop"] = self.assistSop!
                }
                if self.intentCode != nil {
                    map["intentCode"] = self.intentCode!
                }
                if self.intentName != nil {
                    map["intentName"] = self.intentName!
                }
                if self.isDefault != nil {
                    map["isDefault"] = self.isDefault!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("assistSop") {
                    self.assistSop = dict["assistSop"] as! String
                }
                if dict.keys.contains("intentCode") {
                    self.intentCode = dict["intentCode"] as! String
                }
                if dict.keys.contains("intentName") {
                    self.intentName = dict["intentName"] as! String
                }
                if dict.keys.contains("isDefault") {
                    self.isDefault = dict["isDefault"] as! Bool
                }
            }
        }
        public class ConversationModel : Tea.TeaModel {
            public var content: String?

            public var customerId: String?

            public var customerServiceId: String?

            public var customerServiceType: String?

            public var role: String?

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
                if self.content != nil {
                    map["content"] = self.content!
                }
                if self.customerId != nil {
                    map["customerId"] = self.customerId!
                }
                if self.customerServiceId != nil {
                    map["customerServiceId"] = self.customerServiceId!
                }
                if self.customerServiceType != nil {
                    map["customerServiceType"] = self.customerServiceType!
                }
                if self.role != nil {
                    map["role"] = self.role!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("content") {
                    self.content = dict["content"] as! String
                }
                if dict.keys.contains("customerId") {
                    self.customerId = dict["customerId"] as! String
                }
                if dict.keys.contains("customerServiceId") {
                    self.customerServiceId = dict["customerServiceId"] as! String
                }
                if dict.keys.contains("customerServiceType") {
                    self.customerServiceType = dict["customerServiceType"] as! String
                }
                if dict.keys.contains("role") {
                    self.role = dict["role"] as! String
                }
                if dict.keys.contains("type") {
                    self.type = dict["type"] as! String
                }
            }
        }
        public var analysisProcess: String?

        public var assistScripts: [RealtimeDialogAssistResponseBody.Data.AssistScripts]?

        public var assistSop: [RealtimeDialogAssistResponseBody.Data.AssistSop]?

        public var conversationModel: [RealtimeDialogAssistResponseBody.Data.ConversationModel]?

        public var requestId: String?

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
            if self.analysisProcess != nil {
                map["analysisProcess"] = self.analysisProcess!
            }
            if self.assistScripts != nil {
                var tmp : [Any] = []
                for k in self.assistScripts! {
                    tmp.append(k.toMap())
                }
                map["assistScripts"] = tmp
            }
            if self.assistSop != nil {
                var tmp : [Any] = []
                for k in self.assistSop! {
                    tmp.append(k.toMap())
                }
                map["assistSop"] = tmp
            }
            if self.conversationModel != nil {
                var tmp : [Any] = []
                for k in self.conversationModel! {
                    tmp.append(k.toMap())
                }
                map["conversationModel"] = tmp
            }
            if self.requestId != nil {
                map["requestId"] = self.requestId!
            }
            if self.sessionId != nil {
                map["sessionId"] = self.sessionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("analysisProcess") {
                self.analysisProcess = dict["analysisProcess"] as! String
            }
            if dict.keys.contains("assistScripts") {
                var tmp : [RealtimeDialogAssistResponseBody.Data.AssistScripts] = []
                for v in dict["assistScripts"] as! [Any] {
                    var model = RealtimeDialogAssistResponseBody.Data.AssistScripts()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.assistScripts = tmp
            }
            if dict.keys.contains("assistSop") {
                var tmp : [RealtimeDialogAssistResponseBody.Data.AssistSop] = []
                for v in dict["assistSop"] as! [Any] {
                    var model = RealtimeDialogAssistResponseBody.Data.AssistSop()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.assistSop = tmp
            }
            if dict.keys.contains("conversationModel") {
                var tmp : [RealtimeDialogAssistResponseBody.Data.ConversationModel] = []
                for v in dict["conversationModel"] as! [Any] {
                    var model = RealtimeDialogAssistResponseBody.Data.ConversationModel()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.conversationModel = tmp
            }
            if dict.keys.contains("requestId") {
                self.requestId = dict["requestId"] as! String
            }
            if dict.keys.contains("sessionId") {
                self.sessionId = dict["sessionId"] as! String
            }
        }
    }
    public var cost: Int64?

    public var data: RealtimeDialogAssistResponseBody.Data?

    public var dataType: String?

    public var errCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var time: String?

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
        if self.cost != nil {
            map["cost"] = self.cost!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.dataType != nil {
            map["dataType"] = self.dataType!
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.time != nil {
            map["time"] = self.time!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("cost") {
            self.cost = dict["cost"] as! Int64
        }
        if dict.keys.contains("data") {
            var model = RealtimeDialogAssistResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("dataType") {
            self.dataType = dict["dataType"] as! String
        }
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("time") {
            self.time = dict["time"] as! String
        }
    }
}

public class RealtimeDialogAssistResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RealtimeDialogAssistResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RealtimeDialogAssistResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RebuildTaskRequest : Tea.TeaModel {
    public var taskIds: [String]?

    public override init() {
        super.init()
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("taskIds") {
            self.taskIds = dict["taskIds"] as! [String]
        }
    }
}

public class RebuildTaskResponseBody : Tea.TeaModel {
    public var cost: Int64?

    public var data: [[String: Any]]?

    public var dataType: String?

    public var errCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var time: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cost != nil {
            map["cost"] = self.cost!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.dataType != nil {
            map["dataType"] = self.dataType!
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.time != nil {
            map["time"] = self.time!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("cost") {
            self.cost = dict["cost"] as! Int64
        }
        if dict.keys.contains("data") {
            self.data = dict["data"] as! [[String: Any]]
        }
        if dict.keys.contains("dataType") {
            self.dataType = dict["dataType"] as! String
        }
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("time") {
            self.time = dict["time"] as! String
        }
    }
}

public class RebuildTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RebuildTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RebuildTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RecallDocumentRequest : Tea.TeaModel {
    public class Filters : Tea.TeaModel {
        public class And : Tea.TeaModel {
            public var boost: Double?

            public var key: String?

            public var operator_: String?

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
                if self.boost != nil {
                    map["boost"] = self.boost!
                }
                if self.key != nil {
                    map["key"] = self.key!
                }
                if self.operator_ != nil {
                    map["operator"] = self.operator_!
                }
                if self.value != nil {
                    map["value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("boost") {
                    self.boost = dict["boost"] as! Double
                }
                if dict.keys.contains("key") {
                    self.key = dict["key"] as! String
                }
                if dict.keys.contains("operator") {
                    self.operator_ = dict["operator"] as! String
                }
                if dict.keys.contains("value") {
                    self.value = dict["value"] as! String
                }
            }
        }
        public class Or : Tea.TeaModel {
            public var boost: Double?

            public var key: String?

            public var operator_: String?

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
                if self.boost != nil {
                    map["boost"] = self.boost!
                }
                if self.key != nil {
                    map["key"] = self.key!
                }
                if self.operator_ != nil {
                    map["operator"] = self.operator_!
                }
                if self.value != nil {
                    map["value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("boost") {
                    self.boost = dict["boost"] as! Double
                }
                if dict.keys.contains("key") {
                    self.key = dict["key"] as! String
                }
                if dict.keys.contains("operator") {
                    self.operator_ = dict["operator"] as! String
                }
                if dict.keys.contains("value") {
                    self.value = dict["value"] as! String
                }
            }
        }
        public var and: [RecallDocumentRequest.Filters.And]?

        public var chunkType: String?

        public var docIdList: [String]?

        public var libraryId: String?

        public var or: [RecallDocumentRequest.Filters.Or]?

        public var status: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.and != nil {
                var tmp : [Any] = []
                for k in self.and! {
                    tmp.append(k.toMap())
                }
                map["and"] = tmp
            }
            if self.chunkType != nil {
                map["chunkType"] = self.chunkType!
            }
            if self.docIdList != nil {
                map["docIdList"] = self.docIdList!
            }
            if self.libraryId != nil {
                map["libraryId"] = self.libraryId!
            }
            if self.or != nil {
                var tmp : [Any] = []
                for k in self.or! {
                    tmp.append(k.toMap())
                }
                map["or"] = tmp
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("and") {
                var tmp : [RecallDocumentRequest.Filters.And] = []
                for v in dict["and"] as! [Any] {
                    var model = RecallDocumentRequest.Filters.And()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.and = tmp
            }
            if dict.keys.contains("chunkType") {
                self.chunkType = dict["chunkType"] as! String
            }
            if dict.keys.contains("docIdList") {
                self.docIdList = dict["docIdList"] as! [String]
            }
            if dict.keys.contains("libraryId") {
                self.libraryId = dict["libraryId"] as! String
            }
            if dict.keys.contains("or") {
                var tmp : [RecallDocumentRequest.Filters.Or] = []
                for v in dict["or"] as! [Any] {
                    var model = RecallDocumentRequest.Filters.Or()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.or = tmp
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! [String]
            }
        }
    }
    public var filters: [RecallDocumentRequest.Filters]?

    public var query: String?

    public var rearrangement: Bool?

    public var topK: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.filters != nil {
            var tmp : [Any] = []
            for k in self.filters! {
                tmp.append(k.toMap())
            }
            map["filters"] = tmp
        }
        if self.query != nil {
            map["query"] = self.query!
        }
        if self.rearrangement != nil {
            map["rearrangement"] = self.rearrangement!
        }
        if self.topK != nil {
            map["topK"] = self.topK!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("filters") {
            var tmp : [RecallDocumentRequest.Filters] = []
            for v in dict["filters"] as! [Any] {
                var model = RecallDocumentRequest.Filters()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.filters = tmp
        }
        if dict.keys.contains("query") {
            self.query = dict["query"] as! String
        }
        if dict.keys.contains("rearrangement") {
            self.rearrangement = dict["rearrangement"] as! Bool
        }
        if dict.keys.contains("topK") {
            self.topK = dict["topK"] as! Int32
        }
    }
}

public class RecallDocumentResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ChunkList : Tea.TeaModel {
            public class Pos : Tea.TeaModel {
                public var axisArray: [Double]?

                public var page: Int32?

                public var textHighlightArea: [Int32]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.axisArray != nil {
                        map["axisArray"] = self.axisArray!
                    }
                    if self.page != nil {
                        map["page"] = self.page!
                    }
                    if self.textHighlightArea != nil {
                        map["textHighlightArea"] = self.textHighlightArea!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("axisArray") {
                        self.axisArray = dict["axisArray"] as! [Double]
                    }
                    if dict.keys.contains("page") {
                        self.page = dict["page"] as! Int32
                    }
                    if dict.keys.contains("textHighlightArea") {
                        self.textHighlightArea = dict["textHighlightArea"] as! [Int32]
                    }
                }
            }
            public var chunkId: String?

            public var chunkMeta: [String: Any]?

            public var chunkOssUrl: String?

            public var chunkText: String?

            public var chunkType: String?

            public var docId: String?

            public var fileType: String?

            public var libraryId: String?

            public var libraryName: String?

            public var nextChunkId: String?

            public var pos: [RecallDocumentResponseBody.Data.ChunkList.Pos]?

            public var preChunkId: String?

            public var score: Double?

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
                if self.chunkId != nil {
                    map["chunkId"] = self.chunkId!
                }
                if self.chunkMeta != nil {
                    map["chunkMeta"] = self.chunkMeta!
                }
                if self.chunkOssUrl != nil {
                    map["chunkOssUrl"] = self.chunkOssUrl!
                }
                if self.chunkText != nil {
                    map["chunkText"] = self.chunkText!
                }
                if self.chunkType != nil {
                    map["chunkType"] = self.chunkType!
                }
                if self.docId != nil {
                    map["docId"] = self.docId!
                }
                if self.fileType != nil {
                    map["fileType"] = self.fileType!
                }
                if self.libraryId != nil {
                    map["libraryId"] = self.libraryId!
                }
                if self.libraryName != nil {
                    map["libraryName"] = self.libraryName!
                }
                if self.nextChunkId != nil {
                    map["nextChunkId"] = self.nextChunkId!
                }
                if self.pos != nil {
                    var tmp : [Any] = []
                    for k in self.pos! {
                        tmp.append(k.toMap())
                    }
                    map["pos"] = tmp
                }
                if self.preChunkId != nil {
                    map["preChunkId"] = self.preChunkId!
                }
                if self.score != nil {
                    map["score"] = self.score!
                }
                if self.title != nil {
                    map["title"] = self.title!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("chunkId") {
                    self.chunkId = dict["chunkId"] as! String
                }
                if dict.keys.contains("chunkMeta") {
                    self.chunkMeta = dict["chunkMeta"] as! [String: Any]
                }
                if dict.keys.contains("chunkOssUrl") {
                    self.chunkOssUrl = dict["chunkOssUrl"] as! String
                }
                if dict.keys.contains("chunkText") {
                    self.chunkText = dict["chunkText"] as! String
                }
                if dict.keys.contains("chunkType") {
                    self.chunkType = dict["chunkType"] as! String
                }
                if dict.keys.contains("docId") {
                    self.docId = dict["docId"] as! String
                }
                if dict.keys.contains("fileType") {
                    self.fileType = dict["fileType"] as! String
                }
                if dict.keys.contains("libraryId") {
                    self.libraryId = dict["libraryId"] as! String
                }
                if dict.keys.contains("libraryName") {
                    self.libraryName = dict["libraryName"] as! String
                }
                if dict.keys.contains("nextChunkId") {
                    self.nextChunkId = dict["nextChunkId"] as! String
                }
                if dict.keys.contains("pos") {
                    var tmp : [RecallDocumentResponseBody.Data.ChunkList.Pos] = []
                    for v in dict["pos"] as! [Any] {
                        var model = RecallDocumentResponseBody.Data.ChunkList.Pos()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.pos = tmp
                }
                if dict.keys.contains("preChunkId") {
                    self.preChunkId = dict["preChunkId"] as! String
                }
                if dict.keys.contains("score") {
                    self.score = dict["score"] as! Double
                }
                if dict.keys.contains("title") {
                    self.title = dict["title"] as! String
                }
            }
        }
        public class ChunkPartList : Tea.TeaModel {
            public class Pos : Tea.TeaModel {
                public var axisArray: [Double]?

                public var page: Int32?

                public var textHighlightArea: [Int32]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.axisArray != nil {
                        map["axisArray"] = self.axisArray!
                    }
                    if self.page != nil {
                        map["page"] = self.page!
                    }
                    if self.textHighlightArea != nil {
                        map["textHighlightArea"] = self.textHighlightArea!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("axisArray") {
                        self.axisArray = dict["axisArray"] as! [Double]
                    }
                    if dict.keys.contains("page") {
                        self.page = dict["page"] as! Int32
                    }
                    if dict.keys.contains("textHighlightArea") {
                        self.textHighlightArea = dict["textHighlightArea"] as! [Int32]
                    }
                }
            }
            public var chunkId: String?

            public var chunkMeta: [String: Any]?

            public var chunkOssUrl: String?

            public var chunkText: String?

            public var chunkType: String?

            public var docId: String?

            public var fileType: String?

            public var libraryId: String?

            public var libraryName: String?

            public var nextChunkId: String?

            public var pos: [RecallDocumentResponseBody.Data.ChunkPartList.Pos]?

            public var preChunkId: String?

            public var score: Double?

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
                if self.chunkId != nil {
                    map["chunkId"] = self.chunkId!
                }
                if self.chunkMeta != nil {
                    map["chunkMeta"] = self.chunkMeta!
                }
                if self.chunkOssUrl != nil {
                    map["chunkOssUrl"] = self.chunkOssUrl!
                }
                if self.chunkText != nil {
                    map["chunkText"] = self.chunkText!
                }
                if self.chunkType != nil {
                    map["chunkType"] = self.chunkType!
                }
                if self.docId != nil {
                    map["docId"] = self.docId!
                }
                if self.fileType != nil {
                    map["fileType"] = self.fileType!
                }
                if self.libraryId != nil {
                    map["libraryId"] = self.libraryId!
                }
                if self.libraryName != nil {
                    map["libraryName"] = self.libraryName!
                }
                if self.nextChunkId != nil {
                    map["nextChunkId"] = self.nextChunkId!
                }
                if self.pos != nil {
                    var tmp : [Any] = []
                    for k in self.pos! {
                        tmp.append(k.toMap())
                    }
                    map["pos"] = tmp
                }
                if self.preChunkId != nil {
                    map["preChunkId"] = self.preChunkId!
                }
                if self.score != nil {
                    map["score"] = self.score!
                }
                if self.title != nil {
                    map["title"] = self.title!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("chunkId") {
                    self.chunkId = dict["chunkId"] as! String
                }
                if dict.keys.contains("chunkMeta") {
                    self.chunkMeta = dict["chunkMeta"] as! [String: Any]
                }
                if dict.keys.contains("chunkOssUrl") {
                    self.chunkOssUrl = dict["chunkOssUrl"] as! String
                }
                if dict.keys.contains("chunkText") {
                    self.chunkText = dict["chunkText"] as! String
                }
                if dict.keys.contains("chunkType") {
                    self.chunkType = dict["chunkType"] as! String
                }
                if dict.keys.contains("docId") {
                    self.docId = dict["docId"] as! String
                }
                if dict.keys.contains("fileType") {
                    self.fileType = dict["fileType"] as! String
                }
                if dict.keys.contains("libraryId") {
                    self.libraryId = dict["libraryId"] as! String
                }
                if dict.keys.contains("libraryName") {
                    self.libraryName = dict["libraryName"] as! String
                }
                if dict.keys.contains("nextChunkId") {
                    self.nextChunkId = dict["nextChunkId"] as! String
                }
                if dict.keys.contains("pos") {
                    var tmp : [RecallDocumentResponseBody.Data.ChunkPartList.Pos] = []
                    for v in dict["pos"] as! [Any] {
                        var model = RecallDocumentResponseBody.Data.ChunkPartList.Pos()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.pos = tmp
                }
                if dict.keys.contains("preChunkId") {
                    self.preChunkId = dict["preChunkId"] as! String
                }
                if dict.keys.contains("score") {
                    self.score = dict["score"] as! Double
                }
                if dict.keys.contains("title") {
                    self.title = dict["title"] as! String
                }
            }
        }
        public class Documents : Tea.TeaModel {
            public var docId: String?

            public var documentMeta: [String: Any]?

            public var fileType: String?

            public var gmtCreate: String?

            public var libraryId: String?

            public var title: String?

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
                if self.docId != nil {
                    map["docId"] = self.docId!
                }
                if self.documentMeta != nil {
                    map["documentMeta"] = self.documentMeta!
                }
                if self.fileType != nil {
                    map["fileType"] = self.fileType!
                }
                if self.gmtCreate != nil {
                    map["gmtCreate"] = self.gmtCreate!
                }
                if self.libraryId != nil {
                    map["libraryId"] = self.libraryId!
                }
                if self.title != nil {
                    map["title"] = self.title!
                }
                if self.url != nil {
                    map["url"] = self.url!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("docId") {
                    self.docId = dict["docId"] as! String
                }
                if dict.keys.contains("documentMeta") {
                    self.documentMeta = dict["documentMeta"] as! [String: Any]
                }
                if dict.keys.contains("fileType") {
                    self.fileType = dict["fileType"] as! String
                }
                if dict.keys.contains("gmtCreate") {
                    self.gmtCreate = dict["gmtCreate"] as! String
                }
                if dict.keys.contains("libraryId") {
                    self.libraryId = dict["libraryId"] as! String
                }
                if dict.keys.contains("title") {
                    self.title = dict["title"] as! String
                }
                if dict.keys.contains("url") {
                    self.url = dict["url"] as! String
                }
            }
        }
        public class TextChunkList : Tea.TeaModel {
            public class Pos : Tea.TeaModel {
                public var axisArray: [Double]?

                public var page: Int32?

                public var textHighlightArea: [Int32]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.axisArray != nil {
                        map["axisArray"] = self.axisArray!
                    }
                    if self.page != nil {
                        map["page"] = self.page!
                    }
                    if self.textHighlightArea != nil {
                        map["textHighlightArea"] = self.textHighlightArea!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("axisArray") {
                        self.axisArray = dict["axisArray"] as! [Double]
                    }
                    if dict.keys.contains("page") {
                        self.page = dict["page"] as! Int32
                    }
                    if dict.keys.contains("textHighlightArea") {
                        self.textHighlightArea = dict["textHighlightArea"] as! [Int32]
                    }
                }
            }
            public var chunkId: String?

            public var chunkMeta: [String: Any]?

            public var chunkOssUrl: String?

            public var chunkText: String?

            public var chunkType: String?

            public var docId: String?

            public var fileType: String?

            public var libraryId: String?

            public var libraryName: String?

            public var nextChunkId: String?

            public var pos: [RecallDocumentResponseBody.Data.TextChunkList.Pos]?

            public var preChunkId: String?

            public var score: Double?

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
                if self.chunkId != nil {
                    map["chunkId"] = self.chunkId!
                }
                if self.chunkMeta != nil {
                    map["chunkMeta"] = self.chunkMeta!
                }
                if self.chunkOssUrl != nil {
                    map["chunkOssUrl"] = self.chunkOssUrl!
                }
                if self.chunkText != nil {
                    map["chunkText"] = self.chunkText!
                }
                if self.chunkType != nil {
                    map["chunkType"] = self.chunkType!
                }
                if self.docId != nil {
                    map["docId"] = self.docId!
                }
                if self.fileType != nil {
                    map["fileType"] = self.fileType!
                }
                if self.libraryId != nil {
                    map["libraryId"] = self.libraryId!
                }
                if self.libraryName != nil {
                    map["libraryName"] = self.libraryName!
                }
                if self.nextChunkId != nil {
                    map["nextChunkId"] = self.nextChunkId!
                }
                if self.pos != nil {
                    var tmp : [Any] = []
                    for k in self.pos! {
                        tmp.append(k.toMap())
                    }
                    map["pos"] = tmp
                }
                if self.preChunkId != nil {
                    map["preChunkId"] = self.preChunkId!
                }
                if self.score != nil {
                    map["score"] = self.score!
                }
                if self.title != nil {
                    map["title"] = self.title!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("chunkId") {
                    self.chunkId = dict["chunkId"] as! String
                }
                if dict.keys.contains("chunkMeta") {
                    self.chunkMeta = dict["chunkMeta"] as! [String: Any]
                }
                if dict.keys.contains("chunkOssUrl") {
                    self.chunkOssUrl = dict["chunkOssUrl"] as! String
                }
                if dict.keys.contains("chunkText") {
                    self.chunkText = dict["chunkText"] as! String
                }
                if dict.keys.contains("chunkType") {
                    self.chunkType = dict["chunkType"] as! String
                }
                if dict.keys.contains("docId") {
                    self.docId = dict["docId"] as! String
                }
                if dict.keys.contains("fileType") {
                    self.fileType = dict["fileType"] as! String
                }
                if dict.keys.contains("libraryId") {
                    self.libraryId = dict["libraryId"] as! String
                }
                if dict.keys.contains("libraryName") {
                    self.libraryName = dict["libraryName"] as! String
                }
                if dict.keys.contains("nextChunkId") {
                    self.nextChunkId = dict["nextChunkId"] as! String
                }
                if dict.keys.contains("pos") {
                    var tmp : [RecallDocumentResponseBody.Data.TextChunkList.Pos] = []
                    for v in dict["pos"] as! [Any] {
                        var model = RecallDocumentResponseBody.Data.TextChunkList.Pos()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.pos = tmp
                }
                if dict.keys.contains("preChunkId") {
                    self.preChunkId = dict["preChunkId"] as! String
                }
                if dict.keys.contains("score") {
                    self.score = dict["score"] as! Double
                }
                if dict.keys.contains("title") {
                    self.title = dict["title"] as! String
                }
            }
        }
        public class VectorChunkList : Tea.TeaModel {
            public class Pos : Tea.TeaModel {
                public var axisArray: [Double]?

                public var page: Int32?

                public var textHighlightArea: [Int32]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.axisArray != nil {
                        map["axisArray"] = self.axisArray!
                    }
                    if self.page != nil {
                        map["page"] = self.page!
                    }
                    if self.textHighlightArea != nil {
                        map["textHighlightArea"] = self.textHighlightArea!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("axisArray") {
                        self.axisArray = dict["axisArray"] as! [Double]
                    }
                    if dict.keys.contains("page") {
                        self.page = dict["page"] as! Int32
                    }
                    if dict.keys.contains("textHighlightArea") {
                        self.textHighlightArea = dict["textHighlightArea"] as! [Int32]
                    }
                }
            }
            public var chunkId: String?

            public var chunkMeta: [String: Any]?

            public var chunkOssUrl: String?

            public var chunkText: String?

            public var chunkType: String?

            public var docId: String?

            public var fileType: String?

            public var libraryId: String?

            public var libraryName: String?

            public var nextChunkId: String?

            public var pos: [RecallDocumentResponseBody.Data.VectorChunkList.Pos]?

            public var preChunkId: String?

            public var score: Double?

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
                if self.chunkId != nil {
                    map["chunkId"] = self.chunkId!
                }
                if self.chunkMeta != nil {
                    map["chunkMeta"] = self.chunkMeta!
                }
                if self.chunkOssUrl != nil {
                    map["chunkOssUrl"] = self.chunkOssUrl!
                }
                if self.chunkText != nil {
                    map["chunkText"] = self.chunkText!
                }
                if self.chunkType != nil {
                    map["chunkType"] = self.chunkType!
                }
                if self.docId != nil {
                    map["docId"] = self.docId!
                }
                if self.fileType != nil {
                    map["fileType"] = self.fileType!
                }
                if self.libraryId != nil {
                    map["libraryId"] = self.libraryId!
                }
                if self.libraryName != nil {
                    map["libraryName"] = self.libraryName!
                }
                if self.nextChunkId != nil {
                    map["nextChunkId"] = self.nextChunkId!
                }
                if self.pos != nil {
                    var tmp : [Any] = []
                    for k in self.pos! {
                        tmp.append(k.toMap())
                    }
                    map["pos"] = tmp
                }
                if self.preChunkId != nil {
                    map["preChunkId"] = self.preChunkId!
                }
                if self.score != nil {
                    map["score"] = self.score!
                }
                if self.title != nil {
                    map["title"] = self.title!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("chunkId") {
                    self.chunkId = dict["chunkId"] as! String
                }
                if dict.keys.contains("chunkMeta") {
                    self.chunkMeta = dict["chunkMeta"] as! [String: Any]
                }
                if dict.keys.contains("chunkOssUrl") {
                    self.chunkOssUrl = dict["chunkOssUrl"] as! String
                }
                if dict.keys.contains("chunkText") {
                    self.chunkText = dict["chunkText"] as! String
                }
                if dict.keys.contains("chunkType") {
                    self.chunkType = dict["chunkType"] as! String
                }
                if dict.keys.contains("docId") {
                    self.docId = dict["docId"] as! String
                }
                if dict.keys.contains("fileType") {
                    self.fileType = dict["fileType"] as! String
                }
                if dict.keys.contains("libraryId") {
                    self.libraryId = dict["libraryId"] as! String
                }
                if dict.keys.contains("libraryName") {
                    self.libraryName = dict["libraryName"] as! String
                }
                if dict.keys.contains("nextChunkId") {
                    self.nextChunkId = dict["nextChunkId"] as! String
                }
                if dict.keys.contains("pos") {
                    var tmp : [RecallDocumentResponseBody.Data.VectorChunkList.Pos] = []
                    for v in dict["pos"] as! [Any] {
                        var model = RecallDocumentResponseBody.Data.VectorChunkList.Pos()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.pos = tmp
                }
                if dict.keys.contains("preChunkId") {
                    self.preChunkId = dict["preChunkId"] as! String
                }
                if dict.keys.contains("score") {
                    self.score = dict["score"] as! Double
                }
                if dict.keys.contains("title") {
                    self.title = dict["title"] as! String
                }
            }
        }
        public var chunkList: [RecallDocumentResponseBody.Data.ChunkList]?

        public var chunkPartList: [RecallDocumentResponseBody.Data.ChunkPartList]?

        public var chunkTextList: [String]?

        public var documents: [RecallDocumentResponseBody.Data.Documents]?

        public var embeddingElapsedMs: Int64?

        public var textChunkList: [RecallDocumentResponseBody.Data.TextChunkList]?

        public var textSearchElapsedMs: Int64?

        public var totalElapsedMs: Int64?

        public var vectorChunkList: [RecallDocumentResponseBody.Data.VectorChunkList]?

        public var vectorSearchElapsedMs: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.chunkList != nil {
                var tmp : [Any] = []
                for k in self.chunkList! {
                    tmp.append(k.toMap())
                }
                map["chunkList"] = tmp
            }
            if self.chunkPartList != nil {
                var tmp : [Any] = []
                for k in self.chunkPartList! {
                    tmp.append(k.toMap())
                }
                map["chunkPartList"] = tmp
            }
            if self.chunkTextList != nil {
                map["chunkTextList"] = self.chunkTextList!
            }
            if self.documents != nil {
                var tmp : [Any] = []
                for k in self.documents! {
                    tmp.append(k.toMap())
                }
                map["documents"] = tmp
            }
            if self.embeddingElapsedMs != nil {
                map["embeddingElapsedMs"] = self.embeddingElapsedMs!
            }
            if self.textChunkList != nil {
                var tmp : [Any] = []
                for k in self.textChunkList! {
                    tmp.append(k.toMap())
                }
                map["textChunkList"] = tmp
            }
            if self.textSearchElapsedMs != nil {
                map["textSearchElapsedMs"] = self.textSearchElapsedMs!
            }
            if self.totalElapsedMs != nil {
                map["totalElapsedMs"] = self.totalElapsedMs!
            }
            if self.vectorChunkList != nil {
                var tmp : [Any] = []
                for k in self.vectorChunkList! {
                    tmp.append(k.toMap())
                }
                map["vectorChunkList"] = tmp
            }
            if self.vectorSearchElapsedMs != nil {
                map["vectorSearchElapsedMs"] = self.vectorSearchElapsedMs!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("chunkList") {
                var tmp : [RecallDocumentResponseBody.Data.ChunkList] = []
                for v in dict["chunkList"] as! [Any] {
                    var model = RecallDocumentResponseBody.Data.ChunkList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.chunkList = tmp
            }
            if dict.keys.contains("chunkPartList") {
                var tmp : [RecallDocumentResponseBody.Data.ChunkPartList] = []
                for v in dict["chunkPartList"] as! [Any] {
                    var model = RecallDocumentResponseBody.Data.ChunkPartList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.chunkPartList = tmp
            }
            if dict.keys.contains("chunkTextList") {
                self.chunkTextList = dict["chunkTextList"] as! [String]
            }
            if dict.keys.contains("documents") {
                var tmp : [RecallDocumentResponseBody.Data.Documents] = []
                for v in dict["documents"] as! [Any] {
                    var model = RecallDocumentResponseBody.Data.Documents()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.documents = tmp
            }
            if dict.keys.contains("embeddingElapsedMs") {
                self.embeddingElapsedMs = dict["embeddingElapsedMs"] as! Int64
            }
            if dict.keys.contains("textChunkList") {
                var tmp : [RecallDocumentResponseBody.Data.TextChunkList] = []
                for v in dict["textChunkList"] as! [Any] {
                    var model = RecallDocumentResponseBody.Data.TextChunkList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.textChunkList = tmp
            }
            if dict.keys.contains("textSearchElapsedMs") {
                self.textSearchElapsedMs = dict["textSearchElapsedMs"] as! Int64
            }
            if dict.keys.contains("totalElapsedMs") {
                self.totalElapsedMs = dict["totalElapsedMs"] as! Int64
            }
            if dict.keys.contains("vectorChunkList") {
                var tmp : [RecallDocumentResponseBody.Data.VectorChunkList] = []
                for v in dict["vectorChunkList"] as! [Any] {
                    var model = RecallDocumentResponseBody.Data.VectorChunkList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.vectorChunkList = tmp
            }
            if dict.keys.contains("vectorSearchElapsedMs") {
                self.vectorSearchElapsedMs = dict["vectorSearchElapsedMs"] as! Int64
            }
        }
    }
    public var cost: Int64?

    public var data: RecallDocumentResponseBody.Data?

    public var dataType: String?

    public var errCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var time: String?

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
        if self.cost != nil {
            map["cost"] = self.cost!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.dataType != nil {
            map["dataType"] = self.dataType!
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.time != nil {
            map["time"] = self.time!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("cost") {
            self.cost = dict["cost"] as! Int64
        }
        if dict.keys.contains("data") {
            var model = RecallDocumentResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("dataType") {
            self.dataType = dict["dataType"] as! String
        }
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("time") {
            self.time = dict["time"] as! String
        }
    }
}

public class RecallDocumentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecallDocumentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RecallDocumentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RecognizeIntentionRequest : Tea.TeaModel {
    public class GlobalIntentionList : Tea.TeaModel {
        public var description_: String?

        public var intention: String?

        public var intentionCode: String?

        public var intentionScript: String?

        public override init() {
            super.init()
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
                map["description"] = self.description_!
            }
            if self.intention != nil {
                map["intention"] = self.intention!
            }
            if self.intentionCode != nil {
                map["intentionCode"] = self.intentionCode!
            }
            if self.intentionScript != nil {
                map["intentionScript"] = self.intentionScript!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("intention") {
                self.intention = dict["intention"] as! String
            }
            if dict.keys.contains("intentionCode") {
                self.intentionCode = dict["intentionCode"] as! String
            }
            if dict.keys.contains("intentionScript") {
                self.intentionScript = dict["intentionScript"] as! String
            }
        }
    }
    public class HierarchicalIntentionList : Tea.TeaModel {
        public var description_: String?

        public var intention: String?

        public var intentionCode: String?

        public var intentionScript: String?

        public override init() {
            super.init()
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
                map["description"] = self.description_!
            }
            if self.intention != nil {
                map["intention"] = self.intention!
            }
            if self.intentionCode != nil {
                map["intentionCode"] = self.intentionCode!
            }
            if self.intentionScript != nil {
                map["intentionScript"] = self.intentionScript!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("intention") {
                self.intention = dict["intention"] as! String
            }
            if dict.keys.contains("intentionCode") {
                self.intentionCode = dict["intentionCode"] as! String
            }
            if dict.keys.contains("intentionScript") {
                self.intentionScript = dict["intentionScript"] as! String
            }
        }
    }
    public class IntentionList : Tea.TeaModel {
        public var description_: String?

        public var intention: String?

        public var intentionCode: String?

        public var intentionScript: String?

        public override init() {
            super.init()
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
                map["description"] = self.description_!
            }
            if self.intention != nil {
                map["intention"] = self.intention!
            }
            if self.intentionCode != nil {
                map["intentionCode"] = self.intentionCode!
            }
            if self.intentionScript != nil {
                map["intentionScript"] = self.intentionScript!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("intention") {
                self.intention = dict["intention"] as! String
            }
            if dict.keys.contains("intentionCode") {
                self.intentionCode = dict["intentionCode"] as! String
            }
            if dict.keys.contains("intentionScript") {
                self.intentionScript = dict["intentionScript"] as! String
            }
        }
    }
    public var analysis: Bool?

    public var bizType: String?

    public var conversation: String?

    public var globalIntentionList: [RecognizeIntentionRequest.GlobalIntentionList]?

    public var hierarchicalIntentionList: [RecognizeIntentionRequest.HierarchicalIntentionList]?

    public var intentionDomainCode: String?

    public var intentionList: [RecognizeIntentionRequest.IntentionList]?

    public var opType: String?

    public var recommend: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.analysis != nil {
            map["analysis"] = self.analysis!
        }
        if self.bizType != nil {
            map["bizType"] = self.bizType!
        }
        if self.conversation != nil {
            map["conversation"] = self.conversation!
        }
        if self.globalIntentionList != nil {
            var tmp : [Any] = []
            for k in self.globalIntentionList! {
                tmp.append(k.toMap())
            }
            map["globalIntentionList"] = tmp
        }
        if self.hierarchicalIntentionList != nil {
            var tmp : [Any] = []
            for k in self.hierarchicalIntentionList! {
                tmp.append(k.toMap())
            }
            map["hierarchicalIntentionList"] = tmp
        }
        if self.intentionDomainCode != nil {
            map["intentionDomainCode"] = self.intentionDomainCode!
        }
        if self.intentionList != nil {
            var tmp : [Any] = []
            for k in self.intentionList! {
                tmp.append(k.toMap())
            }
            map["intentionList"] = tmp
        }
        if self.opType != nil {
            map["opType"] = self.opType!
        }
        if self.recommend != nil {
            map["recommend"] = self.recommend!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("analysis") {
            self.analysis = dict["analysis"] as! Bool
        }
        if dict.keys.contains("bizType") {
            self.bizType = dict["bizType"] as! String
        }
        if dict.keys.contains("conversation") {
            self.conversation = dict["conversation"] as! String
        }
        if dict.keys.contains("globalIntentionList") {
            var tmp : [RecognizeIntentionRequest.GlobalIntentionList] = []
            for v in dict["globalIntentionList"] as! [Any] {
                var model = RecognizeIntentionRequest.GlobalIntentionList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.globalIntentionList = tmp
        }
        if dict.keys.contains("hierarchicalIntentionList") {
            var tmp : [RecognizeIntentionRequest.HierarchicalIntentionList] = []
            for v in dict["hierarchicalIntentionList"] as! [Any] {
                var model = RecognizeIntentionRequest.HierarchicalIntentionList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.hierarchicalIntentionList = tmp
        }
        if dict.keys.contains("intentionDomainCode") {
            self.intentionDomainCode = dict["intentionDomainCode"] as! String
        }
        if dict.keys.contains("intentionList") {
            var tmp : [RecognizeIntentionRequest.IntentionList] = []
            for v in dict["intentionList"] as! [Any] {
                var model = RecognizeIntentionRequest.IntentionList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.intentionList = tmp
        }
        if dict.keys.contains("opType") {
            self.opType = dict["opType"] as! String
        }
        if dict.keys.contains("recommend") {
            self.recommend = dict["recommend"] as! Bool
        }
    }
}

public class RecognizeIntentionResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var analysisProcess: String?

        public var intentionCode: String?

        public var intentionName: String?

        public var intentionScript: String?

        public var recommendIntention: String?

        public var recommendScript: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.analysisProcess != nil {
                map["analysisProcess"] = self.analysisProcess!
            }
            if self.intentionCode != nil {
                map["intentionCode"] = self.intentionCode!
            }
            if self.intentionName != nil {
                map["intentionName"] = self.intentionName!
            }
            if self.intentionScript != nil {
                map["intentionScript"] = self.intentionScript!
            }
            if self.recommendIntention != nil {
                map["recommendIntention"] = self.recommendIntention!
            }
            if self.recommendScript != nil {
                map["recommendScript"] = self.recommendScript!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("analysisProcess") {
                self.analysisProcess = dict["analysisProcess"] as! String
            }
            if dict.keys.contains("intentionCode") {
                self.intentionCode = dict["intentionCode"] as! String
            }
            if dict.keys.contains("intentionName") {
                self.intentionName = dict["intentionName"] as! String
            }
            if dict.keys.contains("intentionScript") {
                self.intentionScript = dict["intentionScript"] as! String
            }
            if dict.keys.contains("recommendIntention") {
                self.recommendIntention = dict["recommendIntention"] as! String
            }
            if dict.keys.contains("recommendScript") {
                self.recommendScript = dict["recommendScript"] as! String
            }
        }
    }
    public var cost: Int64?

    public var data: RecognizeIntentionResponseBody.Data?

    public var dataType: String?

    public var errCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var time: String?

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
        if self.cost != nil {
            map["cost"] = self.cost!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.dataType != nil {
            map["dataType"] = self.dataType!
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.time != nil {
            map["time"] = self.time!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("cost") {
            self.cost = dict["cost"] as! Int64
        }
        if dict.keys.contains("data") {
            var model = RecognizeIntentionResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("dataType") {
            self.dataType = dict["dataType"] as! String
        }
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("time") {
            self.time = dict["time"] as! String
        }
    }
}

public class RecognizeIntentionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecognizeIntentionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RecognizeIntentionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RunAgentRequest : Tea.TeaModel {
    public var botId: String?

    public var modelId: String?

    public var stream: Bool?

    public var threadId: String?

    public var useDraft: Bool?

    public var userContent: String?

    public var versionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.botId != nil {
            map["botId"] = self.botId!
        }
        if self.modelId != nil {
            map["modelId"] = self.modelId!
        }
        if self.stream != nil {
            map["stream"] = self.stream!
        }
        if self.threadId != nil {
            map["threadId"] = self.threadId!
        }
        if self.useDraft != nil {
            map["useDraft"] = self.useDraft!
        }
        if self.userContent != nil {
            map["userContent"] = self.userContent!
        }
        if self.versionId != nil {
            map["versionId"] = self.versionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("botId") {
            self.botId = dict["botId"] as! String
        }
        if dict.keys.contains("modelId") {
            self.modelId = dict["modelId"] as! String
        }
        if dict.keys.contains("stream") {
            self.stream = dict["stream"] as! Bool
        }
        if dict.keys.contains("threadId") {
            self.threadId = dict["threadId"] as! String
        }
        if dict.keys.contains("useDraft") {
            self.useDraft = dict["useDraft"] as! Bool
        }
        if dict.keys.contains("userContent") {
            self.userContent = dict["userContent"] as! String
        }
        if dict.keys.contains("versionId") {
            self.versionId = dict["versionId"] as! String
        }
    }
}

public class RunAgentResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class FunctionCallResponses : Tea.TeaModel {
            public var displayName: String?

            public var endTime: String?

            public var functionArgs: String?

            public var functionName: String?

            public var result: String?

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
                if self.displayName != nil {
                    map["displayName"] = self.displayName!
                }
                if self.endTime != nil {
                    map["endTime"] = self.endTime!
                }
                if self.functionArgs != nil {
                    map["functionArgs"] = self.functionArgs!
                }
                if self.functionName != nil {
                    map["functionName"] = self.functionName!
                }
                if self.result != nil {
                    map["result"] = self.result!
                }
                if self.startTime != nil {
                    map["startTime"] = self.startTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("displayName") {
                    self.displayName = dict["displayName"] as! String
                }
                if dict.keys.contains("endTime") {
                    self.endTime = dict["endTime"] as! String
                }
                if dict.keys.contains("functionArgs") {
                    self.functionArgs = dict["functionArgs"] as! String
                }
                if dict.keys.contains("functionName") {
                    self.functionName = dict["functionName"] as! String
                }
                if dict.keys.contains("result") {
                    self.result = dict["result"] as! String
                }
                if dict.keys.contains("startTime") {
                    self.startTime = dict["startTime"] as! String
                }
            }
        }
        public class Response : Tea.TeaModel {
            public class Choices : Tea.TeaModel {
                public class Message : Tea.TeaModel {
                    public var content: String?

                    public var role: String?

                    public var roleDisplayName: String?

                    public override init() {
                        super.init()
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
                            map["content"] = self.content!
                        }
                        if self.role != nil {
                            map["role"] = self.role!
                        }
                        if self.roleDisplayName != nil {
                            map["roleDisplayName"] = self.roleDisplayName!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("content") {
                            self.content = dict["content"] as! String
                        }
                        if dict.keys.contains("role") {
                            self.role = dict["role"] as! String
                        }
                        if dict.keys.contains("roleDisplayName") {
                            self.roleDisplayName = dict["roleDisplayName"] as! String
                        }
                    }
                }
                public var finishReason: String?

                public var index: Int32?

                public var message: RunAgentResponseBody.Data.Response.Choices.Message?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.message?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.finishReason != nil {
                        map["finishReason"] = self.finishReason!
                    }
                    if self.index != nil {
                        map["index"] = self.index!
                    }
                    if self.message != nil {
                        map["message"] = self.message?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("finishReason") {
                        self.finishReason = dict["finishReason"] as! String
                    }
                    if dict.keys.contains("index") {
                        self.index = dict["index"] as! Int32
                    }
                    if dict.keys.contains("message") {
                        var model = RunAgentResponseBody.Data.Response.Choices.Message()
                        model.fromMap(dict["message"] as! [String: Any])
                        self.message = model
                    }
                }
            }
            public var choices: [RunAgentResponseBody.Data.Response.Choices]?

            public var created: Int64?

            public var id: String?

            public var modelId: String?

            public var time: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.choices != nil {
                    var tmp : [Any] = []
                    for k in self.choices! {
                        tmp.append(k.toMap())
                    }
                    map["choices"] = tmp
                }
                if self.created != nil {
                    map["created"] = self.created!
                }
                if self.id != nil {
                    map["id"] = self.id!
                }
                if self.modelId != nil {
                    map["modelId"] = self.modelId!
                }
                if self.time != nil {
                    map["time"] = self.time!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("choices") {
                    var tmp : [RunAgentResponseBody.Data.Response.Choices] = []
                    for v in dict["choices"] as! [Any] {
                        var model = RunAgentResponseBody.Data.Response.Choices()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.choices = tmp
                }
                if dict.keys.contains("created") {
                    self.created = dict["created"] as! Int64
                }
                if dict.keys.contains("id") {
                    self.id = dict["id"] as! String
                }
                if dict.keys.contains("modelId") {
                    self.modelId = dict["modelId"] as! String
                }
                if dict.keys.contains("time") {
                    self.time = dict["time"] as! String
                }
            }
        }
        public var functionCallResponses: [RunAgentResponseBody.Data.FunctionCallResponses]?

        public var inputTokens: Int32?

        public var outputTokens: Int32?

        public var response: RunAgentResponseBody.Data.Response?

        public var threadId: String?

        public var traceId: String?

        public var versionId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.response?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.functionCallResponses != nil {
                var tmp : [Any] = []
                for k in self.functionCallResponses! {
                    tmp.append(k.toMap())
                }
                map["functionCallResponses"] = tmp
            }
            if self.inputTokens != nil {
                map["inputTokens"] = self.inputTokens!
            }
            if self.outputTokens != nil {
                map["outputTokens"] = self.outputTokens!
            }
            if self.response != nil {
                map["response"] = self.response?.toMap()
            }
            if self.threadId != nil {
                map["threadId"] = self.threadId!
            }
            if self.traceId != nil {
                map["traceId"] = self.traceId!
            }
            if self.versionId != nil {
                map["versionId"] = self.versionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("functionCallResponses") {
                var tmp : [RunAgentResponseBody.Data.FunctionCallResponses] = []
                for v in dict["functionCallResponses"] as! [Any] {
                    var model = RunAgentResponseBody.Data.FunctionCallResponses()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.functionCallResponses = tmp
            }
            if dict.keys.contains("inputTokens") {
                self.inputTokens = dict["inputTokens"] as! Int32
            }
            if dict.keys.contains("outputTokens") {
                self.outputTokens = dict["outputTokens"] as! Int32
            }
            if dict.keys.contains("response") {
                var model = RunAgentResponseBody.Data.Response()
                model.fromMap(dict["response"] as! [String: Any])
                self.response = model
            }
            if dict.keys.contains("threadId") {
                self.threadId = dict["threadId"] as! String
            }
            if dict.keys.contains("traceId") {
                self.traceId = dict["traceId"] as! String
            }
            if dict.keys.contains("versionId") {
                self.versionId = dict["versionId"] as! String
            }
        }
    }
    public var cost: Int64?

    public var data: RunAgentResponseBody.Data?

    public var dataType: String?

    public var errCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var time: String?

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
        if self.cost != nil {
            map["cost"] = self.cost!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.dataType != nil {
            map["dataType"] = self.dataType!
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.time != nil {
            map["time"] = self.time!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("cost") {
            self.cost = dict["cost"] as! Int64
        }
        if dict.keys.contains("data") {
            var model = RunAgentResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("dataType") {
            self.dataType = dict["dataType"] as! String
        }
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("time") {
            self.time = dict["time"] as! String
        }
    }
}

public class RunAgentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RunAgentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RunAgentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RunChatResultGenerationRequest : Tea.TeaModel {
    public class Messages : Tea.TeaModel {
        public var content: String?

        public var role: String?

        public override init() {
            super.init()
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
                map["content"] = self.content!
            }
            if self.role != nil {
                map["role"] = self.role!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("content") {
                self.content = dict["content"] as! String
            }
            if dict.keys.contains("role") {
                self.role = dict["role"] as! String
            }
        }
    }
    public class Tools : Tea.TeaModel {
        public class Function : Tea.TeaModel {
            public class Parameters : Tea.TeaModel {
                public var properties: [String: Any]?

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
                    if self.properties != nil {
                        map["properties"] = self.properties!
                    }
                    if self.type != nil {
                        map["type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("properties") {
                        self.properties = dict["properties"] as! [String: Any]
                    }
                    if dict.keys.contains("type") {
                        self.type = dict["type"] as! String
                    }
                }
            }
            public var description_: String?

            public var name: String?

            public var parameters: RunChatResultGenerationRequest.Tools.Function.Parameters?

            public var required_: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.parameters?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.description_ != nil {
                    map["description"] = self.description_!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.parameters != nil {
                    map["parameters"] = self.parameters?.toMap()
                }
                if self.required_ != nil {
                    map["required"] = self.required_!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("description") {
                    self.description_ = dict["description"] as! String
                }
                if dict.keys.contains("name") {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("parameters") {
                    var model = RunChatResultGenerationRequest.Tools.Function.Parameters()
                    model.fromMap(dict["parameters"] as! [String: Any])
                    self.parameters = model
                }
                if dict.keys.contains("required") {
                    self.required_ = dict["required"] as! [String]
                }
            }
        }
        public var function: RunChatResultGenerationRequest.Tools.Function?

        public var type: String?

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
            if self.function != nil {
                map["function"] = self.function?.toMap()
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("function") {
                var model = RunChatResultGenerationRequest.Tools.Function()
                model.fromMap(dict["function"] as! [String: Any])
                self.function = model
            }
            if dict.keys.contains("type") {
                self.type = dict["type"] as! String
            }
        }
    }
    public var inferenceParameters: [String: Any]?

    public var messages: [RunChatResultGenerationRequest.Messages]?

    public var modelId: String?

    public var sessionId: String?

    public var stream: Bool?

    public var tools: [RunChatResultGenerationRequest.Tools]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.inferenceParameters != nil {
            map["inferenceParameters"] = self.inferenceParameters!
        }
        if self.messages != nil {
            var tmp : [Any] = []
            for k in self.messages! {
                tmp.append(k.toMap())
            }
            map["messages"] = tmp
        }
        if self.modelId != nil {
            map["modelId"] = self.modelId!
        }
        if self.sessionId != nil {
            map["sessionId"] = self.sessionId!
        }
        if self.stream != nil {
            map["stream"] = self.stream!
        }
        if self.tools != nil {
            var tmp : [Any] = []
            for k in self.tools! {
                tmp.append(k.toMap())
            }
            map["tools"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("inferenceParameters") {
            self.inferenceParameters = dict["inferenceParameters"] as! [String: Any]
        }
        if dict.keys.contains("messages") {
            var tmp : [RunChatResultGenerationRequest.Messages] = []
            for v in dict["messages"] as! [Any] {
                var model = RunChatResultGenerationRequest.Messages()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.messages = tmp
        }
        if dict.keys.contains("modelId") {
            self.modelId = dict["modelId"] as! String
        }
        if dict.keys.contains("sessionId") {
            self.sessionId = dict["sessionId"] as! String
        }
        if dict.keys.contains("stream") {
            self.stream = dict["stream"] as! Bool
        }
        if dict.keys.contains("tools") {
            var tmp : [RunChatResultGenerationRequest.Tools] = []
            for v in dict["tools"] as! [Any] {
                var model = RunChatResultGenerationRequest.Tools()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tools = tmp
        }
    }
}

public class RunChatResultGenerationResponseBody : Tea.TeaModel {
    public class Choices : Tea.TeaModel {
        public class Message : Tea.TeaModel {
            public var content: String?

            public var role: String?

            public var toolCalls: [[String: Any]]?

            public override init() {
                super.init()
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
                    map["content"] = self.content!
                }
                if self.role != nil {
                    map["role"] = self.role!
                }
                if self.toolCalls != nil {
                    map["toolCalls"] = self.toolCalls!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("content") {
                    self.content = dict["content"] as! String
                }
                if dict.keys.contains("role") {
                    self.role = dict["role"] as! String
                }
                if dict.keys.contains("toolCalls") {
                    self.toolCalls = dict["toolCalls"] as! [[String: Any]]
                }
            }
        }
        public var finishReason: String?

        public var index: Int32?

        public var message: RunChatResultGenerationResponseBody.Choices.Message?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.message?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.finishReason != nil {
                map["finishReason"] = self.finishReason!
            }
            if self.index != nil {
                map["index"] = self.index!
            }
            if self.message != nil {
                map["message"] = self.message?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("finishReason") {
                self.finishReason = dict["finishReason"] as! String
            }
            if dict.keys.contains("index") {
                self.index = dict["index"] as! Int32
            }
            if dict.keys.contains("message") {
                var model = RunChatResultGenerationResponseBody.Choices.Message()
                model.fromMap(dict["message"] as! [String: Any])
                self.message = model
            }
        }
    }
    public class Usage : Tea.TeaModel {
        public var imageCount: Int32?

        public var imageTokens: Int32?

        public var inputTokens: Int32?

        public var outputTokens: Int32?

        public var totalTokens: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.imageCount != nil {
                map["imageCount"] = self.imageCount!
            }
            if self.imageTokens != nil {
                map["imageTokens"] = self.imageTokens!
            }
            if self.inputTokens != nil {
                map["inputTokens"] = self.inputTokens!
            }
            if self.outputTokens != nil {
                map["outputTokens"] = self.outputTokens!
            }
            if self.totalTokens != nil {
                map["totalTokens"] = self.totalTokens!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("imageCount") {
                self.imageCount = dict["imageCount"] as! Int32
            }
            if dict.keys.contains("imageTokens") {
                self.imageTokens = dict["imageTokens"] as! Int32
            }
            if dict.keys.contains("inputTokens") {
                self.inputTokens = dict["inputTokens"] as! Int32
            }
            if dict.keys.contains("outputTokens") {
                self.outputTokens = dict["outputTokens"] as! Int32
            }
            if dict.keys.contains("totalTokens") {
                self.totalTokens = dict["totalTokens"] as! Int32
            }
        }
    }
    public var choices: [RunChatResultGenerationResponseBody.Choices]?

    public var created: Int64?

    public var id: String?

    public var modelId: String?

    public var requestId: String?

    public var time: String?

    public var totalTokens: Int32?

    public var usage: RunChatResultGenerationResponseBody.Usage?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.usage?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.choices != nil {
            var tmp : [Any] = []
            for k in self.choices! {
                tmp.append(k.toMap())
            }
            map["choices"] = tmp
        }
        if self.created != nil {
            map["created"] = self.created!
        }
        if self.id != nil {
            map["id"] = self.id!
        }
        if self.modelId != nil {
            map["modelId"] = self.modelId!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.time != nil {
            map["time"] = self.time!
        }
        if self.totalTokens != nil {
            map["totalTokens"] = self.totalTokens!
        }
        if self.usage != nil {
            map["usage"] = self.usage?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("choices") {
            var tmp : [RunChatResultGenerationResponseBody.Choices] = []
            for v in dict["choices"] as! [Any] {
                var model = RunChatResultGenerationResponseBody.Choices()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.choices = tmp
        }
        if dict.keys.contains("created") {
            self.created = dict["created"] as! Int64
        }
        if dict.keys.contains("id") {
            self.id = dict["id"] as! String
        }
        if dict.keys.contains("modelId") {
            self.modelId = dict["modelId"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("time") {
            self.time = dict["time"] as! String
        }
        if dict.keys.contains("totalTokens") {
            self.totalTokens = dict["totalTokens"] as! Int32
        }
        if dict.keys.contains("usage") {
            var model = RunChatResultGenerationResponseBody.Usage()
            model.fromMap(dict["usage"] as! [String: Any])
            self.usage = model
        }
    }
}

public class RunChatResultGenerationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RunChatResultGenerationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RunChatResultGenerationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RunLibraryChatGenerationRequest : Tea.TeaModel {
    public class QueryCriteria : Tea.TeaModel {
        public class And : Tea.TeaModel {
            public var boost: Double?

            public var key: String?

            public var operator_: String?

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
                if self.boost != nil {
                    map["boost"] = self.boost!
                }
                if self.key != nil {
                    map["key"] = self.key!
                }
                if self.operator_ != nil {
                    map["operator"] = self.operator_!
                }
                if self.value != nil {
                    map["value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("boost") {
                    self.boost = dict["boost"] as! Double
                }
                if dict.keys.contains("key") {
                    self.key = dict["key"] as! String
                }
                if dict.keys.contains("operator") {
                    self.operator_ = dict["operator"] as! String
                }
                if dict.keys.contains("value") {
                    self.value = dict["value"] as! String
                }
            }
        }
        public class Or : Tea.TeaModel {
            public var boost: Double?

            public var key: String?

            public var operator_: String?

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
                if self.boost != nil {
                    map["boost"] = self.boost!
                }
                if self.key != nil {
                    map["key"] = self.key!
                }
                if self.operator_ != nil {
                    map["operator"] = self.operator_!
                }
                if self.value != nil {
                    map["value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("boost") {
                    self.boost = dict["boost"] as! Double
                }
                if dict.keys.contains("key") {
                    self.key = dict["key"] as! String
                }
                if dict.keys.contains("operator") {
                    self.operator_ = dict["operator"] as! String
                }
                if dict.keys.contains("value") {
                    self.value = dict["value"] as! String
                }
            }
        }
        public var and: [RunLibraryChatGenerationRequest.QueryCriteria.And]?

        public var or: [RunLibraryChatGenerationRequest.QueryCriteria.Or]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.and != nil {
                var tmp : [Any] = []
                for k in self.and! {
                    tmp.append(k.toMap())
                }
                map["and"] = tmp
            }
            if self.or != nil {
                var tmp : [Any] = []
                for k in self.or! {
                    tmp.append(k.toMap())
                }
                map["or"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("and") {
                var tmp : [RunLibraryChatGenerationRequest.QueryCriteria.And] = []
                for v in dict["and"] as! [Any] {
                    var model = RunLibraryChatGenerationRequest.QueryCriteria.And()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.and = tmp
            }
            if dict.keys.contains("or") {
                var tmp : [RunLibraryChatGenerationRequest.QueryCriteria.Or] = []
                for v in dict["or"] as! [Any] {
                    var model = RunLibraryChatGenerationRequest.QueryCriteria.Or()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.or = tmp
            }
        }
    }
    public class TextSearchParameter : Tea.TeaModel {
        public var limit: Int32?

        public var searchAnalyzerType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.limit != nil {
                map["limit"] = self.limit!
            }
            if self.searchAnalyzerType != nil {
                map["searchAnalyzerType"] = self.searchAnalyzerType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("limit") {
                self.limit = dict["limit"] as! Int32
            }
            if dict.keys.contains("searchAnalyzerType") {
                self.searchAnalyzerType = dict["searchAnalyzerType"] as! String
            }
        }
    }
    public class VectorSearchParameter : Tea.TeaModel {
        public var limit: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.limit != nil {
                map["limit"] = self.limit!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("limit") {
                self.limit = dict["limit"] as! Int32
            }
        }
    }
    public var docIdList: [String]?

    public var enableFollowUp: Bool?

    public var enableMultiQuery: Bool?

    public var enableOpenQa: Bool?

    public var followUpLlm: String?

    public var libraryId: String?

    public var llmType: String?

    public var multiQueryLlm: String?

    public var query: String?

    public var queryCriteria: RunLibraryChatGenerationRequest.QueryCriteria?

    public var rerankType: String?

    public var sessionId: String?

    public var stream: Bool?

    public var subQueryList: [String]?

    public var textSearchParameter: RunLibraryChatGenerationRequest.TextSearchParameter?

    public var topK: Int32?

    public var vectorSearchParameter: RunLibraryChatGenerationRequest.VectorSearchParameter?

    public var withDocumentReference: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.queryCriteria?.validate()
        try self.textSearchParameter?.validate()
        try self.vectorSearchParameter?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.docIdList != nil {
            map["docIdList"] = self.docIdList!
        }
        if self.enableFollowUp != nil {
            map["enableFollowUp"] = self.enableFollowUp!
        }
        if self.enableMultiQuery != nil {
            map["enableMultiQuery"] = self.enableMultiQuery!
        }
        if self.enableOpenQa != nil {
            map["enableOpenQa"] = self.enableOpenQa!
        }
        if self.followUpLlm != nil {
            map["followUpLlm"] = self.followUpLlm!
        }
        if self.libraryId != nil {
            map["libraryId"] = self.libraryId!
        }
        if self.llmType != nil {
            map["llmType"] = self.llmType!
        }
        if self.multiQueryLlm != nil {
            map["multiQueryLlm"] = self.multiQueryLlm!
        }
        if self.query != nil {
            map["query"] = self.query!
        }
        if self.queryCriteria != nil {
            map["queryCriteria"] = self.queryCriteria?.toMap()
        }
        if self.rerankType != nil {
            map["rerankType"] = self.rerankType!
        }
        if self.sessionId != nil {
            map["sessionId"] = self.sessionId!
        }
        if self.stream != nil {
            map["stream"] = self.stream!
        }
        if self.subQueryList != nil {
            map["subQueryList"] = self.subQueryList!
        }
        if self.textSearchParameter != nil {
            map["textSearchParameter"] = self.textSearchParameter?.toMap()
        }
        if self.topK != nil {
            map["topK"] = self.topK!
        }
        if self.vectorSearchParameter != nil {
            map["vectorSearchParameter"] = self.vectorSearchParameter?.toMap()
        }
        if self.withDocumentReference != nil {
            map["withDocumentReference"] = self.withDocumentReference!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("docIdList") {
            self.docIdList = dict["docIdList"] as! [String]
        }
        if dict.keys.contains("enableFollowUp") {
            self.enableFollowUp = dict["enableFollowUp"] as! Bool
        }
        if dict.keys.contains("enableMultiQuery") {
            self.enableMultiQuery = dict["enableMultiQuery"] as! Bool
        }
        if dict.keys.contains("enableOpenQa") {
            self.enableOpenQa = dict["enableOpenQa"] as! Bool
        }
        if dict.keys.contains("followUpLlm") {
            self.followUpLlm = dict["followUpLlm"] as! String
        }
        if dict.keys.contains("libraryId") {
            self.libraryId = dict["libraryId"] as! String
        }
        if dict.keys.contains("llmType") {
            self.llmType = dict["llmType"] as! String
        }
        if dict.keys.contains("multiQueryLlm") {
            self.multiQueryLlm = dict["multiQueryLlm"] as! String
        }
        if dict.keys.contains("query") {
            self.query = dict["query"] as! String
        }
        if dict.keys.contains("queryCriteria") {
            var model = RunLibraryChatGenerationRequest.QueryCriteria()
            model.fromMap(dict["queryCriteria"] as! [String: Any])
            self.queryCriteria = model
        }
        if dict.keys.contains("rerankType") {
            self.rerankType = dict["rerankType"] as! String
        }
        if dict.keys.contains("sessionId") {
            self.sessionId = dict["sessionId"] as! String
        }
        if dict.keys.contains("stream") {
            self.stream = dict["stream"] as! Bool
        }
        if dict.keys.contains("subQueryList") {
            self.subQueryList = dict["subQueryList"] as! [String]
        }
        if dict.keys.contains("textSearchParameter") {
            var model = RunLibraryChatGenerationRequest.TextSearchParameter()
            model.fromMap(dict["textSearchParameter"] as! [String: Any])
            self.textSearchParameter = model
        }
        if dict.keys.contains("topK") {
            self.topK = dict["topK"] as! Int32
        }
        if dict.keys.contains("vectorSearchParameter") {
            var model = RunLibraryChatGenerationRequest.VectorSearchParameter()
            model.fromMap(dict["vectorSearchParameter"] as! [String: Any])
            self.vectorSearchParameter = model
        }
        if dict.keys.contains("withDocumentReference") {
            self.withDocumentReference = dict["withDocumentReference"] as! Bool
        }
    }
}

public class RunLibraryChatGenerationResponseBody : Tea.TeaModel {
    public var cost: Int64?

    public var data: Any?

    public var dataType: String?

    public var errCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var time: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cost != nil {
            map["cost"] = self.cost!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.dataType != nil {
            map["dataType"] = self.dataType!
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.time != nil {
            map["time"] = self.time!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("cost") {
            self.cost = dict["cost"] as! Int64
        }
        if dict.keys.contains("data") {
            self.data = dict["data"] as! Any
        }
        if dict.keys.contains("dataType") {
            self.dataType = dict["dataType"] as! String
        }
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("time") {
            self.time = dict["time"] as! String
        }
    }
}

public class RunLibraryChatGenerationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RunLibraryChatGenerationResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RunLibraryChatGenerationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SubmitChatQuestionRequest : Tea.TeaModel {
    public class QuestionList : Tea.TeaModel {
        public var content: String?

        public var gmtCreate: String?

        public var reply: String?

        public var sessionId: String?

        public var type: String?

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
            if self.content != nil {
                map["content"] = self.content!
            }
            if self.gmtCreate != nil {
                map["gmtCreate"] = self.gmtCreate!
            }
            if self.reply != nil {
                map["reply"] = self.reply!
            }
            if self.sessionId != nil {
                map["sessionId"] = self.sessionId!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            if self.userId != nil {
                map["userId"] = self.userId!
            }
            if self.userName != nil {
                map["userName"] = self.userName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("content") {
                self.content = dict["content"] as! String
            }
            if dict.keys.contains("gmtCreate") {
                self.gmtCreate = dict["gmtCreate"] as! String
            }
            if dict.keys.contains("reply") {
                self.reply = dict["reply"] as! String
            }
            if dict.keys.contains("sessionId") {
                self.sessionId = dict["sessionId"] as! String
            }
            if dict.keys.contains("type") {
                self.type = dict["type"] as! String
            }
            if dict.keys.contains("userId") {
                self.userId = dict["userId"] as! String
            }
            if dict.keys.contains("userName") {
                self.userName = dict["userName"] as! String
            }
        }
    }
    public var gmtService: String?

    public var liveScriptContent: String?

    public var openSmallTalk: Bool?

    public var questionList: [SubmitChatQuestionRequest.QuestionList]?

    public var requestId: String?

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
        if self.gmtService != nil {
            map["gmtService"] = self.gmtService!
        }
        if self.liveScriptContent != nil {
            map["liveScriptContent"] = self.liveScriptContent!
        }
        if self.openSmallTalk != nil {
            map["openSmallTalk"] = self.openSmallTalk!
        }
        if self.questionList != nil {
            var tmp : [Any] = []
            for k in self.questionList! {
                tmp.append(k.toMap())
            }
            map["questionList"] = tmp
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.sessionId != nil {
            map["sessionId"] = self.sessionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("gmtService") {
            self.gmtService = dict["gmtService"] as! String
        }
        if dict.keys.contains("liveScriptContent") {
            self.liveScriptContent = dict["liveScriptContent"] as! String
        }
        if dict.keys.contains("openSmallTalk") {
            self.openSmallTalk = dict["openSmallTalk"] as! Bool
        }
        if dict.keys.contains("questionList") {
            var tmp : [SubmitChatQuestionRequest.QuestionList] = []
            for v in dict["questionList"] as! [Any] {
                var model = SubmitChatQuestionRequest.QuestionList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.questionList = tmp
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("sessionId") {
            self.sessionId = dict["sessionId"] as! String
        }
    }
}

public class SubmitChatQuestionResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var batchId: String?

        public override init() {
            super.init()
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("batchId") {
                self.batchId = dict["batchId"] as! String
            }
        }
    }
    public var cost: Int64?

    public var data: SubmitChatQuestionResponseBody.Data?

    public var dataType: String?

    public var errCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var time: String?

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
        if self.cost != nil {
            map["cost"] = self.cost!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.dataType != nil {
            map["dataType"] = self.dataType!
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.time != nil {
            map["time"] = self.time!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("cost") {
            self.cost = dict["cost"] as! Int64
        }
        if dict.keys.contains("data") {
            var model = SubmitChatQuestionResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("dataType") {
            self.dataType = dict["dataType"] as! String
        }
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("time") {
            self.time = dict["time"] as! String
        }
    }
}

public class SubmitChatQuestionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitChatQuestionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SubmitChatQuestionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateDocumentRequest : Tea.TeaModel {
    public var docId: String?

    public var libraryId: String?

    public var meta: [String: Any]?

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
        if self.docId != nil {
            map["docId"] = self.docId!
        }
        if self.libraryId != nil {
            map["libraryId"] = self.libraryId!
        }
        if self.meta != nil {
            map["meta"] = self.meta!
        }
        if self.title != nil {
            map["title"] = self.title!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("docId") {
            self.docId = dict["docId"] as! String
        }
        if dict.keys.contains("libraryId") {
            self.libraryId = dict["libraryId"] as! String
        }
        if dict.keys.contains("meta") {
            self.meta = dict["meta"] as! [String: Any]
        }
        if dict.keys.contains("title") {
            self.title = dict["title"] as! String
        }
    }
}

public class UpdateDocumentResponseBody : Tea.TeaModel {
    public var cost: Int64?

    public var data: String?

    public var dataType: String?

    public var errCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var time: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cost != nil {
            map["cost"] = self.cost!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.dataType != nil {
            map["dataType"] = self.dataType!
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.time != nil {
            map["time"] = self.time!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("cost") {
            self.cost = dict["cost"] as! Int64
        }
        if dict.keys.contains("data") {
            self.data = dict["data"] as! String
        }
        if dict.keys.contains("dataType") {
            self.dataType = dict["dataType"] as! String
        }
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("time") {
            self.time = dict["time"] as! String
        }
    }
}

public class UpdateDocumentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateDocumentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateDocumentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateDocumentChunkRequest : Tea.TeaModel {
    public class Chunks : Tea.TeaModel {
        public var chunkId: String?

        public var chunkText: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.chunkId != nil {
                map["chunkId"] = self.chunkId!
            }
            if self.chunkText != nil {
                map["chunkText"] = self.chunkText!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("chunkId") {
                self.chunkId = dict["chunkId"] as! String
            }
            if dict.keys.contains("chunkText") {
                self.chunkText = dict["chunkText"] as! String
            }
        }
    }
    public var chunks: [UpdateDocumentChunkRequest.Chunks]?

    public var libraryId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.chunks != nil {
            var tmp : [Any] = []
            for k in self.chunks! {
                tmp.append(k.toMap())
            }
            map["chunks"] = tmp
        }
        if self.libraryId != nil {
            map["libraryId"] = self.libraryId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("chunks") {
            var tmp : [UpdateDocumentChunkRequest.Chunks] = []
            for v in dict["chunks"] as! [Any] {
                var model = UpdateDocumentChunkRequest.Chunks()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.chunks = tmp
        }
        if dict.keys.contains("libraryId") {
            self.libraryId = dict["libraryId"] as! String
        }
    }
}

public class UpdateDocumentChunkResponseBody : Tea.TeaModel {
    public var cost: Int64?

    public var data: String?

    public var dataType: String?

    public var errCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var time: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cost != nil {
            map["cost"] = self.cost!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.dataType != nil {
            map["dataType"] = self.dataType!
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.time != nil {
            map["time"] = self.time!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("cost") {
            self.cost = dict["cost"] as! Int64
        }
        if dict.keys.contains("data") {
            self.data = dict["data"] as! String
        }
        if dict.keys.contains("dataType") {
            self.dataType = dict["dataType"] as! String
        }
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("time") {
            self.time = dict["time"] as! String
        }
    }
}

public class UpdateDocumentChunkResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateDocumentChunkResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateDocumentChunkResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateLibraryRequest : Tea.TeaModel {
    public class IndexSetting : Tea.TeaModel {
        public class ChunkStrategy : Tea.TeaModel {
            public var docTreeSplit: Bool?

            public var docTreeSplitSize: Int32?

            public var enhanceGraph: Bool?

            public var enhanceTable: Bool?

            public var overlap: Int32?

            public var sentenceSplit: Bool?

            public var sentenceSplitSize: Int32?

            public var size: Int32?

            public var split: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.docTreeSplit != nil {
                    map["docTreeSplit"] = self.docTreeSplit!
                }
                if self.docTreeSplitSize != nil {
                    map["docTreeSplitSize"] = self.docTreeSplitSize!
                }
                if self.enhanceGraph != nil {
                    map["enhanceGraph"] = self.enhanceGraph!
                }
                if self.enhanceTable != nil {
                    map["enhanceTable"] = self.enhanceTable!
                }
                if self.overlap != nil {
                    map["overlap"] = self.overlap!
                }
                if self.sentenceSplit != nil {
                    map["sentenceSplit"] = self.sentenceSplit!
                }
                if self.sentenceSplitSize != nil {
                    map["sentenceSplitSize"] = self.sentenceSplitSize!
                }
                if self.size != nil {
                    map["size"] = self.size!
                }
                if self.split != nil {
                    map["split"] = self.split!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("docTreeSplit") {
                    self.docTreeSplit = dict["docTreeSplit"] as! Bool
                }
                if dict.keys.contains("docTreeSplitSize") {
                    self.docTreeSplitSize = dict["docTreeSplitSize"] as! Int32
                }
                if dict.keys.contains("enhanceGraph") {
                    self.enhanceGraph = dict["enhanceGraph"] as! Bool
                }
                if dict.keys.contains("enhanceTable") {
                    self.enhanceTable = dict["enhanceTable"] as! Bool
                }
                if dict.keys.contains("overlap") {
                    self.overlap = dict["overlap"] as! Int32
                }
                if dict.keys.contains("sentenceSplit") {
                    self.sentenceSplit = dict["sentenceSplit"] as! Bool
                }
                if dict.keys.contains("sentenceSplitSize") {
                    self.sentenceSplitSize = dict["sentenceSplitSize"] as! Int32
                }
                if dict.keys.contains("size") {
                    self.size = dict["size"] as! Int32
                }
                if dict.keys.contains("split") {
                    self.split = dict["split"] as! Bool
                }
            }
        }
        public class ModelConfig : Tea.TeaModel {
            public var temperature: Double?

            public var topP: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.temperature != nil {
                    map["temperature"] = self.temperature!
                }
                if self.topP != nil {
                    map["topP"] = self.topP!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("temperature") {
                    self.temperature = dict["temperature"] as! Double
                }
                if dict.keys.contains("topP") {
                    self.topP = dict["topP"] as! Double
                }
            }
        }
        public class QueryEnhancer : Tea.TeaModel {
            public var enableFollowUp: Bool?

            public var enableMultiQuery: Bool?

            public var enableOpenQa: Bool?

            public var enableQueryRewrite: Bool?

            public var enableSession: Bool?

            public var localKnowledgeId: String?

            public var withDocumentReference: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.enableFollowUp != nil {
                    map["enableFollowUp"] = self.enableFollowUp!
                }
                if self.enableMultiQuery != nil {
                    map["enableMultiQuery"] = self.enableMultiQuery!
                }
                if self.enableOpenQa != nil {
                    map["enableOpenQa"] = self.enableOpenQa!
                }
                if self.enableQueryRewrite != nil {
                    map["enableQueryRewrite"] = self.enableQueryRewrite!
                }
                if self.enableSession != nil {
                    map["enableSession"] = self.enableSession!
                }
                if self.localKnowledgeId != nil {
                    map["localKnowledgeId"] = self.localKnowledgeId!
                }
                if self.withDocumentReference != nil {
                    map["withDocumentReference"] = self.withDocumentReference!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("enableFollowUp") {
                    self.enableFollowUp = dict["enableFollowUp"] as! Bool
                }
                if dict.keys.contains("enableMultiQuery") {
                    self.enableMultiQuery = dict["enableMultiQuery"] as! Bool
                }
                if dict.keys.contains("enableOpenQa") {
                    self.enableOpenQa = dict["enableOpenQa"] as! Bool
                }
                if dict.keys.contains("enableQueryRewrite") {
                    self.enableQueryRewrite = dict["enableQueryRewrite"] as! Bool
                }
                if dict.keys.contains("enableSession") {
                    self.enableSession = dict["enableSession"] as! Bool
                }
                if dict.keys.contains("localKnowledgeId") {
                    self.localKnowledgeId = dict["localKnowledgeId"] as! String
                }
                if dict.keys.contains("withDocumentReference") {
                    self.withDocumentReference = dict["withDocumentReference"] as! Bool
                }
            }
        }
        public class RecallStrategy : Tea.TeaModel {
            public var documentRankType: String?

            public var limit: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.documentRankType != nil {
                    map["documentRankType"] = self.documentRankType!
                }
                if self.limit != nil {
                    map["limit"] = self.limit!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("documentRankType") {
                    self.documentRankType = dict["documentRankType"] as! String
                }
                if dict.keys.contains("limit") {
                    self.limit = dict["limit"] as! Int32
                }
            }
        }
        public class TextIndexSetting : Tea.TeaModel {
            public var category: String?

            public var enable: Bool?

            public var indexAnalyzer: String?

            public var rankThreshold: Double?

            public var searchAnalyzer: String?

            public var topK: Int32?

            public override init() {
                super.init()
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
                    map["category"] = self.category!
                }
                if self.enable != nil {
                    map["enable"] = self.enable!
                }
                if self.indexAnalyzer != nil {
                    map["indexAnalyzer"] = self.indexAnalyzer!
                }
                if self.rankThreshold != nil {
                    map["rankThreshold"] = self.rankThreshold!
                }
                if self.searchAnalyzer != nil {
                    map["searchAnalyzer"] = self.searchAnalyzer!
                }
                if self.topK != nil {
                    map["topK"] = self.topK!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("category") {
                    self.category = dict["category"] as! String
                }
                if dict.keys.contains("enable") {
                    self.enable = dict["enable"] as! Bool
                }
                if dict.keys.contains("indexAnalyzer") {
                    self.indexAnalyzer = dict["indexAnalyzer"] as! String
                }
                if dict.keys.contains("rankThreshold") {
                    self.rankThreshold = dict["rankThreshold"] as! Double
                }
                if dict.keys.contains("searchAnalyzer") {
                    self.searchAnalyzer = dict["searchAnalyzer"] as! String
                }
                if dict.keys.contains("topK") {
                    self.topK = dict["topK"] as! Int32
                }
            }
        }
        public class VectorIndexSetting : Tea.TeaModel {
            public var category: String?

            public var embeddingType: String?

            public var enable: Bool?

            public var rankThreshold: Double?

            public var topK: Int32?

            public override init() {
                super.init()
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
                    map["category"] = self.category!
                }
                if self.embeddingType != nil {
                    map["embeddingType"] = self.embeddingType!
                }
                if self.enable != nil {
                    map["enable"] = self.enable!
                }
                if self.rankThreshold != nil {
                    map["rankThreshold"] = self.rankThreshold!
                }
                if self.topK != nil {
                    map["topK"] = self.topK!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("category") {
                    self.category = dict["category"] as! String
                }
                if dict.keys.contains("embeddingType") {
                    self.embeddingType = dict["embeddingType"] as! String
                }
                if dict.keys.contains("enable") {
                    self.enable = dict["enable"] as! Bool
                }
                if dict.keys.contains("rankThreshold") {
                    self.rankThreshold = dict["rankThreshold"] as! Double
                }
                if dict.keys.contains("topK") {
                    self.topK = dict["topK"] as! Int32
                }
            }
        }
        public var chunkStrategy: UpdateLibraryRequest.IndexSetting.ChunkStrategy?

        public var modelConfig: UpdateLibraryRequest.IndexSetting.ModelConfig?

        public var promptRoleStyle: String?

        public var queryEnhancer: UpdateLibraryRequest.IndexSetting.QueryEnhancer?

        public var recallStrategy: UpdateLibraryRequest.IndexSetting.RecallStrategy?

        public var textIndexSetting: UpdateLibraryRequest.IndexSetting.TextIndexSetting?

        public var vectorIndexSetting: UpdateLibraryRequest.IndexSetting.VectorIndexSetting?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.chunkStrategy?.validate()
            try self.modelConfig?.validate()
            try self.queryEnhancer?.validate()
            try self.recallStrategy?.validate()
            try self.textIndexSetting?.validate()
            try self.vectorIndexSetting?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.chunkStrategy != nil {
                map["chunkStrategy"] = self.chunkStrategy?.toMap()
            }
            if self.modelConfig != nil {
                map["modelConfig"] = self.modelConfig?.toMap()
            }
            if self.promptRoleStyle != nil {
                map["promptRoleStyle"] = self.promptRoleStyle!
            }
            if self.queryEnhancer != nil {
                map["queryEnhancer"] = self.queryEnhancer?.toMap()
            }
            if self.recallStrategy != nil {
                map["recallStrategy"] = self.recallStrategy?.toMap()
            }
            if self.textIndexSetting != nil {
                map["textIndexSetting"] = self.textIndexSetting?.toMap()
            }
            if self.vectorIndexSetting != nil {
                map["vectorIndexSetting"] = self.vectorIndexSetting?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("chunkStrategy") {
                var model = UpdateLibraryRequest.IndexSetting.ChunkStrategy()
                model.fromMap(dict["chunkStrategy"] as! [String: Any])
                self.chunkStrategy = model
            }
            if dict.keys.contains("modelConfig") {
                var model = UpdateLibraryRequest.IndexSetting.ModelConfig()
                model.fromMap(dict["modelConfig"] as! [String: Any])
                self.modelConfig = model
            }
            if dict.keys.contains("promptRoleStyle") {
                self.promptRoleStyle = dict["promptRoleStyle"] as! String
            }
            if dict.keys.contains("queryEnhancer") {
                var model = UpdateLibraryRequest.IndexSetting.QueryEnhancer()
                model.fromMap(dict["queryEnhancer"] as! [String: Any])
                self.queryEnhancer = model
            }
            if dict.keys.contains("recallStrategy") {
                var model = UpdateLibraryRequest.IndexSetting.RecallStrategy()
                model.fromMap(dict["recallStrategy"] as! [String: Any])
                self.recallStrategy = model
            }
            if dict.keys.contains("textIndexSetting") {
                var model = UpdateLibraryRequest.IndexSetting.TextIndexSetting()
                model.fromMap(dict["textIndexSetting"] as! [String: Any])
                self.textIndexSetting = model
            }
            if dict.keys.contains("vectorIndexSetting") {
                var model = UpdateLibraryRequest.IndexSetting.VectorIndexSetting()
                model.fromMap(dict["vectorIndexSetting"] as! [String: Any])
                self.vectorIndexSetting = model
            }
        }
    }
    public var description_: String?

    public var indexSetting: UpdateLibraryRequest.IndexSetting?

    public var libraryId: String?

    public var libraryName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.indexSetting?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.indexSetting != nil {
            map["indexSetting"] = self.indexSetting?.toMap()
        }
        if self.libraryId != nil {
            map["libraryId"] = self.libraryId!
        }
        if self.libraryName != nil {
            map["libraryName"] = self.libraryName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("indexSetting") {
            var model = UpdateLibraryRequest.IndexSetting()
            model.fromMap(dict["indexSetting"] as! [String: Any])
            self.indexSetting = model
        }
        if dict.keys.contains("libraryId") {
            self.libraryId = dict["libraryId"] as! String
        }
        if dict.keys.contains("libraryName") {
            self.libraryName = dict["libraryName"] as! String
        }
    }
}

public class UpdateLibraryResponseBody : Tea.TeaModel {
    public var cost: Int64?

    public var data: String?

    public var dataType: String?

    public var errCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var time: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cost != nil {
            map["cost"] = self.cost!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.dataType != nil {
            map["dataType"] = self.dataType!
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.time != nil {
            map["time"] = self.time!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("cost") {
            self.cost = dict["cost"] as! Int64
        }
        if dict.keys.contains("data") {
            self.data = dict["data"] as! String
        }
        if dict.keys.contains("dataType") {
            self.dataType = dict["dataType"] as! String
        }
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("time") {
            self.time = dict["time"] as! String
        }
    }
}

public class UpdateLibraryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateLibraryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateLibraryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateQaLibraryRequest : Tea.TeaModel {
    public class ParseQaResults : Tea.TeaModel {
        public var answer: String?

        public var question: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.answer != nil {
                map["answer"] = self.answer!
            }
            if self.question != nil {
                map["question"] = self.question!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("answer") {
                self.answer = dict["answer"] as! String
            }
            if dict.keys.contains("question") {
                self.question = dict["question"] as! String
            }
        }
    }
    public var parseQaResults: [UpdateQaLibraryRequest.ParseQaResults]?

    public var qaLibraryId: String?

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
        if self.parseQaResults != nil {
            var tmp : [Any] = []
            for k in self.parseQaResults! {
                tmp.append(k.toMap())
            }
            map["parseQaResults"] = tmp
        }
        if self.qaLibraryId != nil {
            map["qaLibraryId"] = self.qaLibraryId!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("parseQaResults") {
            var tmp : [UpdateQaLibraryRequest.ParseQaResults] = []
            for v in dict["parseQaResults"] as! [Any] {
                var model = UpdateQaLibraryRequest.ParseQaResults()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.parseQaResults = tmp
        }
        if dict.keys.contains("qaLibraryId") {
            self.qaLibraryId = dict["qaLibraryId"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class UpdateQaLibraryResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var qaLibraryId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.qaLibraryId != nil {
                map["qaLibraryId"] = self.qaLibraryId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("qaLibraryId") {
                self.qaLibraryId = dict["qaLibraryId"] as! String
            }
        }
    }
    public var cost: Int64?

    public var data: UpdateQaLibraryResponseBody.Data?

    public var dataType: String?

    public var errCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var time: String?

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
        if self.cost != nil {
            map["cost"] = self.cost!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.dataType != nil {
            map["dataType"] = self.dataType!
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.time != nil {
            map["time"] = self.time!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("cost") {
            self.cost = dict["cost"] as! Int64
        }
        if dict.keys.contains("data") {
            var model = UpdateQaLibraryResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("dataType") {
            self.dataType = dict["dataType"] as! String
        }
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("time") {
            self.time = dict["time"] as! String
        }
    }
}

public class UpdateQaLibraryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateQaLibraryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateQaLibraryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UploadDocumentRequest : Tea.TeaModel {
    public var data: String?

    public var fileName: String?

    public var fileUrl: String?

    public var libraryId: String?

    public override init() {
        super.init()
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
        if self.fileName != nil {
            map["fileName"] = self.fileName!
        }
        if self.fileUrl != nil {
            map["fileUrl"] = self.fileUrl!
        }
        if self.libraryId != nil {
            map["libraryId"] = self.libraryId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            self.data = dict["data"] as! String
        }
        if dict.keys.contains("fileName") {
            self.fileName = dict["fileName"] as! String
        }
        if dict.keys.contains("fileUrl") {
            self.fileUrl = dict["fileUrl"] as! String
        }
        if dict.keys.contains("libraryId") {
            self.libraryId = dict["libraryId"] as! String
        }
    }
}

public class UploadDocumentAdvanceRequest : Tea.TeaModel {
    public var data: String?

    public var fileName: String?

    public var fileUrlObject: InputStream?

    public var libraryId: String?

    public override init() {
        super.init()
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
        if self.fileName != nil {
            map["fileName"] = self.fileName!
        }
        if self.fileUrlObject != nil {
            map["fileUrl"] = self.fileUrlObject!
        }
        if self.libraryId != nil {
            map["libraryId"] = self.libraryId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            self.data = dict["data"] as! String
        }
        if dict.keys.contains("fileName") {
            self.fileName = dict["fileName"] as! String
        }
        if dict.keys.contains("fileUrl") {
            self.fileUrlObject = dict["fileUrl"] as! InputStream
        }
        if dict.keys.contains("libraryId") {
            self.libraryId = dict["libraryId"] as! String
        }
    }
}

public class UploadDocumentResponseBody : Tea.TeaModel {
    public var cost: Int64?

    public var data: String?

    public var dataType: String?

    public var errCode: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var time: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cost != nil {
            map["cost"] = self.cost!
        }
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.dataType != nil {
            map["dataType"] = self.dataType!
        }
        if self.errCode != nil {
            map["errCode"] = self.errCode!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        if self.time != nil {
            map["time"] = self.time!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("cost") {
            self.cost = dict["cost"] as! Int64
        }
        if dict.keys.contains("data") {
            self.data = dict["data"] as! String
        }
        if dict.keys.contains("dataType") {
            self.dataType = dict["dataType"] as! String
        }
        if dict.keys.contains("errCode") {
            self.errCode = dict["errCode"] as! String
        }
        if dict.keys.contains("message") {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("requestId") {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("success") {
            self.success = dict["success"] as! Bool
        }
        if dict.keys.contains("time") {
            self.time = dict["time"] as! String
        }
    }
}

public class UploadDocumentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UploadDocumentResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UploadDocumentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
