import simd

struct YZKScale {
    
    public static func scale(by vector: SIMD3<Float>) -> simd_float4x4 {
        return float4x4(
            [vector.x,        0,        0, 0],
            [       0, vector.y,        0, 0],
            [       0,        0, vector.z, 0],
            [       0,        0,        0, 1]
        )
    }
    
    public static func scale(xfactor: Float, yfactor: Float, zfactor: Float) -> simd_float4x4 {
        return float4x4(
            [xfactor,       0,       0, 0],
            [      0, yfactor,       0, 0],
            [      0,       0, zfactor, 0],
            [      0,       0,       0, 1]
        )
    }
    
    public static func uniformScale(by factor: Float) -> simd_float4x4 {
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
