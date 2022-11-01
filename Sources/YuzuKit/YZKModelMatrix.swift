import simd

public class YZKModelMatrix {
    public static func from(position: SIMD3<Float> = SIMD3<Float>(repeating: 0.0),
                            rotation: SIMD3<Float> = SIMD3<Float>(repeating: 0.0),
                            scale:    SIMD3<Float> = SIMD3<Float>(repeating: 0.0)) -> simd_float4x4 {
        return YZKRotationMatrix.from(rotation: rotation) * YZKScaleMatrix.from(scale: scale) * YZKTranslationMatrix.from(translation: position)
    }
}
