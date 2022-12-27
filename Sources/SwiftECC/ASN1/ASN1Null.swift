//
//  ASN1Null.swift
//  ASN1

/// ASN1 Null class
public class ASN1Null: ASN1, CustomStringConvertible {
    
    // MARK: - Initializers

    /// Constructs an ASN1Null instance
    public init() {
        super.init(ASN1.TAG_Null)
    }

    // MARK: Computed properties
    
    /// Description of *self*
    public override var description: String {
        return "Null"
    }
    
    override func doEncode(_ bytes: inout Bytes) {
        bytes.append(self.tag)
        bytes.append(Byte(0))
    }
    
    override func getContentLength() -> Int {
        return 0
    }

}
