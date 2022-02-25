import simd

public struct YZKScale {
    
    public static func matrix(by vector: SIMD3<Float>) -> simd_float4x4 {
        return float4x4(
            [vector.x,        0,        0, 0],
            [       0, vector.y,        0, 0],
            [       0,        0, vector.z, 0],
            [       0,        0,        0, 1]
        )
    }
    
    public static func matrix(xFactor: Float, yFactor: Float, zFactor: Float) -> simd_float4x4 {
        return float4x4(
            [xFactor,       0,       0, 0],
            [      0, yFactor,       0, 0],
            [      0,       0, zFactor, 0],
            [      0,       0,       0, 1]
        )
    }
    
    public static func matrix(uniform factor: Float) -> simd_float4x4 {
        return float4x4(
            [factor,      0,      0, 0],
            [     0, factor,      0, 0],
            [     0,      0, factor, 0],
            [     0,      0,      0, 1]
        )
    }
    
    private init() {
        // Disalow initialization
    }
}
