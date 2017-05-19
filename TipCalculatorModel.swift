	//
//  TipCalculatorModel.swift
//  TipCalculator
//
//  Created by Guest User on 19/05/17.
//  Copyright © 2017 Guest User. All rights reserved.
//

import Foundation

    class TipCalculatorModel {
        
        init(total: Double, taxPct: Double) {
            
            self.total = total
            self.taxPct = taxPct
        }
        
        func calcTipWithTipPct(tipPct: Double) -> Double {
            return subtotal * tipPct
        }
        
        func returnPossibleTips() -> [Int: Double] { let possibleTipsInferred = [0.15, 0.18, 0.20]
            
            var retval = [Int: Double]()
            for possibleTip in possibleTipsInferred {
                let intPct = Int(possibleTip*100)
                retval[intPct] = calcTipWithTipPct(tipPct:possibleTip)
            }
            return retval
        }
        
        var total: Double
        var taxPct: Double
        var subtotal: Double {
            get {
                return total / (taxPct + 1)
            }
        }
    }
