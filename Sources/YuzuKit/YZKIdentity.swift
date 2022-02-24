import simd

public struct YZKIdentity {
    
    public static let matrix2x2 = matrix_identity_float2x2
    public static let matrix3x3 = matrix_identity_float3x3
    public static let matrix4x4 = matrix_identity_float4x4
    
    private init() {
        // Disalow initialization
    }
}
