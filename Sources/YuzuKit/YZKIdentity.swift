import simd

public struct YZKIdentity {
    
    public static let twoByTwo     = matrix_identity_float2x2
    public static let threeByThree = matrix_identity_float3x3
    public static let fourByFour   = matrix_identity_float4x4
    
    private init() {
        // Disalow initialization
    }
}
