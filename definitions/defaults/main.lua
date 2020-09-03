return {
  track_motion = {
    ["G"] = "LastTrack",
    ["gg"] = "FirstTrack",
    ["J"] = "NextFolderNear",
    ["K"] = "PrevFolderNear",
    ["/"] = "MatchedTrackForward",
    ["?"] = "MatchedTrackBackward",
    ["n"] = "NextTrackMatchForward",
    ["N"] = "NextTrackMatchBackward",
    [":"] = "TrackWithNumber",
    ["j"] = "NextTrack",
    ["k"] = "PrevTrack",
    ["<C-b>"] = "Prev10Track",
    ["<C-f>"] = "Next10Track",
    ["<C-d>"] = "Next5Track",
    ["<C-u>"] = "Prev5Track",
  },
  visual_track_command = {
    ["V"] = "SetModeNormal",
    ["<C-h>"] = "NudgeTrackPanLeft",
    ["<C-l>"] = "NudgeTrackPanRight",
    ["<C-H>"] = "NudgeTrackPanLeft10Times",
    ["<C-L>"] = "NudgeTrackPanRight10Times",
  },
  track_selector = {
    ["'"] = "MarkedTracks",
    ["V"] = "Selection",
    ["c"] = "FolderChildren",
    ["F"] = "FolderParent",
    ["F"] = "Folder",
    ["i"] = {"+inner", {
               ["c"] = "InnerFolder",
               ["f"] = "InnerFolderAndParent",
               ["g"] = "AllTracks",
    }},
  },
  track_operator = {
    ["z"] = "ZoomTrackSelection",
    ["<TAB>"] = "MakeFolder",
    ["d"] = "CutTrack",
    ["A"] = "ArmTracks",
    ["s"] = "SelectTracks",
    ["S"] = "ToggleSolo",
    ["M"] = "ToggleMute",
    ["y"] = "CopyTrack",
    ["<M-C>"] = "ColorTrackGradient",
    ["<M-c>"] = "ColorTrack",
  },
  timeline_operator = {
    ["s"] = "SelectItemsAndSplit",
    ["<M-p>"] = "CopyAndFitByLooping",
    -- ["<M-s>"] = "SelectEnvelopePoints",
    ["d"] = "CutItems",
    ["y"] = "CopyItems",
    ["<C-c>"] = "CopyItems",
    ["<M-d>"] = "CutEnvelopePoints",
    ["<M-y>"] = "CopyEnvelopePoints",
    ["<C-D>"] = "DeleteTimeline",
    ["g"] = "GlueItems",
    ["#"] = "SetItemFadeBoundaries",
    ["z"] = "ZoomTimeSelection",
    ["Z"] = "ZoomTimeAndTrackSelection",
    ["a"] = "InsertOrExtendMidiItem",
    ["<M-a>"] = "InsertAutomationItem",
    ["c"] = {"+change/fit", {
               ["c"] = "FitByLoopingNoExtend",
               ["f"] = "FitByLooping",
               ["p"] = "FitByPadding",
               ["s"] = "FitByStretching",
    }},
  },
  timeline_selector = {
    ["s"] = "SelectedItems",
  },
  timeline_motion = {
    ["<CM-l>"] = "NextTransientInItem",
    ["<CM-h>"] = "PrevTransientInItem",
    ["<CM-L>"] = "NextTransientInItemMinusFadeTime",
    ["<CM-H>"] = "PrevTransientInItemMinusFadeTime",
    ["B"] = "PrevBigItemStart",
    ["E"] = "NextBigItemEnd",
    ["W"] = "NextBigItemStart",
    ["b"] = "PrevItemStart",
    ["<M-b>"] = "PrevEnvelopePoint",
    ["e"] = "NextItemEnd",
    ["w"] = "NextItemStart",
    ["<M-w>"] = "NextEnvelopePoint",
    ["<C-a>"] = "FirstItemStart",
    ["$"] = "LastItemEnd",
    ["("] = "TimeSelectionStart",
    [")"] = "TimeSelectionEnd",
  },
  command = {
    ["]"] = "TrimItemRightEdge",
    ["<"] = "TrimItemLeftEdge",
    ["<TAB>"] = "CycleFolderCollapsedState",
    ["zp"] = "ZoomProject",
    ["D"] = "CutSelectedItems",
    ["<M-S>"] = "UnsoloAllItems",
    ["<M-s>"] = "ToggleSoloItem",
    ["Y"] = "CopySelectedItems",
    ["V"] = "SetModeVisualTrack",
    ["<M-j>"] = "NextEnvelope",
    ["<M-k>"] = "PrevEnvelope",
    ["<C-+>"] = "ZoomInVert",
    ["<C-->"] = "ZoomOutVert",
    ["+"] = "ZoomInHoriz",
    ["-"] = "ZoomOutHoriz",
    [";"] = "MoveItemToEditCursor",
    [","] = "MoveItemContentToEditCursor",
    ["dd"] = "CutTrack",
    ["O"] = "EnterTrackAbove",
    ["o"] = "EnterTrackBelow",
    ["p"] = "Paste",
    ["<C-v>"] = "Paste",
    ["yy"] = "CopyTrack",
    ["zz"] = "ScrollToSelectedTracks",
    ["|"] = "SplitItemsAtEditCursor",
    ["~"] = "MarkedTracks",
    ["<C-j>"] = "NudgeTrackVolumeDownBy1Tenth",
    ["<C-k>"] = "NudgeTrackVolumeUpBy1Tenth",
    ["<C-J>"] = "NudgeTrackVolumeDownBy1",
    ["<C-K>"] = "NudgeTrackVolumeUpBy1",
    ["<CM-j>"] = "ShiftEnvelopePointsDownATinyBit",
    ["<CM-k>"] = "ShiftEnvelopePointsUpATinyBit",
    ["<CM-J>"] = "ShiftEnvelopePointsDown",
    ["<CM-K>"] = "ShiftEnvelopePointsUp",
    ["S"] = "SelectItemsUnderEditCursor",
    ["'"] = "MarkedTracks",
  },
}
