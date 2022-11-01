import simd

public struct YZKViewMatrix {
    public static func from(position: SIMD3<Float>, rotation: SIMD3<Float>) -> simd_float4x4 {
        return YZKTranslationMatrix.from(translation: position).inverse * YZKRotationMatrix.from(rotation: rotation)
    }
}
