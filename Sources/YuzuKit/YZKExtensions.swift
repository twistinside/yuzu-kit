extension Float {
    public func toRadians() -> Float {
        return (self / 180.0) * Float.pi
    }
    
    public func toDegrees() -> Float {
        return self * (180.0 / Float.pi)
    }
}
