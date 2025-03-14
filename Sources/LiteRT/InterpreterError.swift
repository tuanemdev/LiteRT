import Foundation

/// Errors thrown by the TensorFlow Lite `Interpreter`.
public enum InterpreterError: Equatable, Hashable {
    case invalidTensorIndex(index: Int, maxIndex: Int)
    case invalidTensorDataCount(provided: Int, required: Int)
    case invalidTensorDataType
    case failedToLoadModel
    case failedToCreateInterpreter
    case failedToResizeInputTensor(index: Int)
    case failedToCopyDataToInputTensor
    case failedToAllocateTensors
    case allocateTensorsRequired
    case invokeInterpreterRequired
    case tensorFlowLiteError(String)
}

extension InterpreterError: LocalizedError {
    /// A localized description of the interpreter error.
    public var errorDescription: String? {
        switch self {
        case .invalidTensorIndex(let index, let maxIndex):
            "Invalid tensor index \(index), max index is \(maxIndex)."
        case .invalidTensorDataCount(let provided, let required):
            "Provided data count \(provided) must match the required count \(required)."
        case .invalidTensorDataType:
            "Tensor data type is unsupported or could not be determined due to a model error."
        case .failedToLoadModel:
            "Failed to load the given model."
        case .failedToCreateInterpreter:
            "Failed to create the interpreter."
        case .failedToResizeInputTensor(let index):
            "Failed to resize input tensor at index \(index)."
        case .failedToCopyDataToInputTensor:
            "Failed to copy data to input tensor."
        case .failedToAllocateTensors:
            "Failed to allocate memory for input tensors."
        case .allocateTensorsRequired:
            "Must call allocateTensors()."
        case .invokeInterpreterRequired:
            "Must call invoke()."
        case .tensorFlowLiteError(let message):
            "TensorFlow Lite Error: \(message)"
        }
    }
}

extension InterpreterError: CustomStringConvertible {
    /// A textual representation of the TensorFlow Lite interpreter error.
    public var description: String { return errorDescription ?? "Unknown error." }
}
