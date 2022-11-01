import simd

public struct YZKScaleMatrix {
    
    public static func from(scale vector: SIMD3<Float>) -> simd_float4x4 {
        return float4x4(
            [vector.x,        0,        0, 0],
            [       0, vector.y,        0, 0],
            [       0,        0, vector.z, 0],
            [       0,        0,        0, 1]
        )
    }
    
    public static func from(xFactor: Float, yFactor: Float, zFactor: Float) -> simd_float4x4 {
        return float4x4(
            [xFactor,       0,       0, 0],
            [      0, yFactor,       0, 0],
            [      0,       0, zFactor, 0],
            [      0,       0,       0, 1]
        )
    }
    
    public static func from(uniform factor: Float) -> simd_float4x4 {
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
