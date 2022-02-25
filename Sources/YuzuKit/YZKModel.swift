import simd

public class YZKModel {
    public static func matrix(position: SIMD3<Float> = SIMD3<Float>(repeating: 0.0),
                              rotation: SIMD3<Float> = SIMD3<Float>(repeating: 0.0),
                              scale: SIMD3<Float> = SIMD3<Float>(repeating: 0.0)) -> simd_float4x4 {
        return  YZKRotation.matrix(around: rotation) * YZKScale.matrix(by: scale) * YZKTranslation.matrix(from: position)
    }
}
