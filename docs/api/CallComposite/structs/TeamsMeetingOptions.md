**STRUCT**

# `TeamsMeetingOptions`

```swift
public struct TeamsMeetingOptions
```

## Description

Options for joining a Team's meeting.

## Properties

### `communicationTokenCredential`

The token credential used for communication service authentication.

```swift
public let communicationTokenCredential: CommunicationTokenCredential
```

### `meetingLink`

The URI of the Team's meeting.

```swift
public let meetingLink: String
```

### `displayName`

The display name of the local participant when joining the call.

```swift
public let displayName: String
```

## Methods

### `init`

Create an instance of a `TeamsMeetingOptions` with options.

```swift
public init(
    communicationTokenCredential: CommunicationTokenCredential,
    meetingLink: String,
    displayName: String)
```

```swift
public init(
    communicationTokenCredential: CommunicationTokenCredential,
    meetingLink: String,
    displayName: String)
```
### Parameters
* `communicationTokenCredential` - The CommunicationTokenCredential used for communication service authentication
* `meetingLink` - A string representing the full URI of the teams meeting to join.
* `displayName` - Specify the display name of the local participant for the call