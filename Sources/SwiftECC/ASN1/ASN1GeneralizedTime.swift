//
//  ASN1GeneralizedTime.swift
//  ASN1

import Foundation

/// ASN1 GeneralizedTime class
public class ASN1GeneralizedTime: ASN1Time, CustomStringConvertible {
    
    // MARK: - Initializers

    /// Constructs an ASN1GeneralizedTime instance from a Date
    ///
    /// - Parameter date: Date
    public init(_ date: Date) {
        super.init(ASN1.TAG_GeneralizedTime, date, true)
    }
    
    /// Constructs an ASN1GeneralizedTime instance from a byte array
    ///
    /// - Parameter bytes: Byte array
    public init(_ bytes: Bytes) {
        super.init(ASN1.TAG_GeneralizedTime, bytes, true)
    }
    
    // MARK: Computed properties
    
    /// Description of *self*
    public override var description: String {
        return "GeneralizedTime: " + String(bytes: self.value, encoding: .ascii)!
    }

    

}
