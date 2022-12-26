# AISWIFTPACKAGEMANAGER

## Installation 


### Manual 🤓
 Copy Source files from this repository into your own project

### Swift Package Manager (Preferred)📱
 You can use this Swift Package Manager to integrate the library by adding the following dependency in your project's 'Package.swift' file or by adding directly within XCode
 
`.Package(url: "https://github.com/Nirj2004/AISWIFTPACKAGEMANAGER.git", majorVersion: 1)`


## Example Usage 😀

Import the module in your application.

`import AISWIFTPACKAGEMANAGER`


Set your API token from creating one [here](https://beta.openai.com/account/api-keys).


`let openAI = AISWIFTPACKAGEMANAGER(authToken: "TOKEN")`


Create a call to the completions API, passing in a text prompt.


```swift
openAI.sendCompletion(with: "Hello how are you", maxTokens: 100) { result in // Result<OpenAI, OpenAIError>
    switch result {
        case .success(let success):
            print(success.choices.first?.text ?? "")
        case .failure(let failure):
            print(failure.localizedDescription)
    }
}
```

The API will return an `OpenAPI` object conatining the corresponding text items.


You can also specify a different model to use for the completions. The `sendCompletion` method uses the `text-davinci-003` model by default.

```swift
openAPI.sendCompletion(with: "A random emoji", model: .gpt3(.ada)) { result in // Result<OpenAI, OpenAIError>
    // switch on result to get the response or error
}
```
For a full list of the supported models see [OpenAIModelType.swift](https://github.com/Nirj2004/AISWIFTPACKAGEMANAGER/blob/main/Sources/OpenAISwift/Models/OpenAIModelType.swift). For more information on the models see the [OpenAI API Documentation](https://beta.openai.com/docs/models).

OpenAISwift also supports Swift concurrency so you can use Swift’s async/await syntax to fetch completions.

```swift
do {
	let result = try await openAPI.sendCompletion(with: "A random emoji")
} catch {
	print(error.localizedDescription)
}
```

## Licence ⚖️

The MIT License (MIT)

Copyright (c) 2022 Nirj2004

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.