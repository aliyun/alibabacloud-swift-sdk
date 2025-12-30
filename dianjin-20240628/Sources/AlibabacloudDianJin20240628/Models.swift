import Foundation
import Tea
import TeaUtils
import DarabonbaXML
import AlibabaCloudCredentials
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["docId"] as? String {
                self.docId = value
            }
            if let value = dict["docYear"] as? Int32 {
                self.docYear = value
            }
            if let value = dict["endPage"] as? Int32 {
                self.endPage = value
            }
            if let value = dict["libraryId"] as? String {
                self.libraryId = value
            }
            if let value = dict["startPage"] as? Int32 {
                self.startPage = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["anaYears"] as? [Int32] {
            self.anaYears = value
        }
        if let value = dict["docInfos"] as? [Any?] {
            var tmp : [CreateAnnualDocSummaryTaskRequest.DocInfos] = []
            for v in value {
                if v != nil {
                    var model = CreateAnnualDocSummaryTaskRequest.DocInfos()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.docInfos = tmp
        }
        if let value = dict["enableTable"] as? Bool {
            self.enableTable = value
        }
        if let value = dict["instruction"] as? String {
            self.instruction = value
        }
        if let value = dict["modelId"] as? String {
            self.modelId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["cost"] as? Int64 {
            self.cost = value
        }
        if let value = dict["data"] as? String {
            self.data = value
        }
        if let value = dict["dataType"] as? String {
            self.dataType = value
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["time"] as? String {
            self.time = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateAnnualDocSummaryTaskResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["channel"] as? String {
            self.channel = value
        }
        if let value = dict["enableLibrary"] as? Bool {
            self.enableLibrary = value
        }
        if let value = dict["metaData"] as? [String: Any] {
            self.metaData = value
        }
        if let value = dict["playCode"] as? String {
            self.playCode = value
        }
        if let value = dict["qaLibraryList"] as? [String] {
            self.qaLibraryList = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["selfDirected"] as? Bool {
            self.selfDirected = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["openingRemarks"] as? String {
                self.openingRemarks = value
            }
            if let value = dict["sessionId"] as? String {
                self.sessionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["cost"] as? Int64 {
            self.cost = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = CreateDialogResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["dataType"] as? String {
            self.dataType = value
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["time"] as? String {
            self.time = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateDialogResponseBody()
            model.fromMap(value)
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["content"] as? String {
                    self.content = value
                }
                if let value = dict["role"] as? String {
                    self.role = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["dialogueList"] as? [Any?] {
                var tmp : [CreateDialogAnalysisTaskRequest.ConversationList.DialogueList] = []
                for v in value {
                    if v != nil {
                        var model = CreateDialogAnalysisTaskRequest.ConversationList.DialogueList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["analysisNodes"] as? [String] {
            self.analysisNodes = value
        }
        if let value = dict["conversationList"] as? [Any?] {
            var tmp : [CreateDialogAnalysisTaskRequest.ConversationList] = []
            for v in value {
                if v != nil {
                    var model = CreateDialogAnalysisTaskRequest.ConversationList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.conversationList = tmp
        }
        if let value = dict["metaData"] as? [String: Any] {
            self.metaData = value
        }
        if let value = dict["playCode"] as? String {
            self.playCode = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["cost"] as? Int64 {
            self.cost = value
        }
        if let value = dict["data"] as? [String] {
            self.data = value
        }
        if let value = dict["dataType"] as? String {
            self.dataType = value
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["time"] as? String {
            self.time = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateDialogAnalysisTaskResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["docId"] as? String {
                self.docId = value
            }
            if let value = dict["endPage"] as? Int32 {
                self.endPage = value
            }
            if let value = dict["libraryId"] as? String {
                self.libraryId = value
            }
            if let value = dict["startPage"] as? Int32 {
                self.startPage = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["docInfos"] as? [Any?] {
            var tmp : [CreateDocsSummaryTaskRequest.DocInfos] = []
            for v in value {
                if v != nil {
                    var model = CreateDocsSummaryTaskRequest.DocInfos()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.docInfos = tmp
        }
        if let value = dict["enableTable"] as? Bool {
            self.enableTable = value
        }
        if let value = dict["instruction"] as? String {
            self.instruction = value
        }
        if let value = dict["modelId"] as? String {
            self.modelId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["cost"] as? Int64 {
            self.cost = value
        }
        if let value = dict["data"] as? String {
            self.data = value
        }
        if let value = dict["dataType"] as? String {
            self.dataType = value
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["time"] as? String {
            self.time = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateDocsSummaryTaskResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["docId"] as? String {
            self.docId = value
        }
        if let value = dict["enableTable"] as? Bool {
            self.enableTable = value
        }
        if let value = dict["endPage"] as? Int32 {
            self.endPage = value
        }
        if let value = dict["instruction"] as? String {
            self.instruction = value
        }
        if let value = dict["libraryId"] as? String {
            self.libraryId = value
        }
        if let value = dict["modelId"] as? String {
            self.modelId = value
        }
        if let value = dict["startPage"] as? Int32 {
            self.startPage = value
        }
        if let value = dict["taskType"] as? String {
            self.taskType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["cost"] as? Int64 {
            self.cost = value
        }
        if let value = dict["data"] as? String {
            self.data = value
        }
        if let value = dict["dataType"] as? String {
            self.dataType = value
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["time"] as? String {
            self.time = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateFinReportSummaryTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateImageDetectionTaskHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xLoadTest: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.xLoadTest != nil {
            map["X-Load-Test"] = self.xLoadTest!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["X-Load-Test"] as? Bool {
            self.xLoadTest = value
        }
    }
}

public class CreateImageDetectionTaskRequest : Tea.TeaModel {
    public class FileInfo : Tea.TeaModel {
        public var fileId: String?

        public var fileName: String?

        public var fileTraceId: String?

        public var ossKey: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fileId != nil {
                map["fileId"] = self.fileId!
            }
            if self.fileName != nil {
                map["fileName"] = self.fileName!
            }
            if self.fileTraceId != nil {
                map["fileTraceId"] = self.fileTraceId!
            }
            if self.ossKey != nil {
                map["ossKey"] = self.ossKey!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["fileId"] as? String {
                self.fileId = value
            }
            if let value = dict["fileName"] as? String {
                self.fileName = value
            }
            if let value = dict["fileTraceId"] as? String {
                self.fileTraceId = value
            }
            if let value = dict["ossKey"] as? String {
                self.ossKey = value
            }
        }
    }
    public var fileInfo: CreateImageDetectionTaskRequest.FileInfo?

    public var fileUrl: String?

    public var requestId: String?

    public var userId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.fileInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fileInfo != nil {
            map["fileInfo"] = self.fileInfo?.toMap()
        }
        if self.fileUrl != nil {
            map["fileUrl"] = self.fileUrl!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.userId != nil {
            map["userId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["fileInfo"] as? [String: Any?] {
            var model = CreateImageDetectionTaskRequest.FileInfo()
            model.fromMap(value)
            self.fileInfo = model
        }
        if let value = dict["fileUrl"] as? String {
            self.fileUrl = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["userId"] as? String {
            self.userId = value
        }
    }
}

public class CreateImageDetectionTaskResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class FileInfo : Tea.TeaModel {
            public var fileId: String?

            public var fileName: String?

            public var fileTraceId: String?

            public var ossKey: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.fileId != nil {
                    map["fileId"] = self.fileId!
                }
                if self.fileName != nil {
                    map["fileName"] = self.fileName!
                }
                if self.fileTraceId != nil {
                    map["fileTraceId"] = self.fileTraceId!
                }
                if self.ossKey != nil {
                    map["ossKey"] = self.ossKey!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["fileId"] as? String {
                    self.fileId = value
                }
                if let value = dict["fileName"] as? String {
                    self.fileName = value
                }
                if let value = dict["fileTraceId"] as? String {
                    self.fileTraceId = value
                }
                if let value = dict["ossKey"] as? String {
                    self.ossKey = value
                }
            }
        }
        public var fileInfo: CreateImageDetectionTaskResponseBody.Data.FileInfo?

        public var requestId: String?

        public var taskId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.fileInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fileInfo != nil {
                map["fileInfo"] = self.fileInfo?.toMap()
            }
            if self.requestId != nil {
                map["requestId"] = self.requestId!
            }
            if self.taskId != nil {
                map["taskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["fileInfo"] as? [String: Any?] {
                var model = CreateImageDetectionTaskResponseBody.Data.FileInfo()
                model.fromMap(value)
                self.fileInfo = model
            }
            if let value = dict["requestId"] as? String {
                self.requestId = value
            }
            if let value = dict["taskId"] as? String {
                self.taskId = value
            }
        }
    }
    public var code: String?

    public var data: CreateImageDetectionTaskResponseBody.Data?

    public var message: String?

    public var retryAble: Bool?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.retryAble != nil {
            map["retryAble"] = self.retryAble!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = CreateImageDetectionTaskResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["retryAble"] as? Bool {
            self.retryAble = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateImageDetectionTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateImageDetectionTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateImageDetectionTaskResponseBody()
            model.fromMap(value)
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["docTreeSplit"] as? Bool {
                    self.docTreeSplit = value
                }
                if let value = dict["docTreeSplitSize"] as? Int32 {
                    self.docTreeSplitSize = value
                }
                if let value = dict["enhanceGraph"] as? Bool {
                    self.enhanceGraph = value
                }
                if let value = dict["enhanceTable"] as? Bool {
                    self.enhanceTable = value
                }
                if let value = dict["overlap"] as? Int32 {
                    self.overlap = value
                }
                if let value = dict["sentenceSplit"] as? Bool {
                    self.sentenceSplit = value
                }
                if let value = dict["sentenceSplitSize"] as? Int32 {
                    self.sentenceSplitSize = value
                }
                if let value = dict["size"] as? Int32 {
                    self.size = value
                }
                if let value = dict["split"] as? Bool {
                    self.split = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["temperature"] as? Double {
                    self.temperature = value
                }
                if let value = dict["topP"] as? Double {
                    self.topP = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["enableFollowUp"] as? Bool {
                    self.enableFollowUp = value
                }
                if let value = dict["enableMultiQuery"] as? Bool {
                    self.enableMultiQuery = value
                }
                if let value = dict["enableOpenQa"] as? Bool {
                    self.enableOpenQa = value
                }
                if let value = dict["enableQueryRewrite"] as? Bool {
                    self.enableQueryRewrite = value
                }
                if let value = dict["enableSession"] as? Bool {
                    self.enableSession = value
                }
                if let value = dict["localKnowledgeId"] as? String {
                    self.localKnowledgeId = value
                }
                if let value = dict["withDocumentReference"] as? Bool {
                    self.withDocumentReference = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["documentRankType"] as? String {
                    self.documentRankType = value
                }
                if let value = dict["limit"] as? Int32 {
                    self.limit = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["category"] as? String {
                    self.category = value
                }
                if let value = dict["enable"] as? Bool {
                    self.enable = value
                }
                if let value = dict["indexAnalyzer"] as? String {
                    self.indexAnalyzer = value
                }
                if let value = dict["rankThreshold"] as? Double {
                    self.rankThreshold = value
                }
                if let value = dict["searchAnalyzer"] as? String {
                    self.searchAnalyzer = value
                }
                if let value = dict["topK"] as? Int32 {
                    self.topK = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["category"] as? String {
                    self.category = value
                }
                if let value = dict["embeddingType"] as? String {
                    self.embeddingType = value
                }
                if let value = dict["enable"] as? Bool {
                    self.enable = value
                }
                if let value = dict["rankThreshold"] as? Double {
                    self.rankThreshold = value
                }
                if let value = dict["topK"] as? Int32 {
                    self.topK = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["chunkStrategy"] as? [String: Any?] {
                var model = CreateLibraryRequest.IndexSetting.ChunkStrategy()
                model.fromMap(value)
                self.chunkStrategy = model
            }
            if let value = dict["modelConfig"] as? [String: Any?] {
                var model = CreateLibraryRequest.IndexSetting.ModelConfig()
                model.fromMap(value)
                self.modelConfig = model
            }
            if let value = dict["promptRoleStyle"] as? String {
                self.promptRoleStyle = value
            }
            if let value = dict["queryEnhancer"] as? [String: Any?] {
                var model = CreateLibraryRequest.IndexSetting.QueryEnhancer()
                model.fromMap(value)
                self.queryEnhancer = model
            }
            if let value = dict["recallStrategy"] as? [String: Any?] {
                var model = CreateLibraryRequest.IndexSetting.RecallStrategy()
                model.fromMap(value)
                self.recallStrategy = model
            }
            if let value = dict["textIndexSetting"] as? [String: Any?] {
                var model = CreateLibraryRequest.IndexSetting.TextIndexSetting()
                model.fromMap(value)
                self.textIndexSetting = model
            }
            if let value = dict["vectorIndexSetting"] as? [String: Any?] {
                var model = CreateLibraryRequest.IndexSetting.VectorIndexSetting()
                model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["indexSetting"] as? [String: Any?] {
            var model = CreateLibraryRequest.IndexSetting()
            model.fromMap(value)
            self.indexSetting = model
        }
        if let value = dict["libraryName"] as? String {
            self.libraryName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["cost"] as? Int64 {
            self.cost = value
        }
        if let value = dict["data"] as? String {
            self.data = value
        }
        if let value = dict["dataType"] as? String {
            self.dataType = value
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["time"] as? String {
            self.time = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateLibraryResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["docId"] as? String {
            self.docId = value
        }
        if let value = dict["knowledge"] as? String {
            self.knowledge = value
        }
        if let value = dict["libraryId"] as? String {
            self.libraryId = value
        }
        if let value = dict["modelId"] as? String {
            self.modelId = value
        }
        if let value = dict["translateTo"] as? String {
            self.translateTo = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["cost"] as? Int64 {
            self.cost = value
        }
        if let value = dict["data"] as? String {
            self.data = value
        }
        if let value = dict["dataType"] as? String {
            self.dataType = value
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["time"] as? String {
            self.time = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreatePdfTranslateTaskResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["chunkMeta"] as? [String: Any] {
                self.chunkMeta = value
            }
            if let value = dict["chunkOrder"] as? Int32 {
                self.chunkOrder = value
            }
            if let value = dict["chunkText"] as? String {
                self.chunkText = value
            }
            if let value = dict["chunkType"] as? String {
                self.chunkType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["chunks"] as? [Any?] {
            var tmp : [CreatePredefinedDocumentRequest.Chunks] = []
            for v in value {
                if v != nil {
                    var model = CreatePredefinedDocumentRequest.Chunks()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.chunks = tmp
        }
        if let value = dict["libraryId"] as? String {
            self.libraryId = value
        }
        if let value = dict["metadata"] as? [String: Any] {
            self.metadata = value
        }
        if let value = dict["title"] as? String {
            self.title = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["cost"] as? Int64 {
            self.cost = value
        }
        if let value = dict["data"] as? String {
            self.data = value
        }
        if let value = dict["dataType"] as? String {
            self.dataType = value
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["time"] as? String {
            self.time = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreatePredefinedDocumentResponseBody()
            model.fromMap(value)
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["begin"] as? Int32 {
                    self.begin = value
                }
                if let value = dict["beginTime"] as? String {
                    self.beginTime = value
                }
                if let value = dict["content"] as? String {
                    self.content = value
                }
                if let value = dict["customerId"] as? String {
                    self.customerId = value
                }
                if let value = dict["customerServiceId"] as? String {
                    self.customerServiceId = value
                }
                if let value = dict["customerServiceType"] as? String {
                    self.customerServiceType = value
                }
                if let value = dict["end"] as? Int32 {
                    self.end = value
                }
                if let value = dict["role"] as? String {
                    self.role = value
                }
                if let value = dict["type"] as? String {
                    self.type = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["callType"] as? String {
                self.callType = value
            }
            if let value = dict["customerId"] as? String {
                self.customerId = value
            }
            if let value = dict["customerName"] as? String {
                self.customerName = value
            }
            if let value = dict["customerServiceId"] as? String {
                self.customerServiceId = value
            }
            if let value = dict["customerServiceName"] as? String {
                self.customerServiceName = value
            }
            if let value = dict["dialogueList"] as? [Any?] {
                var tmp : [CreateQualityCheckTaskRequest.ConversationList.DialogueList] = []
                for v in value {
                    if v != nil {
                        var model = CreateQualityCheckTaskRequest.ConversationList.DialogueList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.dialogueList = tmp
            }
            if let value = dict["gmtService"] as? String {
                self.gmtService = value
            }
        }
    }
    public var conversationList: CreateQualityCheckTaskRequest.ConversationList?

    public var gmtService: String?

    public var metaData: [String: String]?

    public var qualityGroup: [String]?

    public var requestId: String?

    public var sceneCode: String?

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
        if self.sceneCode != nil {
            map["sceneCode"] = self.sceneCode!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["conversationList"] as? [String: Any?] {
            var model = CreateQualityCheckTaskRequest.ConversationList()
            model.fromMap(value)
            self.conversationList = model
        }
        if let value = dict["gmtService"] as? String {
            self.gmtService = value
        }
        if let value = dict["metaData"] as? [String: String] {
            self.metaData = value
        }
        if let value = dict["qualityGroup"] as? [String] {
            self.qualityGroup = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["sceneCode"] as? String {
            self.sceneCode = value
        }
        if let value = dict["type"] as? String {
            self.type = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["taskId"] as? String {
                self.taskId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["cost"] as? Int64 {
            self.cost = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = CreateQualityCheckTaskResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["dataType"] as? String {
            self.dataType = value
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["time"] as? String {
            self.time = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateQualityCheckTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateVideoCreationTaskHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xLoadTest: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.xLoadTest != nil {
            map["X-Load-Test"] = self.xLoadTest!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["X-Load-Test"] as? Bool {
            self.xLoadTest = value
        }
    }
}

public class CreateVideoCreationTaskRequest : Tea.TeaModel {
    public class CreationInstruction : Tea.TeaModel {
        public var instruction: String?

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
            if self.instruction != nil {
                map["instruction"] = self.instruction!
            }
            if self.templateId != nil {
                map["templateId"] = self.templateId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["instruction"] as? String {
                self.instruction = value
            }
            if let value = dict["templateId"] as? String {
                self.templateId = value
            }
        }
    }
    public class FileInfo : Tea.TeaModel {
        public var fileId: String?

        public var fileName: String?

        public var fileTraceId: String?

        public var ossKey: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fileId != nil {
                map["fileId"] = self.fileId!
            }
            if self.fileName != nil {
                map["fileName"] = self.fileName!
            }
            if self.fileTraceId != nil {
                map["fileTraceId"] = self.fileTraceId!
            }
            if self.ossKey != nil {
                map["ossKey"] = self.ossKey!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["fileId"] as? String {
                self.fileId = value
            }
            if let value = dict["fileName"] as? String {
                self.fileName = value
            }
            if let value = dict["fileTraceId"] as? String {
                self.fileTraceId = value
            }
            if let value = dict["ossKey"] as? String {
                self.ossKey = value
            }
        }
    }
    public var creationInstruction: CreateVideoCreationTaskRequest.CreationInstruction?

    public var fileInfo: CreateVideoCreationTaskRequest.FileInfo?

    public var imageDetectionTaskId: String?

    public var requestId: String?

    public var userId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.creationInstruction?.validate()
        try self.fileInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.creationInstruction != nil {
            map["creationInstruction"] = self.creationInstruction?.toMap()
        }
        if self.fileInfo != nil {
            map["fileInfo"] = self.fileInfo?.toMap()
        }
        if self.imageDetectionTaskId != nil {
            map["imageDetectionTaskId"] = self.imageDetectionTaskId!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.userId != nil {
            map["userId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["creationInstruction"] as? [String: Any?] {
            var model = CreateVideoCreationTaskRequest.CreationInstruction()
            model.fromMap(value)
            self.creationInstruction = model
        }
        if let value = dict["fileInfo"] as? [String: Any?] {
            var model = CreateVideoCreationTaskRequest.FileInfo()
            model.fromMap(value)
            self.fileInfo = model
        }
        if let value = dict["imageDetectionTaskId"] as? String {
            self.imageDetectionTaskId = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["userId"] as? String {
            self.userId = value
        }
    }
}

public class CreateVideoCreationTaskResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var estimatedWaitTimeInSeconds: Int64?

        public var requestId: String?

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
            if self.estimatedWaitTimeInSeconds != nil {
                map["estimatedWaitTimeInSeconds"] = self.estimatedWaitTimeInSeconds!
            }
            if self.requestId != nil {
                map["requestId"] = self.requestId!
            }
            if self.taskId != nil {
                map["taskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["estimatedWaitTimeInSeconds"] as? Int64 {
                self.estimatedWaitTimeInSeconds = value
            }
            if let value = dict["requestId"] as? String {
                self.requestId = value
            }
            if let value = dict["taskId"] as? String {
                self.taskId = value
            }
        }
    }
    public var code: String?

    public var data: CreateVideoCreationTaskResponseBody.Data?

    public var message: String?

    public var retryAble: Bool?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.retryAble != nil {
            map["retryAble"] = self.retryAble!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = CreateVideoCreationTaskResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["retryAble"] as? Bool {
            self.retryAble = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateVideoCreationTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateVideoCreationTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateVideoCreationTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DashscopeAsyncTaskFinishEventHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xLoadTest: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.xLoadTest != nil {
            map["X-Load-Test"] = self.xLoadTest!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["X-Load-Test"] as? Bool {
            self.xLoadTest = value
        }
    }
}

public class DashscopeAsyncTaskFinishEventRequest : Tea.TeaModel {
    public var body: [String: Any]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? [String: Any] {
            self.body = value
        }
    }
}

public class DashscopeAsyncTaskFinishEventResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var retryAble: Bool?

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
            map["code"] = self.code!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.retryAble != nil {
            map["retryAble"] = self.retryAble!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["retryAble"] as? Bool {
            self.retryAble = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class DashscopeAsyncTaskFinishEventResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DashscopeAsyncTaskFinishEventResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DashscopeAsyncTaskFinishEventResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["docIds"] as? [String] {
            self.docIds = value
        }
        if let value = dict["libraryId"] as? String {
            self.libraryId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["cost"] as? Int64 {
            self.cost = value
        }
        if let value = dict["data"] as? Bool {
            self.data = value
        }
        if let value = dict["dataType"] as? String {
            self.dataType = value
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["time"] as? String {
            self.time = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteDocumentResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["libraryId"] as? String {
            self.libraryId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteLibraryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EndToEndRealTimeDialogRequest : Tea.TeaModel {
    public var asrModelId: String?

    public var inputFormat: String?

    public var outputFormat: String?

    public var pitchRate: Int32?

    public var sampleRate: String?

    public var speechRate: Int32?

    public var ttsModelId: String?

    public var voiceCode: String?

    public var volume: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.asrModelId != nil {
            map["asrModelId"] = self.asrModelId!
        }
        if self.inputFormat != nil {
            map["inputFormat"] = self.inputFormat!
        }
        if self.outputFormat != nil {
            map["outputFormat"] = self.outputFormat!
        }
        if self.pitchRate != nil {
            map["pitchRate"] = self.pitchRate!
        }
        if self.sampleRate != nil {
            map["sampleRate"] = self.sampleRate!
        }
        if self.speechRate != nil {
            map["speechRate"] = self.speechRate!
        }
        if self.ttsModelId != nil {
            map["ttsModelId"] = self.ttsModelId!
        }
        if self.voiceCode != nil {
            map["voiceCode"] = self.voiceCode!
        }
        if self.volume != nil {
            map["volume"] = self.volume!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["asrModelId"] as? String {
            self.asrModelId = value
        }
        if let value = dict["inputFormat"] as? String {
            self.inputFormat = value
        }
        if let value = dict["outputFormat"] as? String {
            self.outputFormat = value
        }
        if let value = dict["pitchRate"] as? Int32 {
            self.pitchRate = value
        }
        if let value = dict["sampleRate"] as? String {
            self.sampleRate = value
        }
        if let value = dict["speechRate"] as? Int32 {
            self.speechRate = value
        }
        if let value = dict["ttsModelId"] as? String {
            self.ttsModelId = value
        }
        if let value = dict["voiceCode"] as? String {
            self.voiceCode = value
        }
        if let value = dict["volume"] as? Int32 {
            self.volume = value
        }
    }
}

public class EndToEndRealTimeDialogResponseBody : Tea.TeaModel {
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
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class EndToEndRealTimeDialogResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EndToEndRealTimeDialogResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = EndToEndRealTimeDialogResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["taskId"] as? String {
            self.taskId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["cost"] as? Int64 {
            self.cost = value
        }
        if let value = dict["data"] as? String {
            self.data = value
        }
        if let value = dict["dataType"] as? String {
            self.dataType = value
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["time"] as? String {
            self.time = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = EvictTaskResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["docId"] as? String {
            self.docId = value
        }
        if let value = dict["libraryId"] as? String {
            self.libraryId = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["answer"] as? String {
                    self.answer = value
                }
                if let value = dict["question"] as? String {
                    self.question = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["currentStatus"] as? String {
                self.currentStatus = value
            }
            if let value = dict["docId"] as? String {
                self.docId = value
            }
            if let value = dict["libraryId"] as? String {
                self.libraryId = value
            }
            if let value = dict["parseQaResults"] as? [Any?] {
                var tmp : [GenDocQaResultResponseBody.Data.ParseQaResults] = []
                for v in value {
                    if v != nil {
                        var model = GenDocQaResultResponseBody.Data.ParseQaResults()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["cost"] as? Int64 {
            self.cost = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = GenDocQaResultResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["dataType"] as? String {
            self.dataType = value
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["time"] as? String {
            self.time = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GenDocQaResultResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["embeddingTypeList"] as? [[String: String]] {
                self.embeddingTypeList = value
            }
            if let value = dict["frontendConfig"] as? [String: Bool] {
                self.frontendConfig = value
            }
            if let value = dict["libraryDocumentStatusList"] as? [[String: String]] {
                self.libraryDocumentStatusList = value
            }
            if let value = dict["llmHelperTypeList"] as? [[String: String]] {
                self.llmHelperTypeList = value
            }
            if let value = dict["textIndexCategoryList"] as? [String] {
                self.textIndexCategoryList = value
            }
            if let value = dict["vectorIndexCategoryList"] as? [String] {
                self.vectorIndexCategoryList = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["cost"] as? Int64 {
            self.cost = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetAppConfigResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["dataType"] as? String {
            self.dataType = value
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["time"] as? String {
            self.time = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetAppConfigResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["batchId"] as? String {
            self.batchId = value
        }
        if let value = dict["sessionId"] as? String {
            self.sessionId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["content"] as? String {
                    self.content = value
                }
                if let value = dict["gmtCreate"] as? String {
                    self.gmtCreate = value
                }
                if let value = dict["oriContent"] as? String {
                    self.oriContent = value
                }
                if let value = dict["reply"] as? String {
                    self.reply = value
                }
                if let value = dict["sessionId"] as? String {
                    self.sessionId = value
                }
                if let value = dict["type"] as? String {
                    self.type = value
                }
                if let value = dict["userId"] as? String {
                    self.userId = value
                }
                if let value = dict["userName"] as? String {
                    self.userName = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["currentState"] as? String {
                self.currentState = value
            }
            if let value = dict["questionList"] as? [Any?] {
                var tmp : [GetChatQuestionRespResponseBody.Data.QuestionList] = []
                for v in value {
                    if v != nil {
                        var model = GetChatQuestionRespResponseBody.Data.QuestionList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["cost"] as? Int64 {
            self.cost = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetChatQuestionRespResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["dataType"] as? String {
            self.dataType = value
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["time"] as? String {
            self.time = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetChatQuestionRespResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["asc"] as? Bool {
            self.asc = value
        }
        if let value = dict["endTime"] as? String {
            self.endTime = value
        }
        if let value = dict["sessionIds"] as? [String] {
            self.sessionIds = value
        }
        if let value = dict["startTime"] as? String {
            self.startTime = value
        }
        if let value = dict["useUrl"] as? Bool {
            self.useUrl = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["name"] as? String {
                            self.name = value
                        }
                        if let value = dict["value"] as? String {
                            self.value = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["dialogExecPlan"] as? String {
                        self.dialogExecPlan = value
                    }
                    if let value = dict["dialogLabels"] as? [Any?] {
                        var tmp : [GetDialogAnalysisResultResponseBody.Data.DialogAnalysisRespList.AnalysisResp.DialogLabels] = []
                        for v in value {
                            if v != nil {
                                var model = GetDialogAnalysisResultResponseBody.Data.DialogAnalysisRespList.AnalysisResp.DialogLabels()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.dialogLabels = tmp
                    }
                    if let value = dict["dialogOpenAnalysis"] as? [String: Any] {
                        self.dialogOpenAnalysis = value
                    }
                    if let value = dict["dialogProcessAnalysis"] as? [String: Any] {
                        self.dialogProcessAnalysis = value
                    }
                    if let value = dict["dialogSop"] as? String {
                        self.dialogSop = value
                    }
                    if let value = dict["dialogSummary"] as? String {
                        self.dialogSummary = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["analysisResp"] as? [String: Any?] {
                    var model = GetDialogAnalysisResultResponseBody.Data.DialogAnalysisRespList.AnalysisResp()
                    model.fromMap(value)
                    self.analysisResp = model
                }
                if let value = dict["gmtCreate"] as? String {
                    self.gmtCreate = value
                }
                if let value = dict["ossUrl"] as? String {
                    self.ossUrl = value
                }
                if let value = dict["sessionId"] as? String {
                    self.sessionId = value
                }
                if let value = dict["status"] as? String {
                    self.status = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["dialogAnalysisRespList"] as? [Any?] {
                var tmp : [GetDialogAnalysisResultResponseBody.Data.DialogAnalysisRespList] = []
                for v in value {
                    if v != nil {
                        var model = GetDialogAnalysisResultResponseBody.Data.DialogAnalysisRespList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["cost"] as? Int64 {
            self.cost = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetDialogAnalysisResultResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["dataType"] as? String {
            self.dataType = value
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["time"] as? String {
            self.time = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetDialogAnalysisResultResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["sessionId"] as? String {
            self.sessionId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["content"] as? String {
                    self.content = value
                }
                if let value = dict["customerId"] as? String {
                    self.customerId = value
                }
                if let value = dict["customerServiceId"] as? String {
                    self.customerServiceId = value
                }
                if let value = dict["customerServiceType"] as? String {
                    self.customerServiceType = value
                }
                if let value = dict["hangUpDialog"] as? Bool {
                    self.hangUpDialog = value
                }
                if let value = dict["id"] as? Int64 {
                    self.id = value
                }
                if let value = dict["intentCode"] as? String {
                    self.intentCode = value
                }
                if let value = dict["intentName"] as? String {
                    self.intentName = value
                }
                if let value = dict["role"] as? String {
                    self.role = value
                }
                if let value = dict["type"] as? String {
                    self.type = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["dialogueList"] as? [Any?] {
                var tmp : [GetDialogDetailResponseBody.Data.DialogueList] = []
                for v in value {
                    if v != nil {
                        var model = GetDialogDetailResponseBody.Data.DialogueList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.dialogueList = tmp
            }
            if let value = dict["gmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["totalDialogTurns"] as? Int32 {
                self.totalDialogTurns = value
            }
            if let value = dict["validDialogTurns"] as? Int32 {
                self.validDialogTurns = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["cost"] as? Int64 {
            self.cost = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetDialogDetailResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["dataType"] as? String {
            self.dataType = value
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["time"] as? String {
            self.time = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetDialogDetailResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDialogLogRequest : Tea.TeaModel {
    public var id: String?

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
        if self.id != nil {
            map["id"] = self.id!
        }
        if self.sessionId != nil {
            map["sessionId"] = self.sessionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["id"] as? String {
            self.id = value
        }
        if let value = dict["sessionId"] as? String {
            self.sessionId = value
        }
    }
}

public class GetDialogLogResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class HitIntentionList : Tea.TeaModel {
            public var description_: String?

            public var intentionName: String?

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
                if self.intentionName != nil {
                    map["intentionName"] = self.intentionName!
                }
                if self.intentionScript != nil {
                    map["intentionScript"] = self.intentionScript!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["description"] as? String {
                    self.description_ = value
                }
                if let value = dict["intentionName"] as? String {
                    self.intentionName = value
                }
                if let value = dict["intentionScript"] as? String {
                    self.intentionScript = value
                }
            }
        }
        public class IntentionList : Tea.TeaModel {
            public var description_: String?

            public var intentionName: String?

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
                if self.intentionName != nil {
                    map["intentionName"] = self.intentionName!
                }
                if self.intentionScript != nil {
                    map["intentionScript"] = self.intentionScript!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["description"] as? String {
                    self.description_ = value
                }
                if let value = dict["intentionName"] as? String {
                    self.intentionName = value
                }
                if let value = dict["intentionScript"] as? String {
                    self.intentionScript = value
                }
            }
        }
        public var analysisProcess: String?

        public var conversationList: String?

        public var hitIntentionList: [GetDialogLogResponseBody.Data.HitIntentionList]?

        public var intentionList: [GetDialogLogResponseBody.Data.IntentionList]?

        public var modelCostTime: Int64?

        public var recallList: String?

        public override init() {
            super.init()
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
            if self.conversationList != nil {
                map["conversationList"] = self.conversationList!
            }
            if self.hitIntentionList != nil {
                var tmp : [Any] = []
                for k in self.hitIntentionList! {
                    tmp.append(k.toMap())
                }
                map["hitIntentionList"] = tmp
            }
            if self.intentionList != nil {
                var tmp : [Any] = []
                for k in self.intentionList! {
                    tmp.append(k.toMap())
                }
                map["intentionList"] = tmp
            }
            if self.modelCostTime != nil {
                map["modelCostTime"] = self.modelCostTime!
            }
            if self.recallList != nil {
                map["recallList"] = self.recallList!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["analysisProcess"] as? String {
                self.analysisProcess = value
            }
            if let value = dict["conversationList"] as? String {
                self.conversationList = value
            }
            if let value = dict["hitIntentionList"] as? [Any?] {
                var tmp : [GetDialogLogResponseBody.Data.HitIntentionList] = []
                for v in value {
                    if v != nil {
                        var model = GetDialogLogResponseBody.Data.HitIntentionList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.hitIntentionList = tmp
            }
            if let value = dict["intentionList"] as? [Any?] {
                var tmp : [GetDialogLogResponseBody.Data.IntentionList] = []
                for v in value {
                    if v != nil {
                        var model = GetDialogLogResponseBody.Data.IntentionList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.intentionList = tmp
            }
            if let value = dict["modelCostTime"] as? Int64 {
                self.modelCostTime = value
            }
            if let value = dict["recallList"] as? String {
                self.recallList = value
            }
        }
    }
    public var cost: Int64?

    public var data: GetDialogLogResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["cost"] as? Int64 {
            self.cost = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetDialogLogResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["dataType"] as? String {
            self.dataType = value
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["time"] as? String {
            self.time = value
        }
    }
}

public class GetDialogLogResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDialogLogResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetDialogLogResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["chunkIdList"] as? [String] {
            self.chunkIdList = value
        }
        if let value = dict["docId"] as? String {
            self.docId = value
        }
        if let value = dict["libraryId"] as? String {
            self.libraryId = value
        }
        if let value = dict["order"] as? String {
            self.order = value
        }
        if let value = dict["orderBy"] as? String {
            self.orderBy = value
        }
        if let value = dict["page"] as? Int32 {
            self.page = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["searchQuery"] as? String {
            self.searchQuery = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["axisArray"] as? [Double] {
                        self.axisArray = value
                    }
                    if let value = dict["page"] as? Int32 {
                        self.page = value
                    }
                    if let value = dict["textHighlightArea"] as? [Int32] {
                        self.textHighlightArea = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["chunkId"] as? String {
                    self.chunkId = value
                }
                if let value = dict["chunkMeta"] as? [String: Any] {
                    self.chunkMeta = value
                }
                if let value = dict["chunkOssUrl"] as? String {
                    self.chunkOssUrl = value
                }
                if let value = dict["chunkText"] as? String {
                    self.chunkText = value
                }
                if let value = dict["chunkType"] as? String {
                    self.chunkType = value
                }
                if let value = dict["docId"] as? String {
                    self.docId = value
                }
                if let value = dict["fileType"] as? String {
                    self.fileType = value
                }
                if let value = dict["libraryId"] as? String {
                    self.libraryId = value
                }
                if let value = dict["libraryName"] as? String {
                    self.libraryName = value
                }
                if let value = dict["nextChunkId"] as? String {
                    self.nextChunkId = value
                }
                if let value = dict["pos"] as? [Any?] {
                    var tmp : [GetDocumentChunkListResponseBody.Data.Records.Pos] = []
                    for v in value {
                        if v != nil {
                            var model = GetDocumentChunkListResponseBody.Data.Records.Pos()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.pos = tmp
                }
                if let value = dict["preChunkId"] as? String {
                    self.preChunkId = value
                }
                if let value = dict["score"] as? Double {
                    self.score = value
                }
                if let value = dict["title"] as? String {
                    self.title = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["currentPage"] as? Int64 {
                self.currentPage = value
            }
            if let value = dict["pageSize"] as? Int64 {
                self.pageSize = value
            }
            if let value = dict["records"] as? [Any?] {
                var tmp : [GetDocumentChunkListResponseBody.Data.Records] = []
                for v in value {
                    if v != nil {
                        var model = GetDocumentChunkListResponseBody.Data.Records()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.records = tmp
            }
            if let value = dict["totalPages"] as? Int64 {
                self.totalPages = value
            }
            if let value = dict["totalRecords"] as? Int64 {
                self.totalRecords = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["cost"] as? Int64 {
            self.cost = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetDocumentChunkListResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["dataType"] as? String {
            self.dataType = value
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["time"] as? String {
            self.time = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetDocumentChunkListResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["libraryId"] as? String {
            self.libraryId = value
        }
        if let value = dict["page"] as? Int32 {
            self.page = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["status"] as? String {
            self.status = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["docId"] as? String {
                    self.docId = value
                }
                if let value = dict["documentMeta"] as? [String: Any] {
                    self.documentMeta = value
                }
                if let value = dict["fileType"] as? String {
                    self.fileType = value
                }
                if let value = dict["gmtCreate"] as? String {
                    self.gmtCreate = value
                }
                if let value = dict["gmtModified"] as? String {
                    self.gmtModified = value
                }
                if let value = dict["libraryId"] as? String {
                    self.libraryId = value
                }
                if let value = dict["statusCode"] as? String {
                    self.statusCode = value
                }
                if let value = dict["title"] as? String {
                    self.title = value
                }
                if let value = dict["url"] as? String {
                    self.url = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["currentPage"] as? Int64 {
                self.currentPage = value
            }
            if let value = dict["pageSize"] as? Int64 {
                self.pageSize = value
            }
            if let value = dict["records"] as? [Any?] {
                var tmp : [GetDocumentListResponseBody.Data.Records] = []
                for v in value {
                    if v != nil {
                        var model = GetDocumentListResponseBody.Data.Records()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.records = tmp
            }
            if let value = dict["totalPages"] as? Int64 {
                self.totalPages = value
            }
            if let value = dict["totalRecords"] as? Int64 {
                self.totalRecords = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["cost"] as? Int64 {
            self.cost = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetDocumentListResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["dataType"] as? String {
            self.dataType = value
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["time"] as? String {
            self.time = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetDocumentListResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["documentId"] as? String {
            self.documentId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["cost"] as? Int64 {
            self.cost = value
        }
        if let value = dict["data"] as? String {
            self.data = value
        }
        if let value = dict["dataType"] as? String {
            self.dataType = value
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["time"] as? String {
            self.time = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetDocumentUrlResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["boost"] as? Double {
                self.boost = value
            }
            if let value = dict["key"] as? String {
                self.key = value
            }
            if let value = dict["operator"] as? String {
                self.operator_ = value
            }
            if let value = dict["value"] as? String {
                self.value = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["boost"] as? Double {
                self.boost = value
            }
            if let value = dict["key"] as? String {
                self.key = value
            }
            if let value = dict["operator"] as? String {
                self.operator_ = value
            }
            if let value = dict["value"] as? String {
                self.value = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["and"] as? [Any?] {
            var tmp : [GetFilterDocumentListRequest.And] = []
            for v in value {
                if v != nil {
                    var model = GetFilterDocumentListRequest.And()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.and = tmp
        }
        if let value = dict["docIdList"] as? [String] {
            self.docIdList = value
        }
        if let value = dict["libraryId"] as? String {
            self.libraryId = value
        }
        if let value = dict["or"] as? [Any?] {
            var tmp : [GetFilterDocumentListRequest.Or] = []
            for v in value {
                if v != nil {
                    var model = GetFilterDocumentListRequest.Or()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.or = tmp
        }
        if let value = dict["page"] as? Int32 {
            self.page = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["status"] as? [String] {
            self.status = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["docId"] as? String {
                    self.docId = value
                }
                if let value = dict["documentMeta"] as? [String: Any] {
                    self.documentMeta = value
                }
                if let value = dict["fileType"] as? String {
                    self.fileType = value
                }
                if let value = dict["gmtCreate"] as? String {
                    self.gmtCreate = value
                }
                if let value = dict["gmtModified"] as? String {
                    self.gmtModified = value
                }
                if let value = dict["libraryId"] as? String {
                    self.libraryId = value
                }
                if let value = dict["statusCode"] as? String {
                    self.statusCode = value
                }
                if let value = dict["title"] as? String {
                    self.title = value
                }
                if let value = dict["url"] as? String {
                    self.url = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["currentPage"] as? Int64 {
                self.currentPage = value
            }
            if let value = dict["pageSize"] as? Int64 {
                self.pageSize = value
            }
            if let value = dict["records"] as? [Any?] {
                var tmp : [GetFilterDocumentListResponseBody.Data.Records] = []
                for v in value {
                    if v != nil {
                        var model = GetFilterDocumentListResponseBody.Data.Records()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.records = tmp
            }
            if let value = dict["totalPages"] as? Int64 {
                self.totalPages = value
            }
            if let value = dict["totalRecords"] as? Int64 {
                self.totalRecords = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["cost"] as? Int64 {
            self.cost = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetFilterDocumentListResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["dataType"] as? String {
            self.dataType = value
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["time"] as? String {
            self.time = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetFilterDocumentListResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["bizId"] as? String {
            self.bizId = value
        }
        if let value = dict["bizType"] as? String {
            self.bizType = value
        }
        if let value = dict["page"] as? Int32 {
            self.page = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["bizId"] as? String {
                    self.bizId = value
                }
                if let value = dict["bizType"] as? String {
                    self.bizType = value
                }
                if let value = dict["extraMessage"] as? Any {
                    self.extraMessage = value
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
                if let value = dict["llmAnswer"] as? String {
                    self.llmAnswer = value
                }
                if let value = dict["llmPrompt"] as? String {
                    self.llmPrompt = value
                }
                if let value = dict["llmType"] as? String {
                    self.llmType = value
                }
                if let value = dict["sessionId"] as? String {
                    self.sessionId = value
                }
                if let value = dict["userQuery"] as? String {
                    self.userQuery = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["currentPage"] as? Int64 {
                self.currentPage = value
            }
            if let value = dict["pageSize"] as? Int64 {
                self.pageSize = value
            }
            if let value = dict["records"] as? [Any?] {
                var tmp : [GetHistoryListByBizTypeResponseBody.Data.Records] = []
                for v in value {
                    if v != nil {
                        var model = GetHistoryListByBizTypeResponseBody.Data.Records()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.records = tmp
            }
            if let value = dict["totalPages"] as? Int64 {
                self.totalPages = value
            }
            if let value = dict["totalRecords"] as? Int64 {
                self.totalRecords = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["cost"] as? Int64 {
            self.cost = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetHistoryListByBizTypeResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["dataType"] as? String {
            self.dataType = value
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["time"] as? String {
            self.time = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetHistoryListByBizTypeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetImageDetectionTaskResultHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xLoadTest: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.xLoadTest != nil {
            map["X-Load-Test"] = self.xLoadTest!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["X-Load-Test"] as? Bool {
            self.xLoadTest = value
        }
    }
}

public class GetImageDetectionTaskResultRequest : Tea.TeaModel {
    public var taskId: String?

    public var userId: String?

    public override init() {
        super.init()
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
        if self.userId != nil {
            map["userId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["taskId"] as? String {
            self.taskId = value
        }
        if let value = dict["userId"] as? String {
            self.userId = value
        }
    }
}

public class GetImageDetectionTaskResultResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class DetectionResult : Tea.TeaModel {
            public class DetectionDetails : Tea.TeaModel {
                public var code: String?

                public var confidence: Double?

                public var pass: Bool?

                public var reason: String?

                public override init() {
                    super.init()
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
                        map["code"] = self.code!
                    }
                    if self.confidence != nil {
                        map["confidence"] = self.confidence!
                    }
                    if self.pass != nil {
                        map["pass"] = self.pass!
                    }
                    if self.reason != nil {
                        map["reason"] = self.reason!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["code"] as? String {
                        self.code = value
                    }
                    if let value = dict["confidence"] as? Double {
                        self.confidence = value
                    }
                    if let value = dict["pass"] as? Bool {
                        self.pass = value
                    }
                    if let value = dict["reason"] as? String {
                        self.reason = value
                    }
                }
            }
            public var description_: String?

            public var detectionDetails: [GetImageDetectionTaskResultResponseBody.Data.DetectionResult.DetectionDetails]?

            public var portraitType: String?

            public var suggestions: [String]?

            public override init() {
                super.init()
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
                if self.detectionDetails != nil {
                    var tmp : [Any] = []
                    for k in self.detectionDetails! {
                        tmp.append(k.toMap())
                    }
                    map["detectionDetails"] = tmp
                }
                if self.portraitType != nil {
                    map["portraitType"] = self.portraitType!
                }
                if self.suggestions != nil {
                    map["suggestions"] = self.suggestions!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["description"] as? String {
                    self.description_ = value
                }
                if let value = dict["detectionDetails"] as? [Any?] {
                    var tmp : [GetImageDetectionTaskResultResponseBody.Data.DetectionResult.DetectionDetails] = []
                    for v in value {
                        if v != nil {
                            var model = GetImageDetectionTaskResultResponseBody.Data.DetectionResult.DetectionDetails()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.detectionDetails = tmp
                }
                if let value = dict["portraitType"] as? String {
                    self.portraitType = value
                }
                if let value = dict["suggestions"] as? [String] {
                    self.suggestions = value
                }
            }
        }
        public class FileInfo : Tea.TeaModel {
            public var fileId: String?

            public var fileName: String?

            public var fileTraceId: String?

            public var ossKey: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.fileId != nil {
                    map["fileId"] = self.fileId!
                }
                if self.fileName != nil {
                    map["fileName"] = self.fileName!
                }
                if self.fileTraceId != nil {
                    map["fileTraceId"] = self.fileTraceId!
                }
                if self.ossKey != nil {
                    map["ossKey"] = self.ossKey!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["fileId"] as? String {
                    self.fileId = value
                }
                if let value = dict["fileName"] as? String {
                    self.fileName = value
                }
                if let value = dict["fileTraceId"] as? String {
                    self.fileTraceId = value
                }
                if let value = dict["ossKey"] as? String {
                    self.ossKey = value
                }
            }
        }
        public var detectionConclusion: String?

        public var detectionResult: GetImageDetectionTaskResultResponseBody.Data.DetectionResult?

        public var fileInfo: GetImageDetectionTaskResultResponseBody.Data.FileInfo?

        public var taskId: String?

        public var taskStatus: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.detectionResult?.validate()
            try self.fileInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.detectionConclusion != nil {
                map["detectionConclusion"] = self.detectionConclusion!
            }
            if self.detectionResult != nil {
                map["detectionResult"] = self.detectionResult?.toMap()
            }
            if self.fileInfo != nil {
                map["fileInfo"] = self.fileInfo?.toMap()
            }
            if self.taskId != nil {
                map["taskId"] = self.taskId!
            }
            if self.taskStatus != nil {
                map["taskStatus"] = self.taskStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["detectionConclusion"] as? String {
                self.detectionConclusion = value
            }
            if let value = dict["detectionResult"] as? [String: Any?] {
                var model = GetImageDetectionTaskResultResponseBody.Data.DetectionResult()
                model.fromMap(value)
                self.detectionResult = model
            }
            if let value = dict["fileInfo"] as? [String: Any?] {
                var model = GetImageDetectionTaskResultResponseBody.Data.FileInfo()
                model.fromMap(value)
                self.fileInfo = model
            }
            if let value = dict["taskId"] as? String {
                self.taskId = value
            }
            if let value = dict["taskStatus"] as? String {
                self.taskStatus = value
            }
        }
    }
    public var code: String?

    public var data: GetImageDetectionTaskResultResponseBody.Data?

    public var message: String?

    public var retryAble: Bool?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.retryAble != nil {
            map["retryAble"] = self.retryAble!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetImageDetectionTaskResultResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["retryAble"] as? Bool {
            self.retryAble = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class GetImageDetectionTaskResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetImageDetectionTaskResultResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetImageDetectionTaskResultResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["libraryId"] as? String {
            self.libraryId = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["docTreeSplit"] as? Bool {
                        self.docTreeSplit = value
                    }
                    if let value = dict["docTreeSplitSize"] as? Int32 {
                        self.docTreeSplitSize = value
                    }
                    if let value = dict["enhanceGraph"] as? Bool {
                        self.enhanceGraph = value
                    }
                    if let value = dict["enhanceTable"] as? Bool {
                        self.enhanceTable = value
                    }
                    if let value = dict["overlap"] as? Int32 {
                        self.overlap = value
                    }
                    if let value = dict["sentenceSplit"] as? Bool {
                        self.sentenceSplit = value
                    }
                    if let value = dict["sentenceSplitSize"] as? Int32 {
                        self.sentenceSplitSize = value
                    }
                    if let value = dict["size"] as? Int32 {
                        self.size = value
                    }
                    if let value = dict["split"] as? Bool {
                        self.split = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["temperature"] as? Double {
                        self.temperature = value
                    }
                    if let value = dict["topP"] as? Double {
                        self.topP = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["enableFollowUp"] as? Bool {
                        self.enableFollowUp = value
                    }
                    if let value = dict["enableMultiQuery"] as? Bool {
                        self.enableMultiQuery = value
                    }
                    if let value = dict["enableOpenQa"] as? Bool {
                        self.enableOpenQa = value
                    }
                    if let value = dict["enableQueryRewrite"] as? Bool {
                        self.enableQueryRewrite = value
                    }
                    if let value = dict["enableSession"] as? Bool {
                        self.enableSession = value
                    }
                    if let value = dict["localKnowledgeId"] as? String {
                        self.localKnowledgeId = value
                    }
                    if let value = dict["withDocumentReference"] as? Bool {
                        self.withDocumentReference = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["documentRankType"] as? String {
                        self.documentRankType = value
                    }
                    if let value = dict["limit"] as? Int32 {
                        self.limit = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["category"] as? String {
                        self.category = value
                    }
                    if let value = dict["enable"] as? Bool {
                        self.enable = value
                    }
                    if let value = dict["indexAnalyzer"] as? String {
                        self.indexAnalyzer = value
                    }
                    if let value = dict["rankThreshold"] as? Double {
                        self.rankThreshold = value
                    }
                    if let value = dict["searchAnalyzer"] as? String {
                        self.searchAnalyzer = value
                    }
                    if let value = dict["topK"] as? Int32 {
                        self.topK = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["category"] as? String {
                        self.category = value
                    }
                    if let value = dict["embeddingType"] as? String {
                        self.embeddingType = value
                    }
                    if let value = dict["enable"] as? Bool {
                        self.enable = value
                    }
                    if let value = dict["rankThreshold"] as? Double {
                        self.rankThreshold = value
                    }
                    if let value = dict["topK"] as? Int32 {
                        self.topK = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["chunkStrategy"] as? [String: Any?] {
                    var model = GetLibraryResponseBody.Data.IndexSetting.ChunkStrategy()
                    model.fromMap(value)
                    self.chunkStrategy = model
                }
                if let value = dict["modelConfig"] as? [String: Any?] {
                    var model = GetLibraryResponseBody.Data.IndexSetting.ModelConfig()
                    model.fromMap(value)
                    self.modelConfig = model
                }
                if let value = dict["promptRoleStyle"] as? String {
                    self.promptRoleStyle = value
                }
                if let value = dict["queryEnhancer"] as? [String: Any?] {
                    var model = GetLibraryResponseBody.Data.IndexSetting.QueryEnhancer()
                    model.fromMap(value)
                    self.queryEnhancer = model
                }
                if let value = dict["recallStrategy"] as? [String: Any?] {
                    var model = GetLibraryResponseBody.Data.IndexSetting.RecallStrategy()
                    model.fromMap(value)
                    self.recallStrategy = model
                }
                if let value = dict["textIndexSetting"] as? [String: Any?] {
                    var model = GetLibraryResponseBody.Data.IndexSetting.TextIndexSetting()
                    model.fromMap(value)
                    self.textIndexSetting = model
                }
                if let value = dict["vectorIndexSetting"] as? [String: Any?] {
                    var model = GetLibraryResponseBody.Data.IndexSetting.VectorIndexSetting()
                    model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["documentCount"] as? Int64 {
                self.documentCount = value
            }
            if let value = dict["gmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["gmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["id"] as? String {
                self.id = value
            }
            if let value = dict["indexSetting"] as? [String: Any?] {
                var model = GetLibraryResponseBody.Data.IndexSetting()
                model.fromMap(value)
                self.indexSetting = model
            }
            if let value = dict["libraryName"] as? String {
                self.libraryName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["cost"] as? Int64 {
            self.cost = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetLibraryResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["dataType"] as? String {
            self.dataType = value
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["time"] as? String {
            self.time = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetLibraryResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["page"] as? Int32 {
            self.page = value
        }
        if let value = dict["pageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["query"] as? String {
            self.query = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["docTreeSplit"] as? Bool {
                            self.docTreeSplit = value
                        }
                        if let value = dict["docTreeSplitSize"] as? Int32 {
                            self.docTreeSplitSize = value
                        }
                        if let value = dict["enhanceGraph"] as? Bool {
                            self.enhanceGraph = value
                        }
                        if let value = dict["enhanceTable"] as? Bool {
                            self.enhanceTable = value
                        }
                        if let value = dict["overlap"] as? Int32 {
                            self.overlap = value
                        }
                        if let value = dict["sentenceSplit"] as? Bool {
                            self.sentenceSplit = value
                        }
                        if let value = dict["sentenceSplitSize"] as? Int32 {
                            self.sentenceSplitSize = value
                        }
                        if let value = dict["size"] as? Int32 {
                            self.size = value
                        }
                        if let value = dict["split"] as? Bool {
                            self.split = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["temperature"] as? Double {
                            self.temperature = value
                        }
                        if let value = dict["topP"] as? Double {
                            self.topP = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["enableFollowUp"] as? Bool {
                            self.enableFollowUp = value
                        }
                        if let value = dict["enableMultiQuery"] as? Bool {
                            self.enableMultiQuery = value
                        }
                        if let value = dict["enableOpenQa"] as? Bool {
                            self.enableOpenQa = value
                        }
                        if let value = dict["enableQueryRewrite"] as? Bool {
                            self.enableQueryRewrite = value
                        }
                        if let value = dict["enableSession"] as? Bool {
                            self.enableSession = value
                        }
                        if let value = dict["localKnowledgeId"] as? String {
                            self.localKnowledgeId = value
                        }
                        if let value = dict["withDocumentReference"] as? Bool {
                            self.withDocumentReference = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["documentRankType"] as? String {
                            self.documentRankType = value
                        }
                        if let value = dict["limit"] as? Int32 {
                            self.limit = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["category"] as? String {
                            self.category = value
                        }
                        if let value = dict["enable"] as? Bool {
                            self.enable = value
                        }
                        if let value = dict["indexAnalyzer"] as? String {
                            self.indexAnalyzer = value
                        }
                        if let value = dict["rankThreshold"] as? Double {
                            self.rankThreshold = value
                        }
                        if let value = dict["searchAnalyzer"] as? String {
                            self.searchAnalyzer = value
                        }
                        if let value = dict["topK"] as? Int32 {
                            self.topK = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["category"] as? String {
                            self.category = value
                        }
                        if let value = dict["embeddingType"] as? String {
                            self.embeddingType = value
                        }
                        if let value = dict["enable"] as? Bool {
                            self.enable = value
                        }
                        if let value = dict["rankThreshold"] as? Double {
                            self.rankThreshold = value
                        }
                        if let value = dict["topK"] as? Int32 {
                            self.topK = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["chunkStrategy"] as? [String: Any?] {
                        var model = GetLibraryListResponseBody.Data.Records.IndexSetting.ChunkStrategy()
                        model.fromMap(value)
                        self.chunkStrategy = model
                    }
                    if let value = dict["modelConfig"] as? [String: Any?] {
                        var model = GetLibraryListResponseBody.Data.Records.IndexSetting.ModelConfig()
                        model.fromMap(value)
                        self.modelConfig = model
                    }
                    if let value = dict["promptRoleStyle"] as? String {
                        self.promptRoleStyle = value
                    }
                    if let value = dict["queryEnhancer"] as? [String: Any?] {
                        var model = GetLibraryListResponseBody.Data.Records.IndexSetting.QueryEnhancer()
                        model.fromMap(value)
                        self.queryEnhancer = model
                    }
                    if let value = dict["recallStrategy"] as? [String: Any?] {
                        var model = GetLibraryListResponseBody.Data.Records.IndexSetting.RecallStrategy()
                        model.fromMap(value)
                        self.recallStrategy = model
                    }
                    if let value = dict["textIndexSetting"] as? [String: Any?] {
                        var model = GetLibraryListResponseBody.Data.Records.IndexSetting.TextIndexSetting()
                        model.fromMap(value)
                        self.textIndexSetting = model
                    }
                    if let value = dict["vectorIndexSetting"] as? [String: Any?] {
                        var model = GetLibraryListResponseBody.Data.Records.IndexSetting.VectorIndexSetting()
                        model.fromMap(value)
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["description"] as? String {
                    self.description_ = value
                }
                if let value = dict["documentCount"] as? Int64 {
                    self.documentCount = value
                }
                if let value = dict["gmtCreate"] as? String {
                    self.gmtCreate = value
                }
                if let value = dict["gmtModified"] as? String {
                    self.gmtModified = value
                }
                if let value = dict["id"] as? String {
                    self.id = value
                }
                if let value = dict["indexSetting"] as? [String: Any?] {
                    var model = GetLibraryListResponseBody.Data.Records.IndexSetting()
                    model.fromMap(value)
                    self.indexSetting = model
                }
                if let value = dict["libraryName"] as? String {
                    self.libraryName = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["currentPage"] as? Int64 {
                self.currentPage = value
            }
            if let value = dict["pageSize"] as? Int64 {
                self.pageSize = value
            }
            if let value = dict["records"] as? [Any?] {
                var tmp : [GetLibraryListResponseBody.Data.Records] = []
                for v in value {
                    if v != nil {
                        var model = GetLibraryListResponseBody.Data.Records()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.records = tmp
            }
            if let value = dict["totalPages"] as? Int64 {
                self.totalPages = value
            }
            if let value = dict["totalRecords"] as? Int64 {
                self.totalRecords = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["cost"] as? Int64 {
            self.cost = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetLibraryListResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["dataType"] as? String {
            self.dataType = value
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["time"] as? String {
            self.time = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetLibraryListResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["docId"] as? String {
            self.docId = value
        }
        if let value = dict["libraryId"] as? String {
            self.libraryId = value
        }
        if let value = dict["useUrlResult"] as? Bool {
            self.useUrlResult = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["fileType"] as? String {
                self.fileType = value
            }
            if let value = dict["providerType"] as? String {
                self.providerType = value
            }
            if let value = dict["requestId"] as? String {
                self.requestId = value
            }
            if let value = dict["result"] as? [String: Any] {
                self.result = value
            }
            if let value = dict["resultUrl"] as? String {
                self.resultUrl = value
            }
            if let value = dict["status"] as? String {
                self.status = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["cost"] as? Int64 {
            self.cost = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetParseResultResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["dataType"] as? String {
            self.dataType = value
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["time"] as? String {
            self.time = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetParseResultResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["taskId"] as? String {
            self.taskId = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["begin"] as? Int32 {
                        self.begin = value
                    }
                    if let value = dict["beginTime"] as? String {
                        self.beginTime = value
                    }
                    if let value = dict["content"] as? String {
                        self.content = value
                    }
                    if let value = dict["customerId"] as? String {
                        self.customerId = value
                    }
                    if let value = dict["customerServiceId"] as? String {
                        self.customerServiceId = value
                    }
                    if let value = dict["customerServiceType"] as? String {
                        self.customerServiceType = value
                    }
                    if let value = dict["end"] as? Int32 {
                        self.end = value
                    }
                    if let value = dict["id"] as? Int32 {
                        self.id = value
                    }
                    if let value = dict["role"] as? String {
                        self.role = value
                    }
                    if let value = dict["type"] as? String {
                        self.type = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["callType"] as? String {
                    self.callType = value
                }
                if let value = dict["customerId"] as? String {
                    self.customerId = value
                }
                if let value = dict["customerName"] as? String {
                    self.customerName = value
                }
                if let value = dict["customerServiceId"] as? String {
                    self.customerServiceId = value
                }
                if let value = dict["customerServiceName"] as? String {
                    self.customerServiceName = value
                }
                if let value = dict["dialogueList"] as? [Any?] {
                    var tmp : [GetQualityCheckTaskResultResponseBody.Data.ConversationList.DialogueList] = []
                    for v in value {
                        if v != nil {
                            var model = GetQualityCheckTaskResultResponseBody.Data.ConversationList.DialogueList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.dialogueList = tmp
                }
                if let value = dict["gmtService"] as? String {
                    self.gmtService = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["begin"] as? Int32 {
                        self.begin = value
                    }
                    if let value = dict["beginTime"] as? String {
                        self.beginTime = value
                    }
                    if let value = dict["content"] as? String {
                        self.content = value
                    }
                    if let value = dict["customerId"] as? String {
                        self.customerId = value
                    }
                    if let value = dict["customerServiceId"] as? String {
                        self.customerServiceId = value
                    }
                    if let value = dict["customerServiceType"] as? String {
                        self.customerServiceType = value
                    }
                    if let value = dict["end"] as? Int32 {
                        self.end = value
                    }
                    if let value = dict["id"] as? Int32 {
                        self.id = value
                    }
                    if let value = dict["role"] as? String {
                        self.role = value
                    }
                    if let value = dict["type"] as? String {
                        self.type = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["bizType"] as? String {
                    self.bizType = value
                }
                if let value = dict["checkExplanation"] as? String {
                    self.checkExplanation = value
                }
                if let value = dict["checkPassed"] as? String {
                    self.checkPassed = value
                }
                if let value = dict["checkProcess"] as? String {
                    self.checkProcess = value
                }
                if let value = dict["checked"] as? String {
                    self.checked = value
                }
                if let value = dict["gmtEnd"] as? String {
                    self.gmtEnd = value
                }
                if let value = dict["gmtStart"] as? String {
                    self.gmtStart = value
                }
                if let value = dict["mode"] as? String {
                    self.mode = value
                }
                if let value = dict["originDialogue"] as? [Any?] {
                    var tmp : [GetQualityCheckTaskResultResponseBody.Data.QualityCheckList.OriginDialogue] = []
                    for v in value {
                        if v != nil {
                            var model = GetQualityCheckTaskResultResponseBody.Data.QualityCheckList.OriginDialogue()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.originDialogue = tmp
                }
                if let value = dict["qualityGroupId"] as? String {
                    self.qualityGroupId = value
                }
                if let value = dict["ruleDescription"] as? String {
                    self.ruleDescription = value
                }
                if let value = dict["ruleId"] as? String {
                    self.ruleId = value
                }
                if let value = dict["ruleType"] as? String {
                    self.ruleType = value
                }
                if let value = dict["subNodeCol"] as? [Any] {
                    self.subNodeCol = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["conversationList"] as? [String: Any?] {
                var model = GetQualityCheckTaskResultResponseBody.Data.ConversationList()
                model.fromMap(value)
                self.conversationList = model
            }
            if let value = dict["gmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["gmtEnd"] as? String {
                self.gmtEnd = value
            }
            if let value = dict["gmtStart"] as? String {
                self.gmtStart = value
            }
            if let value = dict["qualityCheckList"] as? [Any?] {
                var tmp : [GetQualityCheckTaskResultResponseBody.Data.QualityCheckList] = []
                for v in value {
                    if v != nil {
                        var model = GetQualityCheckTaskResultResponseBody.Data.QualityCheckList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.qualityCheckList = tmp
            }
            if let value = dict["status"] as? String {
                self.status = value
            }
            if let value = dict["taskId"] as? String {
                self.taskId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["cost"] as? Int64 {
            self.cost = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetQualityCheckTaskResultResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["dataType"] as? String {
            self.dataType = value
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["time"] as? String {
            self.time = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetQualityCheckTaskResultResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["taskId"] as? String {
            self.taskId = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["content"] as? String {
                        self.content = value
                    }
                    if let value = dict["role"] as? String {
                        self.role = value
                    }
                    if let value = dict["toolCalls"] as? [[String: Any]] {
                        self.toolCalls = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["finishReason"] as? String {
                    self.finishReason = value
                }
                if let value = dict["index"] as? Int32 {
                    self.index = value
                }
                if let value = dict["message"] as? [String: Any?] {
                    var model = GetSummaryTaskResultResponseBody.Data.Choices.Message()
                    model.fromMap(value)
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["imageCount"] as? Int32 {
                    self.imageCount = value
                }
                if let value = dict["imageTokens"] as? Int32 {
                    self.imageTokens = value
                }
                if let value = dict["inputTokens"] as? Int32 {
                    self.inputTokens = value
                }
                if let value = dict["outputTokens"] as? Int32 {
                    self.outputTokens = value
                }
                if let value = dict["totalTokens"] as? Int32 {
                    self.totalTokens = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["choices"] as? [Any?] {
                var tmp : [GetSummaryTaskResultResponseBody.Data.Choices] = []
                for v in value {
                    if v != nil {
                        var model = GetSummaryTaskResultResponseBody.Data.Choices()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.choices = tmp
            }
            if let value = dict["created"] as? Int64 {
                self.created = value
            }
            if let value = dict["id"] as? String {
                self.id = value
            }
            if let value = dict["modelId"] as? String {
                self.modelId = value
            }
            if let value = dict["requestId"] as? String {
                self.requestId = value
            }
            if let value = dict["time"] as? String {
                self.time = value
            }
            if let value = dict["totalTokens"] as? Int32 {
                self.totalTokens = value
            }
            if let value = dict["usage"] as? [String: Any?] {
                var model = GetSummaryTaskResultResponseBody.Data.Usage()
                model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["cost"] as? Int64 {
            self.cost = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetSummaryTaskResultResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["dataType"] as? String {
            self.dataType = value
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["time"] as? String {
            self.time = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetSummaryTaskResultResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["taskId"] as? String {
            self.taskId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["cost"] as? Int64 {
            self.cost = value
        }
        if let value = dict["data"] as? [String: Any] {
            self.data = value
        }
        if let value = dict["dataType"] as? String {
            self.dataType = value
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["time"] as? String {
            self.time = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetTaskResultResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["taskId"] as? String {
            self.taskId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["cost"] as? Int64 {
            self.cost = value
        }
        if let value = dict["data"] as? String {
            self.data = value
        }
        if let value = dict["dataType"] as? String {
            self.dataType = value
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["time"] as? String {
            self.time = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetTaskStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetVideoCreationTaskResultHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xLoadTest: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.xLoadTest != nil {
            map["X-Load-Test"] = self.xLoadTest!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["commonHeaders"] as? [String: String] {
            self.commonHeaders = value
        }
        if let value = dict["X-Load-Test"] as? Bool {
            self.xLoadTest = value
        }
    }
}

public class GetVideoCreationTaskResultRequest : Tea.TeaModel {
    public var taskId: String?

    public var userId: String?

    public override init() {
        super.init()
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
        if self.userId != nil {
            map["userId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["taskId"] as? String {
            self.taskId = value
        }
        if let value = dict["userId"] as? String {
            self.userId = value
        }
    }
}

public class GetVideoCreationTaskResultResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class FileInfo : Tea.TeaModel {
            public var fileId: String?

            public var fileName: String?

            public var fileTraceId: String?

            public var ossKey: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.fileId != nil {
                    map["fileId"] = self.fileId!
                }
                if self.fileName != nil {
                    map["fileName"] = self.fileName!
                }
                if self.fileTraceId != nil {
                    map["fileTraceId"] = self.fileTraceId!
                }
                if self.ossKey != nil {
                    map["ossKey"] = self.ossKey!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["fileId"] as? String {
                    self.fileId = value
                }
                if let value = dict["fileName"] as? String {
                    self.fileName = value
                }
                if let value = dict["fileTraceId"] as? String {
                    self.fileTraceId = value
                }
                if let value = dict["ossKey"] as? String {
                    self.ossKey = value
                }
            }
        }
        public class MediaDetectionTaskResult : Tea.TeaModel {
            public class DetectionResult : Tea.TeaModel {
                public class DetectionDetails : Tea.TeaModel {
                    public var code: String?

                    public var confidence: Double?

                    public var pass: Bool?

                    public var reason: String?

                    public override init() {
                        super.init()
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
                            map["code"] = self.code!
                        }
                        if self.confidence != nil {
                            map["confidence"] = self.confidence!
                        }
                        if self.pass != nil {
                            map["pass"] = self.pass!
                        }
                        if self.reason != nil {
                            map["reason"] = self.reason!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["code"] as? String {
                            self.code = value
                        }
                        if let value = dict["confidence"] as? Double {
                            self.confidence = value
                        }
                        if let value = dict["pass"] as? Bool {
                            self.pass = value
                        }
                        if let value = dict["reason"] as? String {
                            self.reason = value
                        }
                    }
                }
                public var detectionDetails: [GetVideoCreationTaskResultResponseBody.Data.MediaDetectionTaskResult.DetectionResult.DetectionDetails]?

                public var suggestions: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.detectionDetails != nil {
                        var tmp : [Any] = []
                        for k in self.detectionDetails! {
                            tmp.append(k.toMap())
                        }
                        map["detectionDetails"] = tmp
                    }
                    if self.suggestions != nil {
                        map["suggestions"] = self.suggestions!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["detectionDetails"] as? [Any?] {
                        var tmp : [GetVideoCreationTaskResultResponseBody.Data.MediaDetectionTaskResult.DetectionResult.DetectionDetails] = []
                        for v in value {
                            if v != nil {
                                var model = GetVideoCreationTaskResultResponseBody.Data.MediaDetectionTaskResult.DetectionResult.DetectionDetails()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.detectionDetails = tmp
                    }
                    if let value = dict["suggestions"] as? [String] {
                        self.suggestions = value
                    }
                }
            }
            public class FileInfo : Tea.TeaModel {
                public var fileId: String?

                public var fileName: String?

                public var fileTraceId: String?

                public var ossKey: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.fileId != nil {
                        map["fileId"] = self.fileId!
                    }
                    if self.fileName != nil {
                        map["fileName"] = self.fileName!
                    }
                    if self.fileTraceId != nil {
                        map["fileTraceId"] = self.fileTraceId!
                    }
                    if self.ossKey != nil {
                        map["ossKey"] = self.ossKey!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["fileId"] as? String {
                        self.fileId = value
                    }
                    if let value = dict["fileName"] as? String {
                        self.fileName = value
                    }
                    if let value = dict["fileTraceId"] as? String {
                        self.fileTraceId = value
                    }
                    if let value = dict["ossKey"] as? String {
                        self.ossKey = value
                    }
                }
            }
            public var detectionConclusion: String?

            public var detectionResult: GetVideoCreationTaskResultResponseBody.Data.MediaDetectionTaskResult.DetectionResult?

            public var fileInfo: GetVideoCreationTaskResultResponseBody.Data.MediaDetectionTaskResult.FileInfo?

            public var taskId: String?

            public var taskStatus: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.detectionResult?.validate()
                try self.fileInfo?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.detectionConclusion != nil {
                    map["detectionConclusion"] = self.detectionConclusion!
                }
                if self.detectionResult != nil {
                    map["detectionResult"] = self.detectionResult?.toMap()
                }
                if self.fileInfo != nil {
                    map["fileInfo"] = self.fileInfo?.toMap()
                }
                if self.taskId != nil {
                    map["taskId"] = self.taskId!
                }
                if self.taskStatus != nil {
                    map["taskStatus"] = self.taskStatus!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["detectionConclusion"] as? String {
                    self.detectionConclusion = value
                }
                if let value = dict["detectionResult"] as? [String: Any?] {
                    var model = GetVideoCreationTaskResultResponseBody.Data.MediaDetectionTaskResult.DetectionResult()
                    model.fromMap(value)
                    self.detectionResult = model
                }
                if let value = dict["fileInfo"] as? [String: Any?] {
                    var model = GetVideoCreationTaskResultResponseBody.Data.MediaDetectionTaskResult.FileInfo()
                    model.fromMap(value)
                    self.fileInfo = model
                }
                if let value = dict["taskId"] as? String {
                    self.taskId = value
                }
                if let value = dict["taskStatus"] as? String {
                    self.taskStatus = value
                }
            }
        }
        public var estimatedWaitTimeInSeconds: Int64?

        public var fileInfo: GetVideoCreationTaskResultResponseBody.Data.FileInfo?

        public var finishTime: String?

        public var mediaDetectionTaskResult: GetVideoCreationTaskResultResponseBody.Data.MediaDetectionTaskResult?

        public var startTime: String?

        public var taskId: String?

        public var taskStatus: String?

        public var videoUrl: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.fileInfo?.validate()
            try self.mediaDetectionTaskResult?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.estimatedWaitTimeInSeconds != nil {
                map["estimatedWaitTimeInSeconds"] = self.estimatedWaitTimeInSeconds!
            }
            if self.fileInfo != nil {
                map["fileInfo"] = self.fileInfo?.toMap()
            }
            if self.finishTime != nil {
                map["finishTime"] = self.finishTime!
            }
            if self.mediaDetectionTaskResult != nil {
                map["mediaDetectionTaskResult"] = self.mediaDetectionTaskResult?.toMap()
            }
            if self.startTime != nil {
                map["startTime"] = self.startTime!
            }
            if self.taskId != nil {
                map["taskId"] = self.taskId!
            }
            if self.taskStatus != nil {
                map["taskStatus"] = self.taskStatus!
            }
            if self.videoUrl != nil {
                map["videoUrl"] = self.videoUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["estimatedWaitTimeInSeconds"] as? Int64 {
                self.estimatedWaitTimeInSeconds = value
            }
            if let value = dict["fileInfo"] as? [String: Any?] {
                var model = GetVideoCreationTaskResultResponseBody.Data.FileInfo()
                model.fromMap(value)
                self.fileInfo = model
            }
            if let value = dict["finishTime"] as? String {
                self.finishTime = value
            }
            if let value = dict["mediaDetectionTaskResult"] as? [String: Any?] {
                var model = GetVideoCreationTaskResultResponseBody.Data.MediaDetectionTaskResult()
                model.fromMap(value)
                self.mediaDetectionTaskResult = model
            }
            if let value = dict["startTime"] as? String {
                self.startTime = value
            }
            if let value = dict["taskId"] as? String {
                self.taskId = value
            }
            if let value = dict["taskStatus"] as? String {
                self.taskStatus = value
            }
            if let value = dict["videoUrl"] as? String {
                self.videoUrl = value
            }
        }
    }
    public var code: String?

    public var data: GetVideoCreationTaskResultResponseBody.Data?

    public var message: String?

    public var retryAble: Bool?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.retryAble != nil {
            map["retryAble"] = self.retryAble!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetVideoCreationTaskResultResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["retryAble"] as? Bool {
            self.retryAble = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class GetVideoCreationTaskResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetVideoCreationTaskResultResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetVideoCreationTaskResultResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["params"] as? [String: Any] {
            self.params = value
        }
        if let value = dict["pluginId"] as? String {
            self.pluginId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["cost"] as? Int64 {
            self.cost = value
        }
        if let value = dict["data"] as? [String: Any] {
            self.data = value
        }
        if let value = dict["dataType"] as? String {
            self.dataType = value
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["time"] as? String {
            self.time = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = InvokePluginResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["documentId"] as? String {
            self.documentId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["previewType"] as? String {
                self.previewType = value
            }
            if let value = dict["title"] as? String {
                self.title = value
            }
            if let value = dict["uploadTime"] as? String {
                self.uploadTime = value
            }
            if let value = dict["url"] as? String {
                self.url = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["cost"] as? Int64 {
            self.cost = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = PreviewDocumentResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["dataType"] as? String {
            self.dataType = value
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["time"] as? String {
            self.time = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = PreviewDocumentResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["documentId"] as? String {
            self.documentId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["cost"] as? Int64 {
            self.cost = value
        }
        if let value = dict["data"] as? String {
            self.data = value
        }
        if let value = dict["dataType"] as? String {
            self.dataType = value
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["time"] as? String {
            self.time = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ReIndexResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["begin"] as? Int32 {
                self.begin = value
            }
            if let value = dict["beginTime"] as? String {
                self.beginTime = value
            }
            if let value = dict["content"] as? String {
                self.content = value
            }
            if let value = dict["customerId"] as? String {
                self.customerId = value
            }
            if let value = dict["customerServiceId"] as? String {
                self.customerServiceId = value
            }
            if let value = dict["customerServiceType"] as? String {
                self.customerServiceType = value
            }
            if let value = dict["end"] as? Int32 {
                self.end = value
            }
            if let value = dict["role"] as? Int32 {
                self.role = value
            }
            if let value = dict["type"] as? String {
                self.type = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["analysis"] as? Bool {
            self.analysis = value
        }
        if let value = dict["bizType"] as? String {
            self.bizType = value
        }
        if let value = dict["conversationModel"] as? [Any?] {
            var tmp : [RealTimeDialogRequest.ConversationModel] = []
            for v in value {
                if v != nil {
                    var model = RealTimeDialogRequest.ConversationModel()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.conversationModel = tmp
        }
        if let value = dict["dialogMemoryTurns"] as? Int32 {
            self.dialogMemoryTurns = value
        }
        if let value = dict["metaData"] as? [String: Any] {
            self.metaData = value
        }
        if let value = dict["opType"] as? String {
            self.opType = value
        }
        if let value = dict["recommend"] as? Bool {
            self.recommend = value
        }
        if let value = dict["scriptContentPlayed"] as? String {
            self.scriptContentPlayed = value
        }
        if let value = dict["sessionId"] as? String {
            self.sessionId = value
        }
        if let value = dict["stream"] as? Bool {
            self.stream = value
        }
        if let value = dict["userVad"] as? Bool {
            self.userVad = value
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

            public var skipCurrentRecognize: Bool?

            public override init() {
                super.init()
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
                if self.skipCurrentRecognize != nil {
                    map["skipCurrentRecognize"] = self.skipCurrentRecognize!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["analysisProcess"] as? String {
                    self.analysisProcess = value
                }
                if let value = dict["callTime"] as? String {
                    self.callTime = value
                }
                if let value = dict["hangUpDialog"] as? Bool {
                    self.hangUpDialog = value
                }
                if let value = dict["intentionCode"] as? String {
                    self.intentionCode = value
                }
                if let value = dict["intentionName"] as? String {
                    self.intentionName = value
                }
                if let value = dict["intentionScript"] as? String {
                    self.intentionScript = value
                }
                if let value = dict["interrupt"] as? Bool {
                    self.interrupt = value
                }
                if let value = dict["recommendIntention"] as? String {
                    self.recommendIntention = value
                }
                if let value = dict["recommendScript"] as? String {
                    self.recommendScript = value
                }
                if let value = dict["selfDirectedScript"] as? String {
                    self.selfDirectedScript = value
                }
                if let value = dict["selfDirectedScriptFullContent"] as? String {
                    self.selfDirectedScriptFullContent = value
                }
                if let value = dict["skipCurrentRecognize"] as? Bool {
                    self.skipCurrentRecognize = value
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

            public var skipCurrentRecognize: Bool?

            public override init() {
                super.init()
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
                if self.skipCurrentRecognize != nil {
                    map["skipCurrentRecognize"] = self.skipCurrentRecognize!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["analysisProcess"] as? String {
                    self.analysisProcess = value
                }
                if let value = dict["callTime"] as? String {
                    self.callTime = value
                }
                if let value = dict["hangUpDialog"] as? Bool {
                    self.hangUpDialog = value
                }
                if let value = dict["intentionCode"] as? String {
                    self.intentionCode = value
                }
                if let value = dict["intentionName"] as? String {
                    self.intentionName = value
                }
                if let value = dict["intentionScript"] as? String {
                    self.intentionScript = value
                }
                if let value = dict["interrupt"] as? Bool {
                    self.interrupt = value
                }
                if let value = dict["recommendIntention"] as? String {
                    self.recommendIntention = value
                }
                if let value = dict["recommendScript"] as? String {
                    self.recommendScript = value
                }
                if let value = dict["selfDirectedScript"] as? String {
                    self.selfDirectedScript = value
                }
                if let value = dict["selfDirectedScriptFullContent"] as? String {
                    self.selfDirectedScriptFullContent = value
                }
                if let value = dict["skipCurrentRecognize"] as? Bool {
                    self.skipCurrentRecognize = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["delta"] as? [String: Any?] {
                var model = RealTimeDialogResponseBody.Choices.Delta()
                model.fromMap(value)
                self.delta = model
            }
            if let value = dict["finishReason"] as? String {
                self.finishReason = value
            }
            if let value = dict["index"] as? Int32 {
                self.index = value
            }
            if let value = dict["message"] as? [String: Any?] {
                var model = RealTimeDialogResponseBody.Choices.Message()
                model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["choices"] as? [Any?] {
            var tmp : [RealTimeDialogResponseBody.Choices] = []
            for v in value {
                if v != nil {
                    var model = RealTimeDialogResponseBody.Choices()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.choices = tmp
        }
        if let value = dict["created"] as? String {
            self.created = value
        }
        if let value = dict["id"] as? String {
            self.id = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RealTimeDialogResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["content"] as? String {
                self.content = value
            }
            if let value = dict["customerId"] as? String {
                self.customerId = value
            }
            if let value = dict["customerServiceId"] as? String {
                self.customerServiceId = value
            }
            if let value = dict["customerServiceType"] as? String {
                self.customerServiceType = value
            }
            if let value = dict["role"] as? Int32 {
                self.role = value
            }
            if let value = dict["type"] as? String {
                self.type = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["analysis"] as? Bool {
            self.analysis = value
        }
        if let value = dict["bizType"] as? String {
            self.bizType = value
        }
        if let value = dict["conversationModel"] as? [Any?] {
            var tmp : [RealtimeDialogAssistRequest.ConversationModel] = []
            for v in value {
                if v != nil {
                    var model = RealtimeDialogAssistRequest.ConversationModel()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.conversationModel = tmp
        }
        if let value = dict["dialogMemoryTurns"] as? Int32 {
            self.dialogMemoryTurns = value
        }
        if let value = dict["hangUpDialog"] as? Bool {
            self.hangUpDialog = value
        }
        if let value = dict["metaData"] as? [String: Any] {
            self.metaData = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["sessionId"] as? String {
            self.sessionId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["assistScript"] as? String {
                    self.assistScript = value
                }
                if let value = dict["intentCode"] as? String {
                    self.intentCode = value
                }
                if let value = dict["intentLabels"] as? String {
                    self.intentLabels = value
                }
                if let value = dict["intentName"] as? String {
                    self.intentName = value
                }
                if let value = dict["isDefault"] as? Bool {
                    self.isDefault = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["assistSop"] as? String {
                    self.assistSop = value
                }
                if let value = dict["intentCode"] as? String {
                    self.intentCode = value
                }
                if let value = dict["intentName"] as? String {
                    self.intentName = value
                }
                if let value = dict["isDefault"] as? Bool {
                    self.isDefault = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["content"] as? String {
                    self.content = value
                }
                if let value = dict["customerId"] as? String {
                    self.customerId = value
                }
                if let value = dict["customerServiceId"] as? String {
                    self.customerServiceId = value
                }
                if let value = dict["customerServiceType"] as? String {
                    self.customerServiceType = value
                }
                if let value = dict["role"] as? String {
                    self.role = value
                }
                if let value = dict["type"] as? String {
                    self.type = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["analysisProcess"] as? String {
                self.analysisProcess = value
            }
            if let value = dict["assistScripts"] as? [Any?] {
                var tmp : [RealtimeDialogAssistResponseBody.Data.AssistScripts] = []
                for v in value {
                    if v != nil {
                        var model = RealtimeDialogAssistResponseBody.Data.AssistScripts()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.assistScripts = tmp
            }
            if let value = dict["assistSop"] as? [Any?] {
                var tmp : [RealtimeDialogAssistResponseBody.Data.AssistSop] = []
                for v in value {
                    if v != nil {
                        var model = RealtimeDialogAssistResponseBody.Data.AssistSop()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.assistSop = tmp
            }
            if let value = dict["conversationModel"] as? [Any?] {
                var tmp : [RealtimeDialogAssistResponseBody.Data.ConversationModel] = []
                for v in value {
                    if v != nil {
                        var model = RealtimeDialogAssistResponseBody.Data.ConversationModel()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.conversationModel = tmp
            }
            if let value = dict["requestId"] as? String {
                self.requestId = value
            }
            if let value = dict["sessionId"] as? String {
                self.sessionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["cost"] as? Int64 {
            self.cost = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = RealtimeDialogAssistResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["dataType"] as? String {
            self.dataType = value
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["time"] as? String {
            self.time = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RealtimeDialogAssistResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["taskIds"] as? [String] {
            self.taskIds = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["cost"] as? Int64 {
            self.cost = value
        }
        if let value = dict["data"] as? [[String: Any]] {
            self.data = value
        }
        if let value = dict["dataType"] as? String {
            self.dataType = value
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["time"] as? String {
            self.time = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RebuildTaskResponseBody()
            model.fromMap(value)
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["boost"] as? Double {
                    self.boost = value
                }
                if let value = dict["key"] as? String {
                    self.key = value
                }
                if let value = dict["operator"] as? String {
                    self.operator_ = value
                }
                if let value = dict["value"] as? String {
                    self.value = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["boost"] as? Double {
                    self.boost = value
                }
                if let value = dict["key"] as? String {
                    self.key = value
                }
                if let value = dict["operator"] as? String {
                    self.operator_ = value
                }
                if let value = dict["value"] as? String {
                    self.value = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["and"] as? [Any?] {
                var tmp : [RecallDocumentRequest.Filters.And] = []
                for v in value {
                    if v != nil {
                        var model = RecallDocumentRequest.Filters.And()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.and = tmp
            }
            if let value = dict["chunkType"] as? String {
                self.chunkType = value
            }
            if let value = dict["docIdList"] as? [String] {
                self.docIdList = value
            }
            if let value = dict["libraryId"] as? String {
                self.libraryId = value
            }
            if let value = dict["or"] as? [Any?] {
                var tmp : [RecallDocumentRequest.Filters.Or] = []
                for v in value {
                    if v != nil {
                        var model = RecallDocumentRequest.Filters.Or()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.or = tmp
            }
            if let value = dict["status"] as? [String] {
                self.status = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["filters"] as? [Any?] {
            var tmp : [RecallDocumentRequest.Filters] = []
            for v in value {
                if v != nil {
                    var model = RecallDocumentRequest.Filters()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.filters = tmp
        }
        if let value = dict["query"] as? String {
            self.query = value
        }
        if let value = dict["rearrangement"] as? Bool {
            self.rearrangement = value
        }
        if let value = dict["topK"] as? Int32 {
            self.topK = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["axisArray"] as? [Double] {
                        self.axisArray = value
                    }
                    if let value = dict["page"] as? Int32 {
                        self.page = value
                    }
                    if let value = dict["textHighlightArea"] as? [Int32] {
                        self.textHighlightArea = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["chunkId"] as? String {
                    self.chunkId = value
                }
                if let value = dict["chunkMeta"] as? [String: Any] {
                    self.chunkMeta = value
                }
                if let value = dict["chunkOssUrl"] as? String {
                    self.chunkOssUrl = value
                }
                if let value = dict["chunkText"] as? String {
                    self.chunkText = value
                }
                if let value = dict["chunkType"] as? String {
                    self.chunkType = value
                }
                if let value = dict["docId"] as? String {
                    self.docId = value
                }
                if let value = dict["fileType"] as? String {
                    self.fileType = value
                }
                if let value = dict["libraryId"] as? String {
                    self.libraryId = value
                }
                if let value = dict["libraryName"] as? String {
                    self.libraryName = value
                }
                if let value = dict["nextChunkId"] as? String {
                    self.nextChunkId = value
                }
                if let value = dict["pos"] as? [Any?] {
                    var tmp : [RecallDocumentResponseBody.Data.ChunkList.Pos] = []
                    for v in value {
                        if v != nil {
                            var model = RecallDocumentResponseBody.Data.ChunkList.Pos()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.pos = tmp
                }
                if let value = dict["preChunkId"] as? String {
                    self.preChunkId = value
                }
                if let value = dict["score"] as? Double {
                    self.score = value
                }
                if let value = dict["title"] as? String {
                    self.title = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["axisArray"] as? [Double] {
                        self.axisArray = value
                    }
                    if let value = dict["page"] as? Int32 {
                        self.page = value
                    }
                    if let value = dict["textHighlightArea"] as? [Int32] {
                        self.textHighlightArea = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["chunkId"] as? String {
                    self.chunkId = value
                }
                if let value = dict["chunkMeta"] as? [String: Any] {
                    self.chunkMeta = value
                }
                if let value = dict["chunkOssUrl"] as? String {
                    self.chunkOssUrl = value
                }
                if let value = dict["chunkText"] as? String {
                    self.chunkText = value
                }
                if let value = dict["chunkType"] as? String {
                    self.chunkType = value
                }
                if let value = dict["docId"] as? String {
                    self.docId = value
                }
                if let value = dict["fileType"] as? String {
                    self.fileType = value
                }
                if let value = dict["libraryId"] as? String {
                    self.libraryId = value
                }
                if let value = dict["libraryName"] as? String {
                    self.libraryName = value
                }
                if let value = dict["nextChunkId"] as? String {
                    self.nextChunkId = value
                }
                if let value = dict["pos"] as? [Any?] {
                    var tmp : [RecallDocumentResponseBody.Data.ChunkPartList.Pos] = []
                    for v in value {
                        if v != nil {
                            var model = RecallDocumentResponseBody.Data.ChunkPartList.Pos()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.pos = tmp
                }
                if let value = dict["preChunkId"] as? String {
                    self.preChunkId = value
                }
                if let value = dict["score"] as? Double {
                    self.score = value
                }
                if let value = dict["title"] as? String {
                    self.title = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["docId"] as? String {
                    self.docId = value
                }
                if let value = dict["documentMeta"] as? [String: Any] {
                    self.documentMeta = value
                }
                if let value = dict["fileType"] as? String {
                    self.fileType = value
                }
                if let value = dict["gmtCreate"] as? String {
                    self.gmtCreate = value
                }
                if let value = dict["libraryId"] as? String {
                    self.libraryId = value
                }
                if let value = dict["title"] as? String {
                    self.title = value
                }
                if let value = dict["url"] as? String {
                    self.url = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["axisArray"] as? [Double] {
                        self.axisArray = value
                    }
                    if let value = dict["page"] as? Int32 {
                        self.page = value
                    }
                    if let value = dict["textHighlightArea"] as? [Int32] {
                        self.textHighlightArea = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["chunkId"] as? String {
                    self.chunkId = value
                }
                if let value = dict["chunkMeta"] as? [String: Any] {
                    self.chunkMeta = value
                }
                if let value = dict["chunkOssUrl"] as? String {
                    self.chunkOssUrl = value
                }
                if let value = dict["chunkText"] as? String {
                    self.chunkText = value
                }
                if let value = dict["chunkType"] as? String {
                    self.chunkType = value
                }
                if let value = dict["docId"] as? String {
                    self.docId = value
                }
                if let value = dict["fileType"] as? String {
                    self.fileType = value
                }
                if let value = dict["libraryId"] as? String {
                    self.libraryId = value
                }
                if let value = dict["libraryName"] as? String {
                    self.libraryName = value
                }
                if let value = dict["nextChunkId"] as? String {
                    self.nextChunkId = value
                }
                if let value = dict["pos"] as? [Any?] {
                    var tmp : [RecallDocumentResponseBody.Data.TextChunkList.Pos] = []
                    for v in value {
                        if v != nil {
                            var model = RecallDocumentResponseBody.Data.TextChunkList.Pos()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.pos = tmp
                }
                if let value = dict["preChunkId"] as? String {
                    self.preChunkId = value
                }
                if let value = dict["score"] as? Double {
                    self.score = value
                }
                if let value = dict["title"] as? String {
                    self.title = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["axisArray"] as? [Double] {
                        self.axisArray = value
                    }
                    if let value = dict["page"] as? Int32 {
                        self.page = value
                    }
                    if let value = dict["textHighlightArea"] as? [Int32] {
                        self.textHighlightArea = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["chunkId"] as? String {
                    self.chunkId = value
                }
                if let value = dict["chunkMeta"] as? [String: Any] {
                    self.chunkMeta = value
                }
                if let value = dict["chunkOssUrl"] as? String {
                    self.chunkOssUrl = value
                }
                if let value = dict["chunkText"] as? String {
                    self.chunkText = value
                }
                if let value = dict["chunkType"] as? String {
                    self.chunkType = value
                }
                if let value = dict["docId"] as? String {
                    self.docId = value
                }
                if let value = dict["fileType"] as? String {
                    self.fileType = value
                }
                if let value = dict["libraryId"] as? String {
                    self.libraryId = value
                }
                if let value = dict["libraryName"] as? String {
                    self.libraryName = value
                }
                if let value = dict["nextChunkId"] as? String {
                    self.nextChunkId = value
                }
                if let value = dict["pos"] as? [Any?] {
                    var tmp : [RecallDocumentResponseBody.Data.VectorChunkList.Pos] = []
                    for v in value {
                        if v != nil {
                            var model = RecallDocumentResponseBody.Data.VectorChunkList.Pos()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.pos = tmp
                }
                if let value = dict["preChunkId"] as? String {
                    self.preChunkId = value
                }
                if let value = dict["score"] as? Double {
                    self.score = value
                }
                if let value = dict["title"] as? String {
                    self.title = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["chunkList"] as? [Any?] {
                var tmp : [RecallDocumentResponseBody.Data.ChunkList] = []
                for v in value {
                    if v != nil {
                        var model = RecallDocumentResponseBody.Data.ChunkList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.chunkList = tmp
            }
            if let value = dict["chunkPartList"] as? [Any?] {
                var tmp : [RecallDocumentResponseBody.Data.ChunkPartList] = []
                for v in value {
                    if v != nil {
                        var model = RecallDocumentResponseBody.Data.ChunkPartList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.chunkPartList = tmp
            }
            if let value = dict["chunkTextList"] as? [String] {
                self.chunkTextList = value
            }
            if let value = dict["documents"] as? [Any?] {
                var tmp : [RecallDocumentResponseBody.Data.Documents] = []
                for v in value {
                    if v != nil {
                        var model = RecallDocumentResponseBody.Data.Documents()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.documents = tmp
            }
            if let value = dict["embeddingElapsedMs"] as? Int64 {
                self.embeddingElapsedMs = value
            }
            if let value = dict["textChunkList"] as? [Any?] {
                var tmp : [RecallDocumentResponseBody.Data.TextChunkList] = []
                for v in value {
                    if v != nil {
                        var model = RecallDocumentResponseBody.Data.TextChunkList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.textChunkList = tmp
            }
            if let value = dict["textSearchElapsedMs"] as? Int64 {
                self.textSearchElapsedMs = value
            }
            if let value = dict["totalElapsedMs"] as? Int64 {
                self.totalElapsedMs = value
            }
            if let value = dict["vectorChunkList"] as? [Any?] {
                var tmp : [RecallDocumentResponseBody.Data.VectorChunkList] = []
                for v in value {
                    if v != nil {
                        var model = RecallDocumentResponseBody.Data.VectorChunkList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.vectorChunkList = tmp
            }
            if let value = dict["vectorSearchElapsedMs"] as? Int64 {
                self.vectorSearchElapsedMs = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["cost"] as? Int64 {
            self.cost = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = RecallDocumentResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["dataType"] as? String {
            self.dataType = value
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["time"] as? String {
            self.time = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RecallDocumentResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["intention"] as? String {
                self.intention = value
            }
            if let value = dict["intentionCode"] as? String {
                self.intentionCode = value
            }
            if let value = dict["intentionScript"] as? String {
                self.intentionScript = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["intention"] as? String {
                self.intention = value
            }
            if let value = dict["intentionCode"] as? String {
                self.intentionCode = value
            }
            if let value = dict["intentionScript"] as? String {
                self.intentionScript = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["description"] as? String {
                self.description_ = value
            }
            if let value = dict["intention"] as? String {
                self.intention = value
            }
            if let value = dict["intentionCode"] as? String {
                self.intentionCode = value
            }
            if let value = dict["intentionScript"] as? String {
                self.intentionScript = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["analysis"] as? Bool {
            self.analysis = value
        }
        if let value = dict["bizType"] as? String {
            self.bizType = value
        }
        if let value = dict["conversation"] as? String {
            self.conversation = value
        }
        if let value = dict["globalIntentionList"] as? [Any?] {
            var tmp : [RecognizeIntentionRequest.GlobalIntentionList] = []
            for v in value {
                if v != nil {
                    var model = RecognizeIntentionRequest.GlobalIntentionList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.globalIntentionList = tmp
        }
        if let value = dict["hierarchicalIntentionList"] as? [Any?] {
            var tmp : [RecognizeIntentionRequest.HierarchicalIntentionList] = []
            for v in value {
                if v != nil {
                    var model = RecognizeIntentionRequest.HierarchicalIntentionList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.hierarchicalIntentionList = tmp
        }
        if let value = dict["intentionDomainCode"] as? String {
            self.intentionDomainCode = value
        }
        if let value = dict["intentionList"] as? [Any?] {
            var tmp : [RecognizeIntentionRequest.IntentionList] = []
            for v in value {
                if v != nil {
                    var model = RecognizeIntentionRequest.IntentionList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.intentionList = tmp
        }
        if let value = dict["opType"] as? String {
            self.opType = value
        }
        if let value = dict["recommend"] as? Bool {
            self.recommend = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["analysisProcess"] as? String {
                self.analysisProcess = value
            }
            if let value = dict["intentionCode"] as? String {
                self.intentionCode = value
            }
            if let value = dict["intentionName"] as? String {
                self.intentionName = value
            }
            if let value = dict["intentionScript"] as? String {
                self.intentionScript = value
            }
            if let value = dict["recommendIntention"] as? String {
                self.recommendIntention = value
            }
            if let value = dict["recommendScript"] as? String {
                self.recommendScript = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["cost"] as? Int64 {
            self.cost = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = RecognizeIntentionResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["dataType"] as? String {
            self.dataType = value
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["time"] as? String {
            self.time = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RecognizeIntentionResponseBody()
            model.fromMap(value)
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

    public var userInputs: [String: Any]?

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
        if self.userInputs != nil {
            map["userInputs"] = self.userInputs!
        }
        if self.versionId != nil {
            map["versionId"] = self.versionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["botId"] as? String {
            self.botId = value
        }
        if let value = dict["modelId"] as? String {
            self.modelId = value
        }
        if let value = dict["stream"] as? Bool {
            self.stream = value
        }
        if let value = dict["threadId"] as? String {
            self.threadId = value
        }
        if let value = dict["useDraft"] as? Bool {
            self.useDraft = value
        }
        if let value = dict["userContent"] as? String {
            self.userContent = value
        }
        if let value = dict["userInputs"] as? [String: Any] {
            self.userInputs = value
        }
        if let value = dict["versionId"] as? String {
            self.versionId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["displayName"] as? String {
                    self.displayName = value
                }
                if let value = dict["endTime"] as? String {
                    self.endTime = value
                }
                if let value = dict["functionArgs"] as? String {
                    self.functionArgs = value
                }
                if let value = dict["functionName"] as? String {
                    self.functionName = value
                }
                if let value = dict["result"] as? String {
                    self.result = value
                }
                if let value = dict["startTime"] as? String {
                    self.startTime = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["content"] as? String {
                            self.content = value
                        }
                        if let value = dict["role"] as? String {
                            self.role = value
                        }
                        if let value = dict["roleDisplayName"] as? String {
                            self.roleDisplayName = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["finishReason"] as? String {
                        self.finishReason = value
                    }
                    if let value = dict["index"] as? Int32 {
                        self.index = value
                    }
                    if let value = dict["message"] as? [String: Any?] {
                        var model = RunAgentResponseBody.Data.Response.Choices.Message()
                        model.fromMap(value)
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["choices"] as? [Any?] {
                    var tmp : [RunAgentResponseBody.Data.Response.Choices] = []
                    for v in value {
                        if v != nil {
                            var model = RunAgentResponseBody.Data.Response.Choices()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.choices = tmp
                }
                if let value = dict["created"] as? Int64 {
                    self.created = value
                }
                if let value = dict["id"] as? String {
                    self.id = value
                }
                if let value = dict["modelId"] as? String {
                    self.modelId = value
                }
                if let value = dict["time"] as? String {
                    self.time = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["functionCallResponses"] as? [Any?] {
                var tmp : [RunAgentResponseBody.Data.FunctionCallResponses] = []
                for v in value {
                    if v != nil {
                        var model = RunAgentResponseBody.Data.FunctionCallResponses()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.functionCallResponses = tmp
            }
            if let value = dict["inputTokens"] as? Int32 {
                self.inputTokens = value
            }
            if let value = dict["outputTokens"] as? Int32 {
                self.outputTokens = value
            }
            if let value = dict["response"] as? [String: Any?] {
                var model = RunAgentResponseBody.Data.Response()
                model.fromMap(value)
                self.response = model
            }
            if let value = dict["threadId"] as? String {
                self.threadId = value
            }
            if let value = dict["traceId"] as? String {
                self.traceId = value
            }
            if let value = dict["versionId"] as? String {
                self.versionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["cost"] as? Int64 {
            self.cost = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = RunAgentResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["dataType"] as? String {
            self.dataType = value
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["time"] as? String {
            self.time = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RunAgentResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["content"] as? String {
                self.content = value
            }
            if let value = dict["role"] as? String {
                self.role = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["properties"] as? [String: Any] {
                        self.properties = value
                    }
                    if let value = dict["type"] as? String {
                        self.type = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["description"] as? String {
                    self.description_ = value
                }
                if let value = dict["name"] as? String {
                    self.name = value
                }
                if let value = dict["parameters"] as? [String: Any?] {
                    var model = RunChatResultGenerationRequest.Tools.Function.Parameters()
                    model.fromMap(value)
                    self.parameters = model
                }
                if let value = dict["required"] as? [String] {
                    self.required_ = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["function"] as? [String: Any?] {
                var model = RunChatResultGenerationRequest.Tools.Function()
                model.fromMap(value)
                self.function = model
            }
            if let value = dict["type"] as? String {
                self.type = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["inferenceParameters"] as? [String: Any] {
            self.inferenceParameters = value
        }
        if let value = dict["messages"] as? [Any?] {
            var tmp : [RunChatResultGenerationRequest.Messages] = []
            for v in value {
                if v != nil {
                    var model = RunChatResultGenerationRequest.Messages()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.messages = tmp
        }
        if let value = dict["modelId"] as? String {
            self.modelId = value
        }
        if let value = dict["sessionId"] as? String {
            self.sessionId = value
        }
        if let value = dict["stream"] as? Bool {
            self.stream = value
        }
        if let value = dict["tools"] as? [Any?] {
            var tmp : [RunChatResultGenerationRequest.Tools] = []
            for v in value {
                if v != nil {
                    var model = RunChatResultGenerationRequest.Tools()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["content"] as? String {
                    self.content = value
                }
                if let value = dict["role"] as? String {
                    self.role = value
                }
                if let value = dict["toolCalls"] as? [[String: Any]] {
                    self.toolCalls = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["finishReason"] as? String {
                self.finishReason = value
            }
            if let value = dict["index"] as? Int32 {
                self.index = value
            }
            if let value = dict["message"] as? [String: Any?] {
                var model = RunChatResultGenerationResponseBody.Choices.Message()
                model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["imageCount"] as? Int32 {
                self.imageCount = value
            }
            if let value = dict["imageTokens"] as? Int32 {
                self.imageTokens = value
            }
            if let value = dict["inputTokens"] as? Int32 {
                self.inputTokens = value
            }
            if let value = dict["outputTokens"] as? Int32 {
                self.outputTokens = value
            }
            if let value = dict["totalTokens"] as? Int32 {
                self.totalTokens = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["choices"] as? [Any?] {
            var tmp : [RunChatResultGenerationResponseBody.Choices] = []
            for v in value {
                if v != nil {
                    var model = RunChatResultGenerationResponseBody.Choices()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.choices = tmp
        }
        if let value = dict["created"] as? Int64 {
            self.created = value
        }
        if let value = dict["id"] as? String {
            self.id = value
        }
        if let value = dict["modelId"] as? String {
            self.modelId = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["time"] as? String {
            self.time = value
        }
        if let value = dict["totalTokens"] as? Int32 {
            self.totalTokens = value
        }
        if let value = dict["usage"] as? [String: Any?] {
            var model = RunChatResultGenerationResponseBody.Usage()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RunChatResultGenerationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RunDialogAnalysisRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["sessionId"] as? String {
            self.sessionId = value
        }
    }
}

public class RunDialogAnalysisResponseBody : Tea.TeaModel {
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["name"] as? String {
                            self.name = value
                        }
                        if let value = dict["value"] as? String {
                            self.value = value
                        }
                    }
                }
                public var dialogExecPlan: String?

                public var dialogLabels: [RunDialogAnalysisResponseBody.Data.DialogAnalysisRespList.AnalysisResp.DialogLabels]?

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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["dialogExecPlan"] as? String {
                        self.dialogExecPlan = value
                    }
                    if let value = dict["dialogLabels"] as? [Any?] {
                        var tmp : [RunDialogAnalysisResponseBody.Data.DialogAnalysisRespList.AnalysisResp.DialogLabels] = []
                        for v in value {
                            if v != nil {
                                var model = RunDialogAnalysisResponseBody.Data.DialogAnalysisRespList.AnalysisResp.DialogLabels()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.dialogLabels = tmp
                    }
                    if let value = dict["dialogOpenAnalysis"] as? [String: Any] {
                        self.dialogOpenAnalysis = value
                    }
                    if let value = dict["dialogProcessAnalysis"] as? [String: Any] {
                        self.dialogProcessAnalysis = value
                    }
                    if let value = dict["dialogSop"] as? String {
                        self.dialogSop = value
                    }
                    if let value = dict["dialogSummary"] as? String {
                        self.dialogSummary = value
                    }
                }
            }
            public var analysisResp: RunDialogAnalysisResponseBody.Data.DialogAnalysisRespList.AnalysisResp?

            public var failNode: [String]?

            public var gmtCreate: String?

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
                if self.failNode != nil {
                    map["failNode"] = self.failNode!
                }
                if self.gmtCreate != nil {
                    map["gmtCreate"] = self.gmtCreate!
                }
                if self.sessionId != nil {
                    map["sessionId"] = self.sessionId!
                }
                if self.status != nil {
                    map["status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["analysisResp"] as? [String: Any?] {
                    var model = RunDialogAnalysisResponseBody.Data.DialogAnalysisRespList.AnalysisResp()
                    model.fromMap(value)
                    self.analysisResp = model
                }
                if let value = dict["failNode"] as? [String] {
                    self.failNode = value
                }
                if let value = dict["gmtCreate"] as? String {
                    self.gmtCreate = value
                }
                if let value = dict["sessionId"] as? String {
                    self.sessionId = value
                }
                if let value = dict["status"] as? String {
                    self.status = value
                }
            }
        }
        public var dialogAnalysisRespList: [RunDialogAnalysisResponseBody.Data.DialogAnalysisRespList]?

        public override init() {
            super.init()
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["dialogAnalysisRespList"] as? [Any?] {
                var tmp : [RunDialogAnalysisResponseBody.Data.DialogAnalysisRespList] = []
                for v in value {
                    if v != nil {
                        var model = RunDialogAnalysisResponseBody.Data.DialogAnalysisRespList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.dialogAnalysisRespList = tmp
            }
        }
    }
    public var cost: Int64?

    public var data: RunDialogAnalysisResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["cost"] as? Int64 {
            self.cost = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = RunDialogAnalysisResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["dataType"] as? String {
            self.dataType = value
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["time"] as? String {
            self.time = value
        }
    }
}

public class RunDialogAnalysisResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RunDialogAnalysisResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RunDialogAnalysisResponseBody()
            model.fromMap(value)
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["boost"] as? Double {
                    self.boost = value
                }
                if let value = dict["key"] as? String {
                    self.key = value
                }
                if let value = dict["operator"] as? String {
                    self.operator_ = value
                }
                if let value = dict["value"] as? String {
                    self.value = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["boost"] as? Double {
                    self.boost = value
                }
                if let value = dict["key"] as? String {
                    self.key = value
                }
                if let value = dict["operator"] as? String {
                    self.operator_ = value
                }
                if let value = dict["value"] as? String {
                    self.value = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["and"] as? [Any?] {
                var tmp : [RunLibraryChatGenerationRequest.QueryCriteria.And] = []
                for v in value {
                    if v != nil {
                        var model = RunLibraryChatGenerationRequest.QueryCriteria.And()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.and = tmp
            }
            if let value = dict["or"] as? [Any?] {
                var tmp : [RunLibraryChatGenerationRequest.QueryCriteria.Or] = []
                for v in value {
                    if v != nil {
                        var model = RunLibraryChatGenerationRequest.QueryCriteria.Or()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["limit"] as? Int32 {
                self.limit = value
            }
            if let value = dict["searchAnalyzerType"] as? String {
                self.searchAnalyzerType = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["limit"] as? Int32 {
                self.limit = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["docIdList"] as? [String] {
            self.docIdList = value
        }
        if let value = dict["enableFollowUp"] as? Bool {
            self.enableFollowUp = value
        }
        if let value = dict["enableMultiQuery"] as? Bool {
            self.enableMultiQuery = value
        }
        if let value = dict["enableOpenQa"] as? Bool {
            self.enableOpenQa = value
        }
        if let value = dict["followUpLlm"] as? String {
            self.followUpLlm = value
        }
        if let value = dict["libraryId"] as? String {
            self.libraryId = value
        }
        if let value = dict["llmType"] as? String {
            self.llmType = value
        }
        if let value = dict["multiQueryLlm"] as? String {
            self.multiQueryLlm = value
        }
        if let value = dict["query"] as? String {
            self.query = value
        }
        if let value = dict["queryCriteria"] as? [String: Any?] {
            var model = RunLibraryChatGenerationRequest.QueryCriteria()
            model.fromMap(value)
            self.queryCriteria = model
        }
        if let value = dict["rerankType"] as? String {
            self.rerankType = value
        }
        if let value = dict["sessionId"] as? String {
            self.sessionId = value
        }
        if let value = dict["stream"] as? Bool {
            self.stream = value
        }
        if let value = dict["subQueryList"] as? [String] {
            self.subQueryList = value
        }
        if let value = dict["textSearchParameter"] as? [String: Any?] {
            var model = RunLibraryChatGenerationRequest.TextSearchParameter()
            model.fromMap(value)
            self.textSearchParameter = model
        }
        if let value = dict["topK"] as? Int32 {
            self.topK = value
        }
        if let value = dict["vectorSearchParameter"] as? [String: Any?] {
            var model = RunLibraryChatGenerationRequest.VectorSearchParameter()
            model.fromMap(value)
            self.vectorSearchParameter = model
        }
        if let value = dict["withDocumentReference"] as? Bool {
            self.withDocumentReference = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["cost"] as? Int64 {
            self.cost = value
        }
        if let value = dict["data"] as? Any {
            self.data = value
        }
        if let value = dict["dataType"] as? String {
            self.dataType = value
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["time"] as? String {
            self.time = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RunLibraryChatGenerationResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["content"] as? String {
                self.content = value
            }
            if let value = dict["gmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["reply"] as? String {
                self.reply = value
            }
            if let value = dict["sessionId"] as? String {
                self.sessionId = value
            }
            if let value = dict["type"] as? String {
                self.type = value
            }
            if let value = dict["userId"] as? String {
                self.userId = value
            }
            if let value = dict["userName"] as? String {
                self.userName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["gmtService"] as? String {
            self.gmtService = value
        }
        if let value = dict["liveScriptContent"] as? String {
            self.liveScriptContent = value
        }
        if let value = dict["openSmallTalk"] as? Bool {
            self.openSmallTalk = value
        }
        if let value = dict["questionList"] as? [Any?] {
            var tmp : [SubmitChatQuestionRequest.QuestionList] = []
            for v in value {
                if v != nil {
                    var model = SubmitChatQuestionRequest.QuestionList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.questionList = tmp
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["sessionId"] as? String {
            self.sessionId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["batchId"] as? String {
                self.batchId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["cost"] as? Int64 {
            self.cost = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = SubmitChatQuestionResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["dataType"] as? String {
            self.dataType = value
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["time"] as? String {
            self.time = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = SubmitChatQuestionResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["docId"] as? String {
            self.docId = value
        }
        if let value = dict["libraryId"] as? String {
            self.libraryId = value
        }
        if let value = dict["meta"] as? [String: Any] {
            self.meta = value
        }
        if let value = dict["title"] as? String {
            self.title = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["cost"] as? Int64 {
            self.cost = value
        }
        if let value = dict["data"] as? String {
            self.data = value
        }
        if let value = dict["dataType"] as? String {
            self.dataType = value
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["time"] as? String {
            self.time = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateDocumentResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["chunkId"] as? String {
                self.chunkId = value
            }
            if let value = dict["chunkText"] as? String {
                self.chunkText = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["chunks"] as? [Any?] {
            var tmp : [UpdateDocumentChunkRequest.Chunks] = []
            for v in value {
                if v != nil {
                    var model = UpdateDocumentChunkRequest.Chunks()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.chunks = tmp
        }
        if let value = dict["libraryId"] as? String {
            self.libraryId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["cost"] as? Int64 {
            self.cost = value
        }
        if let value = dict["data"] as? String {
            self.data = value
        }
        if let value = dict["dataType"] as? String {
            self.dataType = value
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["time"] as? String {
            self.time = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateDocumentChunkResponseBody()
            model.fromMap(value)
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["docTreeSplit"] as? Bool {
                    self.docTreeSplit = value
                }
                if let value = dict["docTreeSplitSize"] as? Int32 {
                    self.docTreeSplitSize = value
                }
                if let value = dict["enhanceGraph"] as? Bool {
                    self.enhanceGraph = value
                }
                if let value = dict["enhanceTable"] as? Bool {
                    self.enhanceTable = value
                }
                if let value = dict["overlap"] as? Int32 {
                    self.overlap = value
                }
                if let value = dict["sentenceSplit"] as? Bool {
                    self.sentenceSplit = value
                }
                if let value = dict["sentenceSplitSize"] as? Int32 {
                    self.sentenceSplitSize = value
                }
                if let value = dict["size"] as? Int32 {
                    self.size = value
                }
                if let value = dict["split"] as? Bool {
                    self.split = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["temperature"] as? Double {
                    self.temperature = value
                }
                if let value = dict["topP"] as? Double {
                    self.topP = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["enableFollowUp"] as? Bool {
                    self.enableFollowUp = value
                }
                if let value = dict["enableMultiQuery"] as? Bool {
                    self.enableMultiQuery = value
                }
                if let value = dict["enableOpenQa"] as? Bool {
                    self.enableOpenQa = value
                }
                if let value = dict["enableQueryRewrite"] as? Bool {
                    self.enableQueryRewrite = value
                }
                if let value = dict["enableSession"] as? Bool {
                    self.enableSession = value
                }
                if let value = dict["localKnowledgeId"] as? String {
                    self.localKnowledgeId = value
                }
                if let value = dict["withDocumentReference"] as? Bool {
                    self.withDocumentReference = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["documentRankType"] as? String {
                    self.documentRankType = value
                }
                if let value = dict["limit"] as? Int32 {
                    self.limit = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["category"] as? String {
                    self.category = value
                }
                if let value = dict["enable"] as? Bool {
                    self.enable = value
                }
                if let value = dict["indexAnalyzer"] as? String {
                    self.indexAnalyzer = value
                }
                if let value = dict["rankThreshold"] as? Double {
                    self.rankThreshold = value
                }
                if let value = dict["searchAnalyzer"] as? String {
                    self.searchAnalyzer = value
                }
                if let value = dict["topK"] as? Int32 {
                    self.topK = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["category"] as? String {
                    self.category = value
                }
                if let value = dict["embeddingType"] as? String {
                    self.embeddingType = value
                }
                if let value = dict["enable"] as? Bool {
                    self.enable = value
                }
                if let value = dict["rankThreshold"] as? Double {
                    self.rankThreshold = value
                }
                if let value = dict["topK"] as? Int32 {
                    self.topK = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["chunkStrategy"] as? [String: Any?] {
                var model = UpdateLibraryRequest.IndexSetting.ChunkStrategy()
                model.fromMap(value)
                self.chunkStrategy = model
            }
            if let value = dict["modelConfig"] as? [String: Any?] {
                var model = UpdateLibraryRequest.IndexSetting.ModelConfig()
                model.fromMap(value)
                self.modelConfig = model
            }
            if let value = dict["promptRoleStyle"] as? String {
                self.promptRoleStyle = value
            }
            if let value = dict["queryEnhancer"] as? [String: Any?] {
                var model = UpdateLibraryRequest.IndexSetting.QueryEnhancer()
                model.fromMap(value)
                self.queryEnhancer = model
            }
            if let value = dict["recallStrategy"] as? [String: Any?] {
                var model = UpdateLibraryRequest.IndexSetting.RecallStrategy()
                model.fromMap(value)
                self.recallStrategy = model
            }
            if let value = dict["textIndexSetting"] as? [String: Any?] {
                var model = UpdateLibraryRequest.IndexSetting.TextIndexSetting()
                model.fromMap(value)
                self.textIndexSetting = model
            }
            if let value = dict["vectorIndexSetting"] as? [String: Any?] {
                var model = UpdateLibraryRequest.IndexSetting.VectorIndexSetting()
                model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["description"] as? String {
            self.description_ = value
        }
        if let value = dict["indexSetting"] as? [String: Any?] {
            var model = UpdateLibraryRequest.IndexSetting()
            model.fromMap(value)
            self.indexSetting = model
        }
        if let value = dict["libraryId"] as? String {
            self.libraryId = value
        }
        if let value = dict["libraryName"] as? String {
            self.libraryName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["cost"] as? Int64 {
            self.cost = value
        }
        if let value = dict["data"] as? String {
            self.data = value
        }
        if let value = dict["dataType"] as? String {
            self.dataType = value
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["time"] as? String {
            self.time = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateLibraryResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["answer"] as? String {
                self.answer = value
            }
            if let value = dict["question"] as? String {
                self.question = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["parseQaResults"] as? [Any?] {
            var tmp : [UpdateQaLibraryRequest.ParseQaResults] = []
            for v in value {
                if v != nil {
                    var model = UpdateQaLibraryRequest.ParseQaResults()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.parseQaResults = tmp
        }
        if let value = dict["qaLibraryId"] as? String {
            self.qaLibraryId = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["qaLibraryId"] as? String {
                self.qaLibraryId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["cost"] as? Int64 {
            self.cost = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = UpdateQaLibraryResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["dataType"] as? String {
            self.dataType = value
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["time"] as? String {
            self.time = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UpdateQaLibraryResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? String {
            self.data = value
        }
        if let value = dict["fileName"] as? String {
            self.fileName = value
        }
        if let value = dict["fileUrl"] as? String {
            self.fileUrl = value
        }
        if let value = dict["libraryId"] as? String {
            self.libraryId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["data"] as? String {
            self.data = value
        }
        if let value = dict["fileName"] as? String {
            self.fileName = value
        }
        if let value = dict["fileUrl"] as? InputStream {
            self.fileUrlObject = value
        }
        if let value = dict["libraryId"] as? String {
            self.libraryId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["cost"] as? Int64 {
            self.cost = value
        }
        if let value = dict["data"] as? String {
            self.data = value
        }
        if let value = dict["dataType"] as? String {
            self.dataType = value
        }
        if let value = dict["errCode"] as? String {
            self.errCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
        if let value = dict["time"] as? String {
            self.time = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UploadDocumentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
