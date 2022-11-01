import simd

public struct YZKProjectionMatrix {
    public static func standard(fov: Float, near: Float, far: Float, aspect: Float) -> simd_float4x4 {
        let y = 1 / tan(fov * 0.5)
        let x = y / aspect
        let z = far / (far - near)
        
        let X = SIMD4<Float>( x,  0,  0,  0)
        let Y = SIMD4<Float>( 0,  y,  0,  0)
        let Z = SIMD4<Float>( 0,  0,  z, 1)
        let W = SIMD4<Float>( 0,  0,  z * -near,  0)
        
        return simd_float4x4(columns: ( X, Y, Z, W))
    }
    
    public static func orthographic(left: Float, right: Float, bottom: Float, top: Float, near: Float, far: Float) -> simd_float4x4 {
        let X = SIMD4<Float>(2 / (right - left), 0, 0, 0)
        let Y = SIMD4<Float>(0, 2 / (top - bottom), 0, 0)
        let Z = SIMD4<Float>(0, 0, 1 / (far - near), 0)
        let W = SIMD4<Float>((left + right) / (left - right), (top + bottom) / (bottom - top), near / (near - far), 1)
        
        return simd_float4x4(columns: (X, Y, Z, W))
    }
    
    private init() {
        // Disalow initialization
    }
}
