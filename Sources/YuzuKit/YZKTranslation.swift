import simd

public struct YZKTranslation {
    
    public static func matrix(from vector: SIMD3<Float>) -> simd_float4x4 {
        return float4x4(
            [       1,        0,        0, 0],
            [       0,        1,        0, 0],
            [       0,        0,        1, 0],
            [vector.x, vector.y, vector.z, 1]
        )
    }
    
    public static func matrix(tx: Float, ty: Float, tz: Float) -> simd_float4x4 {
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
