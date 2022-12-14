import simd

public struct YZKRotationMatrix {
    
    public static func from(rotation vector: SIMD3<Float>) -> simd_float4x4 {
        let rotationAroundX = simd_float4x4(
            [1,              0,             0, 0],
            [0,  cos(vector.x), sin(vector.x), 0],
            [0, -sin(vector.x), cos(vector.x), 0],
            [0,              0,             0, 1]
        )
        
        let rotationAroundY = simd_float4x4(
            [cos(vector.y), 0, -sin(vector.y), 0],
            [            0, 1,              0, 0],
            [sin(vector.y), 0,  cos(vector.y), 0],
            [            0, 0,              0, 1]
        )
        
        let rotationAroundZ = simd_float4x4(
            [ cos(vector.z), sin(vector.z), 0, 0],
            [-sin(vector.z), cos(vector.z), 0, 0],
            [             0,             0, 1, 0],
            [             0,             0, 0, 1]
        )
        
        return rotationAroundX * rotationAroundY * rotationAroundZ
    }
    
    private init() {
        // Disalow initialization
    }
}
