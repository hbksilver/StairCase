//
//  NumberOfways.swift
//  number of ways to clime stair, using only one or two step at a time
//
//  Created by hassan Baraka on 12/13/21.
//

import Foundation;
class StairCase
{
    // countStairs function
    static func countStairs(_ n: Int, _ m: Int)->Int
    {

       
        var res: [Int] = Array(repeating: 0, count: n);
        res[0] = 1;
        res[1] = 1;

        do {
            var i: Int = 2;
            while (i < n)
            {
                res[i] = 0;
                do {
                    var j: Int = 1;
                    while (j <= m && j <= i)
                    {
                        res[i] += res[i - j];
                        j += 1;
                    }
                }
                i += 1;
            }
        }
        return res[n - 1];
    }
    // Number of ways to climb stairs
    static func countStairSteps(_ s: Int, _ m: Int)->Int
    {

        return StairCase.countStairs(s + 1, m);
    
    }
    // main  method
    static func main(_ args: [String])
    {
        let s: Int = 3;
        let m: Int = 2;
        print("Number of ways = "
            + String(StairCase.countStairSteps(s, m)));
    
    }
}
StairCase.main([String]());
