//
//  Copyright (c) Microsoft Corporation. All rights reserved.
//  Licensed under the MIT License.
//

import Combine

struct ErrorReducer: Reducer {
    func reduce(_ state: ReduxState, _ action: Action) -> ReduxState {
        guard let state = state as? ErrorState else {
            return state
        }

        var error = state.error
        var errorCode = state.errorCode
        var errorCategory = state.errorCategory

        switch action {
        case let action as ErrorAction.FatalErrorUpdated:
            error = action.error
            errorCode = action.errorCode
            errorCategory = .fatal
        case let action as ErrorAction.CallStateErrorUpdated:
            error = action.error
            errorCode = action.errorCode
            errorCategory = .callState
        default:
            return state
        }

        return ErrorState(error: error,
                          errorCode: errorCode,
                          errorCategory: errorCategory)
    }
}