describe "package math_utils", ->
    math_utils = undefined
    beforeEach ->
        math_utils = require "./math_utils"
    describe "sum function", ->
        it "should sum values", ->
            (expect math_utils.sum 1,2,3,4,5).toEqual 15
            (expect math_utils.sum 3, 12, 4, 11).toEqual 30
    describe "avg function", ->
        it "should average values", ->
            (expect math_utils.avg 1,2,3,4,5).toEqual 3
            (expect math_utils.avg -10,5,100,-100,0).toEqual -1
