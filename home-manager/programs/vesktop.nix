{pkgs, ...}:
{
  home.packages = [ pkgs.vesktop ];
  home.file.".config/vesktop/settings/settings.json".text = ''
{
    "autoUpdate": true,
    "autoUpdateNotification": true,
    "useQuickCss": true,
    "themeLinks": [
        "https://catppuccin.github.io/discord/dist/catppuccin-mocha.theme.css"
    ],
    "enabledThemes": [],
    "enableReactDevtools": false,
    "frameless": false,
    "transparent": false,
    "winCtrlQ": false,
    "disableMinSize": false,
    "winNativeTitleBar": false,
    "plugins": {
        "ChatInputButtonAPI": {
            "enabled": true
        },
        "CommandsAPI": {
            "enabled": true
        },
        "DynamicImageModalAPI": {
            "enabled": true
        },
        "MemberListDecoratorsAPI": {
            "enabled": true
        },
        "MessageAccessoriesAPI": {
            "enabled": true
        },
        "MessageDecorationsAPI": {
            "enabled": true
        },
        "MessageEventsAPI": {
            "enabled": true
        },
        "MessagePopoverAPI": {
            "enabled": true
        },
        "MessageUpdaterAPI": {
            "enabled": true
        },
        "ServerListAPI": {
            "enabled": false
        },
        "UserSettingsAPI": {
            "enabled": true
        },
        "AccountPanelServerProfile": {
            "enabled": false
        },
        "AlwaysAnimate": {
            "enabled": false
        },
        "AlwaysExpandRoles": {
            "enabled": true
        },
        "AlwaysTrust": {
            "enabled": false
        },
        "AnonymiseFileNames": {
            "enabled": true
        },
        "AppleMusicRichPresence": {
            "enabled": false
        },
        "WebRichPresence (arRPC)": {
            "enabled": false
        },
        "BANger": {
            "enabled": false
        },
        "BetterFolders": {
            "enabled": false
        },
        "BetterGifAltText": {
            "enabled": false
        },
        "BetterGifPicker": {
            "enabled": false
        },
        "BetterNotesBox": {
            "enabled": false
        },
        "BetterRoleContext": {
            "enabled": true
        },
        "BetterRoleDot": {
            "enabled": true,
            "bothStyles": false,
            "copyRoleColorInProfilePopout": false
        },
        "BetterSessions": {
            "enabled": true,
            "backgroundCheck": false
        },
        "BetterSettings": {
            "enabled": false
        },
        "BetterUploadButton": {
            "enabled": false
        },
        "BiggerStreamPreview": {
            "enabled": false
        },
        "BlurNSFW": {
            "enabled": true,
            "blurAmount": 10
        },
        "CallTimer": {
            "enabled": true
        },
        "ClearURLs": {
            "enabled": true
        },
        "ClientTheme": {
            "enabled": false
        },
        "ColorSighted": {
            "enabled": false
        },
        "ConsoleJanitor": {
            "enabled": true,
            "disableLoggers": false,
            "disableSpotifyLogger": true,
            "whitelistedLoggers": "GatewaySocket; Routing/Utils"
        },
        "ConsoleShortcuts": {
            "enabled": false
        },
        "CopyEmojiMarkdown": {
            "enabled": true
        },
        "CopyFileContents": {
            "enabled": true
        },
        "CopyUserURLs": {
            "enabled": true
        },
        "CrashHandler": {
            "enabled": true
        },
        "CtrlEnterSend": {
            "enabled": false
        },
        "CustomRPC": {
            "enabled": false
        },
        "CustomIdle": {
            "enabled": false
        },
        "Dearrow": {
            "enabled": false
        },
        "Decor": {
            "enabled": false
        },
        "DisableCallIdle": {
            "enabled": false
        },
        "DontRoundMyTimestamps": {
            "enabled": false
        },
        "EmoteCloner": {
            "enabled": false
        },
        "Experiments": {
            "enabled": false
        },
        "F8Break": {
            "enabled": false
        },
        "FakeNitro": {
            "enabled": false
        },
        "FakeProfileThemes": {
            "enabled": false
        },
        "FavoriteEmojiFirst": {
            "enabled": false
        },
        "FavoriteGifSearch": {
            "enabled": true
        },
        "FixCodeblockGap": {
            "enabled": true
        },
        "FixImagesQuality": {
            "enabled": true
        },
        "FixSpotifyEmbeds": {
            "enabled": true
        },
        "FixYoutubeEmbeds": {
            "enabled": true
        },
        "ForceOwnerCrown": {
            "enabled": true
        },
        "FriendInvites": {
            "enabled": false
        },
        "FriendsSince": {
            "enabled": true
        },
        "FullSearchContext": {
            "enabled": true
        },
        "GameActivityToggle": {
            "enabled": false
        },
        "GifPaste": {
            "enabled": false
        },
        "GreetStickerPicker": {
            "enabled": false
        },
        "HideAttachments": {
            "enabled": false
        },
        "iLoveSpam": {
            "enabled": true
        },
        "IgnoreActivities": {
            "enabled": false
        },
        "ImageLink": {
            "enabled": false
        },
        "ImageZoom": {
            "enabled": false
        },
        "ImplicitRelationships": {
            "enabled": true,
            "sortByAffinity": true
        },
        "InvisibleChat": {
            "enabled": false
        },
        "KeepCurrentChannel": {
            "enabled": false
        },
        "LastFMRichPresence": {
            "enabled": false
        },
        "LoadingQuotes": {
            "enabled": true,
            "replaceEvents": true,
            "enableDiscordPresetQuotes": false,
            "additionalQuotes": "",
            "additionalQuotesDelimiter": "|",
            "enablePluginPresetQuotes": true
        },
        "MemberCount": {
            "enabled": true,
            "memberList": true,
            "toolTip": true
        },
        "MentionAvatars": {
            "enabled": false
        },
        "MessageClickActions": {
            "enabled": true
        },
        "MessageLatency": {
            "enabled": false
        },
        "MessageLinkEmbeds": {
            "enabled": true
        },
        "MessageLogger": {
            "enabled": true,
            "deleteStyle": "overlay",
            "logDeletes": true,
            "collapseDeleted": false,
            "logEdits": true,
            "inlineEdits": true,
            "ignoreBots": false,
            "ignoreSelf": false,
            "ignoreUsers": "",
            "ignoreChannels": "",
            "ignoreGuilds": ""
        },
        "MessageTags": {
            "enabled": false
        },
        "MoreCommands": {
            "enabled": true
        },
        "MoreKaomoji": {
            "enabled": false
        },
        "MoreUserTags": {
            "enabled": false
        },
        "Moyai": {
            "enabled": false
        },
        "MutualGroupDMs": {
            "enabled": true
        },
        "NewGuildSettings": {
            "enabled": false
        },
        "NoBlockedMessages": {
            "enabled": false
        },
        "NoDevtoolsWarning": {
            "enabled": false
        },
        "NoF1": {
            "enabled": false
        },
        "NoMaskedUrlPaste": {
            "enabled": true
        },
        "NoMosaic": {
            "enabled": false
        },
        "NoOnboardingDelay": {
            "enabled": true
        },
        "NoPendingCount": {
            "enabled": false
        },
        "NoProfileThemes": {
            "enabled": true
        },
        "NoReplyMention": {
            "enabled": false
        },
        "NoScreensharePreview": {
            "enabled": false
        },
        "NoServerEmojis": {
            "enabled": false
        },
        "NoTypingAnimation": {
            "enabled": false
        },
        "NoUnblockToJump": {
            "enabled": false
        },
        "NormalizeMessageLinks": {
            "enabled": true
        },
        "NotificationVolume": {
            "enabled": false
        },
        "NSFWGateBypass": {
            "enabled": false
        },
        "OnePingPerDM": {
            "enabled": true
        },
        "oneko": {
            "enabled": false
        },
        "OpenInApp": {
            "enabled": true,
            "spotify": true
        },
        "OverrideForumDefaults": {
            "enabled": false
        },
        "PartyMode": {
            "enabled": false
        },
        "PauseInvitesForever": {
            "enabled": false
        },
        "PermissionFreeWill": {
            "enabled": false
        },
        "PermissionsViewer": {
            "enabled": true
        },
        "petpet": {
            "enabled": true
        },
        "PictureInPicture": {
            "enabled": false
        },
        "PinDMs": {
            "enabled": false
        },
        "PlainFolderIcon": {
            "enabled": false
        },
        "PlatformIndicators": {
            "enabled": true,
            "colorMobileIndicator": true,
            "list": true,
            "badges": true,
            "messages": true
        },
        "PreviewMessage": {
            "enabled": false
        },
        "QuickMention": {
            "enabled": true
        },
        "QuickReply": {
            "enabled": true
        },
        "ReactErrorDecoder": {
            "enabled": false
        },
        "ReadAllNotificationsButton": {
            "enabled": false
        },
        "RelationshipNotifier": {
            "enabled": false
        },
        "ReplaceGoogleSearch": {
            "enabled": false
        },
        "ReplyTimestamp": {
            "enabled": false
        },
        "RevealAllSpoilers": {
            "enabled": true
        },
        "ReverseImageSearch": {
            "enabled": true
        },
        "ReviewDB": {
            "enabled": false
        },
        "RoleColorEverywhere": {
            "enabled": false
        },
        "SecretRingToneEnabler": {
            "enabled": false
        },
        "Summaries": {
            "enabled": false
        },
        "SendTimestamps": {
            "enabled": true
        },
        "ServerInfo": {
            "enabled": true
        },
        "ServerListIndicators": {
            "enabled": false
        },
        "ShikiCodeblocks": {
            "enabled": true,
            "useDevIcon": "GREYSCALE",
            "theme": "https://raw.githubusercontent.com/shikijs/textmate-grammars-themes/2d87559c7601a928b9f7e0f0dda243d2fb6d4499/packages/tm-themes/themes/dark-plus.json"
        },
        "ShowAllMessageButtons": {
            "enabled": false
        },
        "ShowConnections": {
            "enabled": false
        },
        "ShowHiddenChannels": {
            "enabled": true,
            "showMode": 0,
            "hideUnreads": true
        },
        "ShowHiddenThings": {
            "enabled": true,
            "showTimeouts": true,
            "showInvitesPaused": true,
            "showModView": true,
            "disableDiscoveryFilters": true,
            "disableDisallowedDiscoveryFilters": true
        },
        "ShowMeYourName": {
            "enabled": false
        },
        "ShowTimeoutDuration": {
            "enabled": false
        },
        "SilentMessageToggle": {
            "enabled": false
        },
        "SilentTyping": {
            "enabled": false
        },
        "SortFriendRequests": {
            "enabled": false
        },
        "SpotifyControls": {
            "enabled": true,
            "hoverControls": false
        },
        "SpotifyCrack": {
            "enabled": false
        },
        "SpotifyShareCommands": {
            "enabled": false
        },
        "StartupTimings": {
            "enabled": false
        },
        "StickerPaste": {
            "enabled": false
        },
        "StreamerModeOnStream": {
            "enabled": false
        },
        "SuperReactionTweaks": {
            "enabled": false
        },
        "TextReplace": {
            "enabled": false
        },
        "ThemeAttributes": {
            "enabled": false
        },
        "Translate": {
            "enabled": true,
            "autoTranslate": false,
            "showChatBarButton": true
        },
        "TypingIndicator": {
            "enabled": true,
            "includeMutedChannels": false,
            "includeCurrentChannel": true
        },
        "TypingTweaks": {
            "enabled": true,
            "alternativeFormatting": true
        },
        "Unindent": {
            "enabled": false
        },
        "UnlockedAvatarZoom": {
            "enabled": true
        },
        "UnsuppressEmbeds": {
            "enabled": false
        },
        "UserMessagesPronouns": {
            "enabled": false
        },
        "UserVoiceShow": {
            "enabled": true,
            "showInUserProfileModal": true,
            "showInMemberList": true,
            "showInMessages": true
        },
        "USRBG": {
            "enabled": false
        },
        "ValidReply": {
            "enabled": true
        },
        "ValidUser": {
            "enabled": true
        },
        "VoiceChatDoubleClick": {
            "enabled": true
        },
        "VcNarrator": {
            "enabled": true
        },
        "VencordToolbox": {
            "enabled": false
        },
        "ViewIcons": {
            "enabled": true
        },
        "ViewRaw": {
            "enabled": true,
            "clickMethod": "Left"
        },
        "VoiceDownload": {
            "enabled": true
        },
        "VoiceMessages": {
            "enabled": true
        },
        "VolumeBooster": {
            "enabled": true
        },
        "WebKeybinds": {
            "enabled": true
        },
        "WebScreenShareFixes": {
            "enabled": true
        },
        "WhoReacted": {
            "enabled": true
        },
        "XSOverlay": {
            "enabled": false
        },
        "YoutubeAdblock": {
            "enabled": true
        },
        "NoTrack": {
            "enabled": true,
            "disableAnalytics": true
        },
        "WebContextMenus": {
            "enabled": true,
            "addBack": true
        },
        "Settings": {
            "enabled": true,
            "settingsLocation": "aboveNitro"
        },
        "SupportHelper": {
            "enabled": true
        }
    },
    "notifications": {
        "timeout": 5000,
        "position": "bottom-right",
        "useNative": "not-focused",
        "logLimit": 50
    },
    "cloud": {
        "authenticated": false,
        "url": "https://api.vencord.dev/",
        "settingsSync": false,
        "settingsSyncVersion": 1734767563817
    }
}
  '';
}
