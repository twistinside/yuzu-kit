import simd

public struct YZKTranslationMatrix {
    
    public static func from(translation vector: SIMD3<Float>) -> simd_float4x4 {
        return float4x4(
            [       1,        0,        0, 0],
            [       0,        1,        0, 0],
            [       0,        0,        1, 0],
            [vector.x, vector.y, vector.z, 1]
        )
    }
    
    public static func from(tx: Float, ty: Float, tz: Float) -> simd_float4x4 {
        return float4x4(
            [ 1,  0,  0, 0],
            [ 0,  1,  0, 0],
            [ 0,  0,  1, 0],
            [tx, ty, tz, 1]
        )
    }
    
    private init() {
        // Disalow initialization
    }
}
