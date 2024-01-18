import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class DataSolutionListSegmentBaggageMappingListPassengerBaggageAllowanceMappingValue : Tea.TeaModel {
    public var baggageAmount: Int32?

    public var baggageWeight: Int32?

    public var baggageWeightUnit: String?

    public var isAllWeight: Bool?

    public var carryOnAmount: Int32?

    public var carryOnWeight: Int32?

    public var carryOnWeightUnit: String?

    public var isAllCarryOnWeight: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.baggageAmount != nil {
            map["baggage_amount"] = self.baggageAmount!
        }
        if self.baggageWeight != nil {
            map["baggage_weight"] = self.baggageWeight!
        }
        if self.baggageWeightUnit != nil {
            map["baggage_weight_unit"] = self.baggageWeightUnit!
        }
        if self.isAllWeight != nil {
            map["is_all_weight"] = self.isAllWeight!
        }
        if self.carryOnAmount != nil {
            map["carry_on_amount"] = self.carryOnAmount!
        }
        if self.carryOnWeight != nil {
            map["carry_on_weight"] = self.carryOnWeight!
        }
        if self.carryOnWeightUnit != nil {
            map["carry_on_weight_unit"] = self.carryOnWeightUnit!
        }
        if self.isAllCarryOnWeight != nil {
            map["is_all_carry_on_weight"] = self.isAllCarryOnWeight!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("baggage_amount") && dict["baggage_amount"] != nil {
            self.baggageAmount = dict["baggage_amount"] as! Int32
        }
        if dict.keys.contains("baggage_weight") && dict["baggage_weight"] != nil {
            self.baggageWeight = dict["baggage_weight"] as! Int32
        }
        if dict.keys.contains("baggage_weight_unit") && dict["baggage_weight_unit"] != nil {
            self.baggageWeightUnit = dict["baggage_weight_unit"] as! String
        }
        if dict.keys.contains("is_all_weight") && dict["is_all_weight"] != nil {
            self.isAllWeight = dict["is_all_weight"] as! Bool
        }
        if dict.keys.contains("carry_on_amount") && dict["carry_on_amount"] != nil {
            self.carryOnAmount = dict["carry_on_amount"] as! Int32
        }
        if dict.keys.contains("carry_on_weight") && dict["carry_on_weight"] != nil {
            self.carryOnWeight = dict["carry_on_weight"] as! Int32
        }
        if dict.keys.contains("carry_on_weight_unit") && dict["carry_on_weight_unit"] != nil {
            self.carryOnWeightUnit = dict["carry_on_weight_unit"] as! String
        }
        if dict.keys.contains("is_all_carry_on_weight") && dict["is_all_carry_on_weight"] != nil {
            self.isAllCarryOnWeight = dict["is_all_carry_on_weight"] as! Bool
        }
    }
}

public class DataSolutionListSegmentRefundChangeRuleMappingListRefundChangeRuleMapValue : Tea.TeaModel {
    public class RefundRuleAllUnusedList : Tea.TeaModel {
        public var type: Int32?

        public var timeUnit: String?

        public var ruleStartTime: Int32?

        public var ruleEndTime: Int32?

        public var canRefund: Bool?

        public var refundFee: Double?

        public var canReturnAllTax: Bool?

        public var returnPartTaxFee: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.type != nil {
                map["type"] = self.type!
            }
            if self.timeUnit != nil {
                map["time_unit"] = self.timeUnit!
            }
            if self.ruleStartTime != nil {
                map["rule_start_time"] = self.ruleStartTime!
            }
            if self.ruleEndTime != nil {
                map["rule_end_time"] = self.ruleEndTime!
            }
            if self.canRefund != nil {
                map["can_refund"] = self.canRefund!
            }
            if self.refundFee != nil {
                map["refund_fee"] = self.refundFee!
            }
            if self.canReturnAllTax != nil {
                map["can_return_all_tax"] = self.canReturnAllTax!
            }
            if self.returnPartTaxFee != nil {
                map["return_part_tax_fee"] = self.returnPartTaxFee!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("type") && dict["type"] != nil {
                self.type = dict["type"] as! Int32
            }
            if dict.keys.contains("time_unit") && dict["time_unit"] != nil {
                self.timeUnit = dict["time_unit"] as! String
            }
            if dict.keys.contains("rule_start_time") && dict["rule_start_time"] != nil {
                self.ruleStartTime = dict["rule_start_time"] as! Int32
            }
            if dict.keys.contains("rule_end_time") && dict["rule_end_time"] != nil {
                self.ruleEndTime = dict["rule_end_time"] as! Int32
            }
            if dict.keys.contains("can_refund") && dict["can_refund"] != nil {
                self.canRefund = dict["can_refund"] as! Bool
            }
            if dict.keys.contains("refund_fee") && dict["refund_fee"] != nil {
                self.refundFee = dict["refund_fee"] as! Double
            }
            if dict.keys.contains("can_return_all_tax") && dict["can_return_all_tax"] != nil {
                self.canReturnAllTax = dict["can_return_all_tax"] as! Bool
            }
            if dict.keys.contains("return_part_tax_fee") && dict["return_part_tax_fee"] != nil {
                self.returnPartTaxFee = dict["return_part_tax_fee"] as! Double
            }
        }
    }
    public class RefundRulePartUnusedList : Tea.TeaModel {
        public var type: Int32?

        public var timeUnit: String?

        public var ruleStartTime: Int32?

        public var ruleEndTime: Int32?

        public var canRefund: Bool?

        public var refundFee: Double?

        public var canReturnAllTax: Bool?

        public var returnPartTaxFee: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.type != nil {
                map["type"] = self.type!
            }
            if self.timeUnit != nil {
                map["time_unit"] = self.timeUnit!
            }
            if self.ruleStartTime != nil {
                map["rule_start_time"] = self.ruleStartTime!
            }
            if self.ruleEndTime != nil {
                map["rule_end_time"] = self.ruleEndTime!
            }
            if self.canRefund != nil {
                map["can_refund"] = self.canRefund!
            }
            if self.refundFee != nil {
                map["refund_fee"] = self.refundFee!
            }
            if self.canReturnAllTax != nil {
                map["can_return_all_tax"] = self.canReturnAllTax!
            }
            if self.returnPartTaxFee != nil {
                map["return_part_tax_fee"] = self.returnPartTaxFee!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("type") && dict["type"] != nil {
                self.type = dict["type"] as! Int32
            }
            if dict.keys.contains("time_unit") && dict["time_unit"] != nil {
                self.timeUnit = dict["time_unit"] as! String
            }
            if dict.keys.contains("rule_start_time") && dict["rule_start_time"] != nil {
                self.ruleStartTime = dict["rule_start_time"] as! Int32
            }
            if dict.keys.contains("rule_end_time") && dict["rule_end_time"] != nil {
                self.ruleEndTime = dict["rule_end_time"] as! Int32
            }
            if dict.keys.contains("can_refund") && dict["can_refund"] != nil {
                self.canRefund = dict["can_refund"] as! Bool
            }
            if dict.keys.contains("refund_fee") && dict["refund_fee"] != nil {
                self.refundFee = dict["refund_fee"] as! Double
            }
            if dict.keys.contains("can_return_all_tax") && dict["can_return_all_tax"] != nil {
                self.canReturnAllTax = dict["can_return_all_tax"] as! Bool
            }
            if dict.keys.contains("return_part_tax_fee") && dict["return_part_tax_fee"] != nil {
                self.returnPartTaxFee = dict["return_part_tax_fee"] as! Double
            }
        }
    }
    public class ChangeRuleInUnusedList : Tea.TeaModel {
        public var type: Int32?

        public var timeUnit: String?

        public var ruleStartTime: Int32?

        public var ruleEndTime: Int32?

        public var canChange: Bool?

        public var changeFee: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.type != nil {
                map["type"] = self.type!
            }
            if self.timeUnit != nil {
                map["time_unit"] = self.timeUnit!
            }
            if self.ruleStartTime != nil {
                map["rule_start_time"] = self.ruleStartTime!
            }
            if self.ruleEndTime != nil {
                map["rule_end_time"] = self.ruleEndTime!
            }
            if self.canChange != nil {
                map["can_change"] = self.canChange!
            }
            if self.changeFee != nil {
                map["change_fee"] = self.changeFee!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("type") && dict["type"] != nil {
                self.type = dict["type"] as! Int32
            }
            if dict.keys.contains("time_unit") && dict["time_unit"] != nil {
                self.timeUnit = dict["time_unit"] as! String
            }
            if dict.keys.contains("rule_start_time") && dict["rule_start_time"] != nil {
                self.ruleStartTime = dict["rule_start_time"] as! Int32
            }
            if dict.keys.contains("rule_end_time") && dict["rule_end_time"] != nil {
                self.ruleEndTime = dict["rule_end_time"] as! Int32
            }
            if dict.keys.contains("can_change") && dict["can_change"] != nil {
                self.canChange = dict["can_change"] as! Bool
            }
            if dict.keys.contains("change_fee") && dict["change_fee"] != nil {
                self.changeFee = dict["change_fee"] as! Double
            }
        }
    }
    public class ChangeRuleOutUnusedList : Tea.TeaModel {
        public var type: Int32?

        public var timeUnit: String?

        public var ruleStartTime: Int32?

        public var ruleEndTime: Int32?

        public var canChange: Bool?

        public var changeFee: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.type != nil {
                map["type"] = self.type!
            }
            if self.timeUnit != nil {
                map["time_unit"] = self.timeUnit!
            }
            if self.ruleStartTime != nil {
                map["rule_start_time"] = self.ruleStartTime!
            }
            if self.ruleEndTime != nil {
                map["rule_end_time"] = self.ruleEndTime!
            }
            if self.canChange != nil {
                map["can_change"] = self.canChange!
            }
            if self.changeFee != nil {
                map["change_fee"] = self.changeFee!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("type") && dict["type"] != nil {
                self.type = dict["type"] as! Int32
            }
            if dict.keys.contains("time_unit") && dict["time_unit"] != nil {
                self.timeUnit = dict["time_unit"] as! String
            }
            if dict.keys.contains("rule_start_time") && dict["rule_start_time"] != nil {
                self.ruleStartTime = dict["rule_start_time"] as! Int32
            }
            if dict.keys.contains("rule_end_time") && dict["rule_end_time"] != nil {
                self.ruleEndTime = dict["rule_end_time"] as! Int32
            }
            if dict.keys.contains("can_change") && dict["can_change"] != nil {
                self.canChange = dict["can_change"] as! Bool
            }
            if dict.keys.contains("change_fee") && dict["change_fee"] != nil {
                self.changeFee = dict["change_fee"] as! Double
            }
        }
    }
    public var refundRuleAllUnusedList: [DataSolutionListSegmentRefundChangeRuleMappingListRefundChangeRuleMapValue.RefundRuleAllUnusedList]?

    public var refundRulePartUnusedList: [DataSolutionListSegmentRefundChangeRuleMappingListRefundChangeRuleMapValue.RefundRulePartUnusedList]?

    public var changeRuleInUnusedList: [DataSolutionListSegmentRefundChangeRuleMappingListRefundChangeRuleMapValue.ChangeRuleInUnusedList]?

    public var changeRuleOutUnusedList: [DataSolutionListSegmentRefundChangeRuleMappingListRefundChangeRuleMapValue.ChangeRuleOutUnusedList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.refundRuleAllUnusedList != nil {
            var tmp : [Any] = []
            for k in self.refundRuleAllUnusedList! {
                tmp.append(k.toMap())
            }
            map["refund_rule_all_unused_list"] = tmp
        }
        if self.refundRulePartUnusedList != nil {
            var tmp : [Any] = []
            for k in self.refundRulePartUnusedList! {
                tmp.append(k.toMap())
            }
            map["refund_rule_part_unused_list"] = tmp
        }
        if self.changeRuleInUnusedList != nil {
            var tmp : [Any] = []
            for k in self.changeRuleInUnusedList! {
                tmp.append(k.toMap())
            }
            map["change_rule_in_unused_list"] = tmp
        }
        if self.changeRuleOutUnusedList != nil {
            var tmp : [Any] = []
            for k in self.changeRuleOutUnusedList! {
                tmp.append(k.toMap())
            }
            map["change_rule_out_unused_list"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("refund_rule_all_unused_list") && dict["refund_rule_all_unused_list"] != nil {
            var tmp : [DataSolutionListSegmentRefundChangeRuleMappingListRefundChangeRuleMapValue.RefundRuleAllUnusedList] = []
            for v in dict["refund_rule_all_unused_list"] as! [Any] {
                var model = DataSolutionListSegmentRefundChangeRuleMappingListRefundChangeRuleMapValue.RefundRuleAllUnusedList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.refundRuleAllUnusedList = tmp
        }
        if dict.keys.contains("refund_rule_part_unused_list") && dict["refund_rule_part_unused_list"] != nil {
            var tmp : [DataSolutionListSegmentRefundChangeRuleMappingListRefundChangeRuleMapValue.RefundRulePartUnusedList] = []
            for v in dict["refund_rule_part_unused_list"] as! [Any] {
                var model = DataSolutionListSegmentRefundChangeRuleMappingListRefundChangeRuleMapValue.RefundRulePartUnusedList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.refundRulePartUnusedList = tmp
        }
        if dict.keys.contains("change_rule_in_unused_list") && dict["change_rule_in_unused_list"] != nil {
            var tmp : [DataSolutionListSegmentRefundChangeRuleMappingListRefundChangeRuleMapValue.ChangeRuleInUnusedList] = []
            for v in dict["change_rule_in_unused_list"] as! [Any] {
                var model = DataSolutionListSegmentRefundChangeRuleMappingListRefundChangeRuleMapValue.ChangeRuleInUnusedList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.changeRuleInUnusedList = tmp
        }
        if dict.keys.contains("change_rule_out_unused_list") && dict["change_rule_out_unused_list"] != nil {
            var tmp : [DataSolutionListSegmentRefundChangeRuleMappingListRefundChangeRuleMapValue.ChangeRuleOutUnusedList] = []
            for v in dict["change_rule_out_unused_list"] as! [Any] {
                var model = DataSolutionListSegmentRefundChangeRuleMappingListRefundChangeRuleMapValue.ChangeRuleOutUnusedList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.changeRuleOutUnusedList = tmp
        }
    }
}

public class DataBaggageAllowanceMapValue : Tea.TeaModel {
    public var baggageAmount: Int32?

    public var baggageWeight: Int32?

    public var baggageWeightUnit: String?

    public var isAllWeight: Bool?

    public var carryOnAmount: Int32?

    public var carryOnWeight: Int32?

    public var carryOnWeightUnit: String?

    public var isAllCarryOnWeight: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.baggageAmount != nil {
            map["baggage_amount"] = self.baggageAmount!
        }
        if self.baggageWeight != nil {
            map["baggage_weight"] = self.baggageWeight!
        }
        if self.baggageWeightUnit != nil {
            map["baggage_weight_unit"] = self.baggageWeightUnit!
        }
        if self.isAllWeight != nil {
            map["is_all_weight"] = self.isAllWeight!
        }
        if self.carryOnAmount != nil {
            map["carry_on_amount"] = self.carryOnAmount!
        }
        if self.carryOnWeight != nil {
            map["carry_on_weight"] = self.carryOnWeight!
        }
        if self.carryOnWeightUnit != nil {
            map["carry_on_weight_unit"] = self.carryOnWeightUnit!
        }
        if self.isAllCarryOnWeight != nil {
            map["is_all_carry_on_weight"] = self.isAllCarryOnWeight!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("baggage_amount") && dict["baggage_amount"] != nil {
            self.baggageAmount = dict["baggage_amount"] as! Int32
        }
        if dict.keys.contains("baggage_weight") && dict["baggage_weight"] != nil {
            self.baggageWeight = dict["baggage_weight"] as! Int32
        }
        if dict.keys.contains("baggage_weight_unit") && dict["baggage_weight_unit"] != nil {
            self.baggageWeightUnit = dict["baggage_weight_unit"] as! String
        }
        if dict.keys.contains("is_all_weight") && dict["is_all_weight"] != nil {
            self.isAllWeight = dict["is_all_weight"] as! Bool
        }
        if dict.keys.contains("carry_on_amount") && dict["carry_on_amount"] != nil {
            self.carryOnAmount = dict["carry_on_amount"] as! Int32
        }
        if dict.keys.contains("carry_on_weight") && dict["carry_on_weight"] != nil {
            self.carryOnWeight = dict["carry_on_weight"] as! Int32
        }
        if dict.keys.contains("carry_on_weight_unit") && dict["carry_on_weight_unit"] != nil {
            self.carryOnWeightUnit = dict["carry_on_weight_unit"] as! String
        }
        if dict.keys.contains("is_all_carry_on_weight") && dict["is_all_carry_on_weight"] != nil {
            self.isAllCarryOnWeight = dict["is_all_carry_on_weight"] as! Bool
        }
    }
}

public class DataRefundChangeRuleMapValue : Tea.TeaModel {
    public class RefundRuleAllUnusedList : Tea.TeaModel {
        public var type: Int32?

        public var timeUnit: String?

        public var ruleStartTime: Int32?

        public var ruleEndTime: Int32?

        public var canRefund: Bool?

        public var refundFee: Double?

        public var canReturnAllTax: Bool?

        public var returnPartTaxFee: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.type != nil {
                map["type"] = self.type!
            }
            if self.timeUnit != nil {
                map["time_unit"] = self.timeUnit!
            }
            if self.ruleStartTime != nil {
                map["rule_start_time"] = self.ruleStartTime!
            }
            if self.ruleEndTime != nil {
                map["rule_end_time"] = self.ruleEndTime!
            }
            if self.canRefund != nil {
                map["can_refund"] = self.canRefund!
            }
            if self.refundFee != nil {
                map["refund_fee"] = self.refundFee!
            }
            if self.canReturnAllTax != nil {
                map["can_return_all_tax"] = self.canReturnAllTax!
            }
            if self.returnPartTaxFee != nil {
                map["return_part_tax_fee"] = self.returnPartTaxFee!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("type") && dict["type"] != nil {
                self.type = dict["type"] as! Int32
            }
            if dict.keys.contains("time_unit") && dict["time_unit"] != nil {
                self.timeUnit = dict["time_unit"] as! String
            }
            if dict.keys.contains("rule_start_time") && dict["rule_start_time"] != nil {
                self.ruleStartTime = dict["rule_start_time"] as! Int32
            }
            if dict.keys.contains("rule_end_time") && dict["rule_end_time"] != nil {
                self.ruleEndTime = dict["rule_end_time"] as! Int32
            }
            if dict.keys.contains("can_refund") && dict["can_refund"] != nil {
                self.canRefund = dict["can_refund"] as! Bool
            }
            if dict.keys.contains("refund_fee") && dict["refund_fee"] != nil {
                self.refundFee = dict["refund_fee"] as! Double
            }
            if dict.keys.contains("can_return_all_tax") && dict["can_return_all_tax"] != nil {
                self.canReturnAllTax = dict["can_return_all_tax"] as! Bool
            }
            if dict.keys.contains("return_part_tax_fee") && dict["return_part_tax_fee"] != nil {
                self.returnPartTaxFee = dict["return_part_tax_fee"] as! Double
            }
        }
    }
    public class RefundRulePartUnusedList : Tea.TeaModel {
        public var type: Int32?

        public var timeUnit: String?

        public var ruleStartTime: Int32?

        public var ruleEndTime: Int32?

        public var canRefund: Bool?

        public var refundFee: Double?

        public var canReturnAllTax: Bool?

        public var returnPartTaxFee: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.type != nil {
                map["type"] = self.type!
            }
            if self.timeUnit != nil {
                map["time_unit"] = self.timeUnit!
            }
            if self.ruleStartTime != nil {
                map["rule_start_time"] = self.ruleStartTime!
            }
            if self.ruleEndTime != nil {
                map["rule_end_time"] = self.ruleEndTime!
            }
            if self.canRefund != nil {
                map["can_refund"] = self.canRefund!
            }
            if self.refundFee != nil {
                map["refund_fee"] = self.refundFee!
            }
            if self.canReturnAllTax != nil {
                map["can_return_all_tax"] = self.canReturnAllTax!
            }
            if self.returnPartTaxFee != nil {
                map["return_part_tax_fee"] = self.returnPartTaxFee!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("type") && dict["type"] != nil {
                self.type = dict["type"] as! Int32
            }
            if dict.keys.contains("time_unit") && dict["time_unit"] != nil {
                self.timeUnit = dict["time_unit"] as! String
            }
            if dict.keys.contains("rule_start_time") && dict["rule_start_time"] != nil {
                self.ruleStartTime = dict["rule_start_time"] as! Int32
            }
            if dict.keys.contains("rule_end_time") && dict["rule_end_time"] != nil {
                self.ruleEndTime = dict["rule_end_time"] as! Int32
            }
            if dict.keys.contains("can_refund") && dict["can_refund"] != nil {
                self.canRefund = dict["can_refund"] as! Bool
            }
            if dict.keys.contains("refund_fee") && dict["refund_fee"] != nil {
                self.refundFee = dict["refund_fee"] as! Double
            }
            if dict.keys.contains("can_return_all_tax") && dict["can_return_all_tax"] != nil {
                self.canReturnAllTax = dict["can_return_all_tax"] as! Bool
            }
            if dict.keys.contains("return_part_tax_fee") && dict["return_part_tax_fee"] != nil {
                self.returnPartTaxFee = dict["return_part_tax_fee"] as! Double
            }
        }
    }
    public class ChangeRuleInUnusedList : Tea.TeaModel {
        public var type: Int32?

        public var timeUnit: String?

        public var ruleStartTime: Int32?

        public var ruleEndTime: Int32?

        public var canChange: Bool?

        public var changeFee: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.type != nil {
                map["type"] = self.type!
            }
            if self.timeUnit != nil {
                map["time_unit"] = self.timeUnit!
            }
            if self.ruleStartTime != nil {
                map["rule_start_time"] = self.ruleStartTime!
            }
            if self.ruleEndTime != nil {
                map["rule_end_time"] = self.ruleEndTime!
            }
            if self.canChange != nil {
                map["can_change"] = self.canChange!
            }
            if self.changeFee != nil {
                map["change_fee"] = self.changeFee!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("type") && dict["type"] != nil {
                self.type = dict["type"] as! Int32
            }
            if dict.keys.contains("time_unit") && dict["time_unit"] != nil {
                self.timeUnit = dict["time_unit"] as! String
            }
            if dict.keys.contains("rule_start_time") && dict["rule_start_time"] != nil {
                self.ruleStartTime = dict["rule_start_time"] as! Int32
            }
            if dict.keys.contains("rule_end_time") && dict["rule_end_time"] != nil {
                self.ruleEndTime = dict["rule_end_time"] as! Int32
            }
            if dict.keys.contains("can_change") && dict["can_change"] != nil {
                self.canChange = dict["can_change"] as! Bool
            }
            if dict.keys.contains("change_fee") && dict["change_fee"] != nil {
                self.changeFee = dict["change_fee"] as! Double
            }
        }
    }
    public class ChangeRuleOutUnusedList : Tea.TeaModel {
        public var type: Int32?

        public var timeUnit: String?

        public var ruleStartTime: Int32?

        public var ruleEndTime: Int32?

        public var canChange: Bool?

        public var changeFee: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.type != nil {
                map["type"] = self.type!
            }
            if self.timeUnit != nil {
                map["time_unit"] = self.timeUnit!
            }
            if self.ruleStartTime != nil {
                map["rule_start_time"] = self.ruleStartTime!
            }
            if self.ruleEndTime != nil {
                map["rule_end_time"] = self.ruleEndTime!
            }
            if self.canChange != nil {
                map["can_change"] = self.canChange!
            }
            if self.changeFee != nil {
                map["change_fee"] = self.changeFee!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("type") && dict["type"] != nil {
                self.type = dict["type"] as! Int32
            }
            if dict.keys.contains("time_unit") && dict["time_unit"] != nil {
                self.timeUnit = dict["time_unit"] as! String
            }
            if dict.keys.contains("rule_start_time") && dict["rule_start_time"] != nil {
                self.ruleStartTime = dict["rule_start_time"] as! Int32
            }
            if dict.keys.contains("rule_end_time") && dict["rule_end_time"] != nil {
                self.ruleEndTime = dict["rule_end_time"] as! Int32
            }
            if dict.keys.contains("can_change") && dict["can_change"] != nil {
                self.canChange = dict["can_change"] as! Bool
            }
            if dict.keys.contains("change_fee") && dict["change_fee"] != nil {
                self.changeFee = dict["change_fee"] as! Double
            }
        }
    }
    public var refundRuleAllUnusedList: [DataRefundChangeRuleMapValue.RefundRuleAllUnusedList]?

    public var refundRulePartUnusedList: [DataRefundChangeRuleMapValue.RefundRulePartUnusedList]?

    public var changeRuleInUnusedList: [DataRefundChangeRuleMapValue.ChangeRuleInUnusedList]?

    public var changeRuleOutUnusedList: [DataRefundChangeRuleMapValue.ChangeRuleOutUnusedList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.refundRuleAllUnusedList != nil {
            var tmp : [Any] = []
            for k in self.refundRuleAllUnusedList! {
                tmp.append(k.toMap())
            }
            map["refund_rule_all_unused_list"] = tmp
        }
        if self.refundRulePartUnusedList != nil {
            var tmp : [Any] = []
            for k in self.refundRulePartUnusedList! {
                tmp.append(k.toMap())
            }
            map["refund_rule_part_unused_list"] = tmp
        }
        if self.changeRuleInUnusedList != nil {
            var tmp : [Any] = []
            for k in self.changeRuleInUnusedList! {
                tmp.append(k.toMap())
            }
            map["change_rule_in_unused_list"] = tmp
        }
        if self.changeRuleOutUnusedList != nil {
            var tmp : [Any] = []
            for k in self.changeRuleOutUnusedList! {
                tmp.append(k.toMap())
            }
            map["change_rule_out_unused_list"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("refund_rule_all_unused_list") && dict["refund_rule_all_unused_list"] != nil {
            var tmp : [DataRefundChangeRuleMapValue.RefundRuleAllUnusedList] = []
            for v in dict["refund_rule_all_unused_list"] as! [Any] {
                var model = DataRefundChangeRuleMapValue.RefundRuleAllUnusedList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.refundRuleAllUnusedList = tmp
        }
        if dict.keys.contains("refund_rule_part_unused_list") && dict["refund_rule_part_unused_list"] != nil {
            var tmp : [DataRefundChangeRuleMapValue.RefundRulePartUnusedList] = []
            for v in dict["refund_rule_part_unused_list"] as! [Any] {
                var model = DataRefundChangeRuleMapValue.RefundRulePartUnusedList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.refundRulePartUnusedList = tmp
        }
        if dict.keys.contains("change_rule_in_unused_list") && dict["change_rule_in_unused_list"] != nil {
            var tmp : [DataRefundChangeRuleMapValue.ChangeRuleInUnusedList] = []
            for v in dict["change_rule_in_unused_list"] as! [Any] {
                var model = DataRefundChangeRuleMapValue.ChangeRuleInUnusedList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.changeRuleInUnusedList = tmp
        }
        if dict.keys.contains("change_rule_out_unused_list") && dict["change_rule_out_unused_list"] != nil {
            var tmp : [DataRefundChangeRuleMapValue.ChangeRuleOutUnusedList] = []
            for v in dict["change_rule_out_unused_list"] as! [Any] {
                var model = DataRefundChangeRuleMapValue.ChangeRuleOutUnusedList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.changeRuleOutUnusedList = tmp
        }
    }
}

public class DataSolutionSegmentBaggageMappingListPassengerBaggageAllowanceMappingValue : Tea.TeaModel {
    public var baggageAmount: Int32?

    public var baggageWeight: Int32?

    public var baggageWeightUnit: String?

    public var isAllWeight: Bool?

    public var carryOnAmount: Int32?

    public var carryOnWeight: Int32?

    public var carryOnWeightUnit: String?

    public var isAllCarryOnWeight: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.baggageAmount != nil {
            map["baggage_amount"] = self.baggageAmount!
        }
        if self.baggageWeight != nil {
            map["baggage_weight"] = self.baggageWeight!
        }
        if self.baggageWeightUnit != nil {
            map["baggage_weight_unit"] = self.baggageWeightUnit!
        }
        if self.isAllWeight != nil {
            map["is_all_weight"] = self.isAllWeight!
        }
        if self.carryOnAmount != nil {
            map["carry_on_amount"] = self.carryOnAmount!
        }
        if self.carryOnWeight != nil {
            map["carry_on_weight"] = self.carryOnWeight!
        }
        if self.carryOnWeightUnit != nil {
            map["carry_on_weight_unit"] = self.carryOnWeightUnit!
        }
        if self.isAllCarryOnWeight != nil {
            map["is_all_carry_on_weight"] = self.isAllCarryOnWeight!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("baggage_amount") && dict["baggage_amount"] != nil {
            self.baggageAmount = dict["baggage_amount"] as! Int32
        }
        if dict.keys.contains("baggage_weight") && dict["baggage_weight"] != nil {
            self.baggageWeight = dict["baggage_weight"] as! Int32
        }
        if dict.keys.contains("baggage_weight_unit") && dict["baggage_weight_unit"] != nil {
            self.baggageWeightUnit = dict["baggage_weight_unit"] as! String
        }
        if dict.keys.contains("is_all_weight") && dict["is_all_weight"] != nil {
            self.isAllWeight = dict["is_all_weight"] as! Bool
        }
        if dict.keys.contains("carry_on_amount") && dict["carry_on_amount"] != nil {
            self.carryOnAmount = dict["carry_on_amount"] as! Int32
        }
        if dict.keys.contains("carry_on_weight") && dict["carry_on_weight"] != nil {
            self.carryOnWeight = dict["carry_on_weight"] as! Int32
        }
        if dict.keys.contains("carry_on_weight_unit") && dict["carry_on_weight_unit"] != nil {
            self.carryOnWeightUnit = dict["carry_on_weight_unit"] as! String
        }
        if dict.keys.contains("is_all_carry_on_weight") && dict["is_all_carry_on_weight"] != nil {
            self.isAllCarryOnWeight = dict["is_all_carry_on_weight"] as! Bool
        }
    }
}

public class DataSolutionSegmentRefundChangeRuleMappingListRefundChangeRuleMapValue : Tea.TeaModel {
    public class RefundRuleAllUnusedList : Tea.TeaModel {
        public var type: Int32?

        public var timeUnit: String?

        public var ruleStartTime: Int32?

        public var ruleEndTime: Int32?

        public var canRefund: Bool?

        public var refundFee: Double?

        public var canReturnAllTax: Bool?

        public var returnPartTaxFee: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.type != nil {
                map["type"] = self.type!
            }
            if self.timeUnit != nil {
                map["time_unit"] = self.timeUnit!
            }
            if self.ruleStartTime != nil {
                map["rule_start_time"] = self.ruleStartTime!
            }
            if self.ruleEndTime != nil {
                map["rule_end_time"] = self.ruleEndTime!
            }
            if self.canRefund != nil {
                map["can_refund"] = self.canRefund!
            }
            if self.refundFee != nil {
                map["refund_fee"] = self.refundFee!
            }
            if self.canReturnAllTax != nil {
                map["can_return_all_tax"] = self.canReturnAllTax!
            }
            if self.returnPartTaxFee != nil {
                map["return_part_tax_fee"] = self.returnPartTaxFee!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("type") && dict["type"] != nil {
                self.type = dict["type"] as! Int32
            }
            if dict.keys.contains("time_unit") && dict["time_unit"] != nil {
                self.timeUnit = dict["time_unit"] as! String
            }
            if dict.keys.contains("rule_start_time") && dict["rule_start_time"] != nil {
                self.ruleStartTime = dict["rule_start_time"] as! Int32
            }
            if dict.keys.contains("rule_end_time") && dict["rule_end_time"] != nil {
                self.ruleEndTime = dict["rule_end_time"] as! Int32
            }
            if dict.keys.contains("can_refund") && dict["can_refund"] != nil {
                self.canRefund = dict["can_refund"] as! Bool
            }
            if dict.keys.contains("refund_fee") && dict["refund_fee"] != nil {
                self.refundFee = dict["refund_fee"] as! Double
            }
            if dict.keys.contains("can_return_all_tax") && dict["can_return_all_tax"] != nil {
                self.canReturnAllTax = dict["can_return_all_tax"] as! Bool
            }
            if dict.keys.contains("return_part_tax_fee") && dict["return_part_tax_fee"] != nil {
                self.returnPartTaxFee = dict["return_part_tax_fee"] as! Double
            }
        }
    }
    public class RefundRulePartUnusedList : Tea.TeaModel {
        public var type: Int32?

        public var timeUnit: String?

        public var ruleStartTime: Int32?

        public var ruleEndTime: Int32?

        public var canRefund: Bool?

        public var refundFee: Double?

        public var canReturnAllTax: Bool?

        public var returnPartTaxFee: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.type != nil {
                map["type"] = self.type!
            }
            if self.timeUnit != nil {
                map["time_unit"] = self.timeUnit!
            }
            if self.ruleStartTime != nil {
                map["rule_start_time"] = self.ruleStartTime!
            }
            if self.ruleEndTime != nil {
                map["rule_end_time"] = self.ruleEndTime!
            }
            if self.canRefund != nil {
                map["can_refund"] = self.canRefund!
            }
            if self.refundFee != nil {
                map["refund_fee"] = self.refundFee!
            }
            if self.canReturnAllTax != nil {
                map["can_return_all_tax"] = self.canReturnAllTax!
            }
            if self.returnPartTaxFee != nil {
                map["return_part_tax_fee"] = self.returnPartTaxFee!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("type") && dict["type"] != nil {
                self.type = dict["type"] as! Int32
            }
            if dict.keys.contains("time_unit") && dict["time_unit"] != nil {
                self.timeUnit = dict["time_unit"] as! String
            }
            if dict.keys.contains("rule_start_time") && dict["rule_start_time"] != nil {
                self.ruleStartTime = dict["rule_start_time"] as! Int32
            }
            if dict.keys.contains("rule_end_time") && dict["rule_end_time"] != nil {
                self.ruleEndTime = dict["rule_end_time"] as! Int32
            }
            if dict.keys.contains("can_refund") && dict["can_refund"] != nil {
                self.canRefund = dict["can_refund"] as! Bool
            }
            if dict.keys.contains("refund_fee") && dict["refund_fee"] != nil {
                self.refundFee = dict["refund_fee"] as! Double
            }
            if dict.keys.contains("can_return_all_tax") && dict["can_return_all_tax"] != nil {
                self.canReturnAllTax = dict["can_return_all_tax"] as! Bool
            }
            if dict.keys.contains("return_part_tax_fee") && dict["return_part_tax_fee"] != nil {
                self.returnPartTaxFee = dict["return_part_tax_fee"] as! Double
            }
        }
    }
    public class ChangeRuleInUnusedList : Tea.TeaModel {
        public var type: Int32?

        public var timeUnit: String?

        public var ruleStartTime: Int32?

        public var ruleEndTime: Int32?

        public var canChange: Bool?

        public var changeFee: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.type != nil {
                map["type"] = self.type!
            }
            if self.timeUnit != nil {
                map["time_unit"] = self.timeUnit!
            }
            if self.ruleStartTime != nil {
                map["rule_start_time"] = self.ruleStartTime!
            }
            if self.ruleEndTime != nil {
                map["rule_end_time"] = self.ruleEndTime!
            }
            if self.canChange != nil {
                map["can_change"] = self.canChange!
            }
            if self.changeFee != nil {
                map["change_fee"] = self.changeFee!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("type") && dict["type"] != nil {
                self.type = dict["type"] as! Int32
            }
            if dict.keys.contains("time_unit") && dict["time_unit"] != nil {
                self.timeUnit = dict["time_unit"] as! String
            }
            if dict.keys.contains("rule_start_time") && dict["rule_start_time"] != nil {
                self.ruleStartTime = dict["rule_start_time"] as! Int32
            }
            if dict.keys.contains("rule_end_time") && dict["rule_end_time"] != nil {
                self.ruleEndTime = dict["rule_end_time"] as! Int32
            }
            if dict.keys.contains("can_change") && dict["can_change"] != nil {
                self.canChange = dict["can_change"] as! Bool
            }
            if dict.keys.contains("change_fee") && dict["change_fee"] != nil {
                self.changeFee = dict["change_fee"] as! Double
            }
        }
    }
    public class ChangeRuleOutUnusedList : Tea.TeaModel {
        public var type: Int32?

        public var timeUnit: String?

        public var ruleStartTime: Int32?

        public var ruleEndTime: Int32?

        public var canChange: Bool?

        public var changeFee: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.type != nil {
                map["type"] = self.type!
            }
            if self.timeUnit != nil {
                map["time_unit"] = self.timeUnit!
            }
            if self.ruleStartTime != nil {
                map["rule_start_time"] = self.ruleStartTime!
            }
            if self.ruleEndTime != nil {
                map["rule_end_time"] = self.ruleEndTime!
            }
            if self.canChange != nil {
                map["can_change"] = self.canChange!
            }
            if self.changeFee != nil {
                map["change_fee"] = self.changeFee!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("type") && dict["type"] != nil {
                self.type = dict["type"] as! Int32
            }
            if dict.keys.contains("time_unit") && dict["time_unit"] != nil {
                self.timeUnit = dict["time_unit"] as! String
            }
            if dict.keys.contains("rule_start_time") && dict["rule_start_time"] != nil {
                self.ruleStartTime = dict["rule_start_time"] as! Int32
            }
            if dict.keys.contains("rule_end_time") && dict["rule_end_time"] != nil {
                self.ruleEndTime = dict["rule_end_time"] as! Int32
            }
            if dict.keys.contains("can_change") && dict["can_change"] != nil {
                self.canChange = dict["can_change"] as! Bool
            }
            if dict.keys.contains("change_fee") && dict["change_fee"] != nil {
                self.changeFee = dict["change_fee"] as! Double
            }
        }
    }
    public var refundRuleAllUnusedList: [DataSolutionSegmentRefundChangeRuleMappingListRefundChangeRuleMapValue.RefundRuleAllUnusedList]?

    public var refundRulePartUnusedList: [DataSolutionSegmentRefundChangeRuleMappingListRefundChangeRuleMapValue.RefundRulePartUnusedList]?

    public var changeRuleInUnusedList: [DataSolutionSegmentRefundChangeRuleMappingListRefundChangeRuleMapValue.ChangeRuleInUnusedList]?

    public var changeRuleOutUnusedList: [DataSolutionSegmentRefundChangeRuleMappingListRefundChangeRuleMapValue.ChangeRuleOutUnusedList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.refundRuleAllUnusedList != nil {
            var tmp : [Any] = []
            for k in self.refundRuleAllUnusedList! {
                tmp.append(k.toMap())
            }
            map["refund_rule_all_unused_list"] = tmp
        }
        if self.refundRulePartUnusedList != nil {
            var tmp : [Any] = []
            for k in self.refundRulePartUnusedList! {
                tmp.append(k.toMap())
            }
            map["refund_rule_part_unused_list"] = tmp
        }
        if self.changeRuleInUnusedList != nil {
            var tmp : [Any] = []
            for k in self.changeRuleInUnusedList! {
                tmp.append(k.toMap())
            }
            map["change_rule_in_unused_list"] = tmp
        }
        if self.changeRuleOutUnusedList != nil {
            var tmp : [Any] = []
            for k in self.changeRuleOutUnusedList! {
                tmp.append(k.toMap())
            }
            map["change_rule_out_unused_list"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("refund_rule_all_unused_list") && dict["refund_rule_all_unused_list"] != nil {
            var tmp : [DataSolutionSegmentRefundChangeRuleMappingListRefundChangeRuleMapValue.RefundRuleAllUnusedList] = []
            for v in dict["refund_rule_all_unused_list"] as! [Any] {
                var model = DataSolutionSegmentRefundChangeRuleMappingListRefundChangeRuleMapValue.RefundRuleAllUnusedList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.refundRuleAllUnusedList = tmp
        }
        if dict.keys.contains("refund_rule_part_unused_list") && dict["refund_rule_part_unused_list"] != nil {
            var tmp : [DataSolutionSegmentRefundChangeRuleMappingListRefundChangeRuleMapValue.RefundRulePartUnusedList] = []
            for v in dict["refund_rule_part_unused_list"] as! [Any] {
                var model = DataSolutionSegmentRefundChangeRuleMappingListRefundChangeRuleMapValue.RefundRulePartUnusedList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.refundRulePartUnusedList = tmp
        }
        if dict.keys.contains("change_rule_in_unused_list") && dict["change_rule_in_unused_list"] != nil {
            var tmp : [DataSolutionSegmentRefundChangeRuleMappingListRefundChangeRuleMapValue.ChangeRuleInUnusedList] = []
            for v in dict["change_rule_in_unused_list"] as! [Any] {
                var model = DataSolutionSegmentRefundChangeRuleMappingListRefundChangeRuleMapValue.ChangeRuleInUnusedList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.changeRuleInUnusedList = tmp
        }
        if dict.keys.contains("change_rule_out_unused_list") && dict["change_rule_out_unused_list"] != nil {
            var tmp : [DataSolutionSegmentRefundChangeRuleMappingListRefundChangeRuleMapValue.ChangeRuleOutUnusedList] = []
            for v in dict["change_rule_out_unused_list"] as! [Any] {
                var model = DataSolutionSegmentRefundChangeRuleMappingListRefundChangeRuleMapValue.ChangeRuleOutUnusedList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.changeRuleOutUnusedList = tmp
        }
    }
}

public class AccountFlowListHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xAcsAirticketAccessToken: String?

    public var xAcsAirticketLanguage: String?

    public override init() {
        super.init()
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
        if self.xAcsAirticketAccessToken != nil {
            map["x-acs-airticket-access-token"] = self.xAcsAirticketAccessToken!
        }
        if self.xAcsAirticketLanguage != nil {
            map["x-acs-airticket-language"] = self.xAcsAirticketLanguage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("x-acs-airticket-access-token") && dict["x-acs-airticket-access-token"] != nil {
            self.xAcsAirticketAccessToken = dict["x-acs-airticket-access-token"] as! String
        }
        if dict.keys.contains("x-acs-airticket-language") && dict["x-acs-airticket-language"] != nil {
            self.xAcsAirticketLanguage = dict["x-acs-airticket-language"] as! String
        }
    }
}

public class AccountFlowListRequest : Tea.TeaModel {
    public var dayNum: Int32?

    public var pageIndex: Int32?

    public var pageSize: Int32?

    public var utcBeginTime: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dayNum != nil {
            map["day_num"] = self.dayNum!
        }
        if self.pageIndex != nil {
            map["page_index"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["page_size"] = self.pageSize!
        }
        if self.utcBeginTime != nil {
            map["utc_begin_time"] = self.utcBeginTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("day_num") && dict["day_num"] != nil {
            self.dayNum = dict["day_num"] as! Int32
        }
        if dict.keys.contains("page_index") && dict["page_index"] != nil {
            self.pageIndex = dict["page_index"] as! Int32
        }
        if dict.keys.contains("page_size") && dict["page_size"] != nil {
            self.pageSize = dict["page_size"] as! Int32
        }
        if dict.keys.contains("utc_begin_time") && dict["utc_begin_time"] != nil {
            self.utcBeginTime = dict["utc_begin_time"] as! Int64
        }
    }
}

public class AccountFlowListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var afterAvailableAmount: Double?

            public var beforeAvailableAmount: Double?

            public var changeOrderNum: Int64?

            public var flowId: Int64?

            public var gmtCreate: Int64?

            public var gmtModified: Int64?

            public var opAmount: Double?

            public var opType: Int32?

            public var orderNum: Int64?

            public var orderType: Int32?

            public var outOrderNum: String?

            public var refundOrderNum: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.afterAvailableAmount != nil {
                    map["after_available_amount"] = self.afterAvailableAmount!
                }
                if self.beforeAvailableAmount != nil {
                    map["before_available_amount"] = self.beforeAvailableAmount!
                }
                if self.changeOrderNum != nil {
                    map["change_order_num"] = self.changeOrderNum!
                }
                if self.flowId != nil {
                    map["flow_id"] = self.flowId!
                }
                if self.gmtCreate != nil {
                    map["gmt_create"] = self.gmtCreate!
                }
                if self.gmtModified != nil {
                    map["gmt_modified"] = self.gmtModified!
                }
                if self.opAmount != nil {
                    map["op_amount"] = self.opAmount!
                }
                if self.opType != nil {
                    map["op_type"] = self.opType!
                }
                if self.orderNum != nil {
                    map["order_num"] = self.orderNum!
                }
                if self.orderType != nil {
                    map["order_type"] = self.orderType!
                }
                if self.outOrderNum != nil {
                    map["out_order_num"] = self.outOrderNum!
                }
                if self.refundOrderNum != nil {
                    map["refund_order_num"] = self.refundOrderNum!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("after_available_amount") && dict["after_available_amount"] != nil {
                    self.afterAvailableAmount = dict["after_available_amount"] as! Double
                }
                if dict.keys.contains("before_available_amount") && dict["before_available_amount"] != nil {
                    self.beforeAvailableAmount = dict["before_available_amount"] as! Double
                }
                if dict.keys.contains("change_order_num") && dict["change_order_num"] != nil {
                    self.changeOrderNum = dict["change_order_num"] as! Int64
                }
                if dict.keys.contains("flow_id") && dict["flow_id"] != nil {
                    self.flowId = dict["flow_id"] as! Int64
                }
                if dict.keys.contains("gmt_create") && dict["gmt_create"] != nil {
                    self.gmtCreate = dict["gmt_create"] as! Int64
                }
                if dict.keys.contains("gmt_modified") && dict["gmt_modified"] != nil {
                    self.gmtModified = dict["gmt_modified"] as! Int64
                }
                if dict.keys.contains("op_amount") && dict["op_amount"] != nil {
                    self.opAmount = dict["op_amount"] as! Double
                }
                if dict.keys.contains("op_type") && dict["op_type"] != nil {
                    self.opType = dict["op_type"] as! Int32
                }
                if dict.keys.contains("order_num") && dict["order_num"] != nil {
                    self.orderNum = dict["order_num"] as! Int64
                }
                if dict.keys.contains("order_type") && dict["order_type"] != nil {
                    self.orderType = dict["order_type"] as! Int32
                }
                if dict.keys.contains("out_order_num") && dict["out_order_num"] != nil {
                    self.outOrderNum = dict["out_order_num"] as! String
                }
                if dict.keys.contains("refund_order_num") && dict["refund_order_num"] != nil {
                    self.refundOrderNum = dict["refund_order_num"] as! Int64
                }
            }
        }
        public class Pagination : Tea.TeaModel {
            public var currentPage: Int32?

            public var pageSize: Int32?

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
                if self.currentPage != nil {
                    map["current_page"] = self.currentPage!
                }
                if self.pageSize != nil {
                    map["page_size"] = self.pageSize!
                }
                if self.totalCount != nil {
                    map["total_count"] = self.totalCount!
                }
                if self.totalPage != nil {
                    map["total_page"] = self.totalPage!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("current_page") && dict["current_page"] != nil {
                    self.currentPage = dict["current_page"] as! Int32
                }
                if dict.keys.contains("page_size") && dict["page_size"] != nil {
                    self.pageSize = dict["page_size"] as! Int32
                }
                if dict.keys.contains("total_count") && dict["total_count"] != nil {
                    self.totalCount = dict["total_count"] as! Int32
                }
                if dict.keys.contains("total_page") && dict["total_page"] != nil {
                    self.totalPage = dict["total_page"] as! Int32
                }
            }
        }
        public var list: [AccountFlowListResponseBody.Data.List]?

        public var pagination: AccountFlowListResponseBody.Data.Pagination?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.pagination?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["list"] = tmp
            }
            if self.pagination != nil {
                map["pagination"] = self.pagination?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("list") && dict["list"] != nil {
                var tmp : [AccountFlowListResponseBody.Data.List] = []
                for v in dict["list"] as! [Any] {
                    var model = AccountFlowListResponseBody.Data.List()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.list = tmp
            }
            if dict.keys.contains("pagination") && dict["pagination"] != nil {
                var model = AccountFlowListResponseBody.Data.Pagination()
                model.fromMap(dict["pagination"] as! [String: Any])
                self.pagination = model
            }
        }
    }
    public var requestId: String?

    public var data: AccountFlowListResponseBody.Data?

    public var errorCode: String?

    public var errorData: Any?

    public var errorMsg: String?

    public var status: Int32?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errorCode != nil {
            map["error_code"] = self.errorCode!
        }
        if self.errorData != nil {
            map["error_data"] = self.errorData!
        }
        if self.errorMsg != nil {
            map["error_msg"] = self.errorMsg!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = AccountFlowListResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("error_code") && dict["error_code"] != nil {
            self.errorCode = dict["error_code"] as! String
        }
        if dict.keys.contains("error_data") && dict["error_data"] != nil {
            self.errorData = dict["error_data"] as! Any
        }
        if dict.keys.contains("error_msg") && dict["error_msg"] != nil {
            self.errorMsg = dict["error_msg"] as! String
        }
        if dict.keys.contains("status") && dict["status"] != nil {
            self.status = dict["status"] as! Int32
        }
        if dict.keys.contains("success") && dict["success"] != nil {
            self.success = dict["success"] as! Bool
        }
    }
}

public class AccountFlowListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AccountFlowListResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = AccountFlowListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AncillarySuggestHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xAcsAirticketAccessToken: String?

    public var xAcsAirticketLanguage: String?

    public override init() {
        super.init()
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
        if self.xAcsAirticketAccessToken != nil {
            map["x-acs-airticket-access-token"] = self.xAcsAirticketAccessToken!
        }
        if self.xAcsAirticketLanguage != nil {
            map["x-acs-airticket-language"] = self.xAcsAirticketLanguage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("x-acs-airticket-access-token") && dict["x-acs-airticket-access-token"] != nil {
            self.xAcsAirticketAccessToken = dict["x-acs-airticket-access-token"] as! String
        }
        if dict.keys.contains("x-acs-airticket-language") && dict["x-acs-airticket-language"] != nil {
            self.xAcsAirticketLanguage = dict["x-acs-airticket-language"] as! String
        }
    }
}

public class AncillarySuggestRequest : Tea.TeaModel {
    public var solutionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.solutionId != nil {
            map["solution_id"] = self.solutionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("solution_id") && dict["solution_id"] != nil {
            self.solutionId = dict["solution_id"] as! String
        }
    }
}

public class AncillarySuggestResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class SegAncillaryMapList : Tea.TeaModel {
            public class Ancillary : Tea.TeaModel {
                public class BaggageAncillary : Tea.TeaModel {
                    public var baggageAmount: Int32?

                    public var baggageWeight: Int32?

                    public var baggageWeightUnit: String?

                    public var isAllWeight: Bool?

                    public var price: Double?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.baggageAmount != nil {
                            map["baggage_amount"] = self.baggageAmount!
                        }
                        if self.baggageWeight != nil {
                            map["baggage_weight"] = self.baggageWeight!
                        }
                        if self.baggageWeightUnit != nil {
                            map["baggage_weight_unit"] = self.baggageWeightUnit!
                        }
                        if self.isAllWeight != nil {
                            map["is_all_weight"] = self.isAllWeight!
                        }
                        if self.price != nil {
                            map["price"] = self.price!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("baggage_amount") && dict["baggage_amount"] != nil {
                            self.baggageAmount = dict["baggage_amount"] as! Int32
                        }
                        if dict.keys.contains("baggage_weight") && dict["baggage_weight"] != nil {
                            self.baggageWeight = dict["baggage_weight"] as! Int32
                        }
                        if dict.keys.contains("baggage_weight_unit") && dict["baggage_weight_unit"] != nil {
                            self.baggageWeightUnit = dict["baggage_weight_unit"] as! String
                        }
                        if dict.keys.contains("is_all_weight") && dict["is_all_weight"] != nil {
                            self.isAllWeight = dict["is_all_weight"] as! Bool
                        }
                        if dict.keys.contains("price") && dict["price"] != nil {
                            self.price = dict["price"] as! Double
                        }
                    }
                }
                public var ancillaryId: String?

                public var ancillaryType: Int32?

                public var baggageAncillary: AncillarySuggestResponseBody.Data.SegAncillaryMapList.Ancillary.BaggageAncillary?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.baggageAncillary?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.ancillaryId != nil {
                        map["ancillary_id"] = self.ancillaryId!
                    }
                    if self.ancillaryType != nil {
                        map["ancillary_type"] = self.ancillaryType!
                    }
                    if self.baggageAncillary != nil {
                        map["baggage_ancillary"] = self.baggageAncillary?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ancillary_id") && dict["ancillary_id"] != nil {
                        self.ancillaryId = dict["ancillary_id"] as! String
                    }
                    if dict.keys.contains("ancillary_type") && dict["ancillary_type"] != nil {
                        self.ancillaryType = dict["ancillary_type"] as! Int32
                    }
                    if dict.keys.contains("baggage_ancillary") && dict["baggage_ancillary"] != nil {
                        var model = AncillarySuggestResponseBody.Data.SegAncillaryMapList.Ancillary.BaggageAncillary()
                        model.fromMap(dict["baggage_ancillary"] as! [String: Any])
                        self.baggageAncillary = model
                    }
                }
            }
            public var ancillary: AncillarySuggestResponseBody.Data.SegAncillaryMapList.Ancillary?

            public var segmentIdList: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.ancillary?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.ancillary != nil {
                    map["ancillary"] = self.ancillary?.toMap()
                }
                if self.segmentIdList != nil {
                    map["segment_id_list"] = self.segmentIdList!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ancillary") && dict["ancillary"] != nil {
                    var model = AncillarySuggestResponseBody.Data.SegAncillaryMapList.Ancillary()
                    model.fromMap(dict["ancillary"] as! [String: Any])
                    self.ancillary = model
                }
                if dict.keys.contains("segment_id_list") && dict["segment_id_list"] != nil {
                    self.segmentIdList = dict["segment_id_list"] as! [String]
                }
            }
        }
        public var segAncillaryMapList: [AncillarySuggestResponseBody.Data.SegAncillaryMapList]?

        public var solutionId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.segAncillaryMapList != nil {
                var tmp : [Any] = []
                for k in self.segAncillaryMapList! {
                    tmp.append(k.toMap())
                }
                map["seg_ancillary_map_list"] = tmp
            }
            if self.solutionId != nil {
                map["solution_id"] = self.solutionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("seg_ancillary_map_list") && dict["seg_ancillary_map_list"] != nil {
                var tmp : [AncillarySuggestResponseBody.Data.SegAncillaryMapList] = []
                for v in dict["seg_ancillary_map_list"] as! [Any] {
                    var model = AncillarySuggestResponseBody.Data.SegAncillaryMapList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.segAncillaryMapList = tmp
            }
            if dict.keys.contains("solution_id") && dict["solution_id"] != nil {
                self.solutionId = dict["solution_id"] as! String
            }
        }
    }
    public var requestId: String?

    public var data: AncillarySuggestResponseBody.Data?

    public var errorCode: String?

    public var errorData: Any?

    public var errorMsg: String?

    public var status: Int32?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errorCode != nil {
            map["error_code"] = self.errorCode!
        }
        if self.errorData != nil {
            map["error_data"] = self.errorData!
        }
        if self.errorMsg != nil {
            map["error_msg"] = self.errorMsg!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = AncillarySuggestResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("error_code") && dict["error_code"] != nil {
            self.errorCode = dict["error_code"] as! String
        }
        if dict.keys.contains("error_data") && dict["error_data"] != nil {
            self.errorData = dict["error_data"] as! Any
        }
        if dict.keys.contains("error_msg") && dict["error_msg"] != nil {
            self.errorMsg = dict["error_msg"] as! String
        }
        if dict.keys.contains("status") && dict["status"] != nil {
            self.status = dict["status"] as! Int32
        }
        if dict.keys.contains("success") && dict["success"] != nil {
            self.success = dict["success"] as! Bool
        }
    }
}

public class AncillarySuggestResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AncillarySuggestResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = AncillarySuggestResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BookHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xAcsAirticketAccessToken: String?

    public var xAcsAirticketLanguage: String?

    public override init() {
        super.init()
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
        if self.xAcsAirticketAccessToken != nil {
            map["x-acs-airticket-access-token"] = self.xAcsAirticketAccessToken!
        }
        if self.xAcsAirticketLanguage != nil {
            map["x-acs-airticket-language"] = self.xAcsAirticketLanguage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("x-acs-airticket-access-token") && dict["x-acs-airticket-access-token"] != nil {
            self.xAcsAirticketAccessToken = dict["x-acs-airticket-access-token"] as! String
        }
        if dict.keys.contains("x-acs-airticket-language") && dict["x-acs-airticket-language"] != nil {
            self.xAcsAirticketLanguage = dict["x-acs-airticket-language"] as! String
        }
    }
}

public class BookRequest : Tea.TeaModel {
    public class Contact : Tea.TeaModel {
        public var email: String?

        public var firstName: String?

        public var lastName: String?

        public var mobileCountryCode: String?

        public var mobilePhoneNum: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.email != nil {
                map["email"] = self.email!
            }
            if self.firstName != nil {
                map["first_name"] = self.firstName!
            }
            if self.lastName != nil {
                map["last_name"] = self.lastName!
            }
            if self.mobileCountryCode != nil {
                map["mobile_country_code"] = self.mobileCountryCode!
            }
            if self.mobilePhoneNum != nil {
                map["mobile_phone_num"] = self.mobilePhoneNum!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("email") && dict["email"] != nil {
                self.email = dict["email"] as! String
            }
            if dict.keys.contains("first_name") && dict["first_name"] != nil {
                self.firstName = dict["first_name"] as! String
            }
            if dict.keys.contains("last_name") && dict["last_name"] != nil {
                self.lastName = dict["last_name"] as! String
            }
            if dict.keys.contains("mobile_country_code") && dict["mobile_country_code"] != nil {
                self.mobileCountryCode = dict["mobile_country_code"] as! String
            }
            if dict.keys.contains("mobile_phone_num") && dict["mobile_phone_num"] != nil {
                self.mobilePhoneNum = dict["mobile_phone_num"] as! String
            }
        }
    }
    public class PassengerAncillaryPurchaseMapList : Tea.TeaModel {
        public class BookAncillaryReqItem : Tea.TeaModel {
            public var ancillaryId: String?

            public var ancillaryType: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.ancillaryId != nil {
                    map["ancillary_id"] = self.ancillaryId!
                }
                if self.ancillaryType != nil {
                    map["ancillary_type"] = self.ancillaryType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ancillary_id") && dict["ancillary_id"] != nil {
                    self.ancillaryId = dict["ancillary_id"] as! String
                }
                if dict.keys.contains("ancillary_type") && dict["ancillary_type"] != nil {
                    self.ancillaryType = dict["ancillary_type"] as! Int32
                }
            }
        }
        public class PassengerList : Tea.TeaModel {
            public class Credential : Tea.TeaModel {
                public var certIssuePlace: String?

                public var credentialNum: String?

                public var credentialType: Int32?

                public var expireDate: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.certIssuePlace != nil {
                        map["cert_issue_place"] = self.certIssuePlace!
                    }
                    if self.credentialNum != nil {
                        map["credential_num"] = self.credentialNum!
                    }
                    if self.credentialType != nil {
                        map["credential_type"] = self.credentialType!
                    }
                    if self.expireDate != nil {
                        map["expire_date"] = self.expireDate!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("cert_issue_place") && dict["cert_issue_place"] != nil {
                        self.certIssuePlace = dict["cert_issue_place"] as! String
                    }
                    if dict.keys.contains("credential_num") && dict["credential_num"] != nil {
                        self.credentialNum = dict["credential_num"] as! String
                    }
                    if dict.keys.contains("credential_type") && dict["credential_type"] != nil {
                        self.credentialType = dict["credential_type"] as! Int32
                    }
                    if dict.keys.contains("expire_date") && dict["expire_date"] != nil {
                        self.expireDate = dict["expire_date"] as! String
                    }
                }
            }
            public var birthday: String?

            public var credential: BookRequest.PassengerAncillaryPurchaseMapList.PassengerList.Credential?

            public var firstName: String?

            public var gender: Int32?

            public var lastName: String?

            public var mobileCountryCode: String?

            public var mobilePhoneNumber: String?

            public var nationality: String?

            public var type: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.credential?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.birthday != nil {
                    map["birthday"] = self.birthday!
                }
                if self.credential != nil {
                    map["credential"] = self.credential?.toMap()
                }
                if self.firstName != nil {
                    map["first_name"] = self.firstName!
                }
                if self.gender != nil {
                    map["gender"] = self.gender!
                }
                if self.lastName != nil {
                    map["last_name"] = self.lastName!
                }
                if self.mobileCountryCode != nil {
                    map["mobile_country_code"] = self.mobileCountryCode!
                }
                if self.mobilePhoneNumber != nil {
                    map["mobile_phone_number"] = self.mobilePhoneNumber!
                }
                if self.nationality != nil {
                    map["nationality"] = self.nationality!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("birthday") && dict["birthday"] != nil {
                    self.birthday = dict["birthday"] as! String
                }
                if dict.keys.contains("credential") && dict["credential"] != nil {
                    var model = BookRequest.PassengerAncillaryPurchaseMapList.PassengerList.Credential()
                    model.fromMap(dict["credential"] as! [String: Any])
                    self.credential = model
                }
                if dict.keys.contains("first_name") && dict["first_name"] != nil {
                    self.firstName = dict["first_name"] as! String
                }
                if dict.keys.contains("gender") && dict["gender"] != nil {
                    self.gender = dict["gender"] as! Int32
                }
                if dict.keys.contains("last_name") && dict["last_name"] != nil {
                    self.lastName = dict["last_name"] as! String
                }
                if dict.keys.contains("mobile_country_code") && dict["mobile_country_code"] != nil {
                    self.mobileCountryCode = dict["mobile_country_code"] as! String
                }
                if dict.keys.contains("mobile_phone_number") && dict["mobile_phone_number"] != nil {
                    self.mobilePhoneNumber = dict["mobile_phone_number"] as! String
                }
                if dict.keys.contains("nationality") && dict["nationality"] != nil {
                    self.nationality = dict["nationality"] as! String
                }
                if dict.keys.contains("type") && dict["type"] != nil {
                    self.type = dict["type"] as! Int32
                }
            }
        }
        public var bookAncillaryReqItem: BookRequest.PassengerAncillaryPurchaseMapList.BookAncillaryReqItem?

        public var passengerList: [BookRequest.PassengerAncillaryPurchaseMapList.PassengerList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.bookAncillaryReqItem?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bookAncillaryReqItem != nil {
                map["book_ancillary_req_item"] = self.bookAncillaryReqItem?.toMap()
            }
            if self.passengerList != nil {
                var tmp : [Any] = []
                for k in self.passengerList! {
                    tmp.append(k.toMap())
                }
                map["passenger_list"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("book_ancillary_req_item") && dict["book_ancillary_req_item"] != nil {
                var model = BookRequest.PassengerAncillaryPurchaseMapList.BookAncillaryReqItem()
                model.fromMap(dict["book_ancillary_req_item"] as! [String: Any])
                self.bookAncillaryReqItem = model
            }
            if dict.keys.contains("passenger_list") && dict["passenger_list"] != nil {
                var tmp : [BookRequest.PassengerAncillaryPurchaseMapList.PassengerList] = []
                for v in dict["passenger_list"] as! [Any] {
                    var model = BookRequest.PassengerAncillaryPurchaseMapList.PassengerList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.passengerList = tmp
            }
        }
    }
    public class PassengerList : Tea.TeaModel {
        public class Credential : Tea.TeaModel {
            public var certIssuePlace: String?

            public var credentialNum: String?

            public var credentialType: Int32?

            public var expireDate: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.certIssuePlace != nil {
                    map["cert_issue_place"] = self.certIssuePlace!
                }
                if self.credentialNum != nil {
                    map["credential_num"] = self.credentialNum!
                }
                if self.credentialType != nil {
                    map["credential_type"] = self.credentialType!
                }
                if self.expireDate != nil {
                    map["expire_date"] = self.expireDate!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("cert_issue_place") && dict["cert_issue_place"] != nil {
                    self.certIssuePlace = dict["cert_issue_place"] as! String
                }
                if dict.keys.contains("credential_num") && dict["credential_num"] != nil {
                    self.credentialNum = dict["credential_num"] as! String
                }
                if dict.keys.contains("credential_type") && dict["credential_type"] != nil {
                    self.credentialType = dict["credential_type"] as! Int32
                }
                if dict.keys.contains("expire_date") && dict["expire_date"] != nil {
                    self.expireDate = dict["expire_date"] as! String
                }
            }
        }
        public var birthday: String?

        public var credential: BookRequest.PassengerList.Credential?

        public var firstName: String?

        public var gender: Int32?

        public var lastName: String?

        public var mobileCountryCode: String?

        public var mobilePhoneNumber: String?

        public var nationality: String?

        public var type: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.credential?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.birthday != nil {
                map["birthday"] = self.birthday!
            }
            if self.credential != nil {
                map["credential"] = self.credential?.toMap()
            }
            if self.firstName != nil {
                map["first_name"] = self.firstName!
            }
            if self.gender != nil {
                map["gender"] = self.gender!
            }
            if self.lastName != nil {
                map["last_name"] = self.lastName!
            }
            if self.mobileCountryCode != nil {
                map["mobile_country_code"] = self.mobileCountryCode!
            }
            if self.mobilePhoneNumber != nil {
                map["mobile_phone_number"] = self.mobilePhoneNumber!
            }
            if self.nationality != nil {
                map["nationality"] = self.nationality!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("birthday") && dict["birthday"] != nil {
                self.birthday = dict["birthday"] as! String
            }
            if dict.keys.contains("credential") && dict["credential"] != nil {
                var model = BookRequest.PassengerList.Credential()
                model.fromMap(dict["credential"] as! [String: Any])
                self.credential = model
            }
            if dict.keys.contains("first_name") && dict["first_name"] != nil {
                self.firstName = dict["first_name"] as! String
            }
            if dict.keys.contains("gender") && dict["gender"] != nil {
                self.gender = dict["gender"] as! Int32
            }
            if dict.keys.contains("last_name") && dict["last_name"] != nil {
                self.lastName = dict["last_name"] as! String
            }
            if dict.keys.contains("mobile_country_code") && dict["mobile_country_code"] != nil {
                self.mobileCountryCode = dict["mobile_country_code"] as! String
            }
            if dict.keys.contains("mobile_phone_number") && dict["mobile_phone_number"] != nil {
                self.mobilePhoneNumber = dict["mobile_phone_number"] as! String
            }
            if dict.keys.contains("nationality") && dict["nationality"] != nil {
                self.nationality = dict["nationality"] as! String
            }
            if dict.keys.contains("type") && dict["type"] != nil {
                self.type = dict["type"] as! Int32
            }
        }
    }
    public var contact: BookRequest.Contact?

    public var outOrderNum: String?

    public var passengerAncillaryPurchaseMapList: [BookRequest.PassengerAncillaryPurchaseMapList]?

    public var passengerList: [BookRequest.PassengerList]?

    public var solutionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.contact?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.contact != nil {
            map["contact"] = self.contact?.toMap()
        }
        if self.outOrderNum != nil {
            map["out_order_num"] = self.outOrderNum!
        }
        if self.passengerAncillaryPurchaseMapList != nil {
            var tmp : [Any] = []
            for k in self.passengerAncillaryPurchaseMapList! {
                tmp.append(k.toMap())
            }
            map["passenger_ancillary_purchase_map_list"] = tmp
        }
        if self.passengerList != nil {
            var tmp : [Any] = []
            for k in self.passengerList! {
                tmp.append(k.toMap())
            }
            map["passenger_list"] = tmp
        }
        if self.solutionId != nil {
            map["solution_id"] = self.solutionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("contact") && dict["contact"] != nil {
            var model = BookRequest.Contact()
            model.fromMap(dict["contact"] as! [String: Any])
            self.contact = model
        }
        if dict.keys.contains("out_order_num") && dict["out_order_num"] != nil {
            self.outOrderNum = dict["out_order_num"] as! String
        }
        if dict.keys.contains("passenger_ancillary_purchase_map_list") && dict["passenger_ancillary_purchase_map_list"] != nil {
            var tmp : [BookRequest.PassengerAncillaryPurchaseMapList] = []
            for v in dict["passenger_ancillary_purchase_map_list"] as! [Any] {
                var model = BookRequest.PassengerAncillaryPurchaseMapList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.passengerAncillaryPurchaseMapList = tmp
        }
        if dict.keys.contains("passenger_list") && dict["passenger_list"] != nil {
            var tmp : [BookRequest.PassengerList] = []
            for v in dict["passenger_list"] as! [Any] {
                var model = BookRequest.PassengerList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.passengerList = tmp
        }
        if dict.keys.contains("solution_id") && dict["solution_id"] != nil {
            self.solutionId = dict["solution_id"] as! String
        }
    }
}

public class BookShrinkRequest : Tea.TeaModel {
    public var contactShrink: String?

    public var outOrderNum: String?

    public var passengerAncillaryPurchaseMapListShrink: String?

    public var passengerListShrink: String?

    public var solutionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.contactShrink != nil {
            map["contact"] = self.contactShrink!
        }
        if self.outOrderNum != nil {
            map["out_order_num"] = self.outOrderNum!
        }
        if self.passengerAncillaryPurchaseMapListShrink != nil {
            map["passenger_ancillary_purchase_map_list"] = self.passengerAncillaryPurchaseMapListShrink!
        }
        if self.passengerListShrink != nil {
            map["passenger_list"] = self.passengerListShrink!
        }
        if self.solutionId != nil {
            map["solution_id"] = self.solutionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("contact") && dict["contact"] != nil {
            self.contactShrink = dict["contact"] as! String
        }
        if dict.keys.contains("out_order_num") && dict["out_order_num"] != nil {
            self.outOrderNum = dict["out_order_num"] as! String
        }
        if dict.keys.contains("passenger_ancillary_purchase_map_list") && dict["passenger_ancillary_purchase_map_list"] != nil {
            self.passengerAncillaryPurchaseMapListShrink = dict["passenger_ancillary_purchase_map_list"] as! String
        }
        if dict.keys.contains("passenger_list") && dict["passenger_list"] != nil {
            self.passengerListShrink = dict["passenger_list"] as! String
        }
        if dict.keys.contains("solution_id") && dict["solution_id"] != nil {
            self.solutionId = dict["solution_id"] as! String
        }
    }
}

public class BookResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class OrderList : Tea.TeaModel {
            public var orderNum: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.orderNum != nil {
                    map["order_num"] = self.orderNum!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("order_num") && dict["order_num"] != nil {
                    self.orderNum = dict["order_num"] as! Int64
                }
            }
        }
        public var orderList: [BookResponseBody.Data.OrderList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.orderList != nil {
                var tmp : [Any] = []
                for k in self.orderList! {
                    tmp.append(k.toMap())
                }
                map["order_list"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("order_list") && dict["order_list"] != nil {
                var tmp : [BookResponseBody.Data.OrderList] = []
                for v in dict["order_list"] as! [Any] {
                    var model = BookResponseBody.Data.OrderList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.orderList = tmp
            }
        }
    }
    public class ErrorData : Tea.TeaModel {
        public class OrderList : Tea.TeaModel {
            public var orderNum: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.orderNum != nil {
                    map["order_num"] = self.orderNum!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("order_num") && dict["order_num"] != nil {
                    self.orderNum = dict["order_num"] as! Int64
                }
            }
        }
        public var orderList: [BookResponseBody.ErrorData.OrderList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.orderList != nil {
                var tmp : [Any] = []
                for k in self.orderList! {
                    tmp.append(k.toMap())
                }
                map["order_list"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("order_list") && dict["order_list"] != nil {
                var tmp : [BookResponseBody.ErrorData.OrderList] = []
                for v in dict["order_list"] as! [Any] {
                    var model = BookResponseBody.ErrorData.OrderList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.orderList = tmp
            }
        }
    }
    public var requestId: String?

    public var data: BookResponseBody.Data?

    public var errorCode: String?

    public var errorData: BookResponseBody.ErrorData?

    public var errorMsg: String?

    public var status: Int32?

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
        try self.errorData?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errorCode != nil {
            map["error_code"] = self.errorCode!
        }
        if self.errorData != nil {
            map["error_data"] = self.errorData?.toMap()
        }
        if self.errorMsg != nil {
            map["error_msg"] = self.errorMsg!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = BookResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("error_code") && dict["error_code"] != nil {
            self.errorCode = dict["error_code"] as! String
        }
        if dict.keys.contains("error_data") && dict["error_data"] != nil {
            var model = BookResponseBody.ErrorData()
            model.fromMap(dict["error_data"] as! [String: Any])
            self.errorData = model
        }
        if dict.keys.contains("error_msg") && dict["error_msg"] != nil {
            self.errorMsg = dict["error_msg"] as! String
        }
        if dict.keys.contains("status") && dict["status"] != nil {
            self.status = dict["status"] as! Int32
        }
        if dict.keys.contains("success") && dict["success"] != nil {
            self.success = dict["success"] as! Bool
        }
    }
}

public class BookResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BookResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = BookResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CancelHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xAcsAirticketAccessToken: String?

    public var xAcsAirticketLanguage: String?

    public override init() {
        super.init()
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
        if self.xAcsAirticketAccessToken != nil {
            map["x-acs-airticket-access-token"] = self.xAcsAirticketAccessToken!
        }
        if self.xAcsAirticketLanguage != nil {
            map["x-acs-airticket-language"] = self.xAcsAirticketLanguage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("x-acs-airticket-access-token") && dict["x-acs-airticket-access-token"] != nil {
            self.xAcsAirticketAccessToken = dict["x-acs-airticket-access-token"] as! String
        }
        if dict.keys.contains("x-acs-airticket-language") && dict["x-acs-airticket-language"] != nil {
            self.xAcsAirticketLanguage = dict["x-acs-airticket-language"] as! String
        }
    }
}

public class CancelRequest : Tea.TeaModel {
    public var orderNum: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.orderNum != nil {
            map["order_num"] = self.orderNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("order_num") && dict["order_num"] != nil {
            self.orderNum = dict["order_num"] as! Int64
        }
    }
}

public class CancelResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var orderNum: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.orderNum != nil {
                map["order_num"] = self.orderNum!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("order_num") && dict["order_num"] != nil {
                self.orderNum = dict["order_num"] as! Int64
            }
        }
    }
    public var requestId: String?

    public var data: CancelResponseBody.Data?

    public var errorCode: String?

    public var errorData: Any?

    public var errorMsg: String?

    public var status: Int32?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errorCode != nil {
            map["error_code"] = self.errorCode!
        }
        if self.errorData != nil {
            map["error_data"] = self.errorData!
        }
        if self.errorMsg != nil {
            map["error_msg"] = self.errorMsg!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = CancelResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("error_code") && dict["error_code"] != nil {
            self.errorCode = dict["error_code"] as! String
        }
        if dict.keys.contains("error_data") && dict["error_data"] != nil {
            self.errorData = dict["error_data"] as! Any
        }
        if dict.keys.contains("error_msg") && dict["error_msg"] != nil {
            self.errorMsg = dict["error_msg"] as! String
        }
        if dict.keys.contains("status") && dict["status"] != nil {
            self.status = dict["status"] as! Int32
        }
        if dict.keys.contains("success") && dict["success"] != nil {
            self.success = dict["success"] as! Bool
        }
    }
}

public class CancelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CancelResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ChangeApplyHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xAcsAirticketAccessToken: String?

    public var xAcsAirticketLanguage: String?

    public override init() {
        super.init()
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
        if self.xAcsAirticketAccessToken != nil {
            map["x-acs-airticket-access-token"] = self.xAcsAirticketAccessToken!
        }
        if self.xAcsAirticketLanguage != nil {
            map["x-acs-airticket-language"] = self.xAcsAirticketLanguage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("x-acs-airticket-access-token") && dict["x-acs-airticket-access-token"] != nil {
            self.xAcsAirticketAccessToken = dict["x-acs-airticket-access-token"] as! String
        }
        if dict.keys.contains("x-acs-airticket-language") && dict["x-acs-airticket-language"] != nil {
            self.xAcsAirticketLanguage = dict["x-acs-airticket-language"] as! String
        }
    }
}

public class ChangeApplyRequest : Tea.TeaModel {
    public class ChangePassengerList : Tea.TeaModel {
        public var document: String?

        public var firstName: String?

        public var lastName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.document != nil {
                map["document"] = self.document!
            }
            if self.firstName != nil {
                map["first_name"] = self.firstName!
            }
            if self.lastName != nil {
                map["last_name"] = self.lastName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("document") && dict["document"] != nil {
                self.document = dict["document"] as! String
            }
            if dict.keys.contains("first_name") && dict["first_name"] != nil {
                self.firstName = dict["first_name"] as! String
            }
            if dict.keys.contains("last_name") && dict["last_name"] != nil {
                self.lastName = dict["last_name"] as! String
            }
        }
    }
    public class ChangedJourneys : Tea.TeaModel {
        public class SegmentList : Tea.TeaModel {
            public var arrivalAirport: String?

            public var arrivalCity: String?

            public var arriveTerminal: String?

            public var arriveTime: Int64?

            public var codeShare: Bool?

            public var departureAirport: String?

            public var departureCity: String?

            public var departureDate: String?

            public var departureTerminal: String?

            public var departureTime: Int64?

            public var marketingFlightNo: String?

            public var operatingFlightNo: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.arrivalAirport != nil {
                    map["arrival_airport"] = self.arrivalAirport!
                }
                if self.arrivalCity != nil {
                    map["arrival_city"] = self.arrivalCity!
                }
                if self.arriveTerminal != nil {
                    map["arrive_terminal"] = self.arriveTerminal!
                }
                if self.arriveTime != nil {
                    map["arrive_time"] = self.arriveTime!
                }
                if self.codeShare != nil {
                    map["code_share"] = self.codeShare!
                }
                if self.departureAirport != nil {
                    map["departure_airport"] = self.departureAirport!
                }
                if self.departureCity != nil {
                    map["departure_city"] = self.departureCity!
                }
                if self.departureDate != nil {
                    map["departure_date"] = self.departureDate!
                }
                if self.departureTerminal != nil {
                    map["departure_terminal"] = self.departureTerminal!
                }
                if self.departureTime != nil {
                    map["departure_time"] = self.departureTime!
                }
                if self.marketingFlightNo != nil {
                    map["marketing_flight_no"] = self.marketingFlightNo!
                }
                if self.operatingFlightNo != nil {
                    map["operating_flight_no"] = self.operatingFlightNo!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("arrival_airport") && dict["arrival_airport"] != nil {
                    self.arrivalAirport = dict["arrival_airport"] as! String
                }
                if dict.keys.contains("arrival_city") && dict["arrival_city"] != nil {
                    self.arrivalCity = dict["arrival_city"] as! String
                }
                if dict.keys.contains("arrive_terminal") && dict["arrive_terminal"] != nil {
                    self.arriveTerminal = dict["arrive_terminal"] as! String
                }
                if dict.keys.contains("arrive_time") && dict["arrive_time"] != nil {
                    self.arriveTime = dict["arrive_time"] as! Int64
                }
                if dict.keys.contains("code_share") && dict["code_share"] != nil {
                    self.codeShare = dict["code_share"] as! Bool
                }
                if dict.keys.contains("departure_airport") && dict["departure_airport"] != nil {
                    self.departureAirport = dict["departure_airport"] as! String
                }
                if dict.keys.contains("departure_city") && dict["departure_city"] != nil {
                    self.departureCity = dict["departure_city"] as! String
                }
                if dict.keys.contains("departure_date") && dict["departure_date"] != nil {
                    self.departureDate = dict["departure_date"] as! String
                }
                if dict.keys.contains("departure_terminal") && dict["departure_terminal"] != nil {
                    self.departureTerminal = dict["departure_terminal"] as! String
                }
                if dict.keys.contains("departure_time") && dict["departure_time"] != nil {
                    self.departureTime = dict["departure_time"] as! Int64
                }
                if dict.keys.contains("marketing_flight_no") && dict["marketing_flight_no"] != nil {
                    self.marketingFlightNo = dict["marketing_flight_no"] as! String
                }
                if dict.keys.contains("operating_flight_no") && dict["operating_flight_no"] != nil {
                    self.operatingFlightNo = dict["operating_flight_no"] as! String
                }
            }
        }
        public var segmentList: [ChangeApplyRequest.ChangedJourneys.SegmentList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.segmentList != nil {
                var tmp : [Any] = []
                for k in self.segmentList! {
                    tmp.append(k.toMap())
                }
                map["segment_list"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("segment_list") && dict["segment_list"] != nil {
                var tmp : [ChangeApplyRequest.ChangedJourneys.SegmentList] = []
                for v in dict["segment_list"] as! [Any] {
                    var model = ChangeApplyRequest.ChangedJourneys.SegmentList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.segmentList = tmp
            }
        }
    }
    public class Contact : Tea.TeaModel {
        public var email: String?

        public var mobileCountryCode: String?

        public var mobilePhoneNum: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.email != nil {
                map["email"] = self.email!
            }
            if self.mobileCountryCode != nil {
                map["mobile_country_code"] = self.mobileCountryCode!
            }
            if self.mobilePhoneNum != nil {
                map["mobile_phone_num"] = self.mobilePhoneNum!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("email") && dict["email"] != nil {
                self.email = dict["email"] as! String
            }
            if dict.keys.contains("mobile_country_code") && dict["mobile_country_code"] != nil {
                self.mobileCountryCode = dict["mobile_country_code"] as! String
            }
            if dict.keys.contains("mobile_phone_num") && dict["mobile_phone_num"] != nil {
                self.mobilePhoneNum = dict["mobile_phone_num"] as! String
            }
        }
    }
    public var changePassengerList: [ChangeApplyRequest.ChangePassengerList]?

    public var changedJourneys: [ChangeApplyRequest.ChangedJourneys]?

    public var contact: ChangeApplyRequest.Contact?

    public var orderNum: Int64?

    public var remark: String?

    public var type: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.contact?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.changePassengerList != nil {
            var tmp : [Any] = []
            for k in self.changePassengerList! {
                tmp.append(k.toMap())
            }
            map["change_passenger_list"] = tmp
        }
        if self.changedJourneys != nil {
            var tmp : [Any] = []
            for k in self.changedJourneys! {
                tmp.append(k.toMap())
            }
            map["changed_journeys"] = tmp
        }
        if self.contact != nil {
            map["contact"] = self.contact?.toMap()
        }
        if self.orderNum != nil {
            map["order_num"] = self.orderNum!
        }
        if self.remark != nil {
            map["remark"] = self.remark!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("change_passenger_list") && dict["change_passenger_list"] != nil {
            var tmp : [ChangeApplyRequest.ChangePassengerList] = []
            for v in dict["change_passenger_list"] as! [Any] {
                var model = ChangeApplyRequest.ChangePassengerList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.changePassengerList = tmp
        }
        if dict.keys.contains("changed_journeys") && dict["changed_journeys"] != nil {
            var tmp : [ChangeApplyRequest.ChangedJourneys] = []
            for v in dict["changed_journeys"] as! [Any] {
                var model = ChangeApplyRequest.ChangedJourneys()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.changedJourneys = tmp
        }
        if dict.keys.contains("contact") && dict["contact"] != nil {
            var model = ChangeApplyRequest.Contact()
            model.fromMap(dict["contact"] as! [String: Any])
            self.contact = model
        }
        if dict.keys.contains("order_num") && dict["order_num"] != nil {
            self.orderNum = dict["order_num"] as! Int64
        }
        if dict.keys.contains("remark") && dict["remark"] != nil {
            self.remark = dict["remark"] as! String
        }
        if dict.keys.contains("type") && dict["type"] != nil {
            self.type = dict["type"] as! Int32
        }
    }
}

public class ChangeApplyShrinkRequest : Tea.TeaModel {
    public var changePassengerListShrink: String?

    public var changedJourneysShrink: String?

    public var contactShrink: String?

    public var orderNum: Int64?

    public var remark: String?

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
        if self.changePassengerListShrink != nil {
            map["change_passenger_list"] = self.changePassengerListShrink!
        }
        if self.changedJourneysShrink != nil {
            map["changed_journeys"] = self.changedJourneysShrink!
        }
        if self.contactShrink != nil {
            map["contact"] = self.contactShrink!
        }
        if self.orderNum != nil {
            map["order_num"] = self.orderNum!
        }
        if self.remark != nil {
            map["remark"] = self.remark!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("change_passenger_list") && dict["change_passenger_list"] != nil {
            self.changePassengerListShrink = dict["change_passenger_list"] as! String
        }
        if dict.keys.contains("changed_journeys") && dict["changed_journeys"] != nil {
            self.changedJourneysShrink = dict["changed_journeys"] as! String
        }
        if dict.keys.contains("contact") && dict["contact"] != nil {
            self.contactShrink = dict["contact"] as! String
        }
        if dict.keys.contains("order_num") && dict["order_num"] != nil {
            self.orderNum = dict["order_num"] as! Int64
        }
        if dict.keys.contains("remark") && dict["remark"] != nil {
            self.remark = dict["remark"] as! String
        }
        if dict.keys.contains("type") && dict["type"] != nil {
            self.type = dict["type"] as! Int32
        }
    }
}

public class ChangeApplyResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ChangeOrders : Tea.TeaModel {
            public class Passengers : Tea.TeaModel {
                public var document: String?

                public var firstName: String?

                public var lastName: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.document != nil {
                        map["document"] = self.document!
                    }
                    if self.firstName != nil {
                        map["first_name"] = self.firstName!
                    }
                    if self.lastName != nil {
                        map["last_name"] = self.lastName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("document") && dict["document"] != nil {
                        self.document = dict["document"] as! String
                    }
                    if dict.keys.contains("first_name") && dict["first_name"] != nil {
                        self.firstName = dict["first_name"] as! String
                    }
                    if dict.keys.contains("last_name") && dict["last_name"] != nil {
                        self.lastName = dict["last_name"] as! String
                    }
                }
            }
            public var changeOrderNum: Int64?

            public var changeOrderStatus: Int32?

            public var failReason: String?

            public var passengers: [ChangeApplyResponseBody.Data.ChangeOrders.Passengers]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.changeOrderNum != nil {
                    map["change_order_num"] = self.changeOrderNum!
                }
                if self.changeOrderStatus != nil {
                    map["change_order_status"] = self.changeOrderStatus!
                }
                if self.failReason != nil {
                    map["fail_reason"] = self.failReason!
                }
                if self.passengers != nil {
                    var tmp : [Any] = []
                    for k in self.passengers! {
                        tmp.append(k.toMap())
                    }
                    map["passengers"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("change_order_num") && dict["change_order_num"] != nil {
                    self.changeOrderNum = dict["change_order_num"] as! Int64
                }
                if dict.keys.contains("change_order_status") && dict["change_order_status"] != nil {
                    self.changeOrderStatus = dict["change_order_status"] as! Int32
                }
                if dict.keys.contains("fail_reason") && dict["fail_reason"] != nil {
                    self.failReason = dict["fail_reason"] as! String
                }
                if dict.keys.contains("passengers") && dict["passengers"] != nil {
                    var tmp : [ChangeApplyResponseBody.Data.ChangeOrders.Passengers] = []
                    for v in dict["passengers"] as! [Any] {
                        var model = ChangeApplyResponseBody.Data.ChangeOrders.Passengers()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.passengers = tmp
                }
            }
        }
        public var changeOrders: [ChangeApplyResponseBody.Data.ChangeOrders]?

        public var orderNum: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.changeOrders != nil {
                var tmp : [Any] = []
                for k in self.changeOrders! {
                    tmp.append(k.toMap())
                }
                map["change_orders"] = tmp
            }
            if self.orderNum != nil {
                map["order_num"] = self.orderNum!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("change_orders") && dict["change_orders"] != nil {
                var tmp : [ChangeApplyResponseBody.Data.ChangeOrders] = []
                for v in dict["change_orders"] as! [Any] {
                    var model = ChangeApplyResponseBody.Data.ChangeOrders()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.changeOrders = tmp
            }
            if dict.keys.contains("order_num") && dict["order_num"] != nil {
                self.orderNum = dict["order_num"] as! Int64
            }
        }
    }
    public var requestId: String?

    public var data: ChangeApplyResponseBody.Data?

    public var errorCode: String?

    public var errorData: Any?

    public var errorMsg: String?

    public var status: Int32?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errorCode != nil {
            map["error_code"] = self.errorCode!
        }
        if self.errorData != nil {
            map["error_data"] = self.errorData!
        }
        if self.errorMsg != nil {
            map["error_msg"] = self.errorMsg!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = ChangeApplyResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("error_code") && dict["error_code"] != nil {
            self.errorCode = dict["error_code"] as! String
        }
        if dict.keys.contains("error_data") && dict["error_data"] != nil {
            self.errorData = dict["error_data"] as! Any
        }
        if dict.keys.contains("error_msg") && dict["error_msg"] != nil {
            self.errorMsg = dict["error_msg"] as! String
        }
        if dict.keys.contains("status") && dict["status"] != nil {
            self.status = dict["status"] as! Int32
        }
        if dict.keys.contains("success") && dict["success"] != nil {
            self.success = dict["success"] as! Bool
        }
    }
}

public class ChangeApplyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChangeApplyResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ChangeApplyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ChangeCancelHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xAcsAirticketAccessToken: String?

    public var xAcsAirticketLanguage: String?

    public override init() {
        super.init()
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
        if self.xAcsAirticketAccessToken != nil {
            map["x-acs-airticket-access-token"] = self.xAcsAirticketAccessToken!
        }
        if self.xAcsAirticketLanguage != nil {
            map["x-acs-airticket-language"] = self.xAcsAirticketLanguage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("x-acs-airticket-access-token") && dict["x-acs-airticket-access-token"] != nil {
            self.xAcsAirticketAccessToken = dict["x-acs-airticket-access-token"] as! String
        }
        if dict.keys.contains("x-acs-airticket-language") && dict["x-acs-airticket-language"] != nil {
            self.xAcsAirticketLanguage = dict["x-acs-airticket-language"] as! String
        }
    }
}

public class ChangeCancelRequest : Tea.TeaModel {
    public var changeOrderNum: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.changeOrderNum != nil {
            map["change_order_num"] = self.changeOrderNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("change_order_num") && dict["change_order_num"] != nil {
            self.changeOrderNum = dict["change_order_num"] as! Int64
        }
    }
}

public class ChangeCancelResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var data: Any?

    public var errorCode: String?

    public var errorData: Any?

    public var errorMsg: String?

    public var status: Int32?

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
        if self.data != nil {
            map["data"] = self.data!
        }
        if self.errorCode != nil {
            map["error_code"] = self.errorCode!
        }
        if self.errorData != nil {
            map["error_data"] = self.errorData!
        }
        if self.errorMsg != nil {
            map["error_msg"] = self.errorMsg!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            self.data = dict["data"] as! Any
        }
        if dict.keys.contains("error_code") && dict["error_code"] != nil {
            self.errorCode = dict["error_code"] as! String
        }
        if dict.keys.contains("error_data") && dict["error_data"] != nil {
            self.errorData = dict["error_data"] as! Any
        }
        if dict.keys.contains("error_msg") && dict["error_msg"] != nil {
            self.errorMsg = dict["error_msg"] as! String
        }
        if dict.keys.contains("status") && dict["status"] != nil {
            self.status = dict["status"] as! Int32
        }
        if dict.keys.contains("success") && dict["success"] != nil {
            self.success = dict["success"] as! Bool
        }
    }
}

public class ChangeCancelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChangeCancelResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ChangeCancelResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ChangeConfirmHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xAcsAirticketAccessToken: String?

    public var xAcsAirticketLanguage: String?

    public override init() {
        super.init()
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
        if self.xAcsAirticketAccessToken != nil {
            map["x-acs-airticket-access-token"] = self.xAcsAirticketAccessToken!
        }
        if self.xAcsAirticketLanguage != nil {
            map["x-acs-airticket-language"] = self.xAcsAirticketLanguage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("x-acs-airticket-access-token") && dict["x-acs-airticket-access-token"] != nil {
            self.xAcsAirticketAccessToken = dict["x-acs-airticket-access-token"] as! String
        }
        if dict.keys.contains("x-acs-airticket-language") && dict["x-acs-airticket-language"] != nil {
            self.xAcsAirticketLanguage = dict["x-acs-airticket-language"] as! String
        }
    }
}

public class ChangeConfirmRequest : Tea.TeaModel {
    public var changeOrderNum: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.changeOrderNum != nil {
            map["change_order_num"] = self.changeOrderNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("change_order_num") && dict["change_order_num"] != nil {
            self.changeOrderNum = dict["change_order_num"] as! Int64
        }
    }
}

public class ChangeConfirmResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var payAmount: Double?

        public var transactionNo: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.payAmount != nil {
                map["pay_amount"] = self.payAmount!
            }
            if self.transactionNo != nil {
                map["transaction_no"] = self.transactionNo!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("pay_amount") && dict["pay_amount"] != nil {
                self.payAmount = dict["pay_amount"] as! Double
            }
            if dict.keys.contains("transaction_no") && dict["transaction_no"] != nil {
                self.transactionNo = dict["transaction_no"] as! String
            }
        }
    }
    public var requestId: String?

    public var data: ChangeConfirmResponseBody.Data?

    public var errorCode: String?

    public var errorData: Any?

    public var errorMsg: String?

    public var status: Int32?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errorCode != nil {
            map["error_code"] = self.errorCode!
        }
        if self.errorData != nil {
            map["error_data"] = self.errorData!
        }
        if self.errorMsg != nil {
            map["error_msg"] = self.errorMsg!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = ChangeConfirmResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("error_code") && dict["error_code"] != nil {
            self.errorCode = dict["error_code"] as! String
        }
        if dict.keys.contains("error_data") && dict["error_data"] != nil {
            self.errorData = dict["error_data"] as! Any
        }
        if dict.keys.contains("error_msg") && dict["error_msg"] != nil {
            self.errorMsg = dict["error_msg"] as! String
        }
        if dict.keys.contains("status") && dict["status"] != nil {
            self.status = dict["status"] as! Int32
        }
        if dict.keys.contains("success") && dict["success"] != nil {
            self.success = dict["success"] as! Bool
        }
    }
}

public class ChangeConfirmResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChangeConfirmResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ChangeConfirmResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ChangeDetailHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xAcsAirticketAccessToken: String?

    public var xAcsAirticketLanguage: String?

    public override init() {
        super.init()
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
        if self.xAcsAirticketAccessToken != nil {
            map["x-acs-airticket-access-token"] = self.xAcsAirticketAccessToken!
        }
        if self.xAcsAirticketLanguage != nil {
            map["x-acs-airticket-language"] = self.xAcsAirticketLanguage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("x-acs-airticket-access-token") && dict["x-acs-airticket-access-token"] != nil {
            self.xAcsAirticketAccessToken = dict["x-acs-airticket-access-token"] as! String
        }
        if dict.keys.contains("x-acs-airticket-language") && dict["x-acs-airticket-language"] != nil {
            self.xAcsAirticketLanguage = dict["x-acs-airticket-language"] as! String
        }
    }
}

public class ChangeDetailRequest : Tea.TeaModel {
    public var changeOrderNum: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.changeOrderNum != nil {
            map["change_order_num"] = self.changeOrderNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("change_order_num") && dict["change_order_num"] != nil {
            self.changeOrderNum = dict["change_order_num"] as! Int64
        }
    }
}

public class ChangeDetailResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ChangeFeeDetails : Tea.TeaModel {
            public class ChangeFee : Tea.TeaModel {
                public var serviceFee: Double?

                public var taxFee: Double?

                public var upgradeFee: Double?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.serviceFee != nil {
                        map["service_fee"] = self.serviceFee!
                    }
                    if self.taxFee != nil {
                        map["tax_fee"] = self.taxFee!
                    }
                    if self.upgradeFee != nil {
                        map["upgrade_fee"] = self.upgradeFee!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("service_fee") && dict["service_fee"] != nil {
                        self.serviceFee = dict["service_fee"] as! Double
                    }
                    if dict.keys.contains("tax_fee") && dict["tax_fee"] != nil {
                        self.taxFee = dict["tax_fee"] as! Double
                    }
                    if dict.keys.contains("upgrade_fee") && dict["upgrade_fee"] != nil {
                        self.upgradeFee = dict["upgrade_fee"] as! Double
                    }
                }
            }
            public class Passenger : Tea.TeaModel {
                public var document: String?

                public var firstName: String?

                public var lastName: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.document != nil {
                        map["document"] = self.document!
                    }
                    if self.firstName != nil {
                        map["first_name"] = self.firstName!
                    }
                    if self.lastName != nil {
                        map["last_name"] = self.lastName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("document") && dict["document"] != nil {
                        self.document = dict["document"] as! String
                    }
                    if dict.keys.contains("first_name") && dict["first_name"] != nil {
                        self.firstName = dict["first_name"] as! String
                    }
                    if dict.keys.contains("last_name") && dict["last_name"] != nil {
                        self.lastName = dict["last_name"] as! String
                    }
                }
            }
            public var changeFee: ChangeDetailResponseBody.Data.ChangeFeeDetails.ChangeFee?

            public var passenger: ChangeDetailResponseBody.Data.ChangeFeeDetails.Passenger?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.changeFee?.validate()
                try self.passenger?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.changeFee != nil {
                    map["change_fee"] = self.changeFee?.toMap()
                }
                if self.passenger != nil {
                    map["passenger"] = self.passenger?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("change_fee") && dict["change_fee"] != nil {
                    var model = ChangeDetailResponseBody.Data.ChangeFeeDetails.ChangeFee()
                    model.fromMap(dict["change_fee"] as! [String: Any])
                    self.changeFee = model
                }
                if dict.keys.contains("passenger") && dict["passenger"] != nil {
                    var model = ChangeDetailResponseBody.Data.ChangeFeeDetails.Passenger()
                    model.fromMap(dict["passenger"] as! [String: Any])
                    self.passenger = model
                }
            }
        }
        public class ChangePassengers : Tea.TeaModel {
            public var document: String?

            public var firstName: String?

            public var lastName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.document != nil {
                    map["document"] = self.document!
                }
                if self.firstName != nil {
                    map["first_name"] = self.firstName!
                }
                if self.lastName != nil {
                    map["last_name"] = self.lastName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("document") && dict["document"] != nil {
                    self.document = dict["document"] as! String
                }
                if dict.keys.contains("first_name") && dict["first_name"] != nil {
                    self.firstName = dict["first_name"] as! String
                }
                if dict.keys.contains("last_name") && dict["last_name"] != nil {
                    self.lastName = dict["last_name"] as! String
                }
            }
        }
        public class ChangedJourneys : Tea.TeaModel {
            public class SegmentList : Tea.TeaModel {
                public var arrivalAirport: String?

                public var arrivalCity: String?

                public var arrivalTerminal: String?

                public var arrivalTime: String?

                public var availability: String?

                public var cabin: String?

                public var cabinClass: String?

                public var codeShare: Bool?

                public var departureAirport: String?

                public var departureCity: String?

                public var departureTerminal: String?

                public var departureTime: String?

                public var equipType: String?

                public var flightDuration: Int32?

                public var marketingAirline: String?

                public var marketingFlightNo: String?

                public var marketingFlightNoInt: Int32?

                public var operatingAirline: String?

                public var operatingFlightNo: String?

                public var segmentId: String?

                public var stopCityList: String?

                public var stopQuantity: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.arrivalAirport != nil {
                        map["arrival_airport"] = self.arrivalAirport!
                    }
                    if self.arrivalCity != nil {
                        map["arrival_city"] = self.arrivalCity!
                    }
                    if self.arrivalTerminal != nil {
                        map["arrival_terminal"] = self.arrivalTerminal!
                    }
                    if self.arrivalTime != nil {
                        map["arrival_time"] = self.arrivalTime!
                    }
                    if self.availability != nil {
                        map["availability"] = self.availability!
                    }
                    if self.cabin != nil {
                        map["cabin"] = self.cabin!
                    }
                    if self.cabinClass != nil {
                        map["cabin_class"] = self.cabinClass!
                    }
                    if self.codeShare != nil {
                        map["code_share"] = self.codeShare!
                    }
                    if self.departureAirport != nil {
                        map["departure_airport"] = self.departureAirport!
                    }
                    if self.departureCity != nil {
                        map["departure_city"] = self.departureCity!
                    }
                    if self.departureTerminal != nil {
                        map["departure_terminal"] = self.departureTerminal!
                    }
                    if self.departureTime != nil {
                        map["departure_time"] = self.departureTime!
                    }
                    if self.equipType != nil {
                        map["equip_type"] = self.equipType!
                    }
                    if self.flightDuration != nil {
                        map["flight_duration"] = self.flightDuration!
                    }
                    if self.marketingAirline != nil {
                        map["marketing_airline"] = self.marketingAirline!
                    }
                    if self.marketingFlightNo != nil {
                        map["marketing_flight_no"] = self.marketingFlightNo!
                    }
                    if self.marketingFlightNoInt != nil {
                        map["marketing_flight_no_int"] = self.marketingFlightNoInt!
                    }
                    if self.operatingAirline != nil {
                        map["operating_airline"] = self.operatingAirline!
                    }
                    if self.operatingFlightNo != nil {
                        map["operating_flight_no"] = self.operatingFlightNo!
                    }
                    if self.segmentId != nil {
                        map["segment_id"] = self.segmentId!
                    }
                    if self.stopCityList != nil {
                        map["stop_city_list"] = self.stopCityList!
                    }
                    if self.stopQuantity != nil {
                        map["stop_quantity"] = self.stopQuantity!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("arrival_airport") && dict["arrival_airport"] != nil {
                        self.arrivalAirport = dict["arrival_airport"] as! String
                    }
                    if dict.keys.contains("arrival_city") && dict["arrival_city"] != nil {
                        self.arrivalCity = dict["arrival_city"] as! String
                    }
                    if dict.keys.contains("arrival_terminal") && dict["arrival_terminal"] != nil {
                        self.arrivalTerminal = dict["arrival_terminal"] as! String
                    }
                    if dict.keys.contains("arrival_time") && dict["arrival_time"] != nil {
                        self.arrivalTime = dict["arrival_time"] as! String
                    }
                    if dict.keys.contains("availability") && dict["availability"] != nil {
                        self.availability = dict["availability"] as! String
                    }
                    if dict.keys.contains("cabin") && dict["cabin"] != nil {
                        self.cabin = dict["cabin"] as! String
                    }
                    if dict.keys.contains("cabin_class") && dict["cabin_class"] != nil {
                        self.cabinClass = dict["cabin_class"] as! String
                    }
                    if dict.keys.contains("code_share") && dict["code_share"] != nil {
                        self.codeShare = dict["code_share"] as! Bool
                    }
                    if dict.keys.contains("departure_airport") && dict["departure_airport"] != nil {
                        self.departureAirport = dict["departure_airport"] as! String
                    }
                    if dict.keys.contains("departure_city") && dict["departure_city"] != nil {
                        self.departureCity = dict["departure_city"] as! String
                    }
                    if dict.keys.contains("departure_terminal") && dict["departure_terminal"] != nil {
                        self.departureTerminal = dict["departure_terminal"] as! String
                    }
                    if dict.keys.contains("departure_time") && dict["departure_time"] != nil {
                        self.departureTime = dict["departure_time"] as! String
                    }
                    if dict.keys.contains("equip_type") && dict["equip_type"] != nil {
                        self.equipType = dict["equip_type"] as! String
                    }
                    if dict.keys.contains("flight_duration") && dict["flight_duration"] != nil {
                        self.flightDuration = dict["flight_duration"] as! Int32
                    }
                    if dict.keys.contains("marketing_airline") && dict["marketing_airline"] != nil {
                        self.marketingAirline = dict["marketing_airline"] as! String
                    }
                    if dict.keys.contains("marketing_flight_no") && dict["marketing_flight_no"] != nil {
                        self.marketingFlightNo = dict["marketing_flight_no"] as! String
                    }
                    if dict.keys.contains("marketing_flight_no_int") && dict["marketing_flight_no_int"] != nil {
                        self.marketingFlightNoInt = dict["marketing_flight_no_int"] as! Int32
                    }
                    if dict.keys.contains("operating_airline") && dict["operating_airline"] != nil {
                        self.operatingAirline = dict["operating_airline"] as! String
                    }
                    if dict.keys.contains("operating_flight_no") && dict["operating_flight_no"] != nil {
                        self.operatingFlightNo = dict["operating_flight_no"] as! String
                    }
                    if dict.keys.contains("segment_id") && dict["segment_id"] != nil {
                        self.segmentId = dict["segment_id"] as! String
                    }
                    if dict.keys.contains("stop_city_list") && dict["stop_city_list"] != nil {
                        self.stopCityList = dict["stop_city_list"] as! String
                    }
                    if dict.keys.contains("stop_quantity") && dict["stop_quantity"] != nil {
                        self.stopQuantity = dict["stop_quantity"] as! Int32
                    }
                }
            }
            public var segmentList: [ChangeDetailResponseBody.Data.ChangedJourneys.SegmentList]?

            public var transferCount: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.segmentList != nil {
                    var tmp : [Any] = []
                    for k in self.segmentList! {
                        tmp.append(k.toMap())
                    }
                    map["segment_list"] = tmp
                }
                if self.transferCount != nil {
                    map["transfer_count"] = self.transferCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("segment_list") && dict["segment_list"] != nil {
                    var tmp : [ChangeDetailResponseBody.Data.ChangedJourneys.SegmentList] = []
                    for v in dict["segment_list"] as! [Any] {
                        var model = ChangeDetailResponseBody.Data.ChangedJourneys.SegmentList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.segmentList = tmp
                }
                if dict.keys.contains("transfer_count") && dict["transfer_count"] != nil {
                    self.transferCount = dict["transfer_count"] as! Int32
                }
            }
        }
        public class Contact : Tea.TeaModel {
            public var email: String?

            public var mobileCountryCode: String?

            public var mobilePhoneNum: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.email != nil {
                    map["email"] = self.email!
                }
                if self.mobileCountryCode != nil {
                    map["mobile_country_code"] = self.mobileCountryCode!
                }
                if self.mobilePhoneNum != nil {
                    map["mobile_phone_num"] = self.mobilePhoneNum!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("email") && dict["email"] != nil {
                    self.email = dict["email"] as! String
                }
                if dict.keys.contains("mobile_country_code") && dict["mobile_country_code"] != nil {
                    self.mobileCountryCode = dict["mobile_country_code"] as! String
                }
                if dict.keys.contains("mobile_phone_num") && dict["mobile_phone_num"] != nil {
                    self.mobilePhoneNum = dict["mobile_phone_num"] as! String
                }
            }
        }
        public class LastJourneys : Tea.TeaModel {
            public class SegmentList : Tea.TeaModel {
                public var arrivalAirport: String?

                public var arrivalCity: String?

                public var arrivalTerminal: String?

                public var arrivalTime: String?

                public var availability: String?

                public var cabin: String?

                public var cabinClass: String?

                public var codeShare: Bool?

                public var departureAirport: String?

                public var departureCity: String?

                public var departureTerminal: String?

                public var departureTime: String?

                public var equipType: String?

                public var flightDuration: Int32?

                public var marketingAirline: String?

                public var marketingFlightNo: String?

                public var marketingFlightNoInt: Int32?

                public var operatingAirline: String?

                public var operatingFlightNo: String?

                public var segmentId: String?

                public var stopCityList: String?

                public var stopQuantity: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.arrivalAirport != nil {
                        map["arrival_airport"] = self.arrivalAirport!
                    }
                    if self.arrivalCity != nil {
                        map["arrival_city"] = self.arrivalCity!
                    }
                    if self.arrivalTerminal != nil {
                        map["arrival_terminal"] = self.arrivalTerminal!
                    }
                    if self.arrivalTime != nil {
                        map["arrival_time"] = self.arrivalTime!
                    }
                    if self.availability != nil {
                        map["availability"] = self.availability!
                    }
                    if self.cabin != nil {
                        map["cabin"] = self.cabin!
                    }
                    if self.cabinClass != nil {
                        map["cabin_class"] = self.cabinClass!
                    }
                    if self.codeShare != nil {
                        map["code_share"] = self.codeShare!
                    }
                    if self.departureAirport != nil {
                        map["departure_airport"] = self.departureAirport!
                    }
                    if self.departureCity != nil {
                        map["departure_city"] = self.departureCity!
                    }
                    if self.departureTerminal != nil {
                        map["departure_terminal"] = self.departureTerminal!
                    }
                    if self.departureTime != nil {
                        map["departure_time"] = self.departureTime!
                    }
                    if self.equipType != nil {
                        map["equip_type"] = self.equipType!
                    }
                    if self.flightDuration != nil {
                        map["flight_duration"] = self.flightDuration!
                    }
                    if self.marketingAirline != nil {
                        map["marketing_airline"] = self.marketingAirline!
                    }
                    if self.marketingFlightNo != nil {
                        map["marketing_flight_no"] = self.marketingFlightNo!
                    }
                    if self.marketingFlightNoInt != nil {
                        map["marketing_flight_no_int"] = self.marketingFlightNoInt!
                    }
                    if self.operatingAirline != nil {
                        map["operating_airline"] = self.operatingAirline!
                    }
                    if self.operatingFlightNo != nil {
                        map["operating_flight_no"] = self.operatingFlightNo!
                    }
                    if self.segmentId != nil {
                        map["segment_id"] = self.segmentId!
                    }
                    if self.stopCityList != nil {
                        map["stop_city_list"] = self.stopCityList!
                    }
                    if self.stopQuantity != nil {
                        map["stop_quantity"] = self.stopQuantity!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("arrival_airport") && dict["arrival_airport"] != nil {
                        self.arrivalAirport = dict["arrival_airport"] as! String
                    }
                    if dict.keys.contains("arrival_city") && dict["arrival_city"] != nil {
                        self.arrivalCity = dict["arrival_city"] as! String
                    }
                    if dict.keys.contains("arrival_terminal") && dict["arrival_terminal"] != nil {
                        self.arrivalTerminal = dict["arrival_terminal"] as! String
                    }
                    if dict.keys.contains("arrival_time") && dict["arrival_time"] != nil {
                        self.arrivalTime = dict["arrival_time"] as! String
                    }
                    if dict.keys.contains("availability") && dict["availability"] != nil {
                        self.availability = dict["availability"] as! String
                    }
                    if dict.keys.contains("cabin") && dict["cabin"] != nil {
                        self.cabin = dict["cabin"] as! String
                    }
                    if dict.keys.contains("cabin_class") && dict["cabin_class"] != nil {
                        self.cabinClass = dict["cabin_class"] as! String
                    }
                    if dict.keys.contains("code_share") && dict["code_share"] != nil {
                        self.codeShare = dict["code_share"] as! Bool
                    }
                    if dict.keys.contains("departure_airport") && dict["departure_airport"] != nil {
                        self.departureAirport = dict["departure_airport"] as! String
                    }
                    if dict.keys.contains("departure_city") && dict["departure_city"] != nil {
                        self.departureCity = dict["departure_city"] as! String
                    }
                    if dict.keys.contains("departure_terminal") && dict["departure_terminal"] != nil {
                        self.departureTerminal = dict["departure_terminal"] as! String
                    }
                    if dict.keys.contains("departure_time") && dict["departure_time"] != nil {
                        self.departureTime = dict["departure_time"] as! String
                    }
                    if dict.keys.contains("equip_type") && dict["equip_type"] != nil {
                        self.equipType = dict["equip_type"] as! String
                    }
                    if dict.keys.contains("flight_duration") && dict["flight_duration"] != nil {
                        self.flightDuration = dict["flight_duration"] as! Int32
                    }
                    if dict.keys.contains("marketing_airline") && dict["marketing_airline"] != nil {
                        self.marketingAirline = dict["marketing_airline"] as! String
                    }
                    if dict.keys.contains("marketing_flight_no") && dict["marketing_flight_no"] != nil {
                        self.marketingFlightNo = dict["marketing_flight_no"] as! String
                    }
                    if dict.keys.contains("marketing_flight_no_int") && dict["marketing_flight_no_int"] != nil {
                        self.marketingFlightNoInt = dict["marketing_flight_no_int"] as! Int32
                    }
                    if dict.keys.contains("operating_airline") && dict["operating_airline"] != nil {
                        self.operatingAirline = dict["operating_airline"] as! String
                    }
                    if dict.keys.contains("operating_flight_no") && dict["operating_flight_no"] != nil {
                        self.operatingFlightNo = dict["operating_flight_no"] as! String
                    }
                    if dict.keys.contains("segment_id") && dict["segment_id"] != nil {
                        self.segmentId = dict["segment_id"] as! String
                    }
                    if dict.keys.contains("stop_city_list") && dict["stop_city_list"] != nil {
                        self.stopCityList = dict["stop_city_list"] as! String
                    }
                    if dict.keys.contains("stop_quantity") && dict["stop_quantity"] != nil {
                        self.stopQuantity = dict["stop_quantity"] as! Int32
                    }
                }
            }
            public var segmentList: [ChangeDetailResponseBody.Data.LastJourneys.SegmentList]?

            public var transferCount: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.segmentList != nil {
                    var tmp : [Any] = []
                    for k in self.segmentList! {
                        tmp.append(k.toMap())
                    }
                    map["segment_list"] = tmp
                }
                if self.transferCount != nil {
                    map["transfer_count"] = self.transferCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("segment_list") && dict["segment_list"] != nil {
                    var tmp : [ChangeDetailResponseBody.Data.LastJourneys.SegmentList] = []
                    for v in dict["segment_list"] as! [Any] {
                        var model = ChangeDetailResponseBody.Data.LastJourneys.SegmentList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.segmentList = tmp
                }
                if dict.keys.contains("transfer_count") && dict["transfer_count"] != nil {
                    self.transferCount = dict["transfer_count"] as! Int32
                }
            }
        }
        public class OriginalJourneys : Tea.TeaModel {
            public class SegmentList : Tea.TeaModel {
                public var arrivalAirport: String?

                public var arrivalCity: String?

                public var arrivalTerminal: String?

                public var arrivalTime: String?

                public var availability: String?

                public var cabin: String?

                public var cabinClass: String?

                public var codeShare: Bool?

                public var departureAirport: String?

                public var departureCity: String?

                public var departureTerminal: String?

                public var departureTime: String?

                public var equipType: String?

                public var flightDuration: Int32?

                public var marketingAirline: String?

                public var marketingFlightNo: String?

                public var marketingFlightNoInt: Int32?

                public var operatingAirline: String?

                public var operatingFlightNo: String?

                public var segmentId: String?

                public var stopCityList: String?

                public var stopQuantity: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.arrivalAirport != nil {
                        map["arrival_airport"] = self.arrivalAirport!
                    }
                    if self.arrivalCity != nil {
                        map["arrival_city"] = self.arrivalCity!
                    }
                    if self.arrivalTerminal != nil {
                        map["arrival_terminal"] = self.arrivalTerminal!
                    }
                    if self.arrivalTime != nil {
                        map["arrival_time"] = self.arrivalTime!
                    }
                    if self.availability != nil {
                        map["availability"] = self.availability!
                    }
                    if self.cabin != nil {
                        map["cabin"] = self.cabin!
                    }
                    if self.cabinClass != nil {
                        map["cabin_class"] = self.cabinClass!
                    }
                    if self.codeShare != nil {
                        map["code_share"] = self.codeShare!
                    }
                    if self.departureAirport != nil {
                        map["departure_airport"] = self.departureAirport!
                    }
                    if self.departureCity != nil {
                        map["departure_city"] = self.departureCity!
                    }
                    if self.departureTerminal != nil {
                        map["departure_terminal"] = self.departureTerminal!
                    }
                    if self.departureTime != nil {
                        map["departure_time"] = self.departureTime!
                    }
                    if self.equipType != nil {
                        map["equip_type"] = self.equipType!
                    }
                    if self.flightDuration != nil {
                        map["flight_duration"] = self.flightDuration!
                    }
                    if self.marketingAirline != nil {
                        map["marketing_airline"] = self.marketingAirline!
                    }
                    if self.marketingFlightNo != nil {
                        map["marketing_flight_no"] = self.marketingFlightNo!
                    }
                    if self.marketingFlightNoInt != nil {
                        map["marketing_flight_no_int"] = self.marketingFlightNoInt!
                    }
                    if self.operatingAirline != nil {
                        map["operating_airline"] = self.operatingAirline!
                    }
                    if self.operatingFlightNo != nil {
                        map["operating_flight_no"] = self.operatingFlightNo!
                    }
                    if self.segmentId != nil {
                        map["segment_id"] = self.segmentId!
                    }
                    if self.stopCityList != nil {
                        map["stop_city_list"] = self.stopCityList!
                    }
                    if self.stopQuantity != nil {
                        map["stop_quantity"] = self.stopQuantity!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("arrival_airport") && dict["arrival_airport"] != nil {
                        self.arrivalAirport = dict["arrival_airport"] as! String
                    }
                    if dict.keys.contains("arrival_city") && dict["arrival_city"] != nil {
                        self.arrivalCity = dict["arrival_city"] as! String
                    }
                    if dict.keys.contains("arrival_terminal") && dict["arrival_terminal"] != nil {
                        self.arrivalTerminal = dict["arrival_terminal"] as! String
                    }
                    if dict.keys.contains("arrival_time") && dict["arrival_time"] != nil {
                        self.arrivalTime = dict["arrival_time"] as! String
                    }
                    if dict.keys.contains("availability") && dict["availability"] != nil {
                        self.availability = dict["availability"] as! String
                    }
                    if dict.keys.contains("cabin") && dict["cabin"] != nil {
                        self.cabin = dict["cabin"] as! String
                    }
                    if dict.keys.contains("cabin_class") && dict["cabin_class"] != nil {
                        self.cabinClass = dict["cabin_class"] as! String
                    }
                    if dict.keys.contains("code_share") && dict["code_share"] != nil {
                        self.codeShare = dict["code_share"] as! Bool
                    }
                    if dict.keys.contains("departure_airport") && dict["departure_airport"] != nil {
                        self.departureAirport = dict["departure_airport"] as! String
                    }
                    if dict.keys.contains("departure_city") && dict["departure_city"] != nil {
                        self.departureCity = dict["departure_city"] as! String
                    }
                    if dict.keys.contains("departure_terminal") && dict["departure_terminal"] != nil {
                        self.departureTerminal = dict["departure_terminal"] as! String
                    }
                    if dict.keys.contains("departure_time") && dict["departure_time"] != nil {
                        self.departureTime = dict["departure_time"] as! String
                    }
                    if dict.keys.contains("equip_type") && dict["equip_type"] != nil {
                        self.equipType = dict["equip_type"] as! String
                    }
                    if dict.keys.contains("flight_duration") && dict["flight_duration"] != nil {
                        self.flightDuration = dict["flight_duration"] as! Int32
                    }
                    if dict.keys.contains("marketing_airline") && dict["marketing_airline"] != nil {
                        self.marketingAirline = dict["marketing_airline"] as! String
                    }
                    if dict.keys.contains("marketing_flight_no") && dict["marketing_flight_no"] != nil {
                        self.marketingFlightNo = dict["marketing_flight_no"] as! String
                    }
                    if dict.keys.contains("marketing_flight_no_int") && dict["marketing_flight_no_int"] != nil {
                        self.marketingFlightNoInt = dict["marketing_flight_no_int"] as! Int32
                    }
                    if dict.keys.contains("operating_airline") && dict["operating_airline"] != nil {
                        self.operatingAirline = dict["operating_airline"] as! String
                    }
                    if dict.keys.contains("operating_flight_no") && dict["operating_flight_no"] != nil {
                        self.operatingFlightNo = dict["operating_flight_no"] as! String
                    }
                    if dict.keys.contains("segment_id") && dict["segment_id"] != nil {
                        self.segmentId = dict["segment_id"] as! String
                    }
                    if dict.keys.contains("stop_city_list") && dict["stop_city_list"] != nil {
                        self.stopCityList = dict["stop_city_list"] as! String
                    }
                    if dict.keys.contains("stop_quantity") && dict["stop_quantity"] != nil {
                        self.stopQuantity = dict["stop_quantity"] as! Int32
                    }
                }
            }
            public var segmentList: [ChangeDetailResponseBody.Data.OriginalJourneys.SegmentList]?

            public var transferCount: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.segmentList != nil {
                    var tmp : [Any] = []
                    for k in self.segmentList! {
                        tmp.append(k.toMap())
                    }
                    map["segment_list"] = tmp
                }
                if self.transferCount != nil {
                    map["transfer_count"] = self.transferCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("segment_list") && dict["segment_list"] != nil {
                    var tmp : [ChangeDetailResponseBody.Data.OriginalJourneys.SegmentList] = []
                    for v in dict["segment_list"] as! [Any] {
                        var model = ChangeDetailResponseBody.Data.OriginalJourneys.SegmentList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.segmentList = tmp
                }
                if dict.keys.contains("transfer_count") && dict["transfer_count"] != nil {
                    self.transferCount = dict["transfer_count"] as! Int32
                }
            }
        }
        public var changeFeeDetails: [ChangeDetailResponseBody.Data.ChangeFeeDetails]?

        public var changeOrderNum: Int64?

        public var changePassengers: [ChangeDetailResponseBody.Data.ChangePassengers]?

        public var changeReasonType: Int32?

        public var changedJourneys: [ChangeDetailResponseBody.Data.ChangedJourneys]?

        public var closeReason: String?

        public var closeUtcTime: Int64?

        public var contact: ChangeDetailResponseBody.Data.Contact?

        public var createUtcTime: Int64?

        public var lastConfirmUtcTime: Int64?

        public var lastJourneys: [ChangeDetailResponseBody.Data.LastJourneys]?

        public var orderNum: Int64?

        public var orderStatus: Int32?

        public var originalJourneys: [ChangeDetailResponseBody.Data.OriginalJourneys]?

        public var payStatus: Int32?

        public var paySuccessUtcTime: Int64?

        public var totalAmount: Double?

        public var transactionNo: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.contact?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.changeFeeDetails != nil {
                var tmp : [Any] = []
                for k in self.changeFeeDetails! {
                    tmp.append(k.toMap())
                }
                map["change_fee_details"] = tmp
            }
            if self.changeOrderNum != nil {
                map["change_order_num"] = self.changeOrderNum!
            }
            if self.changePassengers != nil {
                var tmp : [Any] = []
                for k in self.changePassengers! {
                    tmp.append(k.toMap())
                }
                map["change_passengers"] = tmp
            }
            if self.changeReasonType != nil {
                map["change_reason_type"] = self.changeReasonType!
            }
            if self.changedJourneys != nil {
                var tmp : [Any] = []
                for k in self.changedJourneys! {
                    tmp.append(k.toMap())
                }
                map["changed_journeys"] = tmp
            }
            if self.closeReason != nil {
                map["close_reason"] = self.closeReason!
            }
            if self.closeUtcTime != nil {
                map["close_utc_time"] = self.closeUtcTime!
            }
            if self.contact != nil {
                map["contact"] = self.contact?.toMap()
            }
            if self.createUtcTime != nil {
                map["create_utc_time"] = self.createUtcTime!
            }
            if self.lastConfirmUtcTime != nil {
                map["last_confirm_utc_time"] = self.lastConfirmUtcTime!
            }
            if self.lastJourneys != nil {
                var tmp : [Any] = []
                for k in self.lastJourneys! {
                    tmp.append(k.toMap())
                }
                map["last_journeys"] = tmp
            }
            if self.orderNum != nil {
                map["order_num"] = self.orderNum!
            }
            if self.orderStatus != nil {
                map["order_status"] = self.orderStatus!
            }
            if self.originalJourneys != nil {
                var tmp : [Any] = []
                for k in self.originalJourneys! {
                    tmp.append(k.toMap())
                }
                map["original_journeys"] = tmp
            }
            if self.payStatus != nil {
                map["pay_status"] = self.payStatus!
            }
            if self.paySuccessUtcTime != nil {
                map["pay_success_utc_time"] = self.paySuccessUtcTime!
            }
            if self.totalAmount != nil {
                map["total_amount"] = self.totalAmount!
            }
            if self.transactionNo != nil {
                map["transaction_no"] = self.transactionNo!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("change_fee_details") && dict["change_fee_details"] != nil {
                var tmp : [ChangeDetailResponseBody.Data.ChangeFeeDetails] = []
                for v in dict["change_fee_details"] as! [Any] {
                    var model = ChangeDetailResponseBody.Data.ChangeFeeDetails()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.changeFeeDetails = tmp
            }
            if dict.keys.contains("change_order_num") && dict["change_order_num"] != nil {
                self.changeOrderNum = dict["change_order_num"] as! Int64
            }
            if dict.keys.contains("change_passengers") && dict["change_passengers"] != nil {
                var tmp : [ChangeDetailResponseBody.Data.ChangePassengers] = []
                for v in dict["change_passengers"] as! [Any] {
                    var model = ChangeDetailResponseBody.Data.ChangePassengers()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.changePassengers = tmp
            }
            if dict.keys.contains("change_reason_type") && dict["change_reason_type"] != nil {
                self.changeReasonType = dict["change_reason_type"] as! Int32
            }
            if dict.keys.contains("changed_journeys") && dict["changed_journeys"] != nil {
                var tmp : [ChangeDetailResponseBody.Data.ChangedJourneys] = []
                for v in dict["changed_journeys"] as! [Any] {
                    var model = ChangeDetailResponseBody.Data.ChangedJourneys()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.changedJourneys = tmp
            }
            if dict.keys.contains("close_reason") && dict["close_reason"] != nil {
                self.closeReason = dict["close_reason"] as! String
            }
            if dict.keys.contains("close_utc_time") && dict["close_utc_time"] != nil {
                self.closeUtcTime = dict["close_utc_time"] as! Int64
            }
            if dict.keys.contains("contact") && dict["contact"] != nil {
                var model = ChangeDetailResponseBody.Data.Contact()
                model.fromMap(dict["contact"] as! [String: Any])
                self.contact = model
            }
            if dict.keys.contains("create_utc_time") && dict["create_utc_time"] != nil {
                self.createUtcTime = dict["create_utc_time"] as! Int64
            }
            if dict.keys.contains("last_confirm_utc_time") && dict["last_confirm_utc_time"] != nil {
                self.lastConfirmUtcTime = dict["last_confirm_utc_time"] as! Int64
            }
            if dict.keys.contains("last_journeys") && dict["last_journeys"] != nil {
                var tmp : [ChangeDetailResponseBody.Data.LastJourneys] = []
                for v in dict["last_journeys"] as! [Any] {
                    var model = ChangeDetailResponseBody.Data.LastJourneys()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.lastJourneys = tmp
            }
            if dict.keys.contains("order_num") && dict["order_num"] != nil {
                self.orderNum = dict["order_num"] as! Int64
            }
            if dict.keys.contains("order_status") && dict["order_status"] != nil {
                self.orderStatus = dict["order_status"] as! Int32
            }
            if dict.keys.contains("original_journeys") && dict["original_journeys"] != nil {
                var tmp : [ChangeDetailResponseBody.Data.OriginalJourneys] = []
                for v in dict["original_journeys"] as! [Any] {
                    var model = ChangeDetailResponseBody.Data.OriginalJourneys()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.originalJourneys = tmp
            }
            if dict.keys.contains("pay_status") && dict["pay_status"] != nil {
                self.payStatus = dict["pay_status"] as! Int32
            }
            if dict.keys.contains("pay_success_utc_time") && dict["pay_success_utc_time"] != nil {
                self.paySuccessUtcTime = dict["pay_success_utc_time"] as! Int64
            }
            if dict.keys.contains("total_amount") && dict["total_amount"] != nil {
                self.totalAmount = dict["total_amount"] as! Double
            }
            if dict.keys.contains("transaction_no") && dict["transaction_no"] != nil {
                self.transactionNo = dict["transaction_no"] as! String
            }
        }
    }
    public var requestId: String?

    public var data: ChangeDetailResponseBody.Data?

    public var errorCode: String?

    public var errorData: Any?

    public var errorMsg: String?

    public var status: Int32?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errorCode != nil {
            map["error_code"] = self.errorCode!
        }
        if self.errorData != nil {
            map["error_data"] = self.errorData!
        }
        if self.errorMsg != nil {
            map["error_msg"] = self.errorMsg!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = ChangeDetailResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("error_code") && dict["error_code"] != nil {
            self.errorCode = dict["error_code"] as! String
        }
        if dict.keys.contains("error_data") && dict["error_data"] != nil {
            self.errorData = dict["error_data"] as! Any
        }
        if dict.keys.contains("error_msg") && dict["error_msg"] != nil {
            self.errorMsg = dict["error_msg"] as! String
        }
        if dict.keys.contains("status") && dict["status"] != nil {
            self.status = dict["status"] as! Int32
        }
        if dict.keys.contains("success") && dict["success"] != nil {
            self.success = dict["success"] as! Bool
        }
    }
}

public class ChangeDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChangeDetailResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ChangeDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ChangeDetailListOfBuyerHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xAcsAirticketAccessToken: String?

    public var xAcsAirticketLanguage: String?

    public override init() {
        super.init()
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
        if self.xAcsAirticketAccessToken != nil {
            map["x-acs-airticket-access-token"] = self.xAcsAirticketAccessToken!
        }
        if self.xAcsAirticketLanguage != nil {
            map["x-acs-airticket-language"] = self.xAcsAirticketLanguage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("x-acs-airticket-access-token") && dict["x-acs-airticket-access-token"] != nil {
            self.xAcsAirticketAccessToken = dict["x-acs-airticket-access-token"] as! String
        }
        if dict.keys.contains("x-acs-airticket-language") && dict["x-acs-airticket-language"] != nil {
            self.xAcsAirticketLanguage = dict["x-acs-airticket-language"] as! String
        }
    }
}

public class ChangeDetailListOfBuyerRequest : Tea.TeaModel {
    public var pageIndex: Int32?

    public var pageSize: Int32?

    public var utcCreateBegin: Int64?

    public var utcCreateEnd: Int64?

    public override init() {
        super.init()
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
            map["page_index"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["page_size"] = self.pageSize!
        }
        if self.utcCreateBegin != nil {
            map["utc_create_begin"] = self.utcCreateBegin!
        }
        if self.utcCreateEnd != nil {
            map["utc_create_end"] = self.utcCreateEnd!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("page_index") && dict["page_index"] != nil {
            self.pageIndex = dict["page_index"] as! Int32
        }
        if dict.keys.contains("page_size") && dict["page_size"] != nil {
            self.pageSize = dict["page_size"] as! Int32
        }
        if dict.keys.contains("utc_create_begin") && dict["utc_create_begin"] != nil {
            self.utcCreateBegin = dict["utc_create_begin"] as! Int64
        }
        if dict.keys.contains("utc_create_end") && dict["utc_create_end"] != nil {
            self.utcCreateEnd = dict["utc_create_end"] as! Int64
        }
    }
}

public class ChangeDetailListOfBuyerResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var changeOrderNum: Int64?

            public var orderNum: Int64?

            public var orderStatus: Int32?

            public var payStatus: Int32?

            public var transactionNo: String?

            public var utcCreateTime: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.changeOrderNum != nil {
                    map["change_order_num"] = self.changeOrderNum!
                }
                if self.orderNum != nil {
                    map["order_num"] = self.orderNum!
                }
                if self.orderStatus != nil {
                    map["order_status"] = self.orderStatus!
                }
                if self.payStatus != nil {
                    map["pay_status"] = self.payStatus!
                }
                if self.transactionNo != nil {
                    map["transaction_no"] = self.transactionNo!
                }
                if self.utcCreateTime != nil {
                    map["utc_create_time"] = self.utcCreateTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("change_order_num") && dict["change_order_num"] != nil {
                    self.changeOrderNum = dict["change_order_num"] as! Int64
                }
                if dict.keys.contains("order_num") && dict["order_num"] != nil {
                    self.orderNum = dict["order_num"] as! Int64
                }
                if dict.keys.contains("order_status") && dict["order_status"] != nil {
                    self.orderStatus = dict["order_status"] as! Int32
                }
                if dict.keys.contains("pay_status") && dict["pay_status"] != nil {
                    self.payStatus = dict["pay_status"] as! Int32
                }
                if dict.keys.contains("transaction_no") && dict["transaction_no"] != nil {
                    self.transactionNo = dict["transaction_no"] as! String
                }
                if dict.keys.contains("utc_create_time") && dict["utc_create_time"] != nil {
                    self.utcCreateTime = dict["utc_create_time"] as! Int64
                }
            }
        }
        public class Pagination : Tea.TeaModel {
            public var currentPage: Int32?

            public var pageSize: Int32?

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
                if self.currentPage != nil {
                    map["current_page"] = self.currentPage!
                }
                if self.pageSize != nil {
                    map["page_size"] = self.pageSize!
                }
                if self.totalCount != nil {
                    map["total_count"] = self.totalCount!
                }
                if self.totalPage != nil {
                    map["total_page"] = self.totalPage!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("current_page") && dict["current_page"] != nil {
                    self.currentPage = dict["current_page"] as! Int32
                }
                if dict.keys.contains("page_size") && dict["page_size"] != nil {
                    self.pageSize = dict["page_size"] as! Int32
                }
                if dict.keys.contains("total_count") && dict["total_count"] != nil {
                    self.totalCount = dict["total_count"] as! Int32
                }
                if dict.keys.contains("total_page") && dict["total_page"] != nil {
                    self.totalPage = dict["total_page"] as! Int32
                }
            }
        }
        public var list: [ChangeDetailListOfBuyerResponseBody.Data.List]?

        public var pagination: ChangeDetailListOfBuyerResponseBody.Data.Pagination?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.pagination?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["list"] = tmp
            }
            if self.pagination != nil {
                map["pagination"] = self.pagination?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("list") && dict["list"] != nil {
                var tmp : [ChangeDetailListOfBuyerResponseBody.Data.List] = []
                for v in dict["list"] as! [Any] {
                    var model = ChangeDetailListOfBuyerResponseBody.Data.List()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.list = tmp
            }
            if dict.keys.contains("pagination") && dict["pagination"] != nil {
                var model = ChangeDetailListOfBuyerResponseBody.Data.Pagination()
                model.fromMap(dict["pagination"] as! [String: Any])
                self.pagination = model
            }
        }
    }
    public var requestId: String?

    public var data: ChangeDetailListOfBuyerResponseBody.Data?

    public var errorCode: String?

    public var errorData: Any?

    public var errorMsg: String?

    public var status: Int32?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errorCode != nil {
            map["error_code"] = self.errorCode!
        }
        if self.errorData != nil {
            map["error_data"] = self.errorData!
        }
        if self.errorMsg != nil {
            map["error_msg"] = self.errorMsg!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = ChangeDetailListOfBuyerResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("error_code") && dict["error_code"] != nil {
            self.errorCode = dict["error_code"] as! String
        }
        if dict.keys.contains("error_data") && dict["error_data"] != nil {
            self.errorData = dict["error_data"] as! Any
        }
        if dict.keys.contains("error_msg") && dict["error_msg"] != nil {
            self.errorMsg = dict["error_msg"] as! String
        }
        if dict.keys.contains("status") && dict["status"] != nil {
            self.status = dict["status"] as! Int32
        }
        if dict.keys.contains("success") && dict["success"] != nil {
            self.success = dict["success"] as! Bool
        }
    }
}

public class ChangeDetailListOfBuyerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChangeDetailListOfBuyerResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ChangeDetailListOfBuyerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ChangeDetailListOfOrderNumHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xAcsAirticketAccessToken: String?

    public var xAcsAirticketLanguage: String?

    public override init() {
        super.init()
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
        if self.xAcsAirticketAccessToken != nil {
            map["x-acs-airticket-access-token"] = self.xAcsAirticketAccessToken!
        }
        if self.xAcsAirticketLanguage != nil {
            map["x-acs-airticket-language"] = self.xAcsAirticketLanguage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("x-acs-airticket-access-token") && dict["x-acs-airticket-access-token"] != nil {
            self.xAcsAirticketAccessToken = dict["x-acs-airticket-access-token"] as! String
        }
        if dict.keys.contains("x-acs-airticket-language") && dict["x-acs-airticket-language"] != nil {
            self.xAcsAirticketLanguage = dict["x-acs-airticket-language"] as! String
        }
    }
}

public class ChangeDetailListOfOrderNumRequest : Tea.TeaModel {
    public var orderNum: Int64?

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
        if self.orderNum != nil {
            map["order_num"] = self.orderNum!
        }
        if self.pageIndex != nil {
            map["page_index"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["page_size"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("order_num") && dict["order_num"] != nil {
            self.orderNum = dict["order_num"] as! Int64
        }
        if dict.keys.contains("page_index") && dict["page_index"] != nil {
            self.pageIndex = dict["page_index"] as! Int32
        }
        if dict.keys.contains("page_size") && dict["page_size"] != nil {
            self.pageSize = dict["page_size"] as! Int32
        }
    }
}

public class ChangeDetailListOfOrderNumResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public class ChangeFeeDetails : Tea.TeaModel {
                public class ChangeFee : Tea.TeaModel {
                    public var serviceFee: Double?

                    public var taxFee: Double?

                    public var upgradeFee: Double?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.serviceFee != nil {
                            map["service_fee"] = self.serviceFee!
                        }
                        if self.taxFee != nil {
                            map["tax_fee"] = self.taxFee!
                        }
                        if self.upgradeFee != nil {
                            map["upgrade_fee"] = self.upgradeFee!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("service_fee") && dict["service_fee"] != nil {
                            self.serviceFee = dict["service_fee"] as! Double
                        }
                        if dict.keys.contains("tax_fee") && dict["tax_fee"] != nil {
                            self.taxFee = dict["tax_fee"] as! Double
                        }
                        if dict.keys.contains("upgrade_fee") && dict["upgrade_fee"] != nil {
                            self.upgradeFee = dict["upgrade_fee"] as! Double
                        }
                    }
                }
                public class Passenger : Tea.TeaModel {
                    public var document: String?

                    public var firstName: String?

                    public var lastName: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.document != nil {
                            map["document"] = self.document!
                        }
                        if self.firstName != nil {
                            map["first_name"] = self.firstName!
                        }
                        if self.lastName != nil {
                            map["last_name"] = self.lastName!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("document") && dict["document"] != nil {
                            self.document = dict["document"] as! String
                        }
                        if dict.keys.contains("first_name") && dict["first_name"] != nil {
                            self.firstName = dict["first_name"] as! String
                        }
                        if dict.keys.contains("last_name") && dict["last_name"] != nil {
                            self.lastName = dict["last_name"] as! String
                        }
                    }
                }
                public var changeFee: ChangeDetailListOfOrderNumResponseBody.Data.List.ChangeFeeDetails.ChangeFee?

                public var passenger: ChangeDetailListOfOrderNumResponseBody.Data.List.ChangeFeeDetails.Passenger?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.changeFee?.validate()
                    try self.passenger?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.changeFee != nil {
                        map["change_fee"] = self.changeFee?.toMap()
                    }
                    if self.passenger != nil {
                        map["passenger"] = self.passenger?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("change_fee") && dict["change_fee"] != nil {
                        var model = ChangeDetailListOfOrderNumResponseBody.Data.List.ChangeFeeDetails.ChangeFee()
                        model.fromMap(dict["change_fee"] as! [String: Any])
                        self.changeFee = model
                    }
                    if dict.keys.contains("passenger") && dict["passenger"] != nil {
                        var model = ChangeDetailListOfOrderNumResponseBody.Data.List.ChangeFeeDetails.Passenger()
                        model.fromMap(dict["passenger"] as! [String: Any])
                        self.passenger = model
                    }
                }
            }
            public class ChangePassengers : Tea.TeaModel {
                public var document: String?

                public var firstName: String?

                public var lastName: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.document != nil {
                        map["document"] = self.document!
                    }
                    if self.firstName != nil {
                        map["first_name"] = self.firstName!
                    }
                    if self.lastName != nil {
                        map["last_name"] = self.lastName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("document") && dict["document"] != nil {
                        self.document = dict["document"] as! String
                    }
                    if dict.keys.contains("first_name") && dict["first_name"] != nil {
                        self.firstName = dict["first_name"] as! String
                    }
                    if dict.keys.contains("last_name") && dict["last_name"] != nil {
                        self.lastName = dict["last_name"] as! String
                    }
                }
            }
            public class ChangedJourneys : Tea.TeaModel {
                public class SegmentList : Tea.TeaModel {
                    public var arrivalAirport: String?

                    public var arrivalCity: String?

                    public var arrivalTerminal: String?

                    public var arrivalTime: String?

                    public var availability: String?

                    public var cabin: String?

                    public var cabinClass: String?

                    public var codeShare: Bool?

                    public var departureAirport: String?

                    public var departureCity: String?

                    public var departureTerminal: String?

                    public var departureTime: String?

                    public var equipType: String?

                    public var flightDuration: Int32?

                    public var marketingAirline: String?

                    public var marketingFlightNo: String?

                    public var marketingFlightNoInt: Int32?

                    public var operatingAirline: String?

                    public var operatingFlightNo: String?

                    public var segmentId: String?

                    public var stopCityList: String?

                    public var stopQuantity: Int32?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.arrivalAirport != nil {
                            map["arrival_airport"] = self.arrivalAirport!
                        }
                        if self.arrivalCity != nil {
                            map["arrival_city"] = self.arrivalCity!
                        }
                        if self.arrivalTerminal != nil {
                            map["arrival_terminal"] = self.arrivalTerminal!
                        }
                        if self.arrivalTime != nil {
                            map["arrival_time"] = self.arrivalTime!
                        }
                        if self.availability != nil {
                            map["availability"] = self.availability!
                        }
                        if self.cabin != nil {
                            map["cabin"] = self.cabin!
                        }
                        if self.cabinClass != nil {
                            map["cabin_class"] = self.cabinClass!
                        }
                        if self.codeShare != nil {
                            map["code_share"] = self.codeShare!
                        }
                        if self.departureAirport != nil {
                            map["departure_airport"] = self.departureAirport!
                        }
                        if self.departureCity != nil {
                            map["departure_city"] = self.departureCity!
                        }
                        if self.departureTerminal != nil {
                            map["departure_terminal"] = self.departureTerminal!
                        }
                        if self.departureTime != nil {
                            map["departure_time"] = self.departureTime!
                        }
                        if self.equipType != nil {
                            map["equip_type"] = self.equipType!
                        }
                        if self.flightDuration != nil {
                            map["flight_duration"] = self.flightDuration!
                        }
                        if self.marketingAirline != nil {
                            map["marketing_airline"] = self.marketingAirline!
                        }
                        if self.marketingFlightNo != nil {
                            map["marketing_flight_no"] = self.marketingFlightNo!
                        }
                        if self.marketingFlightNoInt != nil {
                            map["marketing_flight_no_int"] = self.marketingFlightNoInt!
                        }
                        if self.operatingAirline != nil {
                            map["operating_airline"] = self.operatingAirline!
                        }
                        if self.operatingFlightNo != nil {
                            map["operating_flight_no"] = self.operatingFlightNo!
                        }
                        if self.segmentId != nil {
                            map["segment_id"] = self.segmentId!
                        }
                        if self.stopCityList != nil {
                            map["stop_city_list"] = self.stopCityList!
                        }
                        if self.stopQuantity != nil {
                            map["stop_quantity"] = self.stopQuantity!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("arrival_airport") && dict["arrival_airport"] != nil {
                            self.arrivalAirport = dict["arrival_airport"] as! String
                        }
                        if dict.keys.contains("arrival_city") && dict["arrival_city"] != nil {
                            self.arrivalCity = dict["arrival_city"] as! String
                        }
                        if dict.keys.contains("arrival_terminal") && dict["arrival_terminal"] != nil {
                            self.arrivalTerminal = dict["arrival_terminal"] as! String
                        }
                        if dict.keys.contains("arrival_time") && dict["arrival_time"] != nil {
                            self.arrivalTime = dict["arrival_time"] as! String
                        }
                        if dict.keys.contains("availability") && dict["availability"] != nil {
                            self.availability = dict["availability"] as! String
                        }
                        if dict.keys.contains("cabin") && dict["cabin"] != nil {
                            self.cabin = dict["cabin"] as! String
                        }
                        if dict.keys.contains("cabin_class") && dict["cabin_class"] != nil {
                            self.cabinClass = dict["cabin_class"] as! String
                        }
                        if dict.keys.contains("code_share") && dict["code_share"] != nil {
                            self.codeShare = dict["code_share"] as! Bool
                        }
                        if dict.keys.contains("departure_airport") && dict["departure_airport"] != nil {
                            self.departureAirport = dict["departure_airport"] as! String
                        }
                        if dict.keys.contains("departure_city") && dict["departure_city"] != nil {
                            self.departureCity = dict["departure_city"] as! String
                        }
                        if dict.keys.contains("departure_terminal") && dict["departure_terminal"] != nil {
                            self.departureTerminal = dict["departure_terminal"] as! String
                        }
                        if dict.keys.contains("departure_time") && dict["departure_time"] != nil {
                            self.departureTime = dict["departure_time"] as! String
                        }
                        if dict.keys.contains("equip_type") && dict["equip_type"] != nil {
                            self.equipType = dict["equip_type"] as! String
                        }
                        if dict.keys.contains("flight_duration") && dict["flight_duration"] != nil {
                            self.flightDuration = dict["flight_duration"] as! Int32
                        }
                        if dict.keys.contains("marketing_airline") && dict["marketing_airline"] != nil {
                            self.marketingAirline = dict["marketing_airline"] as! String
                        }
                        if dict.keys.contains("marketing_flight_no") && dict["marketing_flight_no"] != nil {
                            self.marketingFlightNo = dict["marketing_flight_no"] as! String
                        }
                        if dict.keys.contains("marketing_flight_no_int") && dict["marketing_flight_no_int"] != nil {
                            self.marketingFlightNoInt = dict["marketing_flight_no_int"] as! Int32
                        }
                        if dict.keys.contains("operating_airline") && dict["operating_airline"] != nil {
                            self.operatingAirline = dict["operating_airline"] as! String
                        }
                        if dict.keys.contains("operating_flight_no") && dict["operating_flight_no"] != nil {
                            self.operatingFlightNo = dict["operating_flight_no"] as! String
                        }
                        if dict.keys.contains("segment_id") && dict["segment_id"] != nil {
                            self.segmentId = dict["segment_id"] as! String
                        }
                        if dict.keys.contains("stop_city_list") && dict["stop_city_list"] != nil {
                            self.stopCityList = dict["stop_city_list"] as! String
                        }
                        if dict.keys.contains("stop_quantity") && dict["stop_quantity"] != nil {
                            self.stopQuantity = dict["stop_quantity"] as! Int32
                        }
                    }
                }
                public var segmentList: [ChangeDetailListOfOrderNumResponseBody.Data.List.ChangedJourneys.SegmentList]?

                public var transferCount: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.segmentList != nil {
                        var tmp : [Any] = []
                        for k in self.segmentList! {
                            tmp.append(k.toMap())
                        }
                        map["segment_list"] = tmp
                    }
                    if self.transferCount != nil {
                        map["transfer_count"] = self.transferCount!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("segment_list") && dict["segment_list"] != nil {
                        var tmp : [ChangeDetailListOfOrderNumResponseBody.Data.List.ChangedJourneys.SegmentList] = []
                        for v in dict["segment_list"] as! [Any] {
                            var model = ChangeDetailListOfOrderNumResponseBody.Data.List.ChangedJourneys.SegmentList()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.segmentList = tmp
                    }
                    if dict.keys.contains("transfer_count") && dict["transfer_count"] != nil {
                        self.transferCount = dict["transfer_count"] as! Int32
                    }
                }
            }
            public class Contact : Tea.TeaModel {
                public var email: String?

                public var mobileCountryCode: String?

                public var mobilePhoneNum: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.email != nil {
                        map["email"] = self.email!
                    }
                    if self.mobileCountryCode != nil {
                        map["mobile_country_code"] = self.mobileCountryCode!
                    }
                    if self.mobilePhoneNum != nil {
                        map["mobile_phone_num"] = self.mobilePhoneNum!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("email") && dict["email"] != nil {
                        self.email = dict["email"] as! String
                    }
                    if dict.keys.contains("mobile_country_code") && dict["mobile_country_code"] != nil {
                        self.mobileCountryCode = dict["mobile_country_code"] as! String
                    }
                    if dict.keys.contains("mobile_phone_num") && dict["mobile_phone_num"] != nil {
                        self.mobilePhoneNum = dict["mobile_phone_num"] as! String
                    }
                }
            }
            public class LastJourneys : Tea.TeaModel {
                public class SegmentList : Tea.TeaModel {
                    public var arrivalAirport: String?

                    public var arrivalCity: String?

                    public var arrivalTerminal: String?

                    public var arrivalTime: String?

                    public var availability: String?

                    public var cabin: String?

                    public var cabinClass: String?

                    public var codeShare: Bool?

                    public var departureAirport: String?

                    public var departureCity: String?

                    public var departureTerminal: String?

                    public var departureTime: String?

                    public var equipType: String?

                    public var flightDuration: Int32?

                    public var marketingAirline: String?

                    public var marketingFlightNo: String?

                    public var marketingFlightNoInt: Int32?

                    public var operatingAirline: String?

                    public var operatingFlightNo: String?

                    public var segmentId: String?

                    public var stopCityList: String?

                    public var stopQuantity: Int32?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.arrivalAirport != nil {
                            map["arrival_airport"] = self.arrivalAirport!
                        }
                        if self.arrivalCity != nil {
                            map["arrival_city"] = self.arrivalCity!
                        }
                        if self.arrivalTerminal != nil {
                            map["arrival_terminal"] = self.arrivalTerminal!
                        }
                        if self.arrivalTime != nil {
                            map["arrival_time"] = self.arrivalTime!
                        }
                        if self.availability != nil {
                            map["availability"] = self.availability!
                        }
                        if self.cabin != nil {
                            map["cabin"] = self.cabin!
                        }
                        if self.cabinClass != nil {
                            map["cabin_class"] = self.cabinClass!
                        }
                        if self.codeShare != nil {
                            map["code_share"] = self.codeShare!
                        }
                        if self.departureAirport != nil {
                            map["departure_airport"] = self.departureAirport!
                        }
                        if self.departureCity != nil {
                            map["departure_city"] = self.departureCity!
                        }
                        if self.departureTerminal != nil {
                            map["departure_terminal"] = self.departureTerminal!
                        }
                        if self.departureTime != nil {
                            map["departure_time"] = self.departureTime!
                        }
                        if self.equipType != nil {
                            map["equip_type"] = self.equipType!
                        }
                        if self.flightDuration != nil {
                            map["flight_duration"] = self.flightDuration!
                        }
                        if self.marketingAirline != nil {
                            map["marketing_airline"] = self.marketingAirline!
                        }
                        if self.marketingFlightNo != nil {
                            map["marketing_flight_no"] = self.marketingFlightNo!
                        }
                        if self.marketingFlightNoInt != nil {
                            map["marketing_flight_no_int"] = self.marketingFlightNoInt!
                        }
                        if self.operatingAirline != nil {
                            map["operating_airline"] = self.operatingAirline!
                        }
                        if self.operatingFlightNo != nil {
                            map["operating_flight_no"] = self.operatingFlightNo!
                        }
                        if self.segmentId != nil {
                            map["segment_id"] = self.segmentId!
                        }
                        if self.stopCityList != nil {
                            map["stop_city_list"] = self.stopCityList!
                        }
                        if self.stopQuantity != nil {
                            map["stop_quantity"] = self.stopQuantity!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("arrival_airport") && dict["arrival_airport"] != nil {
                            self.arrivalAirport = dict["arrival_airport"] as! String
                        }
                        if dict.keys.contains("arrival_city") && dict["arrival_city"] != nil {
                            self.arrivalCity = dict["arrival_city"] as! String
                        }
                        if dict.keys.contains("arrival_terminal") && dict["arrival_terminal"] != nil {
                            self.arrivalTerminal = dict["arrival_terminal"] as! String
                        }
                        if dict.keys.contains("arrival_time") && dict["arrival_time"] != nil {
                            self.arrivalTime = dict["arrival_time"] as! String
                        }
                        if dict.keys.contains("availability") && dict["availability"] != nil {
                            self.availability = dict["availability"] as! String
                        }
                        if dict.keys.contains("cabin") && dict["cabin"] != nil {
                            self.cabin = dict["cabin"] as! String
                        }
                        if dict.keys.contains("cabin_class") && dict["cabin_class"] != nil {
                            self.cabinClass = dict["cabin_class"] as! String
                        }
                        if dict.keys.contains("code_share") && dict["code_share"] != nil {
                            self.codeShare = dict["code_share"] as! Bool
                        }
                        if dict.keys.contains("departure_airport") && dict["departure_airport"] != nil {
                            self.departureAirport = dict["departure_airport"] as! String
                        }
                        if dict.keys.contains("departure_city") && dict["departure_city"] != nil {
                            self.departureCity = dict["departure_city"] as! String
                        }
                        if dict.keys.contains("departure_terminal") && dict["departure_terminal"] != nil {
                            self.departureTerminal = dict["departure_terminal"] as! String
                        }
                        if dict.keys.contains("departure_time") && dict["departure_time"] != nil {
                            self.departureTime = dict["departure_time"] as! String
                        }
                        if dict.keys.contains("equip_type") && dict["equip_type"] != nil {
                            self.equipType = dict["equip_type"] as! String
                        }
                        if dict.keys.contains("flight_duration") && dict["flight_duration"] != nil {
                            self.flightDuration = dict["flight_duration"] as! Int32
                        }
                        if dict.keys.contains("marketing_airline") && dict["marketing_airline"] != nil {
                            self.marketingAirline = dict["marketing_airline"] as! String
                        }
                        if dict.keys.contains("marketing_flight_no") && dict["marketing_flight_no"] != nil {
                            self.marketingFlightNo = dict["marketing_flight_no"] as! String
                        }
                        if dict.keys.contains("marketing_flight_no_int") && dict["marketing_flight_no_int"] != nil {
                            self.marketingFlightNoInt = dict["marketing_flight_no_int"] as! Int32
                        }
                        if dict.keys.contains("operating_airline") && dict["operating_airline"] != nil {
                            self.operatingAirline = dict["operating_airline"] as! String
                        }
                        if dict.keys.contains("operating_flight_no") && dict["operating_flight_no"] != nil {
                            self.operatingFlightNo = dict["operating_flight_no"] as! String
                        }
                        if dict.keys.contains("segment_id") && dict["segment_id"] != nil {
                            self.segmentId = dict["segment_id"] as! String
                        }
                        if dict.keys.contains("stop_city_list") && dict["stop_city_list"] != nil {
                            self.stopCityList = dict["stop_city_list"] as! String
                        }
                        if dict.keys.contains("stop_quantity") && dict["stop_quantity"] != nil {
                            self.stopQuantity = dict["stop_quantity"] as! Int32
                        }
                    }
                }
                public var segmentList: [ChangeDetailListOfOrderNumResponseBody.Data.List.LastJourneys.SegmentList]?

                public var transferCount: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.segmentList != nil {
                        var tmp : [Any] = []
                        for k in self.segmentList! {
                            tmp.append(k.toMap())
                        }
                        map["segment_list"] = tmp
                    }
                    if self.transferCount != nil {
                        map["transfer_count"] = self.transferCount!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("segment_list") && dict["segment_list"] != nil {
                        var tmp : [ChangeDetailListOfOrderNumResponseBody.Data.List.LastJourneys.SegmentList] = []
                        for v in dict["segment_list"] as! [Any] {
                            var model = ChangeDetailListOfOrderNumResponseBody.Data.List.LastJourneys.SegmentList()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.segmentList = tmp
                    }
                    if dict.keys.contains("transfer_count") && dict["transfer_count"] != nil {
                        self.transferCount = dict["transfer_count"] as! Int32
                    }
                }
            }
            public class OriginalJourneys : Tea.TeaModel {
                public class SegmentList : Tea.TeaModel {
                    public var arrivalAirport: String?

                    public var arrivalCity: String?

                    public var arrivalTerminal: String?

                    public var arrivalTime: String?

                    public var availability: String?

                    public var cabin: String?

                    public var cabinClass: String?

                    public var codeShare: Bool?

                    public var departureAirport: String?

                    public var departureCity: String?

                    public var departureTerminal: String?

                    public var departureTime: String?

                    public var equipType: String?

                    public var flightDuration: Int32?

                    public var marketingAirline: String?

                    public var marketingFlightNo: String?

                    public var marketingFlightNoInt: Int32?

                    public var operatingAirline: String?

                    public var operatingFlightNo: String?

                    public var segmentId: String?

                    public var stopCityList: String?

                    public var stopQuantity: Int32?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.arrivalAirport != nil {
                            map["arrival_airport"] = self.arrivalAirport!
                        }
                        if self.arrivalCity != nil {
                            map["arrival_city"] = self.arrivalCity!
                        }
                        if self.arrivalTerminal != nil {
                            map["arrival_terminal"] = self.arrivalTerminal!
                        }
                        if self.arrivalTime != nil {
                            map["arrival_time"] = self.arrivalTime!
                        }
                        if self.availability != nil {
                            map["availability"] = self.availability!
                        }
                        if self.cabin != nil {
                            map["cabin"] = self.cabin!
                        }
                        if self.cabinClass != nil {
                            map["cabin_class"] = self.cabinClass!
                        }
                        if self.codeShare != nil {
                            map["code_share"] = self.codeShare!
                        }
                        if self.departureAirport != nil {
                            map["departure_airport"] = self.departureAirport!
                        }
                        if self.departureCity != nil {
                            map["departure_city"] = self.departureCity!
                        }
                        if self.departureTerminal != nil {
                            map["departure_terminal"] = self.departureTerminal!
                        }
                        if self.departureTime != nil {
                            map["departure_time"] = self.departureTime!
                        }
                        if self.equipType != nil {
                            map["equip_type"] = self.equipType!
                        }
                        if self.flightDuration != nil {
                            map["flight_duration"] = self.flightDuration!
                        }
                        if self.marketingAirline != nil {
                            map["marketing_airline"] = self.marketingAirline!
                        }
                        if self.marketingFlightNo != nil {
                            map["marketing_flight_no"] = self.marketingFlightNo!
                        }
                        if self.marketingFlightNoInt != nil {
                            map["marketing_flight_no_int"] = self.marketingFlightNoInt!
                        }
                        if self.operatingAirline != nil {
                            map["operating_airline"] = self.operatingAirline!
                        }
                        if self.operatingFlightNo != nil {
                            map["operating_flight_no"] = self.operatingFlightNo!
                        }
                        if self.segmentId != nil {
                            map["segment_id"] = self.segmentId!
                        }
                        if self.stopCityList != nil {
                            map["stop_city_list"] = self.stopCityList!
                        }
                        if self.stopQuantity != nil {
                            map["stop_quantity"] = self.stopQuantity!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("arrival_airport") && dict["arrival_airport"] != nil {
                            self.arrivalAirport = dict["arrival_airport"] as! String
                        }
                        if dict.keys.contains("arrival_city") && dict["arrival_city"] != nil {
                            self.arrivalCity = dict["arrival_city"] as! String
                        }
                        if dict.keys.contains("arrival_terminal") && dict["arrival_terminal"] != nil {
                            self.arrivalTerminal = dict["arrival_terminal"] as! String
                        }
                        if dict.keys.contains("arrival_time") && dict["arrival_time"] != nil {
                            self.arrivalTime = dict["arrival_time"] as! String
                        }
                        if dict.keys.contains("availability") && dict["availability"] != nil {
                            self.availability = dict["availability"] as! String
                        }
                        if dict.keys.contains("cabin") && dict["cabin"] != nil {
                            self.cabin = dict["cabin"] as! String
                        }
                        if dict.keys.contains("cabin_class") && dict["cabin_class"] != nil {
                            self.cabinClass = dict["cabin_class"] as! String
                        }
                        if dict.keys.contains("code_share") && dict["code_share"] != nil {
                            self.codeShare = dict["code_share"] as! Bool
                        }
                        if dict.keys.contains("departure_airport") && dict["departure_airport"] != nil {
                            self.departureAirport = dict["departure_airport"] as! String
                        }
                        if dict.keys.contains("departure_city") && dict["departure_city"] != nil {
                            self.departureCity = dict["departure_city"] as! String
                        }
                        if dict.keys.contains("departure_terminal") && dict["departure_terminal"] != nil {
                            self.departureTerminal = dict["departure_terminal"] as! String
                        }
                        if dict.keys.contains("departure_time") && dict["departure_time"] != nil {
                            self.departureTime = dict["departure_time"] as! String
                        }
                        if dict.keys.contains("equip_type") && dict["equip_type"] != nil {
                            self.equipType = dict["equip_type"] as! String
                        }
                        if dict.keys.contains("flight_duration") && dict["flight_duration"] != nil {
                            self.flightDuration = dict["flight_duration"] as! Int32
                        }
                        if dict.keys.contains("marketing_airline") && dict["marketing_airline"] != nil {
                            self.marketingAirline = dict["marketing_airline"] as! String
                        }
                        if dict.keys.contains("marketing_flight_no") && dict["marketing_flight_no"] != nil {
                            self.marketingFlightNo = dict["marketing_flight_no"] as! String
                        }
                        if dict.keys.contains("marketing_flight_no_int") && dict["marketing_flight_no_int"] != nil {
                            self.marketingFlightNoInt = dict["marketing_flight_no_int"] as! Int32
                        }
                        if dict.keys.contains("operating_airline") && dict["operating_airline"] != nil {
                            self.operatingAirline = dict["operating_airline"] as! String
                        }
                        if dict.keys.contains("operating_flight_no") && dict["operating_flight_no"] != nil {
                            self.operatingFlightNo = dict["operating_flight_no"] as! String
                        }
                        if dict.keys.contains("segment_id") && dict["segment_id"] != nil {
                            self.segmentId = dict["segment_id"] as! String
                        }
                        if dict.keys.contains("stop_city_list") && dict["stop_city_list"] != nil {
                            self.stopCityList = dict["stop_city_list"] as! String
                        }
                        if dict.keys.contains("stop_quantity") && dict["stop_quantity"] != nil {
                            self.stopQuantity = dict["stop_quantity"] as! Int32
                        }
                    }
                }
                public var segmentList: [ChangeDetailListOfOrderNumResponseBody.Data.List.OriginalJourneys.SegmentList]?

                public var transferCount: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.segmentList != nil {
                        var tmp : [Any] = []
                        for k in self.segmentList! {
                            tmp.append(k.toMap())
                        }
                        map["segment_list"] = tmp
                    }
                    if self.transferCount != nil {
                        map["transfer_count"] = self.transferCount!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("segment_list") && dict["segment_list"] != nil {
                        var tmp : [ChangeDetailListOfOrderNumResponseBody.Data.List.OriginalJourneys.SegmentList] = []
                        for v in dict["segment_list"] as! [Any] {
                            var model = ChangeDetailListOfOrderNumResponseBody.Data.List.OriginalJourneys.SegmentList()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.segmentList = tmp
                    }
                    if dict.keys.contains("transfer_count") && dict["transfer_count"] != nil {
                        self.transferCount = dict["transfer_count"] as! Int32
                    }
                }
            }
            public var changeFeeDetails: [ChangeDetailListOfOrderNumResponseBody.Data.List.ChangeFeeDetails]?

            public var changeOrderNum: Int64?

            public var changePassengers: [ChangeDetailListOfOrderNumResponseBody.Data.List.ChangePassengers]?

            public var changeReasonType: Int32?

            public var changedJourneys: [ChangeDetailListOfOrderNumResponseBody.Data.List.ChangedJourneys]?

            public var closeReason: String?

            public var closeUtcTime: Int64?

            public var contact: ChangeDetailListOfOrderNumResponseBody.Data.List.Contact?

            public var createUtcTime: Int64?

            public var lastConfirmUtcTime: Int64?

            public var lastJourneys: [ChangeDetailListOfOrderNumResponseBody.Data.List.LastJourneys]?

            public var orderNum: Int64?

            public var orderStatus: Int32?

            public var originalJourneys: [ChangeDetailListOfOrderNumResponseBody.Data.List.OriginalJourneys]?

            public var payStatus: Int32?

            public var paySuccessUtcTime: Int64?

            public var totalAmount: Double?

            public var transactionNo: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.contact?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.changeFeeDetails != nil {
                    var tmp : [Any] = []
                    for k in self.changeFeeDetails! {
                        tmp.append(k.toMap())
                    }
                    map["change_fee_details"] = tmp
                }
                if self.changeOrderNum != nil {
                    map["change_order_num"] = self.changeOrderNum!
                }
                if self.changePassengers != nil {
                    var tmp : [Any] = []
                    for k in self.changePassengers! {
                        tmp.append(k.toMap())
                    }
                    map["change_passengers"] = tmp
                }
                if self.changeReasonType != nil {
                    map["change_reason_type"] = self.changeReasonType!
                }
                if self.changedJourneys != nil {
                    var tmp : [Any] = []
                    for k in self.changedJourneys! {
                        tmp.append(k.toMap())
                    }
                    map["changed_journeys"] = tmp
                }
                if self.closeReason != nil {
                    map["close_reason"] = self.closeReason!
                }
                if self.closeUtcTime != nil {
                    map["close_utc_time"] = self.closeUtcTime!
                }
                if self.contact != nil {
                    map["contact"] = self.contact?.toMap()
                }
                if self.createUtcTime != nil {
                    map["create_utc_time"] = self.createUtcTime!
                }
                if self.lastConfirmUtcTime != nil {
                    map["last_confirm_utc_time"] = self.lastConfirmUtcTime!
                }
                if self.lastJourneys != nil {
                    var tmp : [Any] = []
                    for k in self.lastJourneys! {
                        tmp.append(k.toMap())
                    }
                    map["last_journeys"] = tmp
                }
                if self.orderNum != nil {
                    map["order_num"] = self.orderNum!
                }
                if self.orderStatus != nil {
                    map["order_status"] = self.orderStatus!
                }
                if self.originalJourneys != nil {
                    var tmp : [Any] = []
                    for k in self.originalJourneys! {
                        tmp.append(k.toMap())
                    }
                    map["original_journeys"] = tmp
                }
                if self.payStatus != nil {
                    map["pay_status"] = self.payStatus!
                }
                if self.paySuccessUtcTime != nil {
                    map["pay_success_utc_time"] = self.paySuccessUtcTime!
                }
                if self.totalAmount != nil {
                    map["total_amount"] = self.totalAmount!
                }
                if self.transactionNo != nil {
                    map["transaction_no"] = self.transactionNo!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("change_fee_details") && dict["change_fee_details"] != nil {
                    var tmp : [ChangeDetailListOfOrderNumResponseBody.Data.List.ChangeFeeDetails] = []
                    for v in dict["change_fee_details"] as! [Any] {
                        var model = ChangeDetailListOfOrderNumResponseBody.Data.List.ChangeFeeDetails()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.changeFeeDetails = tmp
                }
                if dict.keys.contains("change_order_num") && dict["change_order_num"] != nil {
                    self.changeOrderNum = dict["change_order_num"] as! Int64
                }
                if dict.keys.contains("change_passengers") && dict["change_passengers"] != nil {
                    var tmp : [ChangeDetailListOfOrderNumResponseBody.Data.List.ChangePassengers] = []
                    for v in dict["change_passengers"] as! [Any] {
                        var model = ChangeDetailListOfOrderNumResponseBody.Data.List.ChangePassengers()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.changePassengers = tmp
                }
                if dict.keys.contains("change_reason_type") && dict["change_reason_type"] != nil {
                    self.changeReasonType = dict["change_reason_type"] as! Int32
                }
                if dict.keys.contains("changed_journeys") && dict["changed_journeys"] != nil {
                    var tmp : [ChangeDetailListOfOrderNumResponseBody.Data.List.ChangedJourneys] = []
                    for v in dict["changed_journeys"] as! [Any] {
                        var model = ChangeDetailListOfOrderNumResponseBody.Data.List.ChangedJourneys()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.changedJourneys = tmp
                }
                if dict.keys.contains("close_reason") && dict["close_reason"] != nil {
                    self.closeReason = dict["close_reason"] as! String
                }
                if dict.keys.contains("close_utc_time") && dict["close_utc_time"] != nil {
                    self.closeUtcTime = dict["close_utc_time"] as! Int64
                }
                if dict.keys.contains("contact") && dict["contact"] != nil {
                    var model = ChangeDetailListOfOrderNumResponseBody.Data.List.Contact()
                    model.fromMap(dict["contact"] as! [String: Any])
                    self.contact = model
                }
                if dict.keys.contains("create_utc_time") && dict["create_utc_time"] != nil {
                    self.createUtcTime = dict["create_utc_time"] as! Int64
                }
                if dict.keys.contains("last_confirm_utc_time") && dict["last_confirm_utc_time"] != nil {
                    self.lastConfirmUtcTime = dict["last_confirm_utc_time"] as! Int64
                }
                if dict.keys.contains("last_journeys") && dict["last_journeys"] != nil {
                    var tmp : [ChangeDetailListOfOrderNumResponseBody.Data.List.LastJourneys] = []
                    for v in dict["last_journeys"] as! [Any] {
                        var model = ChangeDetailListOfOrderNumResponseBody.Data.List.LastJourneys()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.lastJourneys = tmp
                }
                if dict.keys.contains("order_num") && dict["order_num"] != nil {
                    self.orderNum = dict["order_num"] as! Int64
                }
                if dict.keys.contains("order_status") && dict["order_status"] != nil {
                    self.orderStatus = dict["order_status"] as! Int32
                }
                if dict.keys.contains("original_journeys") && dict["original_journeys"] != nil {
                    var tmp : [ChangeDetailListOfOrderNumResponseBody.Data.List.OriginalJourneys] = []
                    for v in dict["original_journeys"] as! [Any] {
                        var model = ChangeDetailListOfOrderNumResponseBody.Data.List.OriginalJourneys()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.originalJourneys = tmp
                }
                if dict.keys.contains("pay_status") && dict["pay_status"] != nil {
                    self.payStatus = dict["pay_status"] as! Int32
                }
                if dict.keys.contains("pay_success_utc_time") && dict["pay_success_utc_time"] != nil {
                    self.paySuccessUtcTime = dict["pay_success_utc_time"] as! Int64
                }
                if dict.keys.contains("total_amount") && dict["total_amount"] != nil {
                    self.totalAmount = dict["total_amount"] as! Double
                }
                if dict.keys.contains("transaction_no") && dict["transaction_no"] != nil {
                    self.transactionNo = dict["transaction_no"] as! String
                }
            }
        }
        public class Pagination : Tea.TeaModel {
            public var currentPage: Int32?

            public var pageSize: Int32?

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
                if self.currentPage != nil {
                    map["current_page"] = self.currentPage!
                }
                if self.pageSize != nil {
                    map["page_size"] = self.pageSize!
                }
                if self.totalCount != nil {
                    map["total_count"] = self.totalCount!
                }
                if self.totalPage != nil {
                    map["total_page"] = self.totalPage!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("current_page") && dict["current_page"] != nil {
                    self.currentPage = dict["current_page"] as! Int32
                }
                if dict.keys.contains("page_size") && dict["page_size"] != nil {
                    self.pageSize = dict["page_size"] as! Int32
                }
                if dict.keys.contains("total_count") && dict["total_count"] != nil {
                    self.totalCount = dict["total_count"] as! Int32
                }
                if dict.keys.contains("total_page") && dict["total_page"] != nil {
                    self.totalPage = dict["total_page"] as! Int32
                }
            }
        }
        public var list: [ChangeDetailListOfOrderNumResponseBody.Data.List]?

        public var pagination: ChangeDetailListOfOrderNumResponseBody.Data.Pagination?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.pagination?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["list"] = tmp
            }
            if self.pagination != nil {
                map["pagination"] = self.pagination?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("list") && dict["list"] != nil {
                var tmp : [ChangeDetailListOfOrderNumResponseBody.Data.List] = []
                for v in dict["list"] as! [Any] {
                    var model = ChangeDetailListOfOrderNumResponseBody.Data.List()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.list = tmp
            }
            if dict.keys.contains("pagination") && dict["pagination"] != nil {
                var model = ChangeDetailListOfOrderNumResponseBody.Data.Pagination()
                model.fromMap(dict["pagination"] as! [String: Any])
                self.pagination = model
            }
        }
    }
    public var requestId: String?

    public var data: ChangeDetailListOfOrderNumResponseBody.Data?

    public var errorCode: String?

    public var errorData: Any?

    public var errorMsg: String?

    public var status: Int32?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errorCode != nil {
            map["error_code"] = self.errorCode!
        }
        if self.errorData != nil {
            map["error_data"] = self.errorData!
        }
        if self.errorMsg != nil {
            map["error_msg"] = self.errorMsg!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = ChangeDetailListOfOrderNumResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("error_code") && dict["error_code"] != nil {
            self.errorCode = dict["error_code"] as! String
        }
        if dict.keys.contains("error_data") && dict["error_data"] != nil {
            self.errorData = dict["error_data"] as! Any
        }
        if dict.keys.contains("error_msg") && dict["error_msg"] != nil {
            self.errorMsg = dict["error_msg"] as! String
        }
        if dict.keys.contains("status") && dict["status"] != nil {
            self.status = dict["status"] as! Int32
        }
        if dict.keys.contains("success") && dict["success"] != nil {
            self.success = dict["success"] as! Bool
        }
    }
}

public class ChangeDetailListOfOrderNumResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChangeDetailListOfOrderNumResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ChangeDetailListOfOrderNumResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class EnrichHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xAcsAirticketAccessToken: String?

    public var xAcsAirticketLanguage: String?

    public override init() {
        super.init()
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
        if self.xAcsAirticketAccessToken != nil {
            map["x-acs-airticket-access-token"] = self.xAcsAirticketAccessToken!
        }
        if self.xAcsAirticketLanguage != nil {
            map["x-acs-airticket-language"] = self.xAcsAirticketLanguage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("x-acs-airticket-access-token") && dict["x-acs-airticket-access-token"] != nil {
            self.xAcsAirticketAccessToken = dict["x-acs-airticket-access-token"] as! String
        }
        if dict.keys.contains("x-acs-airticket-language") && dict["x-acs-airticket-language"] != nil {
            self.xAcsAirticketLanguage = dict["x-acs-airticket-language"] as! String
        }
    }
}

public class EnrichRequest : Tea.TeaModel {
    public class JourneyParamList : Tea.TeaModel {
        public class SegmentParamList : Tea.TeaModel {
            public var arrivalAirport: String?

            public var arrivalCity: String?

            public var cabin: String?

            public var childCabin: String?

            public var departureAirport: String?

            public var departureCity: String?

            public var departureTime: String?

            public var marketingFlightNo: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.arrivalAirport != nil {
                    map["arrival_airport"] = self.arrivalAirport!
                }
                if self.arrivalCity != nil {
                    map["arrival_city"] = self.arrivalCity!
                }
                if self.cabin != nil {
                    map["cabin"] = self.cabin!
                }
                if self.childCabin != nil {
                    map["child_cabin"] = self.childCabin!
                }
                if self.departureAirport != nil {
                    map["departure_airport"] = self.departureAirport!
                }
                if self.departureCity != nil {
                    map["departure_city"] = self.departureCity!
                }
                if self.departureTime != nil {
                    map["departure_time"] = self.departureTime!
                }
                if self.marketingFlightNo != nil {
                    map["marketing_flight_no"] = self.marketingFlightNo!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("arrival_airport") && dict["arrival_airport"] != nil {
                    self.arrivalAirport = dict["arrival_airport"] as! String
                }
                if dict.keys.contains("arrival_city") && dict["arrival_city"] != nil {
                    self.arrivalCity = dict["arrival_city"] as! String
                }
                if dict.keys.contains("cabin") && dict["cabin"] != nil {
                    self.cabin = dict["cabin"] as! String
                }
                if dict.keys.contains("child_cabin") && dict["child_cabin"] != nil {
                    self.childCabin = dict["child_cabin"] as! String
                }
                if dict.keys.contains("departure_airport") && dict["departure_airport"] != nil {
                    self.departureAirport = dict["departure_airport"] as! String
                }
                if dict.keys.contains("departure_city") && dict["departure_city"] != nil {
                    self.departureCity = dict["departure_city"] as! String
                }
                if dict.keys.contains("departure_time") && dict["departure_time"] != nil {
                    self.departureTime = dict["departure_time"] as! String
                }
                if dict.keys.contains("marketing_flight_no") && dict["marketing_flight_no"] != nil {
                    self.marketingFlightNo = dict["marketing_flight_no"] as! String
                }
            }
        }
        public var arrivalCity: String?

        public var departureCity: String?

        public var departureDate: String?

        public var segmentParamList: [EnrichRequest.JourneyParamList.SegmentParamList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.arrivalCity != nil {
                map["arrival_city"] = self.arrivalCity!
            }
            if self.departureCity != nil {
                map["departure_city"] = self.departureCity!
            }
            if self.departureDate != nil {
                map["departure_date"] = self.departureDate!
            }
            if self.segmentParamList != nil {
                var tmp : [Any] = []
                for k in self.segmentParamList! {
                    tmp.append(k.toMap())
                }
                map["segment_param_list"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("arrival_city") && dict["arrival_city"] != nil {
                self.arrivalCity = dict["arrival_city"] as! String
            }
            if dict.keys.contains("departure_city") && dict["departure_city"] != nil {
                self.departureCity = dict["departure_city"] as! String
            }
            if dict.keys.contains("departure_date") && dict["departure_date"] != nil {
                self.departureDate = dict["departure_date"] as! String
            }
            if dict.keys.contains("segment_param_list") && dict["segment_param_list"] != nil {
                var tmp : [EnrichRequest.JourneyParamList.SegmentParamList] = []
                for v in dict["segment_param_list"] as! [Any] {
                    var model = EnrichRequest.JourneyParamList.SegmentParamList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.segmentParamList = tmp
            }
        }
    }
    public var adults: Int32?

    public var cabinClass: String?

    public var children: Int32?

    public var infants: Int32?

    public var journeyParamList: [EnrichRequest.JourneyParamList]?

    public var solutionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.adults != nil {
            map["adults"] = self.adults!
        }
        if self.cabinClass != nil {
            map["cabin_class"] = self.cabinClass!
        }
        if self.children != nil {
            map["children"] = self.children!
        }
        if self.infants != nil {
            map["infants"] = self.infants!
        }
        if self.journeyParamList != nil {
            var tmp : [Any] = []
            for k in self.journeyParamList! {
                tmp.append(k.toMap())
            }
            map["journey_param_list"] = tmp
        }
        if self.solutionId != nil {
            map["solution_id"] = self.solutionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("adults") && dict["adults"] != nil {
            self.adults = dict["adults"] as! Int32
        }
        if dict.keys.contains("cabin_class") && dict["cabin_class"] != nil {
            self.cabinClass = dict["cabin_class"] as! String
        }
        if dict.keys.contains("children") && dict["children"] != nil {
            self.children = dict["children"] as! Int32
        }
        if dict.keys.contains("infants") && dict["infants"] != nil {
            self.infants = dict["infants"] as! Int32
        }
        if dict.keys.contains("journey_param_list") && dict["journey_param_list"] != nil {
            var tmp : [EnrichRequest.JourneyParamList] = []
            for v in dict["journey_param_list"] as! [Any] {
                var model = EnrichRequest.JourneyParamList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.journeyParamList = tmp
        }
        if dict.keys.contains("solution_id") && dict["solution_id"] != nil {
            self.solutionId = dict["solution_id"] as! String
        }
    }
}

public class EnrichShrinkRequest : Tea.TeaModel {
    public var adults: Int32?

    public var cabinClass: String?

    public var children: Int32?

    public var infants: Int32?

    public var journeyParamListShrink: String?

    public var solutionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.adults != nil {
            map["adults"] = self.adults!
        }
        if self.cabinClass != nil {
            map["cabin_class"] = self.cabinClass!
        }
        if self.children != nil {
            map["children"] = self.children!
        }
        if self.infants != nil {
            map["infants"] = self.infants!
        }
        if self.journeyParamListShrink != nil {
            map["journey_param_list"] = self.journeyParamListShrink!
        }
        if self.solutionId != nil {
            map["solution_id"] = self.solutionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("adults") && dict["adults"] != nil {
            self.adults = dict["adults"] as! Int32
        }
        if dict.keys.contains("cabin_class") && dict["cabin_class"] != nil {
            self.cabinClass = dict["cabin_class"] as! String
        }
        if dict.keys.contains("children") && dict["children"] != nil {
            self.children = dict["children"] as! Int32
        }
        if dict.keys.contains("infants") && dict["infants"] != nil {
            self.infants = dict["infants"] as! Int32
        }
        if dict.keys.contains("journey_param_list") && dict["journey_param_list"] != nil {
            self.journeyParamListShrink = dict["journey_param_list"] as! String
        }
        if dict.keys.contains("solution_id") && dict["solution_id"] != nil {
            self.solutionId = dict["solution_id"] as! String
        }
    }
}

public class EnrichResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class SolutionList : Tea.TeaModel {
            public class JourneyList : Tea.TeaModel {
                public class SegmentList : Tea.TeaModel {
                    public var arrivalAirport: String?

                    public var arrivalCity: String?

                    public var arrivalTerminal: String?

                    public var arrivalTime: String?

                    public var availability: String?

                    public var cabin: String?

                    public var cabinClass: String?

                    public var codeShare: Bool?

                    public var departureAirport: String?

                    public var departureCity: String?

                    public var departureTerminal: String?

                    public var departureTime: String?

                    public var equipType: String?

                    public var flightDuration: Int32?

                    public var marketingAirline: String?

                    public var marketingFlightNo: String?

                    public var marketingFlightNoInt: Int32?

                    public var operatingAirline: String?

                    public var operatingFlightNo: String?

                    public var segmentId: String?

                    public var stopCityList: String?

                    public var stopQuantity: Int32?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.arrivalAirport != nil {
                            map["arrival_airport"] = self.arrivalAirport!
                        }
                        if self.arrivalCity != nil {
                            map["arrival_city"] = self.arrivalCity!
                        }
                        if self.arrivalTerminal != nil {
                            map["arrival_terminal"] = self.arrivalTerminal!
                        }
                        if self.arrivalTime != nil {
                            map["arrival_time"] = self.arrivalTime!
                        }
                        if self.availability != nil {
                            map["availability"] = self.availability!
                        }
                        if self.cabin != nil {
                            map["cabin"] = self.cabin!
                        }
                        if self.cabinClass != nil {
                            map["cabin_class"] = self.cabinClass!
                        }
                        if self.codeShare != nil {
                            map["code_share"] = self.codeShare!
                        }
                        if self.departureAirport != nil {
                            map["departure_airport"] = self.departureAirport!
                        }
                        if self.departureCity != nil {
                            map["departure_city"] = self.departureCity!
                        }
                        if self.departureTerminal != nil {
                            map["departure_terminal"] = self.departureTerminal!
                        }
                        if self.departureTime != nil {
                            map["departure_time"] = self.departureTime!
                        }
                        if self.equipType != nil {
                            map["equip_type"] = self.equipType!
                        }
                        if self.flightDuration != nil {
                            map["flight_duration"] = self.flightDuration!
                        }
                        if self.marketingAirline != nil {
                            map["marketing_airline"] = self.marketingAirline!
                        }
                        if self.marketingFlightNo != nil {
                            map["marketing_flight_no"] = self.marketingFlightNo!
                        }
                        if self.marketingFlightNoInt != nil {
                            map["marketing_flight_no_int"] = self.marketingFlightNoInt!
                        }
                        if self.operatingAirline != nil {
                            map["operating_airline"] = self.operatingAirline!
                        }
                        if self.operatingFlightNo != nil {
                            map["operating_flight_no"] = self.operatingFlightNo!
                        }
                        if self.segmentId != nil {
                            map["segment_id"] = self.segmentId!
                        }
                        if self.stopCityList != nil {
                            map["stop_city_list"] = self.stopCityList!
                        }
                        if self.stopQuantity != nil {
                            map["stop_quantity"] = self.stopQuantity!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("arrival_airport") && dict["arrival_airport"] != nil {
                            self.arrivalAirport = dict["arrival_airport"] as! String
                        }
                        if dict.keys.contains("arrival_city") && dict["arrival_city"] != nil {
                            self.arrivalCity = dict["arrival_city"] as! String
                        }
                        if dict.keys.contains("arrival_terminal") && dict["arrival_terminal"] != nil {
                            self.arrivalTerminal = dict["arrival_terminal"] as! String
                        }
                        if dict.keys.contains("arrival_time") && dict["arrival_time"] != nil {
                            self.arrivalTime = dict["arrival_time"] as! String
                        }
                        if dict.keys.contains("availability") && dict["availability"] != nil {
                            self.availability = dict["availability"] as! String
                        }
                        if dict.keys.contains("cabin") && dict["cabin"] != nil {
                            self.cabin = dict["cabin"] as! String
                        }
                        if dict.keys.contains("cabin_class") && dict["cabin_class"] != nil {
                            self.cabinClass = dict["cabin_class"] as! String
                        }
                        if dict.keys.contains("code_share") && dict["code_share"] != nil {
                            self.codeShare = dict["code_share"] as! Bool
                        }
                        if dict.keys.contains("departure_airport") && dict["departure_airport"] != nil {
                            self.departureAirport = dict["departure_airport"] as! String
                        }
                        if dict.keys.contains("departure_city") && dict["departure_city"] != nil {
                            self.departureCity = dict["departure_city"] as! String
                        }
                        if dict.keys.contains("departure_terminal") && dict["departure_terminal"] != nil {
                            self.departureTerminal = dict["departure_terminal"] as! String
                        }
                        if dict.keys.contains("departure_time") && dict["departure_time"] != nil {
                            self.departureTime = dict["departure_time"] as! String
                        }
                        if dict.keys.contains("equip_type") && dict["equip_type"] != nil {
                            self.equipType = dict["equip_type"] as! String
                        }
                        if dict.keys.contains("flight_duration") && dict["flight_duration"] != nil {
                            self.flightDuration = dict["flight_duration"] as! Int32
                        }
                        if dict.keys.contains("marketing_airline") && dict["marketing_airline"] != nil {
                            self.marketingAirline = dict["marketing_airline"] as! String
                        }
                        if dict.keys.contains("marketing_flight_no") && dict["marketing_flight_no"] != nil {
                            self.marketingFlightNo = dict["marketing_flight_no"] as! String
                        }
                        if dict.keys.contains("marketing_flight_no_int") && dict["marketing_flight_no_int"] != nil {
                            self.marketingFlightNoInt = dict["marketing_flight_no_int"] as! Int32
                        }
                        if dict.keys.contains("operating_airline") && dict["operating_airline"] != nil {
                            self.operatingAirline = dict["operating_airline"] as! String
                        }
                        if dict.keys.contains("operating_flight_no") && dict["operating_flight_no"] != nil {
                            self.operatingFlightNo = dict["operating_flight_no"] as! String
                        }
                        if dict.keys.contains("segment_id") && dict["segment_id"] != nil {
                            self.segmentId = dict["segment_id"] as! String
                        }
                        if dict.keys.contains("stop_city_list") && dict["stop_city_list"] != nil {
                            self.stopCityList = dict["stop_city_list"] as! String
                        }
                        if dict.keys.contains("stop_quantity") && dict["stop_quantity"] != nil {
                            self.stopQuantity = dict["stop_quantity"] as! Int32
                        }
                    }
                }
                public var segmentList: [EnrichResponseBody.Data.SolutionList.JourneyList.SegmentList]?

                public var transferCount: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.segmentList != nil {
                        var tmp : [Any] = []
                        for k in self.segmentList! {
                            tmp.append(k.toMap())
                        }
                        map["segment_list"] = tmp
                    }
                    if self.transferCount != nil {
                        map["transfer_count"] = self.transferCount!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("segment_list") && dict["segment_list"] != nil {
                        var tmp : [EnrichResponseBody.Data.SolutionList.JourneyList.SegmentList] = []
                        for v in dict["segment_list"] as! [Any] {
                            var model = EnrichResponseBody.Data.SolutionList.JourneyList.SegmentList()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.segmentList = tmp
                    }
                    if dict.keys.contains("transfer_count") && dict["transfer_count"] != nil {
                        self.transferCount = dict["transfer_count"] as! Int32
                    }
                }
            }
            public class SegmentBaggageCheckInInfoList : Tea.TeaModel {
                public var luggageDirectInfoType: Int32?

                public var segmentIdList: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.luggageDirectInfoType != nil {
                        map["luggage_direct_info_type"] = self.luggageDirectInfoType!
                    }
                    if self.segmentIdList != nil {
                        map["segment_id_list"] = self.segmentIdList!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("luggage_direct_info_type") && dict["luggage_direct_info_type"] != nil {
                        self.luggageDirectInfoType = dict["luggage_direct_info_type"] as! Int32
                    }
                    if dict.keys.contains("segment_id_list") && dict["segment_id_list"] != nil {
                        self.segmentIdList = dict["segment_id_list"] as! [String]
                    }
                }
            }
            public class SegmentBaggageMappingList : Tea.TeaModel {
                public var passengerBaggageAllowanceMapping: [String: DataSolutionListSegmentBaggageMappingListPassengerBaggageAllowanceMappingValue]?

                public var segmentIdList: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.passengerBaggageAllowanceMapping != nil {
                        var tmp : [String: Any] = [:]
                        for (k, v) in self.passengerBaggageAllowanceMapping! {
                            tmp[k] = v.toMap()
                        }
                        map["passenger_baggage_allowance_mapping"] = tmp
                    }
                    if self.segmentIdList != nil {
                        map["segment_id_list"] = self.segmentIdList!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("passenger_baggage_allowance_mapping") && dict["passenger_baggage_allowance_mapping"] != nil {
                        var tmp : [String: DataSolutionListSegmentBaggageMappingListPassengerBaggageAllowanceMappingValue] = [:]
                        for (k, v) in dict["passenger_baggage_allowance_mapping"] as! [String: Any] {
                            if v != nil {
                                var model = DataSolutionListSegmentBaggageMappingListPassengerBaggageAllowanceMappingValue()
                                model.fromMap(v as! [String: Any])
                                tmp[k] = model
                            }
                        }
                        self.passengerBaggageAllowanceMapping = tmp
                    }
                    if dict.keys.contains("segment_id_list") && dict["segment_id_list"] != nil {
                        self.segmentIdList = dict["segment_id_list"] as! [String]
                    }
                }
            }
            public class SegmentRefundChangeRuleMappingList : Tea.TeaModel {
                public var refundChangeRuleMap: [String: DataSolutionListSegmentRefundChangeRuleMappingListRefundChangeRuleMapValue]?

                public var segmentIdList: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.refundChangeRuleMap != nil {
                        var tmp : [String: Any] = [:]
                        for (k, v) in self.refundChangeRuleMap! {
                            tmp[k] = v.toMap()
                        }
                        map["refund_change_rule_map"] = tmp
                    }
                    if self.segmentIdList != nil {
                        map["segment_id_list"] = self.segmentIdList!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("refund_change_rule_map") && dict["refund_change_rule_map"] != nil {
                        var tmp : [String: DataSolutionListSegmentRefundChangeRuleMappingListRefundChangeRuleMapValue] = [:]
                        for (k, v) in dict["refund_change_rule_map"] as! [String: Any] {
                            if v != nil {
                                var model = DataSolutionListSegmentRefundChangeRuleMappingListRefundChangeRuleMapValue()
                                model.fromMap(v as! [String: Any])
                                tmp[k] = model
                            }
                        }
                        self.refundChangeRuleMap = tmp
                    }
                    if dict.keys.contains("segment_id_list") && dict["segment_id_list"] != nil {
                        self.segmentIdList = dict["segment_id_list"] as! [String]
                    }
                }
            }
            public var adultPrice: Double?

            public var adultTax: Double?

            public var childPrice: Double?

            public var childTax: Double?

            public var infantPrice: Double?

            public var infantTax: Double?

            public var journeyList: [EnrichResponseBody.Data.SolutionList.JourneyList]?

            public var productTypeDescription: String?

            public var refundTicketCouponDescription: String?

            public var segmentBaggageCheckInInfoList: [EnrichResponseBody.Data.SolutionList.SegmentBaggageCheckInInfoList]?

            public var segmentBaggageMappingList: [EnrichResponseBody.Data.SolutionList.SegmentBaggageMappingList]?

            public var segmentRefundChangeRuleMappingList: [EnrichResponseBody.Data.SolutionList.SegmentRefundChangeRuleMappingList]?

            public var solutionId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.adultPrice != nil {
                    map["adult_price"] = self.adultPrice!
                }
                if self.adultTax != nil {
                    map["adult_tax"] = self.adultTax!
                }
                if self.childPrice != nil {
                    map["child_price"] = self.childPrice!
                }
                if self.childTax != nil {
                    map["child_tax"] = self.childTax!
                }
                if self.infantPrice != nil {
                    map["infant_price"] = self.infantPrice!
                }
                if self.infantTax != nil {
                    map["infant_tax"] = self.infantTax!
                }
                if self.journeyList != nil {
                    var tmp : [Any] = []
                    for k in self.journeyList! {
                        tmp.append(k.toMap())
                    }
                    map["journey_list"] = tmp
                }
                if self.productTypeDescription != nil {
                    map["product_type_description"] = self.productTypeDescription!
                }
                if self.refundTicketCouponDescription != nil {
                    map["refund_ticket_coupon_description"] = self.refundTicketCouponDescription!
                }
                if self.segmentBaggageCheckInInfoList != nil {
                    var tmp : [Any] = []
                    for k in self.segmentBaggageCheckInInfoList! {
                        tmp.append(k.toMap())
                    }
                    map["segment_baggage_check_in_info_list"] = tmp
                }
                if self.segmentBaggageMappingList != nil {
                    var tmp : [Any] = []
                    for k in self.segmentBaggageMappingList! {
                        tmp.append(k.toMap())
                    }
                    map["segment_baggage_mapping_list"] = tmp
                }
                if self.segmentRefundChangeRuleMappingList != nil {
                    var tmp : [Any] = []
                    for k in self.segmentRefundChangeRuleMappingList! {
                        tmp.append(k.toMap())
                    }
                    map["segment_refund_change_rule_mapping_list"] = tmp
                }
                if self.solutionId != nil {
                    map["solution_id"] = self.solutionId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("adult_price") && dict["adult_price"] != nil {
                    self.adultPrice = dict["adult_price"] as! Double
                }
                if dict.keys.contains("adult_tax") && dict["adult_tax"] != nil {
                    self.adultTax = dict["adult_tax"] as! Double
                }
                if dict.keys.contains("child_price") && dict["child_price"] != nil {
                    self.childPrice = dict["child_price"] as! Double
                }
                if dict.keys.contains("child_tax") && dict["child_tax"] != nil {
                    self.childTax = dict["child_tax"] as! Double
                }
                if dict.keys.contains("infant_price") && dict["infant_price"] != nil {
                    self.infantPrice = dict["infant_price"] as! Double
                }
                if dict.keys.contains("infant_tax") && dict["infant_tax"] != nil {
                    self.infantTax = dict["infant_tax"] as! Double
                }
                if dict.keys.contains("journey_list") && dict["journey_list"] != nil {
                    var tmp : [EnrichResponseBody.Data.SolutionList.JourneyList] = []
                    for v in dict["journey_list"] as! [Any] {
                        var model = EnrichResponseBody.Data.SolutionList.JourneyList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.journeyList = tmp
                }
                if dict.keys.contains("product_type_description") && dict["product_type_description"] != nil {
                    self.productTypeDescription = dict["product_type_description"] as! String
                }
                if dict.keys.contains("refund_ticket_coupon_description") && dict["refund_ticket_coupon_description"] != nil {
                    self.refundTicketCouponDescription = dict["refund_ticket_coupon_description"] as! String
                }
                if dict.keys.contains("segment_baggage_check_in_info_list") && dict["segment_baggage_check_in_info_list"] != nil {
                    var tmp : [EnrichResponseBody.Data.SolutionList.SegmentBaggageCheckInInfoList] = []
                    for v in dict["segment_baggage_check_in_info_list"] as! [Any] {
                        var model = EnrichResponseBody.Data.SolutionList.SegmentBaggageCheckInInfoList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.segmentBaggageCheckInInfoList = tmp
                }
                if dict.keys.contains("segment_baggage_mapping_list") && dict["segment_baggage_mapping_list"] != nil {
                    var tmp : [EnrichResponseBody.Data.SolutionList.SegmentBaggageMappingList] = []
                    for v in dict["segment_baggage_mapping_list"] as! [Any] {
                        var model = EnrichResponseBody.Data.SolutionList.SegmentBaggageMappingList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.segmentBaggageMappingList = tmp
                }
                if dict.keys.contains("segment_refund_change_rule_mapping_list") && dict["segment_refund_change_rule_mapping_list"] != nil {
                    var tmp : [EnrichResponseBody.Data.SolutionList.SegmentRefundChangeRuleMappingList] = []
                    for v in dict["segment_refund_change_rule_mapping_list"] as! [Any] {
                        var model = EnrichResponseBody.Data.SolutionList.SegmentRefundChangeRuleMappingList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.segmentRefundChangeRuleMappingList = tmp
                }
                if dict.keys.contains("solution_id") && dict["solution_id"] != nil {
                    self.solutionId = dict["solution_id"] as! String
                }
            }
        }
        public var solutionList: [EnrichResponseBody.Data.SolutionList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.solutionList != nil {
                var tmp : [Any] = []
                for k in self.solutionList! {
                    tmp.append(k.toMap())
                }
                map["solution_list"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("solution_list") && dict["solution_list"] != nil {
                var tmp : [EnrichResponseBody.Data.SolutionList] = []
                for v in dict["solution_list"] as! [Any] {
                    var model = EnrichResponseBody.Data.SolutionList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.solutionList = tmp
            }
        }
    }
    public var requestId: String?

    public var data: EnrichResponseBody.Data?

    public var errorCode: String?

    public var errorData: Any?

    public var errorMsg: String?

    public var status: Int32?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errorCode != nil {
            map["error_code"] = self.errorCode!
        }
        if self.errorData != nil {
            map["error_data"] = self.errorData!
        }
        if self.errorMsg != nil {
            map["error_msg"] = self.errorMsg!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = EnrichResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("error_code") && dict["error_code"] != nil {
            self.errorCode = dict["error_code"] as! String
        }
        if dict.keys.contains("error_data") && dict["error_data"] != nil {
            self.errorData = dict["error_data"] as! Any
        }
        if dict.keys.contains("error_msg") && dict["error_msg"] != nil {
            self.errorMsg = dict["error_msg"] as! String
        }
        if dict.keys.contains("status") && dict["status"] != nil {
            self.status = dict["status"] as! Int32
        }
        if dict.keys.contains("success") && dict["success"] != nil {
            self.success = dict["success"] as! Bool
        }
    }
}

public class EnrichResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnrichResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = EnrichResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class FileUploadHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xAcsAirticketAccessToken: String?

    public var xAcsAirticketLanguage: String?

    public override init() {
        super.init()
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
        if self.xAcsAirticketAccessToken != nil {
            map["x-acs-airticket-access-token"] = self.xAcsAirticketAccessToken!
        }
        if self.xAcsAirticketLanguage != nil {
            map["x-acs-airticket-language"] = self.xAcsAirticketLanguage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("x-acs-airticket-access-token") && dict["x-acs-airticket-access-token"] != nil {
            self.xAcsAirticketAccessToken = dict["x-acs-airticket-access-token"] as! String
        }
        if dict.keys.contains("x-acs-airticket-language") && dict["x-acs-airticket-language"] != nil {
            self.xAcsAirticketLanguage = dict["x-acs-airticket-language"] as! String
        }
    }
}

public class FileUploadRequest : Tea.TeaModel {
    public var fileContent: String?

    public var orderNum: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fileContent != nil {
            map["file_content"] = self.fileContent!
        }
        if self.orderNum != nil {
            map["order_num"] = self.orderNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("file_content") && dict["file_content"] != nil {
            self.fileContent = dict["file_content"] as! String
        }
        if dict.keys.contains("order_num") && dict["order_num"] != nil {
            self.orderNum = dict["order_num"] as! Int64
        }
    }
}

public class FileUploadResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var uploadedFileUrl: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.uploadedFileUrl != nil {
                map["uploaded_file_url"] = self.uploadedFileUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("uploaded_file_url") && dict["uploaded_file_url"] != nil {
                self.uploadedFileUrl = dict["uploaded_file_url"] as! String
            }
        }
    }
    public var requestId: String?

    public var data: FileUploadResponseBody.Data?

    public var errorCode: String?

    public var errorData: Any?

    public var errorMsg: String?

    public var status: Int32?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errorCode != nil {
            map["error_code"] = self.errorCode!
        }
        if self.errorData != nil {
            map["error_data"] = self.errorData!
        }
        if self.errorMsg != nil {
            map["error_msg"] = self.errorMsg!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = FileUploadResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("error_code") && dict["error_code"] != nil {
            self.errorCode = dict["error_code"] as! String
        }
        if dict.keys.contains("error_data") && dict["error_data"] != nil {
            self.errorData = dict["error_data"] as! Any
        }
        if dict.keys.contains("error_msg") && dict["error_msg"] != nil {
            self.errorMsg = dict["error_msg"] as! String
        }
        if dict.keys.contains("status") && dict["status"] != nil {
            self.status = dict["status"] as! Int32
        }
        if dict.keys.contains("success") && dict["success"] != nil {
            self.success = dict["success"] as! Bool
        }
    }
}

public class FileUploadResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: FileUploadResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = FileUploadResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class FlightChangeOfOrderHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xAcsAirticketAccessToken: String?

    public var xAcsAirticketLanguage: String?

    public override init() {
        super.init()
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
        if self.xAcsAirticketAccessToken != nil {
            map["x-acs-airticket-access-token"] = self.xAcsAirticketAccessToken!
        }
        if self.xAcsAirticketLanguage != nil {
            map["x-acs-airticket-language"] = self.xAcsAirticketLanguage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("x-acs-airticket-access-token") && dict["x-acs-airticket-access-token"] != nil {
            self.xAcsAirticketAccessToken = dict["x-acs-airticket-access-token"] as! String
        }
        if dict.keys.contains("x-acs-airticket-language") && dict["x-acs-airticket-language"] != nil {
            self.xAcsAirticketLanguage = dict["x-acs-airticket-language"] as! String
        }
    }
}

public class FlightChangeOfOrderRequest : Tea.TeaModel {
    public var orderNum: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.orderNum != nil {
            map["order_num"] = self.orderNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("order_num") && dict["order_num"] != nil {
            self.orderNum = dict["order_num"] as! Int64
        }
    }
}

public class FlightChangeOfOrderResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class FlightChangeDetail : Tea.TeaModel {
            public var changeReason: String?

            public var changeTime: String?

            public var changeType: Int32?

            public var newArrivalAirport: String?

            public var newArrivalTime: String?

            public var newDepartureAirport: String?

            public var newDepartureTime: String?

            public var newFlightNo: String?

            public var oldArrivalAirport: String?

            public var oldArrivalTime: String?

            public var oldDepartureAirport: String?

            public var oldDepartureTime: String?

            public var oldFlightNo: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.changeReason != nil {
                    map["change_reason"] = self.changeReason!
                }
                if self.changeTime != nil {
                    map["change_time"] = self.changeTime!
                }
                if self.changeType != nil {
                    map["change_type"] = self.changeType!
                }
                if self.newArrivalAirport != nil {
                    map["new_arrival_airport"] = self.newArrivalAirport!
                }
                if self.newArrivalTime != nil {
                    map["new_arrival_time"] = self.newArrivalTime!
                }
                if self.newDepartureAirport != nil {
                    map["new_departure_airport"] = self.newDepartureAirport!
                }
                if self.newDepartureTime != nil {
                    map["new_departure_time"] = self.newDepartureTime!
                }
                if self.newFlightNo != nil {
                    map["new_flight_no"] = self.newFlightNo!
                }
                if self.oldArrivalAirport != nil {
                    map["old_arrival_airport"] = self.oldArrivalAirport!
                }
                if self.oldArrivalTime != nil {
                    map["old_arrival_time"] = self.oldArrivalTime!
                }
                if self.oldDepartureAirport != nil {
                    map["old_departure_airport"] = self.oldDepartureAirport!
                }
                if self.oldDepartureTime != nil {
                    map["old_departure_time"] = self.oldDepartureTime!
                }
                if self.oldFlightNo != nil {
                    map["old_flight_no"] = self.oldFlightNo!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("change_reason") && dict["change_reason"] != nil {
                    self.changeReason = dict["change_reason"] as! String
                }
                if dict.keys.contains("change_time") && dict["change_time"] != nil {
                    self.changeTime = dict["change_time"] as! String
                }
                if dict.keys.contains("change_type") && dict["change_type"] != nil {
                    self.changeType = dict["change_type"] as! Int32
                }
                if dict.keys.contains("new_arrival_airport") && dict["new_arrival_airport"] != nil {
                    self.newArrivalAirport = dict["new_arrival_airport"] as! String
                }
                if dict.keys.contains("new_arrival_time") && dict["new_arrival_time"] != nil {
                    self.newArrivalTime = dict["new_arrival_time"] as! String
                }
                if dict.keys.contains("new_departure_airport") && dict["new_departure_airport"] != nil {
                    self.newDepartureAirport = dict["new_departure_airport"] as! String
                }
                if dict.keys.contains("new_departure_time") && dict["new_departure_time"] != nil {
                    self.newDepartureTime = dict["new_departure_time"] as! String
                }
                if dict.keys.contains("new_flight_no") && dict["new_flight_no"] != nil {
                    self.newFlightNo = dict["new_flight_no"] as! String
                }
                if dict.keys.contains("old_arrival_airport") && dict["old_arrival_airport"] != nil {
                    self.oldArrivalAirport = dict["old_arrival_airport"] as! String
                }
                if dict.keys.contains("old_arrival_time") && dict["old_arrival_time"] != nil {
                    self.oldArrivalTime = dict["old_arrival_time"] as! String
                }
                if dict.keys.contains("old_departure_airport") && dict["old_departure_airport"] != nil {
                    self.oldDepartureAirport = dict["old_departure_airport"] as! String
                }
                if dict.keys.contains("old_departure_time") && dict["old_departure_time"] != nil {
                    self.oldDepartureTime = dict["old_departure_time"] as! String
                }
                if dict.keys.contains("old_flight_no") && dict["old_flight_no"] != nil {
                    self.oldFlightNo = dict["old_flight_no"] as! String
                }
            }
        }
        public var flightChangeDetail: FlightChangeOfOrderResponseBody.Data.FlightChangeDetail?

        public var orderNum: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.flightChangeDetail?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.flightChangeDetail != nil {
                map["flight_change_detail"] = self.flightChangeDetail?.toMap()
            }
            if self.orderNum != nil {
                map["order_num"] = self.orderNum!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("flight_change_detail") && dict["flight_change_detail"] != nil {
                var model = FlightChangeOfOrderResponseBody.Data.FlightChangeDetail()
                model.fromMap(dict["flight_change_detail"] as! [String: Any])
                self.flightChangeDetail = model
            }
            if dict.keys.contains("order_num") && dict["order_num"] != nil {
                self.orderNum = dict["order_num"] as! Int64
            }
        }
    }
    public var requestId: String?

    public var data: [FlightChangeOfOrderResponseBody.Data]?

    public var errorCode: String?

    public var errorData: Any?

    public var errorMsg: String?

    public var status: Int32?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
        if self.errorCode != nil {
            map["error_code"] = self.errorCode!
        }
        if self.errorData != nil {
            map["error_data"] = self.errorData!
        }
        if self.errorMsg != nil {
            map["error_msg"] = self.errorMsg!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var tmp : [FlightChangeOfOrderResponseBody.Data] = []
            for v in dict["data"] as! [Any] {
                var model = FlightChangeOfOrderResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("error_code") && dict["error_code"] != nil {
            self.errorCode = dict["error_code"] as! String
        }
        if dict.keys.contains("error_data") && dict["error_data"] != nil {
            self.errorData = dict["error_data"] as! Any
        }
        if dict.keys.contains("error_msg") && dict["error_msg"] != nil {
            self.errorMsg = dict["error_msg"] as! String
        }
        if dict.keys.contains("status") && dict["status"] != nil {
            self.status = dict["status"] as! Int32
        }
        if dict.keys.contains("success") && dict["success"] != nil {
            self.success = dict["success"] as! Bool
        }
    }
}

public class FlightChangeOfOrderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: FlightChangeOfOrderResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = FlightChangeOfOrderResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetTokenRequest : Tea.TeaModel {
    public var appKey: String?

    public var appSecret: String?

    public override init() {
        super.init()
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
            map["app_key"] = self.appKey!
        }
        if self.appSecret != nil {
            map["app_secret"] = self.appSecret!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("app_key") && dict["app_key"] != nil {
            self.appKey = dict["app_key"] as! String
        }
        if dict.keys.contains("app_secret") && dict["app_secret"] != nil {
            self.appSecret = dict["app_secret"] as! String
        }
    }
}

public class GetTokenResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var expireTime: Int64?

        public var generateTime: Int64?

        public var token: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.expireTime != nil {
                map["expire_time"] = self.expireTime!
            }
            if self.generateTime != nil {
                map["generate_time"] = self.generateTime!
            }
            if self.token != nil {
                map["token"] = self.token!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("expire_time") && dict["expire_time"] != nil {
                self.expireTime = dict["expire_time"] as! Int64
            }
            if dict.keys.contains("generate_time") && dict["generate_time"] != nil {
                self.generateTime = dict["generate_time"] as! Int64
            }
            if dict.keys.contains("token") && dict["token"] != nil {
                self.token = dict["token"] as! String
            }
        }
    }
    public var requestId: String?

    public var data: GetTokenResponseBody.Data?

    public var errorCode: String?

    public var errorData: Any?

    public var errorMsg: String?

    public var status: Int32?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errorCode != nil {
            map["error_code"] = self.errorCode!
        }
        if self.errorData != nil {
            map["error_data"] = self.errorData!
        }
        if self.errorMsg != nil {
            map["error_msg"] = self.errorMsg!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = GetTokenResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("error_code") && dict["error_code"] != nil {
            self.errorCode = dict["error_code"] as! String
        }
        if dict.keys.contains("error_data") && dict["error_data"] != nil {
            self.errorData = dict["error_data"] as! Any
        }
        if dict.keys.contains("error_msg") && dict["error_msg"] != nil {
            self.errorMsg = dict["error_msg"] as! String
        }
        if dict.keys.contains("status") && dict["status"] != nil {
            self.status = dict["status"] as! Int32
        }
        if dict.keys.contains("success") && dict["success"] != nil {
            self.success = dict["success"] as! Bool
        }
    }
}

public class GetTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTokenResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetTokenResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class LuggageDirectHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xAcsAirticketAccessToken: String?

    public var xAcsAirticketLanguage: String?

    public override init() {
        super.init()
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
        if self.xAcsAirticketAccessToken != nil {
            map["x-acs-airticket-access-token"] = self.xAcsAirticketAccessToken!
        }
        if self.xAcsAirticketLanguage != nil {
            map["x-acs-airticket-language"] = self.xAcsAirticketLanguage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("x-acs-airticket-access-token") && dict["x-acs-airticket-access-token"] != nil {
            self.xAcsAirticketAccessToken = dict["x-acs-airticket-access-token"] as! String
        }
        if dict.keys.contains("x-acs-airticket-language") && dict["x-acs-airticket-language"] != nil {
            self.xAcsAirticketLanguage = dict["x-acs-airticket-language"] as! String
        }
    }
}

public class LuggageDirectRequest : Tea.TeaModel {
    public class FlightSegmentParamList : Tea.TeaModel {
        public var arrivalAirport: String?

        public var arrivalTerminal: String?

        public var arrivalTime: Int64?

        public var codeShare: Bool?

        public var departureAirport: String?

        public var departureTerminal: String?

        public var departureTime: Int64?

        public var marketingAirline: String?

        public var marketingFlightNo: String?

        public var operatingAirline: String?

        public var stopCityList: String?

        public var ticketingAirline: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.arrivalAirport != nil {
                map["arrival_airport"] = self.arrivalAirport!
            }
            if self.arrivalTerminal != nil {
                map["arrival_terminal"] = self.arrivalTerminal!
            }
            if self.arrivalTime != nil {
                map["arrival_time"] = self.arrivalTime!
            }
            if self.codeShare != nil {
                map["code_share"] = self.codeShare!
            }
            if self.departureAirport != nil {
                map["departure_airport"] = self.departureAirport!
            }
            if self.departureTerminal != nil {
                map["departure_terminal"] = self.departureTerminal!
            }
            if self.departureTime != nil {
                map["departure_time"] = self.departureTime!
            }
            if self.marketingAirline != nil {
                map["marketing_airline"] = self.marketingAirline!
            }
            if self.marketingFlightNo != nil {
                map["marketing_flight_no"] = self.marketingFlightNo!
            }
            if self.operatingAirline != nil {
                map["operating_airline"] = self.operatingAirline!
            }
            if self.stopCityList != nil {
                map["stop_city_list"] = self.stopCityList!
            }
            if self.ticketingAirline != nil {
                map["ticketing_airline"] = self.ticketingAirline!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("arrival_airport") && dict["arrival_airport"] != nil {
                self.arrivalAirport = dict["arrival_airport"] as! String
            }
            if dict.keys.contains("arrival_terminal") && dict["arrival_terminal"] != nil {
                self.arrivalTerminal = dict["arrival_terminal"] as! String
            }
            if dict.keys.contains("arrival_time") && dict["arrival_time"] != nil {
                self.arrivalTime = dict["arrival_time"] as! Int64
            }
            if dict.keys.contains("code_share") && dict["code_share"] != nil {
                self.codeShare = dict["code_share"] as! Bool
            }
            if dict.keys.contains("departure_airport") && dict["departure_airport"] != nil {
                self.departureAirport = dict["departure_airport"] as! String
            }
            if dict.keys.contains("departure_terminal") && dict["departure_terminal"] != nil {
                self.departureTerminal = dict["departure_terminal"] as! String
            }
            if dict.keys.contains("departure_time") && dict["departure_time"] != nil {
                self.departureTime = dict["departure_time"] as! Int64
            }
            if dict.keys.contains("marketing_airline") && dict["marketing_airline"] != nil {
                self.marketingAirline = dict["marketing_airline"] as! String
            }
            if dict.keys.contains("marketing_flight_no") && dict["marketing_flight_no"] != nil {
                self.marketingFlightNo = dict["marketing_flight_no"] as! String
            }
            if dict.keys.contains("operating_airline") && dict["operating_airline"] != nil {
                self.operatingAirline = dict["operating_airline"] as! String
            }
            if dict.keys.contains("stop_city_list") && dict["stop_city_list"] != nil {
                self.stopCityList = dict["stop_city_list"] as! String
            }
            if dict.keys.contains("ticketing_airline") && dict["ticketing_airline"] != nil {
                self.ticketingAirline = dict["ticketing_airline"] as! String
            }
        }
    }
    public var flightSegmentParamList: [LuggageDirectRequest.FlightSegmentParamList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.flightSegmentParamList != nil {
            var tmp : [Any] = []
            for k in self.flightSegmentParamList! {
                tmp.append(k.toMap())
            }
            map["flight_segment_param_list"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("flight_segment_param_list") && dict["flight_segment_param_list"] != nil {
            var tmp : [LuggageDirectRequest.FlightSegmentParamList] = []
            for v in dict["flight_segment_param_list"] as! [Any] {
                var model = LuggageDirectRequest.FlightSegmentParamList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.flightSegmentParamList = tmp
        }
    }
}

public class LuggageDirectShrinkRequest : Tea.TeaModel {
    public var flightSegmentParamListShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.flightSegmentParamListShrink != nil {
            map["flight_segment_param_list"] = self.flightSegmentParamListShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("flight_segment_param_list") && dict["flight_segment_param_list"] != nil {
            self.flightSegmentParamListShrink = dict["flight_segment_param_list"] as! String
        }
    }
}

public class LuggageDirectResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var cityCode: String?

        public var directType: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cityCode != nil {
                map["city_code"] = self.cityCode!
            }
            if self.directType != nil {
                map["direct_type"] = self.directType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("city_code") && dict["city_code"] != nil {
                self.cityCode = dict["city_code"] as! String
            }
            if dict.keys.contains("direct_type") && dict["direct_type"] != nil {
                self.directType = dict["direct_type"] as! Int32
            }
        }
    }
    public var requestId: String?

    public var data: [LuggageDirectResponseBody.Data]?

    public var errorCode: String?

    public var errorData: Any?

    public var errorMsg: String?

    public var status: Int32?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
        if self.errorCode != nil {
            map["error_code"] = self.errorCode!
        }
        if self.errorData != nil {
            map["error_data"] = self.errorData!
        }
        if self.errorMsg != nil {
            map["error_msg"] = self.errorMsg!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var tmp : [LuggageDirectResponseBody.Data] = []
            for v in dict["data"] as! [Any] {
                var model = LuggageDirectResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("error_code") && dict["error_code"] != nil {
            self.errorCode = dict["error_code"] as! String
        }
        if dict.keys.contains("error_data") && dict["error_data"] != nil {
            self.errorData = dict["error_data"] as! Any
        }
        if dict.keys.contains("error_msg") && dict["error_msg"] != nil {
            self.errorMsg = dict["error_msg"] as! String
        }
        if dict.keys.contains("status") && dict["status"] != nil {
            self.status = dict["status"] as! Int32
        }
        if dict.keys.contains("success") && dict["success"] != nil {
            self.success = dict["success"] as! Bool
        }
    }
}

public class LuggageDirectResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: LuggageDirectResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = LuggageDirectResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class OrderDetailHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xAcsAirticketAccessToken: String?

    public var xAcsAirticketLanguage: String?

    public override init() {
        super.init()
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
        if self.xAcsAirticketAccessToken != nil {
            map["x-acs-airticket-access-token"] = self.xAcsAirticketAccessToken!
        }
        if self.xAcsAirticketLanguage != nil {
            map["x-acs-airticket-language"] = self.xAcsAirticketLanguage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("x-acs-airticket-access-token") && dict["x-acs-airticket-access-token"] != nil {
            self.xAcsAirticketAccessToken = dict["x-acs-airticket-access-token"] as! String
        }
        if dict.keys.contains("x-acs-airticket-language") && dict["x-acs-airticket-language"] != nil {
            self.xAcsAirticketLanguage = dict["x-acs-airticket-language"] as! String
        }
    }
}

public class OrderDetailRequest : Tea.TeaModel {
    public var orderNum: Int64?

    public var outOrderNum: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.orderNum != nil {
            map["order_num"] = self.orderNum!
        }
        if self.outOrderNum != nil {
            map["out_order_num"] = self.outOrderNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("order_num") && dict["order_num"] != nil {
            self.orderNum = dict["order_num"] as! Int64
        }
        if dict.keys.contains("out_order_num") && dict["out_order_num"] != nil {
            self.outOrderNum = dict["out_order_num"] as! String
        }
    }
}

public class OrderDetailResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class AncillaryItemDetailList : Tea.TeaModel {
            public class Ancillary : Tea.TeaModel {
                public class BaggageAncillary : Tea.TeaModel {
                    public var baggageAmount: Int32?

                    public var baggageWeight: Int32?

                    public var baggageWeightUnit: String?

                    public var isAllWeight: Bool?

                    public var price: Double?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.baggageAmount != nil {
                            map["baggage_amount"] = self.baggageAmount!
                        }
                        if self.baggageWeight != nil {
                            map["baggage_weight"] = self.baggageWeight!
                        }
                        if self.baggageWeightUnit != nil {
                            map["baggage_weight_unit"] = self.baggageWeightUnit!
                        }
                        if self.isAllWeight != nil {
                            map["is_all_weight"] = self.isAllWeight!
                        }
                        if self.price != nil {
                            map["price"] = self.price!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("baggage_amount") && dict["baggage_amount"] != nil {
                            self.baggageAmount = dict["baggage_amount"] as! Int32
                        }
                        if dict.keys.contains("baggage_weight") && dict["baggage_weight"] != nil {
                            self.baggageWeight = dict["baggage_weight"] as! Int32
                        }
                        if dict.keys.contains("baggage_weight_unit") && dict["baggage_weight_unit"] != nil {
                            self.baggageWeightUnit = dict["baggage_weight_unit"] as! String
                        }
                        if dict.keys.contains("is_all_weight") && dict["is_all_weight"] != nil {
                            self.isAllWeight = dict["is_all_weight"] as! Bool
                        }
                        if dict.keys.contains("price") && dict["price"] != nil {
                            self.price = dict["price"] as! Double
                        }
                    }
                }
                public var ancillaryId: String?

                public var ancillaryType: Int32?

                public var baggageAncillary: OrderDetailResponseBody.Data.AncillaryItemDetailList.Ancillary.BaggageAncillary?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.baggageAncillary?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.ancillaryId != nil {
                        map["ancillary_id"] = self.ancillaryId!
                    }
                    if self.ancillaryType != nil {
                        map["ancillary_type"] = self.ancillaryType!
                    }
                    if self.baggageAncillary != nil {
                        map["baggage_ancillary"] = self.baggageAncillary?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ancillary_id") && dict["ancillary_id"] != nil {
                        self.ancillaryId = dict["ancillary_id"] as! String
                    }
                    if dict.keys.contains("ancillary_type") && dict["ancillary_type"] != nil {
                        self.ancillaryType = dict["ancillary_type"] as! Int32
                    }
                    if dict.keys.contains("baggage_ancillary") && dict["baggage_ancillary"] != nil {
                        var model = OrderDetailResponseBody.Data.AncillaryItemDetailList.Ancillary.BaggageAncillary()
                        model.fromMap(dict["baggage_ancillary"] as! [String: Any])
                        self.baggageAncillary = model
                    }
                }
            }
            public class Passenger : Tea.TeaModel {
                public class Credential : Tea.TeaModel {
                    public var certIssuePlace: String?

                    public var credentialNum: String?

                    public var credentialType: Int32?

                    public var expireDate: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.certIssuePlace != nil {
                            map["cert_issue_place"] = self.certIssuePlace!
                        }
                        if self.credentialNum != nil {
                            map["credential_num"] = self.credentialNum!
                        }
                        if self.credentialType != nil {
                            map["credential_type"] = self.credentialType!
                        }
                        if self.expireDate != nil {
                            map["expire_date"] = self.expireDate!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("cert_issue_place") && dict["cert_issue_place"] != nil {
                            self.certIssuePlace = dict["cert_issue_place"] as! String
                        }
                        if dict.keys.contains("credential_num") && dict["credential_num"] != nil {
                            self.credentialNum = dict["credential_num"] as! String
                        }
                        if dict.keys.contains("credential_type") && dict["credential_type"] != nil {
                            self.credentialType = dict["credential_type"] as! Int32
                        }
                        if dict.keys.contains("expire_date") && dict["expire_date"] != nil {
                            self.expireDate = dict["expire_date"] as! String
                        }
                    }
                }
                public var birthday: String?

                public var credential: OrderDetailResponseBody.Data.AncillaryItemDetailList.Passenger.Credential?

                public var firstName: String?

                public var gender: Int32?

                public var lastName: String?

                public var mobileCountryCode: String?

                public var mobilePhoneNumber: String?

                public var nationality: String?

                public var type: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.credential?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.birthday != nil {
                        map["birthday"] = self.birthday!
                    }
                    if self.credential != nil {
                        map["credential"] = self.credential?.toMap()
                    }
                    if self.firstName != nil {
                        map["first_name"] = self.firstName!
                    }
                    if self.gender != nil {
                        map["gender"] = self.gender!
                    }
                    if self.lastName != nil {
                        map["last_name"] = self.lastName!
                    }
                    if self.mobileCountryCode != nil {
                        map["mobile_country_code"] = self.mobileCountryCode!
                    }
                    if self.mobilePhoneNumber != nil {
                        map["mobile_phone_number"] = self.mobilePhoneNumber!
                    }
                    if self.nationality != nil {
                        map["nationality"] = self.nationality!
                    }
                    if self.type != nil {
                        map["type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("birthday") && dict["birthday"] != nil {
                        self.birthday = dict["birthday"] as! String
                    }
                    if dict.keys.contains("credential") && dict["credential"] != nil {
                        var model = OrderDetailResponseBody.Data.AncillaryItemDetailList.Passenger.Credential()
                        model.fromMap(dict["credential"] as! [String: Any])
                        self.credential = model
                    }
                    if dict.keys.contains("first_name") && dict["first_name"] != nil {
                        self.firstName = dict["first_name"] as! String
                    }
                    if dict.keys.contains("gender") && dict["gender"] != nil {
                        self.gender = dict["gender"] as! Int32
                    }
                    if dict.keys.contains("last_name") && dict["last_name"] != nil {
                        self.lastName = dict["last_name"] as! String
                    }
                    if dict.keys.contains("mobile_country_code") && dict["mobile_country_code"] != nil {
                        self.mobileCountryCode = dict["mobile_country_code"] as! String
                    }
                    if dict.keys.contains("mobile_phone_number") && dict["mobile_phone_number"] != nil {
                        self.mobilePhoneNumber = dict["mobile_phone_number"] as! String
                    }
                    if dict.keys.contains("nationality") && dict["nationality"] != nil {
                        self.nationality = dict["nationality"] as! String
                    }
                    if dict.keys.contains("type") && dict["type"] != nil {
                        self.type = dict["type"] as! Int32
                    }
                }
            }
            public var ancillary: OrderDetailResponseBody.Data.AncillaryItemDetailList.Ancillary?

            public var passenger: OrderDetailResponseBody.Data.AncillaryItemDetailList.Passenger?

            public var segmentIdList: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.ancillary?.validate()
                try self.passenger?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.ancillary != nil {
                    map["ancillary"] = self.ancillary?.toMap()
                }
                if self.passenger != nil {
                    map["passenger"] = self.passenger?.toMap()
                }
                if self.segmentIdList != nil {
                    map["segment_id_list"] = self.segmentIdList!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ancillary") && dict["ancillary"] != nil {
                    var model = OrderDetailResponseBody.Data.AncillaryItemDetailList.Ancillary()
                    model.fromMap(dict["ancillary"] as! [String: Any])
                    self.ancillary = model
                }
                if dict.keys.contains("passenger") && dict["passenger"] != nil {
                    var model = OrderDetailResponseBody.Data.AncillaryItemDetailList.Passenger()
                    model.fromMap(dict["passenger"] as! [String: Any])
                    self.passenger = model
                }
                if dict.keys.contains("segment_id_list") && dict["segment_id_list"] != nil {
                    self.segmentIdList = dict["segment_id_list"] as! [String]
                }
            }
        }
        public class FlightItemDetailList : Tea.TeaModel {
            public class FlightPrice : Tea.TeaModel {
                public var sellPrice: Double?

                public var tax: Double?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.sellPrice != nil {
                        map["sell_price"] = self.sellPrice!
                    }
                    if self.tax != nil {
                        map["tax"] = self.tax!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("sell_price") && dict["sell_price"] != nil {
                        self.sellPrice = dict["sell_price"] as! Double
                    }
                    if dict.keys.contains("tax") && dict["tax"] != nil {
                        self.tax = dict["tax"] as! Double
                    }
                }
            }
            public class FlightSegmentCabinRelation : Tea.TeaModel {
                public var cabin: String?

                public var cabinClass: String?

                public var cabinClassName: String?

                public var cabinQuantity: String?

                public var segmentId: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.cabin != nil {
                        map["cabin"] = self.cabin!
                    }
                    if self.cabinClass != nil {
                        map["cabin_class"] = self.cabinClass!
                    }
                    if self.cabinClassName != nil {
                        map["cabin_class_name"] = self.cabinClassName!
                    }
                    if self.cabinQuantity != nil {
                        map["cabin_quantity"] = self.cabinQuantity!
                    }
                    if self.segmentId != nil {
                        map["segment_id"] = self.segmentId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("cabin") && dict["cabin"] != nil {
                        self.cabin = dict["cabin"] as! String
                    }
                    if dict.keys.contains("cabin_class") && dict["cabin_class"] != nil {
                        self.cabinClass = dict["cabin_class"] as! String
                    }
                    if dict.keys.contains("cabin_class_name") && dict["cabin_class_name"] != nil {
                        self.cabinClassName = dict["cabin_class_name"] as! String
                    }
                    if dict.keys.contains("cabin_quantity") && dict["cabin_quantity"] != nil {
                        self.cabinQuantity = dict["cabin_quantity"] as! String
                    }
                    if dict.keys.contains("segment_id") && dict["segment_id"] != nil {
                        self.segmentId = dict["segment_id"] as! String
                    }
                }
            }
            public class Passenger : Tea.TeaModel {
                public class Credential : Tea.TeaModel {
                    public var certIssuePlace: String?

                    public var credentialNum: String?

                    public var credentialType: Int32?

                    public var expireDate: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.certIssuePlace != nil {
                            map["cert_issue_place"] = self.certIssuePlace!
                        }
                        if self.credentialNum != nil {
                            map["credential_num"] = self.credentialNum!
                        }
                        if self.credentialType != nil {
                            map["credential_type"] = self.credentialType!
                        }
                        if self.expireDate != nil {
                            map["expire_date"] = self.expireDate!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("cert_issue_place") && dict["cert_issue_place"] != nil {
                            self.certIssuePlace = dict["cert_issue_place"] as! String
                        }
                        if dict.keys.contains("credential_num") && dict["credential_num"] != nil {
                            self.credentialNum = dict["credential_num"] as! String
                        }
                        if dict.keys.contains("credential_type") && dict["credential_type"] != nil {
                            self.credentialType = dict["credential_type"] as! Int32
                        }
                        if dict.keys.contains("expire_date") && dict["expire_date"] != nil {
                            self.expireDate = dict["expire_date"] as! String
                        }
                    }
                }
                public var birthday: String?

                public var credential: OrderDetailResponseBody.Data.FlightItemDetailList.Passenger.Credential?

                public var firstName: String?

                public var gender: Int32?

                public var lastName: String?

                public var mobileCountryCode: String?

                public var mobilePhoneNumber: String?

                public var nationality: String?

                public var type: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.credential?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.birthday != nil {
                        map["birthday"] = self.birthday!
                    }
                    if self.credential != nil {
                        map["credential"] = self.credential?.toMap()
                    }
                    if self.firstName != nil {
                        map["first_name"] = self.firstName!
                    }
                    if self.gender != nil {
                        map["gender"] = self.gender!
                    }
                    if self.lastName != nil {
                        map["last_name"] = self.lastName!
                    }
                    if self.mobileCountryCode != nil {
                        map["mobile_country_code"] = self.mobileCountryCode!
                    }
                    if self.mobilePhoneNumber != nil {
                        map["mobile_phone_number"] = self.mobilePhoneNumber!
                    }
                    if self.nationality != nil {
                        map["nationality"] = self.nationality!
                    }
                    if self.type != nil {
                        map["type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("birthday") && dict["birthday"] != nil {
                        self.birthday = dict["birthday"] as! String
                    }
                    if dict.keys.contains("credential") && dict["credential"] != nil {
                        var model = OrderDetailResponseBody.Data.FlightItemDetailList.Passenger.Credential()
                        model.fromMap(dict["credential"] as! [String: Any])
                        self.credential = model
                    }
                    if dict.keys.contains("first_name") && dict["first_name"] != nil {
                        self.firstName = dict["first_name"] as! String
                    }
                    if dict.keys.contains("gender") && dict["gender"] != nil {
                        self.gender = dict["gender"] as! Int32
                    }
                    if dict.keys.contains("last_name") && dict["last_name"] != nil {
                        self.lastName = dict["last_name"] as! String
                    }
                    if dict.keys.contains("mobile_country_code") && dict["mobile_country_code"] != nil {
                        self.mobileCountryCode = dict["mobile_country_code"] as! String
                    }
                    if dict.keys.contains("mobile_phone_number") && dict["mobile_phone_number"] != nil {
                        self.mobilePhoneNumber = dict["mobile_phone_number"] as! String
                    }
                    if dict.keys.contains("nationality") && dict["nationality"] != nil {
                        self.nationality = dict["nationality"] as! String
                    }
                    if dict.keys.contains("type") && dict["type"] != nil {
                        self.type = dict["type"] as! Int32
                    }
                }
            }
            public var bPnrList: [String]?

            public var cPnrList: [String]?

            public var flightPrice: OrderDetailResponseBody.Data.FlightItemDetailList.FlightPrice?

            public var flightSegmentCabinRelation: [OrderDetailResponseBody.Data.FlightItemDetailList.FlightSegmentCabinRelation]?

            public var passenger: OrderDetailResponseBody.Data.FlightItemDetailList.Passenger?

            public var ticketAirLine: String?

            public var ticketNos: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.flightPrice?.validate()
                try self.passenger?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bPnrList != nil {
                    map["b_pnr_list"] = self.bPnrList!
                }
                if self.cPnrList != nil {
                    map["c_pnr_list"] = self.cPnrList!
                }
                if self.flightPrice != nil {
                    map["flight_price"] = self.flightPrice?.toMap()
                }
                if self.flightSegmentCabinRelation != nil {
                    var tmp : [Any] = []
                    for k in self.flightSegmentCabinRelation! {
                        tmp.append(k.toMap())
                    }
                    map["flight_segment_cabin_relation"] = tmp
                }
                if self.passenger != nil {
                    map["passenger"] = self.passenger?.toMap()
                }
                if self.ticketAirLine != nil {
                    map["ticket_air_line"] = self.ticketAirLine!
                }
                if self.ticketNos != nil {
                    map["ticket_nos"] = self.ticketNos!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("b_pnr_list") && dict["b_pnr_list"] != nil {
                    self.bPnrList = dict["b_pnr_list"] as! [String]
                }
                if dict.keys.contains("c_pnr_list") && dict["c_pnr_list"] != nil {
                    self.cPnrList = dict["c_pnr_list"] as! [String]
                }
                if dict.keys.contains("flight_price") && dict["flight_price"] != nil {
                    var model = OrderDetailResponseBody.Data.FlightItemDetailList.FlightPrice()
                    model.fromMap(dict["flight_price"] as! [String: Any])
                    self.flightPrice = model
                }
                if dict.keys.contains("flight_segment_cabin_relation") && dict["flight_segment_cabin_relation"] != nil {
                    var tmp : [OrderDetailResponseBody.Data.FlightItemDetailList.FlightSegmentCabinRelation] = []
                    for v in dict["flight_segment_cabin_relation"] as! [Any] {
                        var model = OrderDetailResponseBody.Data.FlightItemDetailList.FlightSegmentCabinRelation()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.flightSegmentCabinRelation = tmp
                }
                if dict.keys.contains("passenger") && dict["passenger"] != nil {
                    var model = OrderDetailResponseBody.Data.FlightItemDetailList.Passenger()
                    model.fromMap(dict["passenger"] as! [String: Any])
                    self.passenger = model
                }
                if dict.keys.contains("ticket_air_line") && dict["ticket_air_line"] != nil {
                    self.ticketAirLine = dict["ticket_air_line"] as! String
                }
                if dict.keys.contains("ticket_nos") && dict["ticket_nos"] != nil {
                    self.ticketNos = dict["ticket_nos"] as! [String]
                }
            }
        }
        public class PassengerList : Tea.TeaModel {
            public class Credential : Tea.TeaModel {
                public var certIssuePlace: String?

                public var credentialNum: String?

                public var credentialType: Int32?

                public var expireDate: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.certIssuePlace != nil {
                        map["cert_issue_place"] = self.certIssuePlace!
                    }
                    if self.credentialNum != nil {
                        map["credential_num"] = self.credentialNum!
                    }
                    if self.credentialType != nil {
                        map["credential_type"] = self.credentialType!
                    }
                    if self.expireDate != nil {
                        map["expire_date"] = self.expireDate!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("cert_issue_place") && dict["cert_issue_place"] != nil {
                        self.certIssuePlace = dict["cert_issue_place"] as! String
                    }
                    if dict.keys.contains("credential_num") && dict["credential_num"] != nil {
                        self.credentialNum = dict["credential_num"] as! String
                    }
                    if dict.keys.contains("credential_type") && dict["credential_type"] != nil {
                        self.credentialType = dict["credential_type"] as! Int32
                    }
                    if dict.keys.contains("expire_date") && dict["expire_date"] != nil {
                        self.expireDate = dict["expire_date"] as! String
                    }
                }
            }
            public var birthday: String?

            public var credential: OrderDetailResponseBody.Data.PassengerList.Credential?

            public var firstName: String?

            public var gender: Int32?

            public var lastName: String?

            public var mobileCountryCode: String?

            public var mobilePhoneNumber: String?

            public var nationality: String?

            public var type: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.credential?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.birthday != nil {
                    map["birthday"] = self.birthday!
                }
                if self.credential != nil {
                    map["credential"] = self.credential?.toMap()
                }
                if self.firstName != nil {
                    map["first_name"] = self.firstName!
                }
                if self.gender != nil {
                    map["gender"] = self.gender!
                }
                if self.lastName != nil {
                    map["last_name"] = self.lastName!
                }
                if self.mobileCountryCode != nil {
                    map["mobile_country_code"] = self.mobileCountryCode!
                }
                if self.mobilePhoneNumber != nil {
                    map["mobile_phone_number"] = self.mobilePhoneNumber!
                }
                if self.nationality != nil {
                    map["nationality"] = self.nationality!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("birthday") && dict["birthday"] != nil {
                    self.birthday = dict["birthday"] as! String
                }
                if dict.keys.contains("credential") && dict["credential"] != nil {
                    var model = OrderDetailResponseBody.Data.PassengerList.Credential()
                    model.fromMap(dict["credential"] as! [String: Any])
                    self.credential = model
                }
                if dict.keys.contains("first_name") && dict["first_name"] != nil {
                    self.firstName = dict["first_name"] as! String
                }
                if dict.keys.contains("gender") && dict["gender"] != nil {
                    self.gender = dict["gender"] as! Int32
                }
                if dict.keys.contains("last_name") && dict["last_name"] != nil {
                    self.lastName = dict["last_name"] as! String
                }
                if dict.keys.contains("mobile_country_code") && dict["mobile_country_code"] != nil {
                    self.mobileCountryCode = dict["mobile_country_code"] as! String
                }
                if dict.keys.contains("mobile_phone_number") && dict["mobile_phone_number"] != nil {
                    self.mobilePhoneNumber = dict["mobile_phone_number"] as! String
                }
                if dict.keys.contains("nationality") && dict["nationality"] != nil {
                    self.nationality = dict["nationality"] as! String
                }
                if dict.keys.contains("type") && dict["type"] != nil {
                    self.type = dict["type"] as! Int32
                }
            }
        }
        public class Solution : Tea.TeaModel {
            public class JourneyList : Tea.TeaModel {
                public class SegmentList : Tea.TeaModel {
                    public var arrivalAirport: String?

                    public var arrivalCity: String?

                    public var arrivalTerminal: String?

                    public var arrivalTime: String?

                    public var availability: String?

                    public var cabin: String?

                    public var cabinClass: String?

                    public var codeShare: Bool?

                    public var departureAirport: String?

                    public var departureCity: String?

                    public var departureTerminal: String?

                    public var departureTime: String?

                    public var equipType: String?

                    public var flightDuration: Int32?

                    public var marketingAirline: String?

                    public var marketingFlightNo: String?

                    public var marketingFlightNoInt: Int32?

                    public var operatingAirline: String?

                    public var operatingFlightNo: String?

                    public var segmentId: String?

                    public var stopCityList: String?

                    public var stopQuantity: Int32?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.arrivalAirport != nil {
                            map["arrival_airport"] = self.arrivalAirport!
                        }
                        if self.arrivalCity != nil {
                            map["arrival_city"] = self.arrivalCity!
                        }
                        if self.arrivalTerminal != nil {
                            map["arrival_terminal"] = self.arrivalTerminal!
                        }
                        if self.arrivalTime != nil {
                            map["arrival_time"] = self.arrivalTime!
                        }
                        if self.availability != nil {
                            map["availability"] = self.availability!
                        }
                        if self.cabin != nil {
                            map["cabin"] = self.cabin!
                        }
                        if self.cabinClass != nil {
                            map["cabin_class"] = self.cabinClass!
                        }
                        if self.codeShare != nil {
                            map["code_share"] = self.codeShare!
                        }
                        if self.departureAirport != nil {
                            map["departure_airport"] = self.departureAirport!
                        }
                        if self.departureCity != nil {
                            map["departure_city"] = self.departureCity!
                        }
                        if self.departureTerminal != nil {
                            map["departure_terminal"] = self.departureTerminal!
                        }
                        if self.departureTime != nil {
                            map["departure_time"] = self.departureTime!
                        }
                        if self.equipType != nil {
                            map["equip_type"] = self.equipType!
                        }
                        if self.flightDuration != nil {
                            map["flight_duration"] = self.flightDuration!
                        }
                        if self.marketingAirline != nil {
                            map["marketing_airline"] = self.marketingAirline!
                        }
                        if self.marketingFlightNo != nil {
                            map["marketing_flight_no"] = self.marketingFlightNo!
                        }
                        if self.marketingFlightNoInt != nil {
                            map["marketing_flight_no_int"] = self.marketingFlightNoInt!
                        }
                        if self.operatingAirline != nil {
                            map["operating_airline"] = self.operatingAirline!
                        }
                        if self.operatingFlightNo != nil {
                            map["operating_flight_no"] = self.operatingFlightNo!
                        }
                        if self.segmentId != nil {
                            map["segment_id"] = self.segmentId!
                        }
                        if self.stopCityList != nil {
                            map["stop_city_list"] = self.stopCityList!
                        }
                        if self.stopQuantity != nil {
                            map["stop_quantity"] = self.stopQuantity!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("arrival_airport") && dict["arrival_airport"] != nil {
                            self.arrivalAirport = dict["arrival_airport"] as! String
                        }
                        if dict.keys.contains("arrival_city") && dict["arrival_city"] != nil {
                            self.arrivalCity = dict["arrival_city"] as! String
                        }
                        if dict.keys.contains("arrival_terminal") && dict["arrival_terminal"] != nil {
                            self.arrivalTerminal = dict["arrival_terminal"] as! String
                        }
                        if dict.keys.contains("arrival_time") && dict["arrival_time"] != nil {
                            self.arrivalTime = dict["arrival_time"] as! String
                        }
                        if dict.keys.contains("availability") && dict["availability"] != nil {
                            self.availability = dict["availability"] as! String
                        }
                        if dict.keys.contains("cabin") && dict["cabin"] != nil {
                            self.cabin = dict["cabin"] as! String
                        }
                        if dict.keys.contains("cabin_class") && dict["cabin_class"] != nil {
                            self.cabinClass = dict["cabin_class"] as! String
                        }
                        if dict.keys.contains("code_share") && dict["code_share"] != nil {
                            self.codeShare = dict["code_share"] as! Bool
                        }
                        if dict.keys.contains("departure_airport") && dict["departure_airport"] != nil {
                            self.departureAirport = dict["departure_airport"] as! String
                        }
                        if dict.keys.contains("departure_city") && dict["departure_city"] != nil {
                            self.departureCity = dict["departure_city"] as! String
                        }
                        if dict.keys.contains("departure_terminal") && dict["departure_terminal"] != nil {
                            self.departureTerminal = dict["departure_terminal"] as! String
                        }
                        if dict.keys.contains("departure_time") && dict["departure_time"] != nil {
                            self.departureTime = dict["departure_time"] as! String
                        }
                        if dict.keys.contains("equip_type") && dict["equip_type"] != nil {
                            self.equipType = dict["equip_type"] as! String
                        }
                        if dict.keys.contains("flight_duration") && dict["flight_duration"] != nil {
                            self.flightDuration = dict["flight_duration"] as! Int32
                        }
                        if dict.keys.contains("marketing_airline") && dict["marketing_airline"] != nil {
                            self.marketingAirline = dict["marketing_airline"] as! String
                        }
                        if dict.keys.contains("marketing_flight_no") && dict["marketing_flight_no"] != nil {
                            self.marketingFlightNo = dict["marketing_flight_no"] as! String
                        }
                        if dict.keys.contains("marketing_flight_no_int") && dict["marketing_flight_no_int"] != nil {
                            self.marketingFlightNoInt = dict["marketing_flight_no_int"] as! Int32
                        }
                        if dict.keys.contains("operating_airline") && dict["operating_airline"] != nil {
                            self.operatingAirline = dict["operating_airline"] as! String
                        }
                        if dict.keys.contains("operating_flight_no") && dict["operating_flight_no"] != nil {
                            self.operatingFlightNo = dict["operating_flight_no"] as! String
                        }
                        if dict.keys.contains("segment_id") && dict["segment_id"] != nil {
                            self.segmentId = dict["segment_id"] as! String
                        }
                        if dict.keys.contains("stop_city_list") && dict["stop_city_list"] != nil {
                            self.stopCityList = dict["stop_city_list"] as! String
                        }
                        if dict.keys.contains("stop_quantity") && dict["stop_quantity"] != nil {
                            self.stopQuantity = dict["stop_quantity"] as! Int32
                        }
                    }
                }
                public var segmentList: [OrderDetailResponseBody.Data.Solution.JourneyList.SegmentList]?

                public var transferCount: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.segmentList != nil {
                        var tmp : [Any] = []
                        for k in self.segmentList! {
                            tmp.append(k.toMap())
                        }
                        map["segment_list"] = tmp
                    }
                    if self.transferCount != nil {
                        map["transfer_count"] = self.transferCount!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("segment_list") && dict["segment_list"] != nil {
                        var tmp : [OrderDetailResponseBody.Data.Solution.JourneyList.SegmentList] = []
                        for v in dict["segment_list"] as! [Any] {
                            var model = OrderDetailResponseBody.Data.Solution.JourneyList.SegmentList()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.segmentList = tmp
                    }
                    if dict.keys.contains("transfer_count") && dict["transfer_count"] != nil {
                        self.transferCount = dict["transfer_count"] as! Int32
                    }
                }
            }
            public class SegmentBaggageCheckInInfoList : Tea.TeaModel {
                public var luggageDirectInfoType: Int32?

                public var segmentIdList: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.luggageDirectInfoType != nil {
                        map["luggage_direct_info_type"] = self.luggageDirectInfoType!
                    }
                    if self.segmentIdList != nil {
                        map["segment_id_list"] = self.segmentIdList!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("luggage_direct_info_type") && dict["luggage_direct_info_type"] != nil {
                        self.luggageDirectInfoType = dict["luggage_direct_info_type"] as! Int32
                    }
                    if dict.keys.contains("segment_id_list") && dict["segment_id_list"] != nil {
                        self.segmentIdList = dict["segment_id_list"] as! [String]
                    }
                }
            }
            public class SegmentBaggageMappingList : Tea.TeaModel {
                public var passengerBaggageAllowanceMapping: [String: DataSolutionSegmentBaggageMappingListPassengerBaggageAllowanceMappingValue]?

                public var segmentIdList: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.passengerBaggageAllowanceMapping != nil {
                        var tmp : [String: Any] = [:]
                        for (k, v) in self.passengerBaggageAllowanceMapping! {
                            tmp[k] = v.toMap()
                        }
                        map["passenger_baggage_allowance_mapping"] = tmp
                    }
                    if self.segmentIdList != nil {
                        map["segment_id_list"] = self.segmentIdList!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("passenger_baggage_allowance_mapping") && dict["passenger_baggage_allowance_mapping"] != nil {
                        var tmp : [String: DataSolutionSegmentBaggageMappingListPassengerBaggageAllowanceMappingValue] = [:]
                        for (k, v) in dict["passenger_baggage_allowance_mapping"] as! [String: Any] {
                            if v != nil {
                                var model = DataSolutionSegmentBaggageMappingListPassengerBaggageAllowanceMappingValue()
                                model.fromMap(v as! [String: Any])
                                tmp[k] = model
                            }
                        }
                        self.passengerBaggageAllowanceMapping = tmp
                    }
                    if dict.keys.contains("segment_id_list") && dict["segment_id_list"] != nil {
                        self.segmentIdList = dict["segment_id_list"] as! [String]
                    }
                }
            }
            public class SegmentRefundChangeRuleMappingList : Tea.TeaModel {
                public var refundChangeRuleMap: [String: DataSolutionSegmentRefundChangeRuleMappingListRefundChangeRuleMapValue]?

                public var segmentIdList: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.refundChangeRuleMap != nil {
                        var tmp : [String: Any] = [:]
                        for (k, v) in self.refundChangeRuleMap! {
                            tmp[k] = v.toMap()
                        }
                        map["refund_change_rule_map"] = tmp
                    }
                    if self.segmentIdList != nil {
                        map["segment_id_list"] = self.segmentIdList!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("refund_change_rule_map") && dict["refund_change_rule_map"] != nil {
                        var tmp : [String: DataSolutionSegmentRefundChangeRuleMappingListRefundChangeRuleMapValue] = [:]
                        for (k, v) in dict["refund_change_rule_map"] as! [String: Any] {
                            if v != nil {
                                var model = DataSolutionSegmentRefundChangeRuleMappingListRefundChangeRuleMapValue()
                                model.fromMap(v as! [String: Any])
                                tmp[k] = model
                            }
                        }
                        self.refundChangeRuleMap = tmp
                    }
                    if dict.keys.contains("segment_id_list") && dict["segment_id_list"] != nil {
                        self.segmentIdList = dict["segment_id_list"] as! [String]
                    }
                }
            }
            public var adultPrice: Double?

            public var adultTax: Double?

            public var childPrice: Double?

            public var childTax: Double?

            public var infantPrice: Double?

            public var infantTax: Double?

            public var journeyList: [OrderDetailResponseBody.Data.Solution.JourneyList]?

            public var productTypeDescription: String?

            public var refundTicketCouponDescription: String?

            public var segmentBaggageCheckInInfoList: [OrderDetailResponseBody.Data.Solution.SegmentBaggageCheckInInfoList]?

            public var segmentBaggageMappingList: [OrderDetailResponseBody.Data.Solution.SegmentBaggageMappingList]?

            public var segmentRefundChangeRuleMappingList: [OrderDetailResponseBody.Data.Solution.SegmentRefundChangeRuleMappingList]?

            public var solutionId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.adultPrice != nil {
                    map["adult_price"] = self.adultPrice!
                }
                if self.adultTax != nil {
                    map["adult_tax"] = self.adultTax!
                }
                if self.childPrice != nil {
                    map["child_price"] = self.childPrice!
                }
                if self.childTax != nil {
                    map["child_tax"] = self.childTax!
                }
                if self.infantPrice != nil {
                    map["infant_price"] = self.infantPrice!
                }
                if self.infantTax != nil {
                    map["infant_tax"] = self.infantTax!
                }
                if self.journeyList != nil {
                    var tmp : [Any] = []
                    for k in self.journeyList! {
                        tmp.append(k.toMap())
                    }
                    map["journey_list"] = tmp
                }
                if self.productTypeDescription != nil {
                    map["product_type_description"] = self.productTypeDescription!
                }
                if self.refundTicketCouponDescription != nil {
                    map["refund_ticket_coupon_description"] = self.refundTicketCouponDescription!
                }
                if self.segmentBaggageCheckInInfoList != nil {
                    var tmp : [Any] = []
                    for k in self.segmentBaggageCheckInInfoList! {
                        tmp.append(k.toMap())
                    }
                    map["segment_baggage_check_in_info_list"] = tmp
                }
                if self.segmentBaggageMappingList != nil {
                    var tmp : [Any] = []
                    for k in self.segmentBaggageMappingList! {
                        tmp.append(k.toMap())
                    }
                    map["segment_baggage_mapping_list"] = tmp
                }
                if self.segmentRefundChangeRuleMappingList != nil {
                    var tmp : [Any] = []
                    for k in self.segmentRefundChangeRuleMappingList! {
                        tmp.append(k.toMap())
                    }
                    map["segment_refund_change_rule_mapping_list"] = tmp
                }
                if self.solutionId != nil {
                    map["solution_id"] = self.solutionId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("adult_price") && dict["adult_price"] != nil {
                    self.adultPrice = dict["adult_price"] as! Double
                }
                if dict.keys.contains("adult_tax") && dict["adult_tax"] != nil {
                    self.adultTax = dict["adult_tax"] as! Double
                }
                if dict.keys.contains("child_price") && dict["child_price"] != nil {
                    self.childPrice = dict["child_price"] as! Double
                }
                if dict.keys.contains("child_tax") && dict["child_tax"] != nil {
                    self.childTax = dict["child_tax"] as! Double
                }
                if dict.keys.contains("infant_price") && dict["infant_price"] != nil {
                    self.infantPrice = dict["infant_price"] as! Double
                }
                if dict.keys.contains("infant_tax") && dict["infant_tax"] != nil {
                    self.infantTax = dict["infant_tax"] as! Double
                }
                if dict.keys.contains("journey_list") && dict["journey_list"] != nil {
                    var tmp : [OrderDetailResponseBody.Data.Solution.JourneyList] = []
                    for v in dict["journey_list"] as! [Any] {
                        var model = OrderDetailResponseBody.Data.Solution.JourneyList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.journeyList = tmp
                }
                if dict.keys.contains("product_type_description") && dict["product_type_description"] != nil {
                    self.productTypeDescription = dict["product_type_description"] as! String
                }
                if dict.keys.contains("refund_ticket_coupon_description") && dict["refund_ticket_coupon_description"] != nil {
                    self.refundTicketCouponDescription = dict["refund_ticket_coupon_description"] as! String
                }
                if dict.keys.contains("segment_baggage_check_in_info_list") && dict["segment_baggage_check_in_info_list"] != nil {
                    var tmp : [OrderDetailResponseBody.Data.Solution.SegmentBaggageCheckInInfoList] = []
                    for v in dict["segment_baggage_check_in_info_list"] as! [Any] {
                        var model = OrderDetailResponseBody.Data.Solution.SegmentBaggageCheckInInfoList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.segmentBaggageCheckInInfoList = tmp
                }
                if dict.keys.contains("segment_baggage_mapping_list") && dict["segment_baggage_mapping_list"] != nil {
                    var tmp : [OrderDetailResponseBody.Data.Solution.SegmentBaggageMappingList] = []
                    for v in dict["segment_baggage_mapping_list"] as! [Any] {
                        var model = OrderDetailResponseBody.Data.Solution.SegmentBaggageMappingList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.segmentBaggageMappingList = tmp
                }
                if dict.keys.contains("segment_refund_change_rule_mapping_list") && dict["segment_refund_change_rule_mapping_list"] != nil {
                    var tmp : [OrderDetailResponseBody.Data.Solution.SegmentRefundChangeRuleMappingList] = []
                    for v in dict["segment_refund_change_rule_mapping_list"] as! [Any] {
                        var model = OrderDetailResponseBody.Data.Solution.SegmentRefundChangeRuleMappingList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.segmentRefundChangeRuleMappingList = tmp
                }
                if dict.keys.contains("solution_id") && dict["solution_id"] != nil {
                    self.solutionId = dict["solution_id"] as! String
                }
            }
        }
        public var ancillaryItemDetailList: [OrderDetailResponseBody.Data.AncillaryItemDetailList]?

        public var baggageAllowanceMap: [String: DataBaggageAllowanceMapValue]?

        public var bookTime: Int64?

        public var flightItemDetailList: [OrderDetailResponseBody.Data.FlightItemDetailList]?

        public var orderNum: Int64?

        public var orderStatus: Int32?

        public var outOrderNum: String?

        public var passengerList: [OrderDetailResponseBody.Data.PassengerList]?

        public var payStatus: Int32?

        public var payTime: Int64?

        public var promotionPrice: Double?

        public var realPayPrice: Double?

        public var refundChangeRuleMap: [String: DataRefundChangeRuleMapValue]?

        public var sessionNick: String?

        public var solution: OrderDetailResponseBody.Data.Solution?

        public var succeedTime: Int64?

        public var totalPrice: Double?

        public var transactionNo: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.solution?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.ancillaryItemDetailList != nil {
                var tmp : [Any] = []
                for k in self.ancillaryItemDetailList! {
                    tmp.append(k.toMap())
                }
                map["ancillary_item_detail_list"] = tmp
            }
            if self.baggageAllowanceMap != nil {
                var tmp : [String: Any] = [:]
                for (k, v) in self.baggageAllowanceMap! {
                    tmp[k] = v.toMap()
                }
                map["baggage_allowance_map"] = tmp
            }
            if self.bookTime != nil {
                map["book_time"] = self.bookTime!
            }
            if self.flightItemDetailList != nil {
                var tmp : [Any] = []
                for k in self.flightItemDetailList! {
                    tmp.append(k.toMap())
                }
                map["flight_item_detail_list"] = tmp
            }
            if self.orderNum != nil {
                map["order_num"] = self.orderNum!
            }
            if self.orderStatus != nil {
                map["order_status"] = self.orderStatus!
            }
            if self.outOrderNum != nil {
                map["out_order_num"] = self.outOrderNum!
            }
            if self.passengerList != nil {
                var tmp : [Any] = []
                for k in self.passengerList! {
                    tmp.append(k.toMap())
                }
                map["passenger_list"] = tmp
            }
            if self.payStatus != nil {
                map["pay_status"] = self.payStatus!
            }
            if self.payTime != nil {
                map["pay_time"] = self.payTime!
            }
            if self.promotionPrice != nil {
                map["promotion_price"] = self.promotionPrice!
            }
            if self.realPayPrice != nil {
                map["real_pay_price"] = self.realPayPrice!
            }
            if self.refundChangeRuleMap != nil {
                var tmp : [String: Any] = [:]
                for (k, v) in self.refundChangeRuleMap! {
                    tmp[k] = v.toMap()
                }
                map["refund_change_rule_map"] = tmp
            }
            if self.sessionNick != nil {
                map["session_nick"] = self.sessionNick!
            }
            if self.solution != nil {
                map["solution"] = self.solution?.toMap()
            }
            if self.succeedTime != nil {
                map["succeed_time"] = self.succeedTime!
            }
            if self.totalPrice != nil {
                map["total_price"] = self.totalPrice!
            }
            if self.transactionNo != nil {
                map["transaction_no"] = self.transactionNo!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ancillary_item_detail_list") && dict["ancillary_item_detail_list"] != nil {
                var tmp : [OrderDetailResponseBody.Data.AncillaryItemDetailList] = []
                for v in dict["ancillary_item_detail_list"] as! [Any] {
                    var model = OrderDetailResponseBody.Data.AncillaryItemDetailList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.ancillaryItemDetailList = tmp
            }
            if dict.keys.contains("baggage_allowance_map") && dict["baggage_allowance_map"] != nil {
                var tmp : [String: DataBaggageAllowanceMapValue] = [:]
                for (k, v) in dict["baggage_allowance_map"] as! [String: Any] {
                    if v != nil {
                        var model = DataBaggageAllowanceMapValue()
                        model.fromMap(v as! [String: Any])
                        tmp[k] = model
                    }
                }
                self.baggageAllowanceMap = tmp
            }
            if dict.keys.contains("book_time") && dict["book_time"] != nil {
                self.bookTime = dict["book_time"] as! Int64
            }
            if dict.keys.contains("flight_item_detail_list") && dict["flight_item_detail_list"] != nil {
                var tmp : [OrderDetailResponseBody.Data.FlightItemDetailList] = []
                for v in dict["flight_item_detail_list"] as! [Any] {
                    var model = OrderDetailResponseBody.Data.FlightItemDetailList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.flightItemDetailList = tmp
            }
            if dict.keys.contains("order_num") && dict["order_num"] != nil {
                self.orderNum = dict["order_num"] as! Int64
            }
            if dict.keys.contains("order_status") && dict["order_status"] != nil {
                self.orderStatus = dict["order_status"] as! Int32
            }
            if dict.keys.contains("out_order_num") && dict["out_order_num"] != nil {
                self.outOrderNum = dict["out_order_num"] as! String
            }
            if dict.keys.contains("passenger_list") && dict["passenger_list"] != nil {
                var tmp : [OrderDetailResponseBody.Data.PassengerList] = []
                for v in dict["passenger_list"] as! [Any] {
                    var model = OrderDetailResponseBody.Data.PassengerList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.passengerList = tmp
            }
            if dict.keys.contains("pay_status") && dict["pay_status"] != nil {
                self.payStatus = dict["pay_status"] as! Int32
            }
            if dict.keys.contains("pay_time") && dict["pay_time"] != nil {
                self.payTime = dict["pay_time"] as! Int64
            }
            if dict.keys.contains("promotion_price") && dict["promotion_price"] != nil {
                self.promotionPrice = dict["promotion_price"] as! Double
            }
            if dict.keys.contains("real_pay_price") && dict["real_pay_price"] != nil {
                self.realPayPrice = dict["real_pay_price"] as! Double
            }
            if dict.keys.contains("refund_change_rule_map") && dict["refund_change_rule_map"] != nil {
                var tmp : [String: DataRefundChangeRuleMapValue] = [:]
                for (k, v) in dict["refund_change_rule_map"] as! [String: Any] {
                    if v != nil {
                        var model = DataRefundChangeRuleMapValue()
                        model.fromMap(v as! [String: Any])
                        tmp[k] = model
                    }
                }
                self.refundChangeRuleMap = tmp
            }
            if dict.keys.contains("session_nick") && dict["session_nick"] != nil {
                self.sessionNick = dict["session_nick"] as! String
            }
            if dict.keys.contains("solution") && dict["solution"] != nil {
                var model = OrderDetailResponseBody.Data.Solution()
                model.fromMap(dict["solution"] as! [String: Any])
                self.solution = model
            }
            if dict.keys.contains("succeed_time") && dict["succeed_time"] != nil {
                self.succeedTime = dict["succeed_time"] as! Int64
            }
            if dict.keys.contains("total_price") && dict["total_price"] != nil {
                self.totalPrice = dict["total_price"] as! Double
            }
            if dict.keys.contains("transaction_no") && dict["transaction_no"] != nil {
                self.transactionNo = dict["transaction_no"] as! String
            }
        }
    }
    public var requestId: String?

    public var data: OrderDetailResponseBody.Data?

    public var errorCode: String?

    public var errorData: Any?

    public var errorMsg: String?

    public var status: Int32?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errorCode != nil {
            map["error_code"] = self.errorCode!
        }
        if self.errorData != nil {
            map["error_data"] = self.errorData!
        }
        if self.errorMsg != nil {
            map["error_msg"] = self.errorMsg!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = OrderDetailResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("error_code") && dict["error_code"] != nil {
            self.errorCode = dict["error_code"] as! String
        }
        if dict.keys.contains("error_data") && dict["error_data"] != nil {
            self.errorData = dict["error_data"] as! Any
        }
        if dict.keys.contains("error_msg") && dict["error_msg"] != nil {
            self.errorMsg = dict["error_msg"] as! String
        }
        if dict.keys.contains("status") && dict["status"] != nil {
            self.status = dict["status"] as! Int32
        }
        if dict.keys.contains("success") && dict["success"] != nil {
            self.success = dict["success"] as! Bool
        }
    }
}

public class OrderDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OrderDetailResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = OrderDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class OrderListHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xAcsAirticketAccessToken: String?

    public var xAcsAirticketLanguage: String?

    public override init() {
        super.init()
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
        if self.xAcsAirticketAccessToken != nil {
            map["x-acs-airticket-access-token"] = self.xAcsAirticketAccessToken!
        }
        if self.xAcsAirticketLanguage != nil {
            map["x-acs-airticket-language"] = self.xAcsAirticketLanguage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("x-acs-airticket-access-token") && dict["x-acs-airticket-access-token"] != nil {
            self.xAcsAirticketAccessToken = dict["x-acs-airticket-access-token"] as! String
        }
        if dict.keys.contains("x-acs-airticket-language") && dict["x-acs-airticket-language"] != nil {
            self.xAcsAirticketLanguage = dict["x-acs-airticket-language"] as! String
        }
    }
}

public class OrderListRequest : Tea.TeaModel {
    public var bookTimeEnd: Int64?

    public var bookTimeStart: Int64?

    public var pageIndex: Int32?

    public var pageSize: Int32?

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
        if self.bookTimeEnd != nil {
            map["book_time_end"] = self.bookTimeEnd!
        }
        if self.bookTimeStart != nil {
            map["book_time_start"] = self.bookTimeStart!
        }
        if self.pageIndex != nil {
            map["page_index"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["page_size"] = self.pageSize!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("book_time_end") && dict["book_time_end"] != nil {
            self.bookTimeEnd = dict["book_time_end"] as! Int64
        }
        if dict.keys.contains("book_time_start") && dict["book_time_start"] != nil {
            self.bookTimeStart = dict["book_time_start"] as! Int64
        }
        if dict.keys.contains("page_index") && dict["page_index"] != nil {
            self.pageIndex = dict["page_index"] as! Int32
        }
        if dict.keys.contains("page_size") && dict["page_size"] != nil {
            self.pageSize = dict["page_size"] as! Int32
        }
        if dict.keys.contains("status") && dict["status"] != nil {
            self.status = dict["status"] as! Int32
        }
    }
}

public class OrderListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public class PassengerList : Tea.TeaModel {
                public class Credential : Tea.TeaModel {
                    public var certIssuePlace: String?

                    public var credentialNum: String?

                    public var credentialType: Int32?

                    public var expireDate: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.certIssuePlace != nil {
                            map["cert_issue_place"] = self.certIssuePlace!
                        }
                        if self.credentialNum != nil {
                            map["credential_num"] = self.credentialNum!
                        }
                        if self.credentialType != nil {
                            map["credential_type"] = self.credentialType!
                        }
                        if self.expireDate != nil {
                            map["expire_date"] = self.expireDate!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("cert_issue_place") && dict["cert_issue_place"] != nil {
                            self.certIssuePlace = dict["cert_issue_place"] as! String
                        }
                        if dict.keys.contains("credential_num") && dict["credential_num"] != nil {
                            self.credentialNum = dict["credential_num"] as! String
                        }
                        if dict.keys.contains("credential_type") && dict["credential_type"] != nil {
                            self.credentialType = dict["credential_type"] as! Int32
                        }
                        if dict.keys.contains("expire_date") && dict["expire_date"] != nil {
                            self.expireDate = dict["expire_date"] as! String
                        }
                    }
                }
                public var birthday: String?

                public var credential: OrderListResponseBody.Data.List.PassengerList.Credential?

                public var firstName: String?

                public var gender: Int32?

                public var lastName: String?

                public var mobileCountryCode: String?

                public var mobilePhoneNumber: String?

                public var nationality: String?

                public var type: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.credential?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.birthday != nil {
                        map["birthday"] = self.birthday!
                    }
                    if self.credential != nil {
                        map["credential"] = self.credential?.toMap()
                    }
                    if self.firstName != nil {
                        map["first_name"] = self.firstName!
                    }
                    if self.gender != nil {
                        map["gender"] = self.gender!
                    }
                    if self.lastName != nil {
                        map["last_name"] = self.lastName!
                    }
                    if self.mobileCountryCode != nil {
                        map["mobile_country_code"] = self.mobileCountryCode!
                    }
                    if self.mobilePhoneNumber != nil {
                        map["mobile_phone_number"] = self.mobilePhoneNumber!
                    }
                    if self.nationality != nil {
                        map["nationality"] = self.nationality!
                    }
                    if self.type != nil {
                        map["type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("birthday") && dict["birthday"] != nil {
                        self.birthday = dict["birthday"] as! String
                    }
                    if dict.keys.contains("credential") && dict["credential"] != nil {
                        var model = OrderListResponseBody.Data.List.PassengerList.Credential()
                        model.fromMap(dict["credential"] as! [String: Any])
                        self.credential = model
                    }
                    if dict.keys.contains("first_name") && dict["first_name"] != nil {
                        self.firstName = dict["first_name"] as! String
                    }
                    if dict.keys.contains("gender") && dict["gender"] != nil {
                        self.gender = dict["gender"] as! Int32
                    }
                    if dict.keys.contains("last_name") && dict["last_name"] != nil {
                        self.lastName = dict["last_name"] as! String
                    }
                    if dict.keys.contains("mobile_country_code") && dict["mobile_country_code"] != nil {
                        self.mobileCountryCode = dict["mobile_country_code"] as! String
                    }
                    if dict.keys.contains("mobile_phone_number") && dict["mobile_phone_number"] != nil {
                        self.mobilePhoneNumber = dict["mobile_phone_number"] as! String
                    }
                    if dict.keys.contains("nationality") && dict["nationality"] != nil {
                        self.nationality = dict["nationality"] as! String
                    }
                    if dict.keys.contains("type") && dict["type"] != nil {
                        self.type = dict["type"] as! Int32
                    }
                }
            }
            public var bookTime: Int64?

            public var orderNum: Int64?

            public var orderStatus: String?

            public var outOrderNum: String?

            public var passengerList: [OrderListResponseBody.Data.List.PassengerList]?

            public var payStatus: String?

            public var payTime: Int64?

            public var promotionPrice: Double?

            public var realPayPrice: Double?

            public var sessionNick: String?

            public var succeedTime: Int64?

            public var totalPrice: Double?

            public var transactionNo: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bookTime != nil {
                    map["book_time"] = self.bookTime!
                }
                if self.orderNum != nil {
                    map["order_num"] = self.orderNum!
                }
                if self.orderStatus != nil {
                    map["order_status"] = self.orderStatus!
                }
                if self.outOrderNum != nil {
                    map["out_order_num"] = self.outOrderNum!
                }
                if self.passengerList != nil {
                    var tmp : [Any] = []
                    for k in self.passengerList! {
                        tmp.append(k.toMap())
                    }
                    map["passenger_list"] = tmp
                }
                if self.payStatus != nil {
                    map["pay_status"] = self.payStatus!
                }
                if self.payTime != nil {
                    map["pay_time"] = self.payTime!
                }
                if self.promotionPrice != nil {
                    map["promotion_price"] = self.promotionPrice!
                }
                if self.realPayPrice != nil {
                    map["real_pay_price"] = self.realPayPrice!
                }
                if self.sessionNick != nil {
                    map["session_nick"] = self.sessionNick!
                }
                if self.succeedTime != nil {
                    map["succeed_time"] = self.succeedTime!
                }
                if self.totalPrice != nil {
                    map["total_price"] = self.totalPrice!
                }
                if self.transactionNo != nil {
                    map["transaction_no"] = self.transactionNo!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("book_time") && dict["book_time"] != nil {
                    self.bookTime = dict["book_time"] as! Int64
                }
                if dict.keys.contains("order_num") && dict["order_num"] != nil {
                    self.orderNum = dict["order_num"] as! Int64
                }
                if dict.keys.contains("order_status") && dict["order_status"] != nil {
                    self.orderStatus = dict["order_status"] as! String
                }
                if dict.keys.contains("out_order_num") && dict["out_order_num"] != nil {
                    self.outOrderNum = dict["out_order_num"] as! String
                }
                if dict.keys.contains("passenger_list") && dict["passenger_list"] != nil {
                    var tmp : [OrderListResponseBody.Data.List.PassengerList] = []
                    for v in dict["passenger_list"] as! [Any] {
                        var model = OrderListResponseBody.Data.List.PassengerList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.passengerList = tmp
                }
                if dict.keys.contains("pay_status") && dict["pay_status"] != nil {
                    self.payStatus = dict["pay_status"] as! String
                }
                if dict.keys.contains("pay_time") && dict["pay_time"] != nil {
                    self.payTime = dict["pay_time"] as! Int64
                }
                if dict.keys.contains("promotion_price") && dict["promotion_price"] != nil {
                    self.promotionPrice = dict["promotion_price"] as! Double
                }
                if dict.keys.contains("real_pay_price") && dict["real_pay_price"] != nil {
                    self.realPayPrice = dict["real_pay_price"] as! Double
                }
                if dict.keys.contains("session_nick") && dict["session_nick"] != nil {
                    self.sessionNick = dict["session_nick"] as! String
                }
                if dict.keys.contains("succeed_time") && dict["succeed_time"] != nil {
                    self.succeedTime = dict["succeed_time"] as! Int64
                }
                if dict.keys.contains("total_price") && dict["total_price"] != nil {
                    self.totalPrice = dict["total_price"] as! Double
                }
                if dict.keys.contains("transaction_no") && dict["transaction_no"] != nil {
                    self.transactionNo = dict["transaction_no"] as! String
                }
            }
        }
        public class Pagination : Tea.TeaModel {
            public var currentPage: Int32?

            public var pageSize: Int32?

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
                if self.currentPage != nil {
                    map["current_page"] = self.currentPage!
                }
                if self.pageSize != nil {
                    map["page_size"] = self.pageSize!
                }
                if self.totalCount != nil {
                    map["total_count"] = self.totalCount!
                }
                if self.totalPage != nil {
                    map["total_page"] = self.totalPage!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("current_page") && dict["current_page"] != nil {
                    self.currentPage = dict["current_page"] as! Int32
                }
                if dict.keys.contains("page_size") && dict["page_size"] != nil {
                    self.pageSize = dict["page_size"] as! Int32
                }
                if dict.keys.contains("total_count") && dict["total_count"] != nil {
                    self.totalCount = dict["total_count"] as! Int32
                }
                if dict.keys.contains("total_page") && dict["total_page"] != nil {
                    self.totalPage = dict["total_page"] as! Int32
                }
            }
        }
        public var list: [OrderListResponseBody.Data.List]?

        public var pagination: OrderListResponseBody.Data.Pagination?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.pagination?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["list"] = tmp
            }
            if self.pagination != nil {
                map["pagination"] = self.pagination?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("list") && dict["list"] != nil {
                var tmp : [OrderListResponseBody.Data.List] = []
                for v in dict["list"] as! [Any] {
                    var model = OrderListResponseBody.Data.List()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.list = tmp
            }
            if dict.keys.contains("pagination") && dict["pagination"] != nil {
                var model = OrderListResponseBody.Data.Pagination()
                model.fromMap(dict["pagination"] as! [String: Any])
                self.pagination = model
            }
        }
    }
    public var requestId: String?

    public var data: OrderListResponseBody.Data?

    public var errorCode: String?

    public var errorData: Any?

    public var errorMsg: String?

    public var status: Int32?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errorCode != nil {
            map["error_code"] = self.errorCode!
        }
        if self.errorData != nil {
            map["error_data"] = self.errorData!
        }
        if self.errorMsg != nil {
            map["error_msg"] = self.errorMsg!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = OrderListResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("error_code") && dict["error_code"] != nil {
            self.errorCode = dict["error_code"] as! String
        }
        if dict.keys.contains("error_data") && dict["error_data"] != nil {
            self.errorData = dict["error_data"] as! Any
        }
        if dict.keys.contains("error_msg") && dict["error_msg"] != nil {
            self.errorMsg = dict["error_msg"] as! String
        }
        if dict.keys.contains("status") && dict["status"] != nil {
            self.status = dict["status"] as! Int32
        }
        if dict.keys.contains("success") && dict["success"] != nil {
            self.success = dict["success"] as! Bool
        }
    }
}

public class OrderListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OrderListResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = OrderListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PricingHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xAcsAirticketAccessToken: String?

    public var xAcsAirticketLanguage: String?

    public override init() {
        super.init()
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
        if self.xAcsAirticketAccessToken != nil {
            map["x-acs-airticket-access-token"] = self.xAcsAirticketAccessToken!
        }
        if self.xAcsAirticketLanguage != nil {
            map["x-acs-airticket-language"] = self.xAcsAirticketLanguage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("x-acs-airticket-access-token") && dict["x-acs-airticket-access-token"] != nil {
            self.xAcsAirticketAccessToken = dict["x-acs-airticket-access-token"] as! String
        }
        if dict.keys.contains("x-acs-airticket-language") && dict["x-acs-airticket-language"] != nil {
            self.xAcsAirticketLanguage = dict["x-acs-airticket-language"] as! String
        }
    }
}

public class PricingRequest : Tea.TeaModel {
    public var solutionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.solutionId != nil {
            map["solution_id"] = self.solutionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("solution_id") && dict["solution_id"] != nil {
            self.solutionId = dict["solution_id"] as! String
        }
    }
}

public class PricingResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ChangedPriceInfo : Tea.TeaModel {
            public var adultPrice: Double?

            public var adultTax: Double?

            public var childPrice: Double?

            public var childTax: Double?

            public var infantPrice: Double?

            public var infantTax: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.adultPrice != nil {
                    map["adult_price"] = self.adultPrice!
                }
                if self.adultTax != nil {
                    map["adult_tax"] = self.adultTax!
                }
                if self.childPrice != nil {
                    map["child_price"] = self.childPrice!
                }
                if self.childTax != nil {
                    map["child_tax"] = self.childTax!
                }
                if self.infantPrice != nil {
                    map["infant_price"] = self.infantPrice!
                }
                if self.infantTax != nil {
                    map["infant_tax"] = self.infantTax!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("adult_price") && dict["adult_price"] != nil {
                    self.adultPrice = dict["adult_price"] as! Double
                }
                if dict.keys.contains("adult_tax") && dict["adult_tax"] != nil {
                    self.adultTax = dict["adult_tax"] as! Double
                }
                if dict.keys.contains("child_price") && dict["child_price"] != nil {
                    self.childPrice = dict["child_price"] as! Double
                }
                if dict.keys.contains("child_tax") && dict["child_tax"] != nil {
                    self.childTax = dict["child_tax"] as! Double
                }
                if dict.keys.contains("infant_price") && dict["infant_price"] != nil {
                    self.infantPrice = dict["infant_price"] as! Double
                }
                if dict.keys.contains("infant_tax") && dict["infant_tax"] != nil {
                    self.infantTax = dict["infant_tax"] as! Double
                }
            }
        }
        public class OriginalPriceInfo : Tea.TeaModel {
            public var adultPrice: Double?

            public var adultTax: Double?

            public var childPrice: Double?

            public var childTax: Double?

            public var infantPrice: Double?

            public var infantTax: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.adultPrice != nil {
                    map["adult_price"] = self.adultPrice!
                }
                if self.adultTax != nil {
                    map["adult_tax"] = self.adultTax!
                }
                if self.childPrice != nil {
                    map["child_price"] = self.childPrice!
                }
                if self.childTax != nil {
                    map["child_tax"] = self.childTax!
                }
                if self.infantPrice != nil {
                    map["infant_price"] = self.infantPrice!
                }
                if self.infantTax != nil {
                    map["infant_tax"] = self.infantTax!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("adult_price") && dict["adult_price"] != nil {
                    self.adultPrice = dict["adult_price"] as! Double
                }
                if dict.keys.contains("adult_tax") && dict["adult_tax"] != nil {
                    self.adultTax = dict["adult_tax"] as! Double
                }
                if dict.keys.contains("child_price") && dict["child_price"] != nil {
                    self.childPrice = dict["child_price"] as! Double
                }
                if dict.keys.contains("child_tax") && dict["child_tax"] != nil {
                    self.childTax = dict["child_tax"] as! Double
                }
                if dict.keys.contains("infant_price") && dict["infant_price"] != nil {
                    self.infantPrice = dict["infant_price"] as! Double
                }
                if dict.keys.contains("infant_tax") && dict["infant_tax"] != nil {
                    self.infantTax = dict["infant_tax"] as! Double
                }
            }
        }
        public class Solution : Tea.TeaModel {
            public class JourneyList : Tea.TeaModel {
                public class SegmentList : Tea.TeaModel {
                    public var arrivalAirport: String?

                    public var arrivalCity: String?

                    public var arrivalTerminal: String?

                    public var arrivalTime: String?

                    public var availability: String?

                    public var cabin: String?

                    public var cabinClass: String?

                    public var codeShare: Bool?

                    public var departureAirport: String?

                    public var departureCity: String?

                    public var departureTerminal: String?

                    public var departureTime: String?

                    public var equipType: String?

                    public var flightDuration: Int32?

                    public var marketingAirline: String?

                    public var marketingFlightNo: String?

                    public var marketingFlightNoInt: Int32?

                    public var operatingAirline: String?

                    public var operatingFlightNo: String?

                    public var segmentId: String?

                    public var stopCityList: String?

                    public var stopQuantity: Int32?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.arrivalAirport != nil {
                            map["arrival_airport"] = self.arrivalAirport!
                        }
                        if self.arrivalCity != nil {
                            map["arrival_city"] = self.arrivalCity!
                        }
                        if self.arrivalTerminal != nil {
                            map["arrival_terminal"] = self.arrivalTerminal!
                        }
                        if self.arrivalTime != nil {
                            map["arrival_time"] = self.arrivalTime!
                        }
                        if self.availability != nil {
                            map["availability"] = self.availability!
                        }
                        if self.cabin != nil {
                            map["cabin"] = self.cabin!
                        }
                        if self.cabinClass != nil {
                            map["cabin_class"] = self.cabinClass!
                        }
                        if self.codeShare != nil {
                            map["code_share"] = self.codeShare!
                        }
                        if self.departureAirport != nil {
                            map["departure_airport"] = self.departureAirport!
                        }
                        if self.departureCity != nil {
                            map["departure_city"] = self.departureCity!
                        }
                        if self.departureTerminal != nil {
                            map["departure_terminal"] = self.departureTerminal!
                        }
                        if self.departureTime != nil {
                            map["departure_time"] = self.departureTime!
                        }
                        if self.equipType != nil {
                            map["equip_type"] = self.equipType!
                        }
                        if self.flightDuration != nil {
                            map["flight_duration"] = self.flightDuration!
                        }
                        if self.marketingAirline != nil {
                            map["marketing_airline"] = self.marketingAirline!
                        }
                        if self.marketingFlightNo != nil {
                            map["marketing_flight_no"] = self.marketingFlightNo!
                        }
                        if self.marketingFlightNoInt != nil {
                            map["marketing_flight_no_int"] = self.marketingFlightNoInt!
                        }
                        if self.operatingAirline != nil {
                            map["operating_airline"] = self.operatingAirline!
                        }
                        if self.operatingFlightNo != nil {
                            map["operating_flight_no"] = self.operatingFlightNo!
                        }
                        if self.segmentId != nil {
                            map["segment_id"] = self.segmentId!
                        }
                        if self.stopCityList != nil {
                            map["stop_city_list"] = self.stopCityList!
                        }
                        if self.stopQuantity != nil {
                            map["stop_quantity"] = self.stopQuantity!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("arrival_airport") && dict["arrival_airport"] != nil {
                            self.arrivalAirport = dict["arrival_airport"] as! String
                        }
                        if dict.keys.contains("arrival_city") && dict["arrival_city"] != nil {
                            self.arrivalCity = dict["arrival_city"] as! String
                        }
                        if dict.keys.contains("arrival_terminal") && dict["arrival_terminal"] != nil {
                            self.arrivalTerminal = dict["arrival_terminal"] as! String
                        }
                        if dict.keys.contains("arrival_time") && dict["arrival_time"] != nil {
                            self.arrivalTime = dict["arrival_time"] as! String
                        }
                        if dict.keys.contains("availability") && dict["availability"] != nil {
                            self.availability = dict["availability"] as! String
                        }
                        if dict.keys.contains("cabin") && dict["cabin"] != nil {
                            self.cabin = dict["cabin"] as! String
                        }
                        if dict.keys.contains("cabin_class") && dict["cabin_class"] != nil {
                            self.cabinClass = dict["cabin_class"] as! String
                        }
                        if dict.keys.contains("code_share") && dict["code_share"] != nil {
                            self.codeShare = dict["code_share"] as! Bool
                        }
                        if dict.keys.contains("departure_airport") && dict["departure_airport"] != nil {
                            self.departureAirport = dict["departure_airport"] as! String
                        }
                        if dict.keys.contains("departure_city") && dict["departure_city"] != nil {
                            self.departureCity = dict["departure_city"] as! String
                        }
                        if dict.keys.contains("departure_terminal") && dict["departure_terminal"] != nil {
                            self.departureTerminal = dict["departure_terminal"] as! String
                        }
                        if dict.keys.contains("departure_time") && dict["departure_time"] != nil {
                            self.departureTime = dict["departure_time"] as! String
                        }
                        if dict.keys.contains("equip_type") && dict["equip_type"] != nil {
                            self.equipType = dict["equip_type"] as! String
                        }
                        if dict.keys.contains("flight_duration") && dict["flight_duration"] != nil {
                            self.flightDuration = dict["flight_duration"] as! Int32
                        }
                        if dict.keys.contains("marketing_airline") && dict["marketing_airline"] != nil {
                            self.marketingAirline = dict["marketing_airline"] as! String
                        }
                        if dict.keys.contains("marketing_flight_no") && dict["marketing_flight_no"] != nil {
                            self.marketingFlightNo = dict["marketing_flight_no"] as! String
                        }
                        if dict.keys.contains("marketing_flight_no_int") && dict["marketing_flight_no_int"] != nil {
                            self.marketingFlightNoInt = dict["marketing_flight_no_int"] as! Int32
                        }
                        if dict.keys.contains("operating_airline") && dict["operating_airline"] != nil {
                            self.operatingAirline = dict["operating_airline"] as! String
                        }
                        if dict.keys.contains("operating_flight_no") && dict["operating_flight_no"] != nil {
                            self.operatingFlightNo = dict["operating_flight_no"] as! String
                        }
                        if dict.keys.contains("segment_id") && dict["segment_id"] != nil {
                            self.segmentId = dict["segment_id"] as! String
                        }
                        if dict.keys.contains("stop_city_list") && dict["stop_city_list"] != nil {
                            self.stopCityList = dict["stop_city_list"] as! String
                        }
                        if dict.keys.contains("stop_quantity") && dict["stop_quantity"] != nil {
                            self.stopQuantity = dict["stop_quantity"] as! Int32
                        }
                    }
                }
                public var segmentList: [PricingResponseBody.Data.Solution.JourneyList.SegmentList]?

                public var transferCount: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.segmentList != nil {
                        var tmp : [Any] = []
                        for k in self.segmentList! {
                            tmp.append(k.toMap())
                        }
                        map["segment_list"] = tmp
                    }
                    if self.transferCount != nil {
                        map["transfer_count"] = self.transferCount!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("segment_list") && dict["segment_list"] != nil {
                        var tmp : [PricingResponseBody.Data.Solution.JourneyList.SegmentList] = []
                        for v in dict["segment_list"] as! [Any] {
                            var model = PricingResponseBody.Data.Solution.JourneyList.SegmentList()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.segmentList = tmp
                    }
                    if dict.keys.contains("transfer_count") && dict["transfer_count"] != nil {
                        self.transferCount = dict["transfer_count"] as! Int32
                    }
                }
            }
            public class SegmentBaggageCheckInInfoList : Tea.TeaModel {
                public var luggageDirectInfoType: Int32?

                public var segmentIdList: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.luggageDirectInfoType != nil {
                        map["luggage_direct_info_type"] = self.luggageDirectInfoType!
                    }
                    if self.segmentIdList != nil {
                        map["segment_id_list"] = self.segmentIdList!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("luggage_direct_info_type") && dict["luggage_direct_info_type"] != nil {
                        self.luggageDirectInfoType = dict["luggage_direct_info_type"] as! Int32
                    }
                    if dict.keys.contains("segment_id_list") && dict["segment_id_list"] != nil {
                        self.segmentIdList = dict["segment_id_list"] as! [String]
                    }
                }
            }
            public class SegmentBaggageMappingList : Tea.TeaModel {
                public var passengerBaggageAllowanceMapping: [String: DataSolutionSegmentBaggageMappingListPassengerBaggageAllowanceMappingValue]?

                public var segmentIdList: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.passengerBaggageAllowanceMapping != nil {
                        var tmp : [String: Any] = [:]
                        for (k, v) in self.passengerBaggageAllowanceMapping! {
                            tmp[k] = v.toMap()
                        }
                        map["passenger_baggage_allowance_mapping"] = tmp
                    }
                    if self.segmentIdList != nil {
                        map["segment_id_list"] = self.segmentIdList!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("passenger_baggage_allowance_mapping") && dict["passenger_baggage_allowance_mapping"] != nil {
                        var tmp : [String: DataSolutionSegmentBaggageMappingListPassengerBaggageAllowanceMappingValue] = [:]
                        for (k, v) in dict["passenger_baggage_allowance_mapping"] as! [String: Any] {
                            if v != nil {
                                var model = DataSolutionSegmentBaggageMappingListPassengerBaggageAllowanceMappingValue()
                                model.fromMap(v as! [String: Any])
                                tmp[k] = model
                            }
                        }
                        self.passengerBaggageAllowanceMapping = tmp
                    }
                    if dict.keys.contains("segment_id_list") && dict["segment_id_list"] != nil {
                        self.segmentIdList = dict["segment_id_list"] as! [String]
                    }
                }
            }
            public class SegmentRefundChangeRuleMappingList : Tea.TeaModel {
                public var refundChangeRuleMap: [String: DataSolutionSegmentRefundChangeRuleMappingListRefundChangeRuleMapValue]?

                public var segmentIdList: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.refundChangeRuleMap != nil {
                        var tmp : [String: Any] = [:]
                        for (k, v) in self.refundChangeRuleMap! {
                            tmp[k] = v.toMap()
                        }
                        map["refund_change_rule_map"] = tmp
                    }
                    if self.segmentIdList != nil {
                        map["segment_id_list"] = self.segmentIdList!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("refund_change_rule_map") && dict["refund_change_rule_map"] != nil {
                        var tmp : [String: DataSolutionSegmentRefundChangeRuleMappingListRefundChangeRuleMapValue] = [:]
                        for (k, v) in dict["refund_change_rule_map"] as! [String: Any] {
                            if v != nil {
                                var model = DataSolutionSegmentRefundChangeRuleMappingListRefundChangeRuleMapValue()
                                model.fromMap(v as! [String: Any])
                                tmp[k] = model
                            }
                        }
                        self.refundChangeRuleMap = tmp
                    }
                    if dict.keys.contains("segment_id_list") && dict["segment_id_list"] != nil {
                        self.segmentIdList = dict["segment_id_list"] as! [String]
                    }
                }
            }
            public var adultPrice: Double?

            public var adultTax: Double?

            public var childPrice: Double?

            public var childTax: Double?

            public var infantPrice: Double?

            public var infantTax: Double?

            public var journeyList: [PricingResponseBody.Data.Solution.JourneyList]?

            public var productTypeDescription: String?

            public var refundTicketCouponDescription: String?

            public var segmentBaggageCheckInInfoList: [PricingResponseBody.Data.Solution.SegmentBaggageCheckInInfoList]?

            public var segmentBaggageMappingList: [PricingResponseBody.Data.Solution.SegmentBaggageMappingList]?

            public var segmentRefundChangeRuleMappingList: [PricingResponseBody.Data.Solution.SegmentRefundChangeRuleMappingList]?

            public var solutionId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.adultPrice != nil {
                    map["adult_price"] = self.adultPrice!
                }
                if self.adultTax != nil {
                    map["adult_tax"] = self.adultTax!
                }
                if self.childPrice != nil {
                    map["child_price"] = self.childPrice!
                }
                if self.childTax != nil {
                    map["child_tax"] = self.childTax!
                }
                if self.infantPrice != nil {
                    map["infant_price"] = self.infantPrice!
                }
                if self.infantTax != nil {
                    map["infant_tax"] = self.infantTax!
                }
                if self.journeyList != nil {
                    var tmp : [Any] = []
                    for k in self.journeyList! {
                        tmp.append(k.toMap())
                    }
                    map["journey_list"] = tmp
                }
                if self.productTypeDescription != nil {
                    map["product_type_description"] = self.productTypeDescription!
                }
                if self.refundTicketCouponDescription != nil {
                    map["refund_ticket_coupon_description"] = self.refundTicketCouponDescription!
                }
                if self.segmentBaggageCheckInInfoList != nil {
                    var tmp : [Any] = []
                    for k in self.segmentBaggageCheckInInfoList! {
                        tmp.append(k.toMap())
                    }
                    map["segment_baggage_check_in_info_list"] = tmp
                }
                if self.segmentBaggageMappingList != nil {
                    var tmp : [Any] = []
                    for k in self.segmentBaggageMappingList! {
                        tmp.append(k.toMap())
                    }
                    map["segment_baggage_mapping_list"] = tmp
                }
                if self.segmentRefundChangeRuleMappingList != nil {
                    var tmp : [Any] = []
                    for k in self.segmentRefundChangeRuleMappingList! {
                        tmp.append(k.toMap())
                    }
                    map["segment_refund_change_rule_mapping_list"] = tmp
                }
                if self.solutionId != nil {
                    map["solution_id"] = self.solutionId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("adult_price") && dict["adult_price"] != nil {
                    self.adultPrice = dict["adult_price"] as! Double
                }
                if dict.keys.contains("adult_tax") && dict["adult_tax"] != nil {
                    self.adultTax = dict["adult_tax"] as! Double
                }
                if dict.keys.contains("child_price") && dict["child_price"] != nil {
                    self.childPrice = dict["child_price"] as! Double
                }
                if dict.keys.contains("child_tax") && dict["child_tax"] != nil {
                    self.childTax = dict["child_tax"] as! Double
                }
                if dict.keys.contains("infant_price") && dict["infant_price"] != nil {
                    self.infantPrice = dict["infant_price"] as! Double
                }
                if dict.keys.contains("infant_tax") && dict["infant_tax"] != nil {
                    self.infantTax = dict["infant_tax"] as! Double
                }
                if dict.keys.contains("journey_list") && dict["journey_list"] != nil {
                    var tmp : [PricingResponseBody.Data.Solution.JourneyList] = []
                    for v in dict["journey_list"] as! [Any] {
                        var model = PricingResponseBody.Data.Solution.JourneyList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.journeyList = tmp
                }
                if dict.keys.contains("product_type_description") && dict["product_type_description"] != nil {
                    self.productTypeDescription = dict["product_type_description"] as! String
                }
                if dict.keys.contains("refund_ticket_coupon_description") && dict["refund_ticket_coupon_description"] != nil {
                    self.refundTicketCouponDescription = dict["refund_ticket_coupon_description"] as! String
                }
                if dict.keys.contains("segment_baggage_check_in_info_list") && dict["segment_baggage_check_in_info_list"] != nil {
                    var tmp : [PricingResponseBody.Data.Solution.SegmentBaggageCheckInInfoList] = []
                    for v in dict["segment_baggage_check_in_info_list"] as! [Any] {
                        var model = PricingResponseBody.Data.Solution.SegmentBaggageCheckInInfoList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.segmentBaggageCheckInInfoList = tmp
                }
                if dict.keys.contains("segment_baggage_mapping_list") && dict["segment_baggage_mapping_list"] != nil {
                    var tmp : [PricingResponseBody.Data.Solution.SegmentBaggageMappingList] = []
                    for v in dict["segment_baggage_mapping_list"] as! [Any] {
                        var model = PricingResponseBody.Data.Solution.SegmentBaggageMappingList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.segmentBaggageMappingList = tmp
                }
                if dict.keys.contains("segment_refund_change_rule_mapping_list") && dict["segment_refund_change_rule_mapping_list"] != nil {
                    var tmp : [PricingResponseBody.Data.Solution.SegmentRefundChangeRuleMappingList] = []
                    for v in dict["segment_refund_change_rule_mapping_list"] as! [Any] {
                        var model = PricingResponseBody.Data.Solution.SegmentRefundChangeRuleMappingList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.segmentRefundChangeRuleMappingList = tmp
                }
                if dict.keys.contains("solution_id") && dict["solution_id"] != nil {
                    self.solutionId = dict["solution_id"] as! String
                }
            }
        }
        public var changedPriceInfo: PricingResponseBody.Data.ChangedPriceInfo?

        public var isChanged: Bool?

        public var originalPriceInfo: PricingResponseBody.Data.OriginalPriceInfo?

        public var remainSeats: String?

        public var solution: PricingResponseBody.Data.Solution?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.changedPriceInfo?.validate()
            try self.originalPriceInfo?.validate()
            try self.solution?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.changedPriceInfo != nil {
                map["changed_price_info"] = self.changedPriceInfo?.toMap()
            }
            if self.isChanged != nil {
                map["is_changed"] = self.isChanged!
            }
            if self.originalPriceInfo != nil {
                map["original_price_info"] = self.originalPriceInfo?.toMap()
            }
            if self.remainSeats != nil {
                map["remain_seats"] = self.remainSeats!
            }
            if self.solution != nil {
                map["solution"] = self.solution?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("changed_price_info") && dict["changed_price_info"] != nil {
                var model = PricingResponseBody.Data.ChangedPriceInfo()
                model.fromMap(dict["changed_price_info"] as! [String: Any])
                self.changedPriceInfo = model
            }
            if dict.keys.contains("is_changed") && dict["is_changed"] != nil {
                self.isChanged = dict["is_changed"] as! Bool
            }
            if dict.keys.contains("original_price_info") && dict["original_price_info"] != nil {
                var model = PricingResponseBody.Data.OriginalPriceInfo()
                model.fromMap(dict["original_price_info"] as! [String: Any])
                self.originalPriceInfo = model
            }
            if dict.keys.contains("remain_seats") && dict["remain_seats"] != nil {
                self.remainSeats = dict["remain_seats"] as! String
            }
            if dict.keys.contains("solution") && dict["solution"] != nil {
                var model = PricingResponseBody.Data.Solution()
                model.fromMap(dict["solution"] as! [String: Any])
                self.solution = model
            }
        }
    }
    public var requestId: String?

    public var data: PricingResponseBody.Data?

    public var errorCode: String?

    public var errorData: Any?

    public var errorMsg: String?

    public var status: Int32?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errorCode != nil {
            map["error_code"] = self.errorCode!
        }
        if self.errorData != nil {
            map["error_data"] = self.errorData!
        }
        if self.errorMsg != nil {
            map["error_msg"] = self.errorMsg!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = PricingResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("error_code") && dict["error_code"] != nil {
            self.errorCode = dict["error_code"] as! String
        }
        if dict.keys.contains("error_data") && dict["error_data"] != nil {
            self.errorData = dict["error_data"] as! Any
        }
        if dict.keys.contains("error_msg") && dict["error_msg"] != nil {
            self.errorMsg = dict["error_msg"] as! String
        }
        if dict.keys.contains("status") && dict["status"] != nil {
            self.status = dict["status"] as! Int32
        }
        if dict.keys.contains("success") && dict["success"] != nil {
            self.success = dict["success"] as! Bool
        }
    }
}

public class PricingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PricingResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = PricingResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RefundApplyHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xAcsAirticketAccessToken: String?

    public var xAcsAirticketLanguage: String?

    public override init() {
        super.init()
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
        if self.xAcsAirticketAccessToken != nil {
            map["x-acs-airticket-access-token"] = self.xAcsAirticketAccessToken!
        }
        if self.xAcsAirticketLanguage != nil {
            map["x-acs-airticket-language"] = self.xAcsAirticketLanguage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("x-acs-airticket-access-token") && dict["x-acs-airticket-access-token"] != nil {
            self.xAcsAirticketAccessToken = dict["x-acs-airticket-access-token"] as! String
        }
        if dict.keys.contains("x-acs-airticket-language") && dict["x-acs-airticket-language"] != nil {
            self.xAcsAirticketLanguage = dict["x-acs-airticket-language"] as! String
        }
    }
}

public class RefundApplyRequest : Tea.TeaModel {
    public class RefundJourneys : Tea.TeaModel {
        public class SegmentList : Tea.TeaModel {
            public var arrivalAirport: String?

            public var arrivalCity: String?

            public var departureAirport: String?

            public var departureCity: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.arrivalAirport != nil {
                    map["arrival_airport"] = self.arrivalAirport!
                }
                if self.arrivalCity != nil {
                    map["arrival_city"] = self.arrivalCity!
                }
                if self.departureAirport != nil {
                    map["departure_airport"] = self.departureAirport!
                }
                if self.departureCity != nil {
                    map["departure_city"] = self.departureCity!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("arrival_airport") && dict["arrival_airport"] != nil {
                    self.arrivalAirport = dict["arrival_airport"] as! String
                }
                if dict.keys.contains("arrival_city") && dict["arrival_city"] != nil {
                    self.arrivalCity = dict["arrival_city"] as! String
                }
                if dict.keys.contains("departure_airport") && dict["departure_airport"] != nil {
                    self.departureAirport = dict["departure_airport"] as! String
                }
                if dict.keys.contains("departure_city") && dict["departure_city"] != nil {
                    self.departureCity = dict["departure_city"] as! String
                }
            }
        }
        public var segmentList: [RefundApplyRequest.RefundJourneys.SegmentList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.segmentList != nil {
                var tmp : [Any] = []
                for k in self.segmentList! {
                    tmp.append(k.toMap())
                }
                map["segment_list"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("segment_list") && dict["segment_list"] != nil {
                var tmp : [RefundApplyRequest.RefundJourneys.SegmentList] = []
                for v in dict["segment_list"] as! [Any] {
                    var model = RefundApplyRequest.RefundJourneys.SegmentList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.segmentList = tmp
            }
        }
    }
    public class RefundPassengerList : Tea.TeaModel {
        public var document: String?

        public var firstName: String?

        public var lastName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.document != nil {
                map["document"] = self.document!
            }
            if self.firstName != nil {
                map["first_name"] = self.firstName!
            }
            if self.lastName != nil {
                map["last_name"] = self.lastName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("document") && dict["document"] != nil {
                self.document = dict["document"] as! String
            }
            if dict.keys.contains("first_name") && dict["first_name"] != nil {
                self.firstName = dict["first_name"] as! String
            }
            if dict.keys.contains("last_name") && dict["last_name"] != nil {
                self.lastName = dict["last_name"] as! String
            }
        }
    }
    public class RefundType : Tea.TeaModel {
        public var file: [String]?

        public var refundTypeId: Int32?

        public var remark: String?

        public override init() {
            super.init()
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
                map["file"] = self.file!
            }
            if self.refundTypeId != nil {
                map["refund_type_id"] = self.refundTypeId!
            }
            if self.remark != nil {
                map["remark"] = self.remark!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("file") && dict["file"] != nil {
                self.file = dict["file"] as! [String]
            }
            if dict.keys.contains("refund_type_id") && dict["refund_type_id"] != nil {
                self.refundTypeId = dict["refund_type_id"] as! Int32
            }
            if dict.keys.contains("remark") && dict["remark"] != nil {
                self.remark = dict["remark"] as! String
            }
        }
    }
    public var orderNum: Int64?

    public var refundJourneys: [RefundApplyRequest.RefundJourneys]?

    public var refundPassengerList: [RefundApplyRequest.RefundPassengerList]?

    public var refundType: RefundApplyRequest.RefundType?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.refundType?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.orderNum != nil {
            map["order_num"] = self.orderNum!
        }
        if self.refundJourneys != nil {
            var tmp : [Any] = []
            for k in self.refundJourneys! {
                tmp.append(k.toMap())
            }
            map["refund_journeys"] = tmp
        }
        if self.refundPassengerList != nil {
            var tmp : [Any] = []
            for k in self.refundPassengerList! {
                tmp.append(k.toMap())
            }
            map["refund_passenger_list"] = tmp
        }
        if self.refundType != nil {
            map["refund_type"] = self.refundType?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("order_num") && dict["order_num"] != nil {
            self.orderNum = dict["order_num"] as! Int64
        }
        if dict.keys.contains("refund_journeys") && dict["refund_journeys"] != nil {
            var tmp : [RefundApplyRequest.RefundJourneys] = []
            for v in dict["refund_journeys"] as! [Any] {
                var model = RefundApplyRequest.RefundJourneys()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.refundJourneys = tmp
        }
        if dict.keys.contains("refund_passenger_list") && dict["refund_passenger_list"] != nil {
            var tmp : [RefundApplyRequest.RefundPassengerList] = []
            for v in dict["refund_passenger_list"] as! [Any] {
                var model = RefundApplyRequest.RefundPassengerList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.refundPassengerList = tmp
        }
        if dict.keys.contains("refund_type") && dict["refund_type"] != nil {
            var model = RefundApplyRequest.RefundType()
            model.fromMap(dict["refund_type"] as! [String: Any])
            self.refundType = model
        }
    }
}

public class RefundApplyShrinkRequest : Tea.TeaModel {
    public var orderNum: Int64?

    public var refundJourneysShrink: String?

    public var refundPassengerListShrink: String?

    public var refundTypeShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.orderNum != nil {
            map["order_num"] = self.orderNum!
        }
        if self.refundJourneysShrink != nil {
            map["refund_journeys"] = self.refundJourneysShrink!
        }
        if self.refundPassengerListShrink != nil {
            map["refund_passenger_list"] = self.refundPassengerListShrink!
        }
        if self.refundTypeShrink != nil {
            map["refund_type"] = self.refundTypeShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("order_num") && dict["order_num"] != nil {
            self.orderNum = dict["order_num"] as! Int64
        }
        if dict.keys.contains("refund_journeys") && dict["refund_journeys"] != nil {
            self.refundJourneysShrink = dict["refund_journeys"] as! String
        }
        if dict.keys.contains("refund_passenger_list") && dict["refund_passenger_list"] != nil {
            self.refundPassengerListShrink = dict["refund_passenger_list"] as! String
        }
        if dict.keys.contains("refund_type") && dict["refund_type"] != nil {
            self.refundTypeShrink = dict["refund_type"] as! String
        }
    }
}

public class RefundApplyResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class RefundResults : Tea.TeaModel {
            public class RefundPassengers : Tea.TeaModel {
                public var document: String?

                public var firstName: String?

                public var lastName: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.document != nil {
                        map["document"] = self.document!
                    }
                    if self.firstName != nil {
                        map["first_name"] = self.firstName!
                    }
                    if self.lastName != nil {
                        map["last_name"] = self.lastName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("document") && dict["document"] != nil {
                        self.document = dict["document"] as! String
                    }
                    if dict.keys.contains("first_name") && dict["first_name"] != nil {
                        self.firstName = dict["first_name"] as! String
                    }
                    if dict.keys.contains("last_name") && dict["last_name"] != nil {
                        self.lastName = dict["last_name"] as! String
                    }
                }
            }
            public var failReason: String?

            public var refundOrderNum: Int64?

            public var refundPassengers: [RefundApplyResponseBody.Data.RefundResults.RefundPassengers]?

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
                if self.failReason != nil {
                    map["fail_reason"] = self.failReason!
                }
                if self.refundOrderNum != nil {
                    map["refund_order_num"] = self.refundOrderNum!
                }
                if self.refundPassengers != nil {
                    var tmp : [Any] = []
                    for k in self.refundPassengers! {
                        tmp.append(k.toMap())
                    }
                    map["refund_passengers"] = tmp
                }
                if self.status != nil {
                    map["status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("fail_reason") && dict["fail_reason"] != nil {
                    self.failReason = dict["fail_reason"] as! String
                }
                if dict.keys.contains("refund_order_num") && dict["refund_order_num"] != nil {
                    self.refundOrderNum = dict["refund_order_num"] as! Int64
                }
                if dict.keys.contains("refund_passengers") && dict["refund_passengers"] != nil {
                    var tmp : [RefundApplyResponseBody.Data.RefundResults.RefundPassengers] = []
                    for v in dict["refund_passengers"] as! [Any] {
                        var model = RefundApplyResponseBody.Data.RefundResults.RefundPassengers()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.refundPassengers = tmp
                }
                if dict.keys.contains("status") && dict["status"] != nil {
                    self.status = dict["status"] as! Int32
                }
            }
        }
        public var orderNum: Int64?

        public var refundResults: [RefundApplyResponseBody.Data.RefundResults]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.orderNum != nil {
                map["order_num"] = self.orderNum!
            }
            if self.refundResults != nil {
                var tmp : [Any] = []
                for k in self.refundResults! {
                    tmp.append(k.toMap())
                }
                map["refund_results"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("order_num") && dict["order_num"] != nil {
                self.orderNum = dict["order_num"] as! Int64
            }
            if dict.keys.contains("refund_results") && dict["refund_results"] != nil {
                var tmp : [RefundApplyResponseBody.Data.RefundResults] = []
                for v in dict["refund_results"] as! [Any] {
                    var model = RefundApplyResponseBody.Data.RefundResults()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.refundResults = tmp
            }
        }
    }
    public var requestId: String?

    public var data: RefundApplyResponseBody.Data?

    public var errorCode: String?

    public var errorData: Any?

    public var errorMsg: String?

    public var status: Int32?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errorCode != nil {
            map["error_code"] = self.errorCode!
        }
        if self.errorData != nil {
            map["error_data"] = self.errorData!
        }
        if self.errorMsg != nil {
            map["error_msg"] = self.errorMsg!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = RefundApplyResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("error_code") && dict["error_code"] != nil {
            self.errorCode = dict["error_code"] as! String
        }
        if dict.keys.contains("error_data") && dict["error_data"] != nil {
            self.errorData = dict["error_data"] as! Any
        }
        if dict.keys.contains("error_msg") && dict["error_msg"] != nil {
            self.errorMsg = dict["error_msg"] as! String
        }
        if dict.keys.contains("status") && dict["status"] != nil {
            self.status = dict["status"] as! Int32
        }
        if dict.keys.contains("success") && dict["success"] != nil {
            self.success = dict["success"] as! Bool
        }
    }
}

public class RefundApplyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RefundApplyResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RefundApplyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RefundDetailHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xAcsAirticketAccessToken: String?

    public var xAcsAirticketLanguage: String?

    public override init() {
        super.init()
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
        if self.xAcsAirticketAccessToken != nil {
            map["x-acs-airticket-access-token"] = self.xAcsAirticketAccessToken!
        }
        if self.xAcsAirticketLanguage != nil {
            map["x-acs-airticket-language"] = self.xAcsAirticketLanguage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("x-acs-airticket-access-token") && dict["x-acs-airticket-access-token"] != nil {
            self.xAcsAirticketAccessToken = dict["x-acs-airticket-access-token"] as! String
        }
        if dict.keys.contains("x-acs-airticket-language") && dict["x-acs-airticket-language"] != nil {
            self.xAcsAirticketLanguage = dict["x-acs-airticket-language"] as! String
        }
    }
}

public class RefundDetailRequest : Tea.TeaModel {
    public var refundOrderNum: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.refundOrderNum != nil {
            map["refund_order_num"] = self.refundOrderNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("refund_order_num") && dict["refund_order_num"] != nil {
            self.refundOrderNum = dict["refund_order_num"] as! Int64
        }
    }
}

public class RefundDetailResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class MultiRefundDetails : Tea.TeaModel {
            public class PassengerMultiRefundDetails : Tea.TeaModel {
                public class Passenger : Tea.TeaModel {
                    public var document: String?

                    public var firstName: String?

                    public var lastName: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.document != nil {
                            map["document"] = self.document!
                        }
                        if self.firstName != nil {
                            map["first_name"] = self.firstName!
                        }
                        if self.lastName != nil {
                            map["last_name"] = self.lastName!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("document") && dict["document"] != nil {
                            self.document = dict["document"] as! String
                        }
                        if dict.keys.contains("first_name") && dict["first_name"] != nil {
                            self.firstName = dict["first_name"] as! String
                        }
                        if dict.keys.contains("last_name") && dict["last_name"] != nil {
                            self.lastName = dict["last_name"] as! String
                        }
                    }
                }
                public var changeOrderRefundFee: Double?

                public var originalOrderRefundFee: Double?

                public var passenger: RefundDetailResponseBody.Data.MultiRefundDetails.PassengerMultiRefundDetails.Passenger?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.passenger?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.changeOrderRefundFee != nil {
                        map["change_order_refund_fee"] = self.changeOrderRefundFee!
                    }
                    if self.originalOrderRefundFee != nil {
                        map["original_order_refund_fee"] = self.originalOrderRefundFee!
                    }
                    if self.passenger != nil {
                        map["passenger"] = self.passenger?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("change_order_refund_fee") && dict["change_order_refund_fee"] != nil {
                        self.changeOrderRefundFee = dict["change_order_refund_fee"] as! Double
                    }
                    if dict.keys.contains("original_order_refund_fee") && dict["original_order_refund_fee"] != nil {
                        self.originalOrderRefundFee = dict["original_order_refund_fee"] as! Double
                    }
                    if dict.keys.contains("passenger") && dict["passenger"] != nil {
                        var model = RefundDetailResponseBody.Data.MultiRefundDetails.PassengerMultiRefundDetails.Passenger()
                        model.fromMap(dict["passenger"] as! [String: Any])
                        self.passenger = model
                    }
                }
            }
            public var multiRefundOrderNum: Int64?

            public var multiRefundTransactionNo: String?

            public var passengerMultiRefundDetails: [RefundDetailResponseBody.Data.MultiRefundDetails.PassengerMultiRefundDetails]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.multiRefundOrderNum != nil {
                    map["multi_refund_order_num"] = self.multiRefundOrderNum!
                }
                if self.multiRefundTransactionNo != nil {
                    map["multi_refund_transaction_no"] = self.multiRefundTransactionNo!
                }
                if self.passengerMultiRefundDetails != nil {
                    var tmp : [Any] = []
                    for k in self.passengerMultiRefundDetails! {
                        tmp.append(k.toMap())
                    }
                    map["passenger_multi_refund_details"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("multi_refund_order_num") && dict["multi_refund_order_num"] != nil {
                    self.multiRefundOrderNum = dict["multi_refund_order_num"] as! Int64
                }
                if dict.keys.contains("multi_refund_transaction_no") && dict["multi_refund_transaction_no"] != nil {
                    self.multiRefundTransactionNo = dict["multi_refund_transaction_no"] as! String
                }
                if dict.keys.contains("passenger_multi_refund_details") && dict["passenger_multi_refund_details"] != nil {
                    var tmp : [RefundDetailResponseBody.Data.MultiRefundDetails.PassengerMultiRefundDetails] = []
                    for v in dict["passenger_multi_refund_details"] as! [Any] {
                        var model = RefundDetailResponseBody.Data.MultiRefundDetails.PassengerMultiRefundDetails()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.passengerMultiRefundDetails = tmp
                }
            }
        }
        public class PassengerRefundDetails : Tea.TeaModel {
            public class Passenger : Tea.TeaModel {
                public var document: String?

                public var firstName: String?

                public var lastName: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.document != nil {
                        map["document"] = self.document!
                    }
                    if self.firstName != nil {
                        map["first_name"] = self.firstName!
                    }
                    if self.lastName != nil {
                        map["last_name"] = self.lastName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("document") && dict["document"] != nil {
                        self.document = dict["document"] as! String
                    }
                    if dict.keys.contains("first_name") && dict["first_name"] != nil {
                        self.firstName = dict["first_name"] as! String
                    }
                    if dict.keys.contains("last_name") && dict["last_name"] != nil {
                        self.lastName = dict["last_name"] as! String
                    }
                }
            }
            public class RefundFee : Tea.TeaModel {
                public var alreadyUsedTotalFee: Double?

                public var modifyRefundToBuyerMoney: Double?

                public var nonRefundableChangeServiceFee: Double?

                public var nonRefundableChangeUpgradeFee: Double?

                public var nonRefundableTaxFee: Double?

                public var nonRefundableTicketFee: Double?

                public var refundToBuyerMoney: Double?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.alreadyUsedTotalFee != nil {
                        map["already_used_total_fee"] = self.alreadyUsedTotalFee!
                    }
                    if self.modifyRefundToBuyerMoney != nil {
                        map["modify_refund_to_buyer_money"] = self.modifyRefundToBuyerMoney!
                    }
                    if self.nonRefundableChangeServiceFee != nil {
                        map["non_refundable_change_service_fee"] = self.nonRefundableChangeServiceFee!
                    }
                    if self.nonRefundableChangeUpgradeFee != nil {
                        map["non_refundable_change_upgrade_fee"] = self.nonRefundableChangeUpgradeFee!
                    }
                    if self.nonRefundableTaxFee != nil {
                        map["non_refundable_tax_fee"] = self.nonRefundableTaxFee!
                    }
                    if self.nonRefundableTicketFee != nil {
                        map["non_refundable_ticket_fee"] = self.nonRefundableTicketFee!
                    }
                    if self.refundToBuyerMoney != nil {
                        map["refund_to_buyer_money"] = self.refundToBuyerMoney!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("already_used_total_fee") && dict["already_used_total_fee"] != nil {
                        self.alreadyUsedTotalFee = dict["already_used_total_fee"] as! Double
                    }
                    if dict.keys.contains("modify_refund_to_buyer_money") && dict["modify_refund_to_buyer_money"] != nil {
                        self.modifyRefundToBuyerMoney = dict["modify_refund_to_buyer_money"] as! Double
                    }
                    if dict.keys.contains("non_refundable_change_service_fee") && dict["non_refundable_change_service_fee"] != nil {
                        self.nonRefundableChangeServiceFee = dict["non_refundable_change_service_fee"] as! Double
                    }
                    if dict.keys.contains("non_refundable_change_upgrade_fee") && dict["non_refundable_change_upgrade_fee"] != nil {
                        self.nonRefundableChangeUpgradeFee = dict["non_refundable_change_upgrade_fee"] as! Double
                    }
                    if dict.keys.contains("non_refundable_tax_fee") && dict["non_refundable_tax_fee"] != nil {
                        self.nonRefundableTaxFee = dict["non_refundable_tax_fee"] as! Double
                    }
                    if dict.keys.contains("non_refundable_ticket_fee") && dict["non_refundable_ticket_fee"] != nil {
                        self.nonRefundableTicketFee = dict["non_refundable_ticket_fee"] as! Double
                    }
                    if dict.keys.contains("refund_to_buyer_money") && dict["refund_to_buyer_money"] != nil {
                        self.refundToBuyerMoney = dict["refund_to_buyer_money"] as! Double
                    }
                }
            }
            public var passenger: RefundDetailResponseBody.Data.PassengerRefundDetails.Passenger?

            public var refundFee: RefundDetailResponseBody.Data.PassengerRefundDetails.RefundFee?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.passenger?.validate()
                try self.refundFee?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.passenger != nil {
                    map["passenger"] = self.passenger?.toMap()
                }
                if self.refundFee != nil {
                    map["refund_fee"] = self.refundFee?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("passenger") && dict["passenger"] != nil {
                    var model = RefundDetailResponseBody.Data.PassengerRefundDetails.Passenger()
                    model.fromMap(dict["passenger"] as! [String: Any])
                    self.passenger = model
                }
                if dict.keys.contains("refund_fee") && dict["refund_fee"] != nil {
                    var model = RefundDetailResponseBody.Data.PassengerRefundDetails.RefundFee()
                    model.fromMap(dict["refund_fee"] as! [String: Any])
                    self.refundFee = model
                }
            }
        }
        public class RefundJourneys : Tea.TeaModel {
            public class SegmentList : Tea.TeaModel {
                public var arrivalAirport: String?

                public var arrivalCity: String?

                public var arrivalTerminal: String?

                public var arrivalTime: String?

                public var availability: String?

                public var cabin: String?

                public var cabinClass: String?

                public var codeShare: Bool?

                public var departureAirport: String?

                public var departureCity: String?

                public var departureTerminal: String?

                public var departureTime: String?

                public var equipType: String?

                public var flightDuration: Int32?

                public var marketingAirline: String?

                public var marketingFlightNo: String?

                public var marketingFlightNoInt: Int32?

                public var operatingAirline: String?

                public var operatingFlightNo: String?

                public var segmentId: String?

                public var stopCityList: String?

                public var stopQuantity: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.arrivalAirport != nil {
                        map["arrival_airport"] = self.arrivalAirport!
                    }
                    if self.arrivalCity != nil {
                        map["arrival_city"] = self.arrivalCity!
                    }
                    if self.arrivalTerminal != nil {
                        map["arrival_terminal"] = self.arrivalTerminal!
                    }
                    if self.arrivalTime != nil {
                        map["arrival_time"] = self.arrivalTime!
                    }
                    if self.availability != nil {
                        map["availability"] = self.availability!
                    }
                    if self.cabin != nil {
                        map["cabin"] = self.cabin!
                    }
                    if self.cabinClass != nil {
                        map["cabin_class"] = self.cabinClass!
                    }
                    if self.codeShare != nil {
                        map["code_share"] = self.codeShare!
                    }
                    if self.departureAirport != nil {
                        map["departure_airport"] = self.departureAirport!
                    }
                    if self.departureCity != nil {
                        map["departure_city"] = self.departureCity!
                    }
                    if self.departureTerminal != nil {
                        map["departure_terminal"] = self.departureTerminal!
                    }
                    if self.departureTime != nil {
                        map["departure_time"] = self.departureTime!
                    }
                    if self.equipType != nil {
                        map["equip_type"] = self.equipType!
                    }
                    if self.flightDuration != nil {
                        map["flight_duration"] = self.flightDuration!
                    }
                    if self.marketingAirline != nil {
                        map["marketing_airline"] = self.marketingAirline!
                    }
                    if self.marketingFlightNo != nil {
                        map["marketing_flight_no"] = self.marketingFlightNo!
                    }
                    if self.marketingFlightNoInt != nil {
                        map["marketing_flight_no_int"] = self.marketingFlightNoInt!
                    }
                    if self.operatingAirline != nil {
                        map["operating_airline"] = self.operatingAirline!
                    }
                    if self.operatingFlightNo != nil {
                        map["operating_flight_no"] = self.operatingFlightNo!
                    }
                    if self.segmentId != nil {
                        map["segment_id"] = self.segmentId!
                    }
                    if self.stopCityList != nil {
                        map["stop_city_list"] = self.stopCityList!
                    }
                    if self.stopQuantity != nil {
                        map["stop_quantity"] = self.stopQuantity!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("arrival_airport") && dict["arrival_airport"] != nil {
                        self.arrivalAirport = dict["arrival_airport"] as! String
                    }
                    if dict.keys.contains("arrival_city") && dict["arrival_city"] != nil {
                        self.arrivalCity = dict["arrival_city"] as! String
                    }
                    if dict.keys.contains("arrival_terminal") && dict["arrival_terminal"] != nil {
                        self.arrivalTerminal = dict["arrival_terminal"] as! String
                    }
                    if dict.keys.contains("arrival_time") && dict["arrival_time"] != nil {
                        self.arrivalTime = dict["arrival_time"] as! String
                    }
                    if dict.keys.contains("availability") && dict["availability"] != nil {
                        self.availability = dict["availability"] as! String
                    }
                    if dict.keys.contains("cabin") && dict["cabin"] != nil {
                        self.cabin = dict["cabin"] as! String
                    }
                    if dict.keys.contains("cabin_class") && dict["cabin_class"] != nil {
                        self.cabinClass = dict["cabin_class"] as! String
                    }
                    if dict.keys.contains("code_share") && dict["code_share"] != nil {
                        self.codeShare = dict["code_share"] as! Bool
                    }
                    if dict.keys.contains("departure_airport") && dict["departure_airport"] != nil {
                        self.departureAirport = dict["departure_airport"] as! String
                    }
                    if dict.keys.contains("departure_city") && dict["departure_city"] != nil {
                        self.departureCity = dict["departure_city"] as! String
                    }
                    if dict.keys.contains("departure_terminal") && dict["departure_terminal"] != nil {
                        self.departureTerminal = dict["departure_terminal"] as! String
                    }
                    if dict.keys.contains("departure_time") && dict["departure_time"] != nil {
                        self.departureTime = dict["departure_time"] as! String
                    }
                    if dict.keys.contains("equip_type") && dict["equip_type"] != nil {
                        self.equipType = dict["equip_type"] as! String
                    }
                    if dict.keys.contains("flight_duration") && dict["flight_duration"] != nil {
                        self.flightDuration = dict["flight_duration"] as! Int32
                    }
                    if dict.keys.contains("marketing_airline") && dict["marketing_airline"] != nil {
                        self.marketingAirline = dict["marketing_airline"] as! String
                    }
                    if dict.keys.contains("marketing_flight_no") && dict["marketing_flight_no"] != nil {
                        self.marketingFlightNo = dict["marketing_flight_no"] as! String
                    }
                    if dict.keys.contains("marketing_flight_no_int") && dict["marketing_flight_no_int"] != nil {
                        self.marketingFlightNoInt = dict["marketing_flight_no_int"] as! Int32
                    }
                    if dict.keys.contains("operating_airline") && dict["operating_airline"] != nil {
                        self.operatingAirline = dict["operating_airline"] as! String
                    }
                    if dict.keys.contains("operating_flight_no") && dict["operating_flight_no"] != nil {
                        self.operatingFlightNo = dict["operating_flight_no"] as! String
                    }
                    if dict.keys.contains("segment_id") && dict["segment_id"] != nil {
                        self.segmentId = dict["segment_id"] as! String
                    }
                    if dict.keys.contains("stop_city_list") && dict["stop_city_list"] != nil {
                        self.stopCityList = dict["stop_city_list"] as! String
                    }
                    if dict.keys.contains("stop_quantity") && dict["stop_quantity"] != nil {
                        self.stopQuantity = dict["stop_quantity"] as! Int32
                    }
                }
            }
            public var segmentList: [RefundDetailResponseBody.Data.RefundJourneys.SegmentList]?

            public var transferCount: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.segmentList != nil {
                    var tmp : [Any] = []
                    for k in self.segmentList! {
                        tmp.append(k.toMap())
                    }
                    map["segment_list"] = tmp
                }
                if self.transferCount != nil {
                    map["transfer_count"] = self.transferCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("segment_list") && dict["segment_list"] != nil {
                    var tmp : [RefundDetailResponseBody.Data.RefundJourneys.SegmentList] = []
                    for v in dict["segment_list"] as! [Any] {
                        var model = RefundDetailResponseBody.Data.RefundJourneys.SegmentList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.segmentList = tmp
                }
                if dict.keys.contains("transfer_count") && dict["transfer_count"] != nil {
                    self.transferCount = dict["transfer_count"] as! Int32
                }
            }
        }
        public var containMultiRefund: Bool?

        public var multiRefundDetails: [RefundDetailResponseBody.Data.MultiRefundDetails]?

        public var orderNum: Int64?

        public var passengerRefundDetails: [RefundDetailResponseBody.Data.PassengerRefundDetails]?

        public var paySuccessUtcTime: Int64?

        public var refundAttachmentUrls: [String]?

        public var refundJourneys: [RefundDetailResponseBody.Data.RefundJourneys]?

        public var refundOrderNum: Int64?

        public var refundReason: String?

        public var refundType: Int32?

        public var refuseReason: String?

        public var status: Int32?

        public var transactionNo: String?

        public var utcCreateTime: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.containMultiRefund != nil {
                map["contain_multi_refund"] = self.containMultiRefund!
            }
            if self.multiRefundDetails != nil {
                var tmp : [Any] = []
                for k in self.multiRefundDetails! {
                    tmp.append(k.toMap())
                }
                map["multi_refund_details"] = tmp
            }
            if self.orderNum != nil {
                map["order_num"] = self.orderNum!
            }
            if self.passengerRefundDetails != nil {
                var tmp : [Any] = []
                for k in self.passengerRefundDetails! {
                    tmp.append(k.toMap())
                }
                map["passenger_refund_details"] = tmp
            }
            if self.paySuccessUtcTime != nil {
                map["pay_success_utc_time"] = self.paySuccessUtcTime!
            }
            if self.refundAttachmentUrls != nil {
                map["refund_attachment_urls"] = self.refundAttachmentUrls!
            }
            if self.refundJourneys != nil {
                var tmp : [Any] = []
                for k in self.refundJourneys! {
                    tmp.append(k.toMap())
                }
                map["refund_journeys"] = tmp
            }
            if self.refundOrderNum != nil {
                map["refund_order_num"] = self.refundOrderNum!
            }
            if self.refundReason != nil {
                map["refund_reason"] = self.refundReason!
            }
            if self.refundType != nil {
                map["refund_type"] = self.refundType!
            }
            if self.refuseReason != nil {
                map["refuse_reason"] = self.refuseReason!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.transactionNo != nil {
                map["transaction_no"] = self.transactionNo!
            }
            if self.utcCreateTime != nil {
                map["utc_create_time"] = self.utcCreateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("contain_multi_refund") && dict["contain_multi_refund"] != nil {
                self.containMultiRefund = dict["contain_multi_refund"] as! Bool
            }
            if dict.keys.contains("multi_refund_details") && dict["multi_refund_details"] != nil {
                var tmp : [RefundDetailResponseBody.Data.MultiRefundDetails] = []
                for v in dict["multi_refund_details"] as! [Any] {
                    var model = RefundDetailResponseBody.Data.MultiRefundDetails()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.multiRefundDetails = tmp
            }
            if dict.keys.contains("order_num") && dict["order_num"] != nil {
                self.orderNum = dict["order_num"] as! Int64
            }
            if dict.keys.contains("passenger_refund_details") && dict["passenger_refund_details"] != nil {
                var tmp : [RefundDetailResponseBody.Data.PassengerRefundDetails] = []
                for v in dict["passenger_refund_details"] as! [Any] {
                    var model = RefundDetailResponseBody.Data.PassengerRefundDetails()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.passengerRefundDetails = tmp
            }
            if dict.keys.contains("pay_success_utc_time") && dict["pay_success_utc_time"] != nil {
                self.paySuccessUtcTime = dict["pay_success_utc_time"] as! Int64
            }
            if dict.keys.contains("refund_attachment_urls") && dict["refund_attachment_urls"] != nil {
                self.refundAttachmentUrls = dict["refund_attachment_urls"] as! [String]
            }
            if dict.keys.contains("refund_journeys") && dict["refund_journeys"] != nil {
                var tmp : [RefundDetailResponseBody.Data.RefundJourneys] = []
                for v in dict["refund_journeys"] as! [Any] {
                    var model = RefundDetailResponseBody.Data.RefundJourneys()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.refundJourneys = tmp
            }
            if dict.keys.contains("refund_order_num") && dict["refund_order_num"] != nil {
                self.refundOrderNum = dict["refund_order_num"] as! Int64
            }
            if dict.keys.contains("refund_reason") && dict["refund_reason"] != nil {
                self.refundReason = dict["refund_reason"] as! String
            }
            if dict.keys.contains("refund_type") && dict["refund_type"] != nil {
                self.refundType = dict["refund_type"] as! Int32
            }
            if dict.keys.contains("refuse_reason") && dict["refuse_reason"] != nil {
                self.refuseReason = dict["refuse_reason"] as! String
            }
            if dict.keys.contains("status") && dict["status"] != nil {
                self.status = dict["status"] as! Int32
            }
            if dict.keys.contains("transaction_no") && dict["transaction_no"] != nil {
                self.transactionNo = dict["transaction_no"] as! String
            }
            if dict.keys.contains("utc_create_time") && dict["utc_create_time"] != nil {
                self.utcCreateTime = dict["utc_create_time"] as! Int64
            }
        }
    }
    public var requestId: String?

    public var data: RefundDetailResponseBody.Data?

    public var errorCode: String?

    public var errorData: Any?

    public var errorMsg: String?

    public var status: Int32?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errorCode != nil {
            map["error_code"] = self.errorCode!
        }
        if self.errorData != nil {
            map["error_data"] = self.errorData!
        }
        if self.errorMsg != nil {
            map["error_msg"] = self.errorMsg!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = RefundDetailResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("error_code") && dict["error_code"] != nil {
            self.errorCode = dict["error_code"] as! String
        }
        if dict.keys.contains("error_data") && dict["error_data"] != nil {
            self.errorData = dict["error_data"] as! Any
        }
        if dict.keys.contains("error_msg") && dict["error_msg"] != nil {
            self.errorMsg = dict["error_msg"] as! String
        }
        if dict.keys.contains("status") && dict["status"] != nil {
            self.status = dict["status"] as! Int32
        }
        if dict.keys.contains("success") && dict["success"] != nil {
            self.success = dict["success"] as! Bool
        }
    }
}

public class RefundDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RefundDetailResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RefundDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RefundDetailListHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xAcsAirticketAccessToken: String?

    public var xAcsAirticketLanguage: String?

    public override init() {
        super.init()
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
        if self.xAcsAirticketAccessToken != nil {
            map["x-acs-airticket-access-token"] = self.xAcsAirticketAccessToken!
        }
        if self.xAcsAirticketLanguage != nil {
            map["x-acs-airticket-language"] = self.xAcsAirticketLanguage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("x-acs-airticket-access-token") && dict["x-acs-airticket-access-token"] != nil {
            self.xAcsAirticketAccessToken = dict["x-acs-airticket-access-token"] as! String
        }
        if dict.keys.contains("x-acs-airticket-language") && dict["x-acs-airticket-language"] != nil {
            self.xAcsAirticketLanguage = dict["x-acs-airticket-language"] as! String
        }
    }
}

public class RefundDetailListRequest : Tea.TeaModel {
    public var orderNum: Int64?

    public var pageIndex: Int32?

    public var pageSize: Int32?

    public var refundCreateBeginTime: Int64?

    public var refundCreateEndTime: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.orderNum != nil {
            map["order_num"] = self.orderNum!
        }
        if self.pageIndex != nil {
            map["page_index"] = self.pageIndex!
        }
        if self.pageSize != nil {
            map["page_size"] = self.pageSize!
        }
        if self.refundCreateBeginTime != nil {
            map["refund_create_begin_time"] = self.refundCreateBeginTime!
        }
        if self.refundCreateEndTime != nil {
            map["refund_create_end_time"] = self.refundCreateEndTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("order_num") && dict["order_num"] != nil {
            self.orderNum = dict["order_num"] as! Int64
        }
        if dict.keys.contains("page_index") && dict["page_index"] != nil {
            self.pageIndex = dict["page_index"] as! Int32
        }
        if dict.keys.contains("page_size") && dict["page_size"] != nil {
            self.pageSize = dict["page_size"] as! Int32
        }
        if dict.keys.contains("refund_create_begin_time") && dict["refund_create_begin_time"] != nil {
            self.refundCreateBeginTime = dict["refund_create_begin_time"] as! Int64
        }
        if dict.keys.contains("refund_create_end_time") && dict["refund_create_end_time"] != nil {
            self.refundCreateEndTime = dict["refund_create_end_time"] as! Int64
        }
    }
}

public class RefundDetailListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var isMultiRefund: Bool?

            public var orderNum: Int64?

            public var refundOrderNum: Int64?

            public var refundOrderStatus: Int32?

            public var relatedRefundOrderNum: String?

            public var transactionNo: String?

            public var utcCreateTime: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.isMultiRefund != nil {
                    map["is_multi_refund"] = self.isMultiRefund!
                }
                if self.orderNum != nil {
                    map["order_num"] = self.orderNum!
                }
                if self.refundOrderNum != nil {
                    map["refund_order_num"] = self.refundOrderNum!
                }
                if self.refundOrderStatus != nil {
                    map["refund_order_status"] = self.refundOrderStatus!
                }
                if self.relatedRefundOrderNum != nil {
                    map["related_refund_order_num"] = self.relatedRefundOrderNum!
                }
                if self.transactionNo != nil {
                    map["transaction_no"] = self.transactionNo!
                }
                if self.utcCreateTime != nil {
                    map["utc_create_time"] = self.utcCreateTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("is_multi_refund") && dict["is_multi_refund"] != nil {
                    self.isMultiRefund = dict["is_multi_refund"] as! Bool
                }
                if dict.keys.contains("order_num") && dict["order_num"] != nil {
                    self.orderNum = dict["order_num"] as! Int64
                }
                if dict.keys.contains("refund_order_num") && dict["refund_order_num"] != nil {
                    self.refundOrderNum = dict["refund_order_num"] as! Int64
                }
                if dict.keys.contains("refund_order_status") && dict["refund_order_status"] != nil {
                    self.refundOrderStatus = dict["refund_order_status"] as! Int32
                }
                if dict.keys.contains("related_refund_order_num") && dict["related_refund_order_num"] != nil {
                    self.relatedRefundOrderNum = dict["related_refund_order_num"] as! String
                }
                if dict.keys.contains("transaction_no") && dict["transaction_no"] != nil {
                    self.transactionNo = dict["transaction_no"] as! String
                }
                if dict.keys.contains("utc_create_time") && dict["utc_create_time"] != nil {
                    self.utcCreateTime = dict["utc_create_time"] as! Int64
                }
            }
        }
        public class Pagination : Tea.TeaModel {
            public var currentPage: Int32?

            public var pageSize: Int32?

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
                if self.currentPage != nil {
                    map["current_page"] = self.currentPage!
                }
                if self.pageSize != nil {
                    map["page_size"] = self.pageSize!
                }
                if self.totalCount != nil {
                    map["total_count"] = self.totalCount!
                }
                if self.totalPage != nil {
                    map["total_page"] = self.totalPage!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("current_page") && dict["current_page"] != nil {
                    self.currentPage = dict["current_page"] as! Int32
                }
                if dict.keys.contains("page_size") && dict["page_size"] != nil {
                    self.pageSize = dict["page_size"] as! Int32
                }
                if dict.keys.contains("total_count") && dict["total_count"] != nil {
                    self.totalCount = dict["total_count"] as! Int32
                }
                if dict.keys.contains("total_page") && dict["total_page"] != nil {
                    self.totalPage = dict["total_page"] as! Int32
                }
            }
        }
        public var list: [RefundDetailListResponseBody.Data.List]?

        public var pagination: RefundDetailListResponseBody.Data.Pagination?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.pagination?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["list"] = tmp
            }
            if self.pagination != nil {
                map["pagination"] = self.pagination?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("list") && dict["list"] != nil {
                var tmp : [RefundDetailListResponseBody.Data.List] = []
                for v in dict["list"] as! [Any] {
                    var model = RefundDetailListResponseBody.Data.List()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.list = tmp
            }
            if dict.keys.contains("pagination") && dict["pagination"] != nil {
                var model = RefundDetailListResponseBody.Data.Pagination()
                model.fromMap(dict["pagination"] as! [String: Any])
                self.pagination = model
            }
        }
    }
    public var requestId: String?

    public var data: RefundDetailListResponseBody.Data?

    public var errorCode: String?

    public var errorData: Any?

    public var errorMsg: String?

    public var status: Int32?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errorCode != nil {
            map["error_code"] = self.errorCode!
        }
        if self.errorData != nil {
            map["error_data"] = self.errorData!
        }
        if self.errorMsg != nil {
            map["error_msg"] = self.errorMsg!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = RefundDetailListResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("error_code") && dict["error_code"] != nil {
            self.errorCode = dict["error_code"] as! String
        }
        if dict.keys.contains("error_data") && dict["error_data"] != nil {
            self.errorData = dict["error_data"] as! Any
        }
        if dict.keys.contains("error_msg") && dict["error_msg"] != nil {
            self.errorMsg = dict["error_msg"] as! String
        }
        if dict.keys.contains("status") && dict["status"] != nil {
            self.status = dict["status"] as! Int32
        }
        if dict.keys.contains("success") && dict["success"] != nil {
            self.success = dict["success"] as! Bool
        }
    }
}

public class RefundDetailListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RefundDetailListResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RefundDetailListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SearchHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xAcsAirticketAccessToken: String?

    public var xAcsAirticketLanguage: String?

    public override init() {
        super.init()
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
        if self.xAcsAirticketAccessToken != nil {
            map["x-acs-airticket-access-token"] = self.xAcsAirticketAccessToken!
        }
        if self.xAcsAirticketLanguage != nil {
            map["x-acs-airticket-language"] = self.xAcsAirticketLanguage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("x-acs-airticket-access-token") && dict["x-acs-airticket-access-token"] != nil {
            self.xAcsAirticketAccessToken = dict["x-acs-airticket-access-token"] as! String
        }
        if dict.keys.contains("x-acs-airticket-language") && dict["x-acs-airticket-language"] != nil {
            self.xAcsAirticketLanguage = dict["x-acs-airticket-language"] as! String
        }
    }
}

public class SearchRequest : Tea.TeaModel {
    public class AirLegs : Tea.TeaModel {
        public var arrivalAirportList: [String]?

        public var arrivalCity: String?

        public var departureAirportList: [String]?

        public var departureCity: String?

        public var departureDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.arrivalAirportList != nil {
                map["arrival_airport_list"] = self.arrivalAirportList!
            }
            if self.arrivalCity != nil {
                map["arrival_city"] = self.arrivalCity!
            }
            if self.departureAirportList != nil {
                map["departure_airport_list"] = self.departureAirportList!
            }
            if self.departureCity != nil {
                map["departure_city"] = self.departureCity!
            }
            if self.departureDate != nil {
                map["departure_date"] = self.departureDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("arrival_airport_list") && dict["arrival_airport_list"] != nil {
                self.arrivalAirportList = dict["arrival_airport_list"] as! [String]
            }
            if dict.keys.contains("arrival_city") && dict["arrival_city"] != nil {
                self.arrivalCity = dict["arrival_city"] as! String
            }
            if dict.keys.contains("departure_airport_list") && dict["departure_airport_list"] != nil {
                self.departureAirportList = dict["departure_airport_list"] as! [String]
            }
            if dict.keys.contains("departure_city") && dict["departure_city"] != nil {
                self.departureCity = dict["departure_city"] as! String
            }
            if dict.keys.contains("departure_date") && dict["departure_date"] != nil {
                self.departureDate = dict["departure_date"] as! String
            }
        }
    }
    public var adults: Int32?

    public var airLegs: [SearchRequest.AirLegs]?

    public var cabinClass: String?

    public var children: Int32?

    public var infants: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.adults != nil {
            map["adults"] = self.adults!
        }
        if self.airLegs != nil {
            var tmp : [Any] = []
            for k in self.airLegs! {
                tmp.append(k.toMap())
            }
            map["air_legs"] = tmp
        }
        if self.cabinClass != nil {
            map["cabin_class"] = self.cabinClass!
        }
        if self.children != nil {
            map["children"] = self.children!
        }
        if self.infants != nil {
            map["infants"] = self.infants!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("adults") && dict["adults"] != nil {
            self.adults = dict["adults"] as! Int32
        }
        if dict.keys.contains("air_legs") && dict["air_legs"] != nil {
            var tmp : [SearchRequest.AirLegs] = []
            for v in dict["air_legs"] as! [Any] {
                var model = SearchRequest.AirLegs()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.airLegs = tmp
        }
        if dict.keys.contains("cabin_class") && dict["cabin_class"] != nil {
            self.cabinClass = dict["cabin_class"] as! String
        }
        if dict.keys.contains("children") && dict["children"] != nil {
            self.children = dict["children"] as! Int32
        }
        if dict.keys.contains("infants") && dict["infants"] != nil {
            self.infants = dict["infants"] as! Int32
        }
    }
}

public class SearchShrinkRequest : Tea.TeaModel {
    public var adults: Int32?

    public var airLegsShrink: String?

    public var cabinClass: String?

    public var children: Int32?

    public var infants: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.adults != nil {
            map["adults"] = self.adults!
        }
        if self.airLegsShrink != nil {
            map["air_legs"] = self.airLegsShrink!
        }
        if self.cabinClass != nil {
            map["cabin_class"] = self.cabinClass!
        }
        if self.children != nil {
            map["children"] = self.children!
        }
        if self.infants != nil {
            map["infants"] = self.infants!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("adults") && dict["adults"] != nil {
            self.adults = dict["adults"] as! Int32
        }
        if dict.keys.contains("air_legs") && dict["air_legs"] != nil {
            self.airLegsShrink = dict["air_legs"] as! String
        }
        if dict.keys.contains("cabin_class") && dict["cabin_class"] != nil {
            self.cabinClass = dict["cabin_class"] as! String
        }
        if dict.keys.contains("children") && dict["children"] != nil {
            self.children = dict["children"] as! Int32
        }
        if dict.keys.contains("infants") && dict["infants"] != nil {
            self.infants = dict["infants"] as! Int32
        }
    }
}

public class SearchResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class SolutionList : Tea.TeaModel {
            public class JourneyList : Tea.TeaModel {
                public class SegmentList : Tea.TeaModel {
                    public var arrivalAirport: String?

                    public var arrivalCity: String?

                    public var arrivalTerminal: String?

                    public var arrivalTime: String?

                    public var availability: String?

                    public var cabin: String?

                    public var cabinClass: String?

                    public var codeShare: Bool?

                    public var departureAirport: String?

                    public var departureCity: String?

                    public var departureTerminal: String?

                    public var departureTime: String?

                    public var equipType: String?

                    public var flightDuration: Int32?

                    public var marketingAirline: String?

                    public var marketingFlightNo: String?

                    public var marketingFlightNoInt: Int32?

                    public var operatingAirline: String?

                    public var operatingFlightNo: String?

                    public var segmentId: String?

                    public var stopCityList: String?

                    public var stopQuantity: Int32?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.arrivalAirport != nil {
                            map["arrival_airport"] = self.arrivalAirport!
                        }
                        if self.arrivalCity != nil {
                            map["arrival_city"] = self.arrivalCity!
                        }
                        if self.arrivalTerminal != nil {
                            map["arrival_terminal"] = self.arrivalTerminal!
                        }
                        if self.arrivalTime != nil {
                            map["arrival_time"] = self.arrivalTime!
                        }
                        if self.availability != nil {
                            map["availability"] = self.availability!
                        }
                        if self.cabin != nil {
                            map["cabin"] = self.cabin!
                        }
                        if self.cabinClass != nil {
                            map["cabin_class"] = self.cabinClass!
                        }
                        if self.codeShare != nil {
                            map["code_share"] = self.codeShare!
                        }
                        if self.departureAirport != nil {
                            map["departure_airport"] = self.departureAirport!
                        }
                        if self.departureCity != nil {
                            map["departure_city"] = self.departureCity!
                        }
                        if self.departureTerminal != nil {
                            map["departure_terminal"] = self.departureTerminal!
                        }
                        if self.departureTime != nil {
                            map["departure_time"] = self.departureTime!
                        }
                        if self.equipType != nil {
                            map["equip_type"] = self.equipType!
                        }
                        if self.flightDuration != nil {
                            map["flight_duration"] = self.flightDuration!
                        }
                        if self.marketingAirline != nil {
                            map["marketing_airline"] = self.marketingAirline!
                        }
                        if self.marketingFlightNo != nil {
                            map["marketing_flight_no"] = self.marketingFlightNo!
                        }
                        if self.marketingFlightNoInt != nil {
                            map["marketing_flight_no_int"] = self.marketingFlightNoInt!
                        }
                        if self.operatingAirline != nil {
                            map["operating_airline"] = self.operatingAirline!
                        }
                        if self.operatingFlightNo != nil {
                            map["operating_flight_no"] = self.operatingFlightNo!
                        }
                        if self.segmentId != nil {
                            map["segment_id"] = self.segmentId!
                        }
                        if self.stopCityList != nil {
                            map["stop_city_list"] = self.stopCityList!
                        }
                        if self.stopQuantity != nil {
                            map["stop_quantity"] = self.stopQuantity!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("arrival_airport") && dict["arrival_airport"] != nil {
                            self.arrivalAirport = dict["arrival_airport"] as! String
                        }
                        if dict.keys.contains("arrival_city") && dict["arrival_city"] != nil {
                            self.arrivalCity = dict["arrival_city"] as! String
                        }
                        if dict.keys.contains("arrival_terminal") && dict["arrival_terminal"] != nil {
                            self.arrivalTerminal = dict["arrival_terminal"] as! String
                        }
                        if dict.keys.contains("arrival_time") && dict["arrival_time"] != nil {
                            self.arrivalTime = dict["arrival_time"] as! String
                        }
                        if dict.keys.contains("availability") && dict["availability"] != nil {
                            self.availability = dict["availability"] as! String
                        }
                        if dict.keys.contains("cabin") && dict["cabin"] != nil {
                            self.cabin = dict["cabin"] as! String
                        }
                        if dict.keys.contains("cabin_class") && dict["cabin_class"] != nil {
                            self.cabinClass = dict["cabin_class"] as! String
                        }
                        if dict.keys.contains("code_share") && dict["code_share"] != nil {
                            self.codeShare = dict["code_share"] as! Bool
                        }
                        if dict.keys.contains("departure_airport") && dict["departure_airport"] != nil {
                            self.departureAirport = dict["departure_airport"] as! String
                        }
                        if dict.keys.contains("departure_city") && dict["departure_city"] != nil {
                            self.departureCity = dict["departure_city"] as! String
                        }
                        if dict.keys.contains("departure_terminal") && dict["departure_terminal"] != nil {
                            self.departureTerminal = dict["departure_terminal"] as! String
                        }
                        if dict.keys.contains("departure_time") && dict["departure_time"] != nil {
                            self.departureTime = dict["departure_time"] as! String
                        }
                        if dict.keys.contains("equip_type") && dict["equip_type"] != nil {
                            self.equipType = dict["equip_type"] as! String
                        }
                        if dict.keys.contains("flight_duration") && dict["flight_duration"] != nil {
                            self.flightDuration = dict["flight_duration"] as! Int32
                        }
                        if dict.keys.contains("marketing_airline") && dict["marketing_airline"] != nil {
                            self.marketingAirline = dict["marketing_airline"] as! String
                        }
                        if dict.keys.contains("marketing_flight_no") && dict["marketing_flight_no"] != nil {
                            self.marketingFlightNo = dict["marketing_flight_no"] as! String
                        }
                        if dict.keys.contains("marketing_flight_no_int") && dict["marketing_flight_no_int"] != nil {
                            self.marketingFlightNoInt = dict["marketing_flight_no_int"] as! Int32
                        }
                        if dict.keys.contains("operating_airline") && dict["operating_airline"] != nil {
                            self.operatingAirline = dict["operating_airline"] as! String
                        }
                        if dict.keys.contains("operating_flight_no") && dict["operating_flight_no"] != nil {
                            self.operatingFlightNo = dict["operating_flight_no"] as! String
                        }
                        if dict.keys.contains("segment_id") && dict["segment_id"] != nil {
                            self.segmentId = dict["segment_id"] as! String
                        }
                        if dict.keys.contains("stop_city_list") && dict["stop_city_list"] != nil {
                            self.stopCityList = dict["stop_city_list"] as! String
                        }
                        if dict.keys.contains("stop_quantity") && dict["stop_quantity"] != nil {
                            self.stopQuantity = dict["stop_quantity"] as! Int32
                        }
                    }
                }
                public var segmentList: [SearchResponseBody.Data.SolutionList.JourneyList.SegmentList]?

                public var transferCount: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.segmentList != nil {
                        var tmp : [Any] = []
                        for k in self.segmentList! {
                            tmp.append(k.toMap())
                        }
                        map["segment_list"] = tmp
                    }
                    if self.transferCount != nil {
                        map["transfer_count"] = self.transferCount!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("segment_list") && dict["segment_list"] != nil {
                        var tmp : [SearchResponseBody.Data.SolutionList.JourneyList.SegmentList] = []
                        for v in dict["segment_list"] as! [Any] {
                            var model = SearchResponseBody.Data.SolutionList.JourneyList.SegmentList()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.segmentList = tmp
                    }
                    if dict.keys.contains("transfer_count") && dict["transfer_count"] != nil {
                        self.transferCount = dict["transfer_count"] as! Int32
                    }
                }
            }
            public class SegmentBaggageCheckInInfoList : Tea.TeaModel {
                public var luggageDirectInfoType: Int32?

                public var segmentIdList: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.luggageDirectInfoType != nil {
                        map["luggage_direct_info_type"] = self.luggageDirectInfoType!
                    }
                    if self.segmentIdList != nil {
                        map["segment_id_list"] = self.segmentIdList!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("luggage_direct_info_type") && dict["luggage_direct_info_type"] != nil {
                        self.luggageDirectInfoType = dict["luggage_direct_info_type"] as! Int32
                    }
                    if dict.keys.contains("segment_id_list") && dict["segment_id_list"] != nil {
                        self.segmentIdList = dict["segment_id_list"] as! [String]
                    }
                }
            }
            public class SegmentBaggageMappingList : Tea.TeaModel {
                public var passengerBaggageAllowanceMapping: [String: DataSolutionListSegmentBaggageMappingListPassengerBaggageAllowanceMappingValue]?

                public var segmentIdList: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.passengerBaggageAllowanceMapping != nil {
                        var tmp : [String: Any] = [:]
                        for (k, v) in self.passengerBaggageAllowanceMapping! {
                            tmp[k] = v.toMap()
                        }
                        map["passenger_baggage_allowance_mapping"] = tmp
                    }
                    if self.segmentIdList != nil {
                        map["segment_id_list"] = self.segmentIdList!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("passenger_baggage_allowance_mapping") && dict["passenger_baggage_allowance_mapping"] != nil {
                        var tmp : [String: DataSolutionListSegmentBaggageMappingListPassengerBaggageAllowanceMappingValue] = [:]
                        for (k, v) in dict["passenger_baggage_allowance_mapping"] as! [String: Any] {
                            if v != nil {
                                var model = DataSolutionListSegmentBaggageMappingListPassengerBaggageAllowanceMappingValue()
                                model.fromMap(v as! [String: Any])
                                tmp[k] = model
                            }
                        }
                        self.passengerBaggageAllowanceMapping = tmp
                    }
                    if dict.keys.contains("segment_id_list") && dict["segment_id_list"] != nil {
                        self.segmentIdList = dict["segment_id_list"] as! [String]
                    }
                }
            }
            public class SegmentRefundChangeRuleMappingList : Tea.TeaModel {
                public var refundChangeRuleMap: [String: DataSolutionListSegmentRefundChangeRuleMappingListRefundChangeRuleMapValue]?

                public var segmentIdList: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.refundChangeRuleMap != nil {
                        var tmp : [String: Any] = [:]
                        for (k, v) in self.refundChangeRuleMap! {
                            tmp[k] = v.toMap()
                        }
                        map["refund_change_rule_map"] = tmp
                    }
                    if self.segmentIdList != nil {
                        map["segment_id_list"] = self.segmentIdList!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("refund_change_rule_map") && dict["refund_change_rule_map"] != nil {
                        var tmp : [String: DataSolutionListSegmentRefundChangeRuleMappingListRefundChangeRuleMapValue] = [:]
                        for (k, v) in dict["refund_change_rule_map"] as! [String: Any] {
                            if v != nil {
                                var model = DataSolutionListSegmentRefundChangeRuleMappingListRefundChangeRuleMapValue()
                                model.fromMap(v as! [String: Any])
                                tmp[k] = model
                            }
                        }
                        self.refundChangeRuleMap = tmp
                    }
                    if dict.keys.contains("segment_id_list") && dict["segment_id_list"] != nil {
                        self.segmentIdList = dict["segment_id_list"] as! [String]
                    }
                }
            }
            public var adultPrice: Double?

            public var adultTax: Double?

            public var childPrice: Double?

            public var childTax: Double?

            public var infantPrice: Double?

            public var infantTax: Double?

            public var journeyList: [SearchResponseBody.Data.SolutionList.JourneyList]?

            public var productTypeDescription: String?

            public var refundTicketCouponDescription: String?

            public var segmentBaggageCheckInInfoList: [SearchResponseBody.Data.SolutionList.SegmentBaggageCheckInInfoList]?

            public var segmentBaggageMappingList: [SearchResponseBody.Data.SolutionList.SegmentBaggageMappingList]?

            public var segmentRefundChangeRuleMappingList: [SearchResponseBody.Data.SolutionList.SegmentRefundChangeRuleMappingList]?

            public var solutionId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.adultPrice != nil {
                    map["adult_price"] = self.adultPrice!
                }
                if self.adultTax != nil {
                    map["adult_tax"] = self.adultTax!
                }
                if self.childPrice != nil {
                    map["child_price"] = self.childPrice!
                }
                if self.childTax != nil {
                    map["child_tax"] = self.childTax!
                }
                if self.infantPrice != nil {
                    map["infant_price"] = self.infantPrice!
                }
                if self.infantTax != nil {
                    map["infant_tax"] = self.infantTax!
                }
                if self.journeyList != nil {
                    var tmp : [Any] = []
                    for k in self.journeyList! {
                        tmp.append(k.toMap())
                    }
                    map["journey_list"] = tmp
                }
                if self.productTypeDescription != nil {
                    map["product_type_description"] = self.productTypeDescription!
                }
                if self.refundTicketCouponDescription != nil {
                    map["refund_ticket_coupon_description"] = self.refundTicketCouponDescription!
                }
                if self.segmentBaggageCheckInInfoList != nil {
                    var tmp : [Any] = []
                    for k in self.segmentBaggageCheckInInfoList! {
                        tmp.append(k.toMap())
                    }
                    map["segment_baggage_check_in_info_list"] = tmp
                }
                if self.segmentBaggageMappingList != nil {
                    var tmp : [Any] = []
                    for k in self.segmentBaggageMappingList! {
                        tmp.append(k.toMap())
                    }
                    map["segment_baggage_mapping_list"] = tmp
                }
                if self.segmentRefundChangeRuleMappingList != nil {
                    var tmp : [Any] = []
                    for k in self.segmentRefundChangeRuleMappingList! {
                        tmp.append(k.toMap())
                    }
                    map["segment_refund_change_rule_mapping_list"] = tmp
                }
                if self.solutionId != nil {
                    map["solution_id"] = self.solutionId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("adult_price") && dict["adult_price"] != nil {
                    self.adultPrice = dict["adult_price"] as! Double
                }
                if dict.keys.contains("adult_tax") && dict["adult_tax"] != nil {
                    self.adultTax = dict["adult_tax"] as! Double
                }
                if dict.keys.contains("child_price") && dict["child_price"] != nil {
                    self.childPrice = dict["child_price"] as! Double
                }
                if dict.keys.contains("child_tax") && dict["child_tax"] != nil {
                    self.childTax = dict["child_tax"] as! Double
                }
                if dict.keys.contains("infant_price") && dict["infant_price"] != nil {
                    self.infantPrice = dict["infant_price"] as! Double
                }
                if dict.keys.contains("infant_tax") && dict["infant_tax"] != nil {
                    self.infantTax = dict["infant_tax"] as! Double
                }
                if dict.keys.contains("journey_list") && dict["journey_list"] != nil {
                    var tmp : [SearchResponseBody.Data.SolutionList.JourneyList] = []
                    for v in dict["journey_list"] as! [Any] {
                        var model = SearchResponseBody.Data.SolutionList.JourneyList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.journeyList = tmp
                }
                if dict.keys.contains("product_type_description") && dict["product_type_description"] != nil {
                    self.productTypeDescription = dict["product_type_description"] as! String
                }
                if dict.keys.contains("refund_ticket_coupon_description") && dict["refund_ticket_coupon_description"] != nil {
                    self.refundTicketCouponDescription = dict["refund_ticket_coupon_description"] as! String
                }
                if dict.keys.contains("segment_baggage_check_in_info_list") && dict["segment_baggage_check_in_info_list"] != nil {
                    var tmp : [SearchResponseBody.Data.SolutionList.SegmentBaggageCheckInInfoList] = []
                    for v in dict["segment_baggage_check_in_info_list"] as! [Any] {
                        var model = SearchResponseBody.Data.SolutionList.SegmentBaggageCheckInInfoList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.segmentBaggageCheckInInfoList = tmp
                }
                if dict.keys.contains("segment_baggage_mapping_list") && dict["segment_baggage_mapping_list"] != nil {
                    var tmp : [SearchResponseBody.Data.SolutionList.SegmentBaggageMappingList] = []
                    for v in dict["segment_baggage_mapping_list"] as! [Any] {
                        var model = SearchResponseBody.Data.SolutionList.SegmentBaggageMappingList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.segmentBaggageMappingList = tmp
                }
                if dict.keys.contains("segment_refund_change_rule_mapping_list") && dict["segment_refund_change_rule_mapping_list"] != nil {
                    var tmp : [SearchResponseBody.Data.SolutionList.SegmentRefundChangeRuleMappingList] = []
                    for v in dict["segment_refund_change_rule_mapping_list"] as! [Any] {
                        var model = SearchResponseBody.Data.SolutionList.SegmentRefundChangeRuleMappingList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.segmentRefundChangeRuleMappingList = tmp
                }
                if dict.keys.contains("solution_id") && dict["solution_id"] != nil {
                    self.solutionId = dict["solution_id"] as! String
                }
            }
        }
        public var solutionList: [SearchResponseBody.Data.SolutionList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.solutionList != nil {
                var tmp : [Any] = []
                for k in self.solutionList! {
                    tmp.append(k.toMap())
                }
                map["solution_list"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("solution_list") && dict["solution_list"] != nil {
                var tmp : [SearchResponseBody.Data.SolutionList] = []
                for v in dict["solution_list"] as! [Any] {
                    var model = SearchResponseBody.Data.SolutionList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.solutionList = tmp
            }
        }
    }
    public var requestId: String?

    public var data: SearchResponseBody.Data?

    public var errorCode: String?

    public var errorData: Any?

    public var errorMsg: String?

    public var status: Int32?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errorCode != nil {
            map["error_code"] = self.errorCode!
        }
        if self.errorData != nil {
            map["error_data"] = self.errorData!
        }
        if self.errorMsg != nil {
            map["error_msg"] = self.errorMsg!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = SearchResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("error_code") && dict["error_code"] != nil {
            self.errorCode = dict["error_code"] as! String
        }
        if dict.keys.contains("error_data") && dict["error_data"] != nil {
            self.errorData = dict["error_data"] as! Any
        }
        if dict.keys.contains("error_msg") && dict["error_msg"] != nil {
            self.errorMsg = dict["error_msg"] as! String
        }
        if dict.keys.contains("status") && dict["status"] != nil {
            self.status = dict["status"] as! Int32
        }
        if dict.keys.contains("success") && dict["success"] != nil {
            self.success = dict["success"] as! Bool
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SearchResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class TicketingHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xAcsAirticketAccessToken: String?

    public var xAcsAirticketLanguage: String?

    public override init() {
        super.init()
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
        if self.xAcsAirticketAccessToken != nil {
            map["x-acs-airticket-access-token"] = self.xAcsAirticketAccessToken!
        }
        if self.xAcsAirticketLanguage != nil {
            map["x-acs-airticket-language"] = self.xAcsAirticketLanguage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("x-acs-airticket-access-token") && dict["x-acs-airticket-access-token"] != nil {
            self.xAcsAirticketAccessToken = dict["x-acs-airticket-access-token"] as! String
        }
        if dict.keys.contains("x-acs-airticket-language") && dict["x-acs-airticket-language"] != nil {
            self.xAcsAirticketLanguage = dict["x-acs-airticket-language"] as! String
        }
    }
}

public class TicketingRequest : Tea.TeaModel {
    public var orderNum: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.orderNum != nil {
            map["order_num"] = self.orderNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("order_num") && dict["order_num"] != nil {
            self.orderNum = dict["order_num"] as! Int64
        }
    }
}

public class TicketingResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var orderNum: Int64?

        public var transactionNo: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.orderNum != nil {
                map["order_num"] = self.orderNum!
            }
            if self.transactionNo != nil {
                map["transaction_no"] = self.transactionNo!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("order_num") && dict["order_num"] != nil {
                self.orderNum = dict["order_num"] as! Int64
            }
            if dict.keys.contains("transaction_no") && dict["transaction_no"] != nil {
                self.transactionNo = dict["transaction_no"] as! String
            }
        }
    }
    public var requestId: String?

    public var data: TicketingResponseBody.Data?

    public var errorCode: String?

    public var errorData: Any?

    public var errorMsg: String?

    public var status: Int32?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errorCode != nil {
            map["error_code"] = self.errorCode!
        }
        if self.errorData != nil {
            map["error_data"] = self.errorData!
        }
        if self.errorMsg != nil {
            map["error_msg"] = self.errorMsg!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = TicketingResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("error_code") && dict["error_code"] != nil {
            self.errorCode = dict["error_code"] as! String
        }
        if dict.keys.contains("error_data") && dict["error_data"] != nil {
            self.errorData = dict["error_data"] as! Any
        }
        if dict.keys.contains("error_msg") && dict["error_msg"] != nil {
            self.errorMsg = dict["error_msg"] as! String
        }
        if dict.keys.contains("status") && dict["status"] != nil {
            self.status = dict["status"] as! Int32
        }
        if dict.keys.contains("success") && dict["success"] != nil {
            self.success = dict["success"] as! Bool
        }
    }
}

public class TicketingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TicketingResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = TicketingResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class TicketingCheckHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xAcsAirticketAccessToken: String?

    public var xAcsAirticketLanguage: String?

    public override init() {
        super.init()
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
        if self.xAcsAirticketAccessToken != nil {
            map["x-acs-airticket-access-token"] = self.xAcsAirticketAccessToken!
        }
        if self.xAcsAirticketLanguage != nil {
            map["x-acs-airticket-language"] = self.xAcsAirticketLanguage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("x-acs-airticket-access-token") && dict["x-acs-airticket-access-token"] != nil {
            self.xAcsAirticketAccessToken = dict["x-acs-airticket-access-token"] as! String
        }
        if dict.keys.contains("x-acs-airticket-language") && dict["x-acs-airticket-language"] != nil {
            self.xAcsAirticketLanguage = dict["x-acs-airticket-language"] as! String
        }
    }
}

public class TicketingCheckRequest : Tea.TeaModel {
    public var orderNum: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.orderNum != nil {
            map["order_num"] = self.orderNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("order_num") && dict["order_num"] != nil {
            self.orderNum = dict["order_num"] as! Int64
        }
    }
}

public class TicketingCheckResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var orderNum: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.orderNum != nil {
                map["order_num"] = self.orderNum!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("order_num") && dict["order_num"] != nil {
                self.orderNum = dict["order_num"] as! Int64
            }
        }
    }
    public var requestId: String?

    public var data: TicketingCheckResponseBody.Data?

    public var errorCode: String?

    public var errorData: Any?

    public var errorMsg: String?

    public var status: Int32?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.errorCode != nil {
            map["error_code"] = self.errorCode!
        }
        if self.errorData != nil {
            map["error_data"] = self.errorData!
        }
        if self.errorMsg != nil {
            map["error_msg"] = self.errorMsg!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var model = TicketingCheckResponseBody.Data()
            model.fromMap(dict["data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("error_code") && dict["error_code"] != nil {
            self.errorCode = dict["error_code"] as! String
        }
        if dict.keys.contains("error_data") && dict["error_data"] != nil {
            self.errorData = dict["error_data"] as! Any
        }
        if dict.keys.contains("error_msg") && dict["error_msg"] != nil {
            self.errorMsg = dict["error_msg"] as! String
        }
        if dict.keys.contains("status") && dict["status"] != nil {
            self.status = dict["status"] as! Int32
        }
        if dict.keys.contains("success") && dict["success"] != nil {
            self.success = dict["success"] as! Bool
        }
    }
}

public class TicketingCheckResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TicketingCheckResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = TicketingCheckResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class TransitVisaHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var xAcsAirticketAccessToken: String?

    public var xAcsAirticketLanguage: String?

    public override init() {
        super.init()
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
        if self.xAcsAirticketAccessToken != nil {
            map["x-acs-airticket-access-token"] = self.xAcsAirticketAccessToken!
        }
        if self.xAcsAirticketLanguage != nil {
            map["x-acs-airticket-language"] = self.xAcsAirticketLanguage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("x-acs-airticket-access-token") && dict["x-acs-airticket-access-token"] != nil {
            self.xAcsAirticketAccessToken = dict["x-acs-airticket-access-token"] as! String
        }
        if dict.keys.contains("x-acs-airticket-language") && dict["x-acs-airticket-language"] != nil {
            self.xAcsAirticketLanguage = dict["x-acs-airticket-language"] as! String
        }
    }
}

public class TransitVisaRequest : Tea.TeaModel {
    public class FlightSegmentParamList : Tea.TeaModel {
        public var arrivalAirport: String?

        public var arrivalTerminal: String?

        public var arrivalTime: Int64?

        public var codeShare: Bool?

        public var departureAirport: String?

        public var departureTerminal: String?

        public var departureTime: Int64?

        public var marketingAirline: String?

        public var marketingFlightNo: String?

        public var operatingAirline: String?

        public var stopCityList: String?

        public var ticketingAirline: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.arrivalAirport != nil {
                map["arrival_airport"] = self.arrivalAirport!
            }
            if self.arrivalTerminal != nil {
                map["arrival_terminal"] = self.arrivalTerminal!
            }
            if self.arrivalTime != nil {
                map["arrival_time"] = self.arrivalTime!
            }
            if self.codeShare != nil {
                map["code_share"] = self.codeShare!
            }
            if self.departureAirport != nil {
                map["departure_airport"] = self.departureAirport!
            }
            if self.departureTerminal != nil {
                map["departure_terminal"] = self.departureTerminal!
            }
            if self.departureTime != nil {
                map["departure_time"] = self.departureTime!
            }
            if self.marketingAirline != nil {
                map["marketing_airline"] = self.marketingAirline!
            }
            if self.marketingFlightNo != nil {
                map["marketing_flight_no"] = self.marketingFlightNo!
            }
            if self.operatingAirline != nil {
                map["operating_airline"] = self.operatingAirline!
            }
            if self.stopCityList != nil {
                map["stop_city_list"] = self.stopCityList!
            }
            if self.ticketingAirline != nil {
                map["ticketing_airline"] = self.ticketingAirline!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("arrival_airport") && dict["arrival_airport"] != nil {
                self.arrivalAirport = dict["arrival_airport"] as! String
            }
            if dict.keys.contains("arrival_terminal") && dict["arrival_terminal"] != nil {
                self.arrivalTerminal = dict["arrival_terminal"] as! String
            }
            if dict.keys.contains("arrival_time") && dict["arrival_time"] != nil {
                self.arrivalTime = dict["arrival_time"] as! Int64
            }
            if dict.keys.contains("code_share") && dict["code_share"] != nil {
                self.codeShare = dict["code_share"] as! Bool
            }
            if dict.keys.contains("departure_airport") && dict["departure_airport"] != nil {
                self.departureAirport = dict["departure_airport"] as! String
            }
            if dict.keys.contains("departure_terminal") && dict["departure_terminal"] != nil {
                self.departureTerminal = dict["departure_terminal"] as! String
            }
            if dict.keys.contains("departure_time") && dict["departure_time"] != nil {
                self.departureTime = dict["departure_time"] as! Int64
            }
            if dict.keys.contains("marketing_airline") && dict["marketing_airline"] != nil {
                self.marketingAirline = dict["marketing_airline"] as! String
            }
            if dict.keys.contains("marketing_flight_no") && dict["marketing_flight_no"] != nil {
                self.marketingFlightNo = dict["marketing_flight_no"] as! String
            }
            if dict.keys.contains("operating_airline") && dict["operating_airline"] != nil {
                self.operatingAirline = dict["operating_airline"] as! String
            }
            if dict.keys.contains("stop_city_list") && dict["stop_city_list"] != nil {
                self.stopCityList = dict["stop_city_list"] as! String
            }
            if dict.keys.contains("ticketing_airline") && dict["ticketing_airline"] != nil {
                self.ticketingAirline = dict["ticketing_airline"] as! String
            }
        }
    }
    public var flightSegmentParamList: [TransitVisaRequest.FlightSegmentParamList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.flightSegmentParamList != nil {
            var tmp : [Any] = []
            for k in self.flightSegmentParamList! {
                tmp.append(k.toMap())
            }
            map["flight_segment_param_list"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("flight_segment_param_list") && dict["flight_segment_param_list"] != nil {
            var tmp : [TransitVisaRequest.FlightSegmentParamList] = []
            for v in dict["flight_segment_param_list"] as! [Any] {
                var model = TransitVisaRequest.FlightSegmentParamList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.flightSegmentParamList = tmp
        }
    }
}

public class TransitVisaShrinkRequest : Tea.TeaModel {
    public var flightSegmentParamListShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.flightSegmentParamListShrink != nil {
            map["flight_segment_param_list"] = self.flightSegmentParamListShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("flight_segment_param_list") && dict["flight_segment_param_list"] != nil {
            self.flightSegmentParamListShrink = dict["flight_segment_param_list"] as! String
        }
    }
}

public class TransitVisaResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var cityCode: String?

        public var visaType: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cityCode != nil {
                map["city_code"] = self.cityCode!
            }
            if self.visaType != nil {
                map["visa_type"] = self.visaType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("city_code") && dict["city_code"] != nil {
                self.cityCode = dict["city_code"] as! String
            }
            if dict.keys.contains("visa_type") && dict["visa_type"] != nil {
                self.visaType = dict["visa_type"] as! Int32
            }
        }
    }
    public var requestId: String?

    public var data: [TransitVisaResponseBody.Data]?

    public var errorCode: String?

    public var errorData: Any?

    public var errorMsg: String?

    public var status: Int32?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
        if self.errorCode != nil {
            map["error_code"] = self.errorCode!
        }
        if self.errorData != nil {
            map["error_data"] = self.errorData!
        }
        if self.errorMsg != nil {
            map["error_msg"] = self.errorMsg!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.success != nil {
            map["success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("data") && dict["data"] != nil {
            var tmp : [TransitVisaResponseBody.Data] = []
            for v in dict["data"] as! [Any] {
                var model = TransitVisaResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("error_code") && dict["error_code"] != nil {
            self.errorCode = dict["error_code"] as! String
        }
        if dict.keys.contains("error_data") && dict["error_data"] != nil {
            self.errorData = dict["error_data"] as! Any
        }
        if dict.keys.contains("error_msg") && dict["error_msg"] != nil {
            self.errorMsg = dict["error_msg"] as! String
        }
        if dict.keys.contains("status") && dict["status"] != nil {
            self.status = dict["status"] as! Int32
        }
        if dict.keys.contains("success") && dict["success"] != nil {
            self.success = dict["success"] as! Bool
        }
    }
}

public class TransitVisaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TransitVisaResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = TransitVisaResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
