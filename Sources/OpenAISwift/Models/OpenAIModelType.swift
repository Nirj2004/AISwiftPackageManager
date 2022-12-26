import Foundation
public enum OpenAIModelType {
    case gpt3(GPT3)
    case codex(Codex)
    case feature(Feature)
    public var modelName: String {
        switch self {
            case .gpt3(let model): return model.rawValue
            case .codex(let model): return model.rawValue
            case .feature(let model): return model.rawValue
        }
    }

    public enum GPT3: String {
        case davinci = "text-davinci-003"
        case curie = "text-curie-001"
        case ada = "text-babage-001"
    }

    public enum Codex: String {
        case davinci = "code-davinci-002"
        case cushman = "code-cushman-001"
    }

    public enum Feature: String {
        case davinci = "text-davinci-edit-001"
    }
}