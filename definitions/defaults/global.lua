return {
  record_action = {
    ["r"] = "ToggleRecord",
    ["o"] = "Overdub",
    -- ["r"] = "Reset",
    ["<return>"] = "StopRecord",
    ["R"] = "ToggleRecord",
    ["t"] = "SetAutomationModeTrimRead",
    ["e"] = "ExplodeRecording",
    ["g"] = "SetAutomationModeTouch",
    -- ["r"] = "SetAutomationModeRead",
    ["l"] = "SetAutomationModeLatch",
    ["p"] = "SetAutomationModeLatchPreview",
    ["w"] = "SetAutomationModeWrite",
    -- ["o"] = "SetRecordMidiOutput",
    -- ["d"] = "SetRecordMidiOverdub",
    -- ["t"] = "SetRecordMidiTouchReplace",
    -- ["r"] = "SetRecordMidiReplace",
    -- ["m"] = "SetRecordMonitorOnly",
    -- ["i"] = "SetRecordInput",
    -- ["e"] = "ExpandRecording",
    -- ["a"] = "AppendToRecording"
  },
  timeline_motion = {
    ["0"] = "ProjectStart",
    ["<C-$>"] = "ProjectEnd",
    ["f"] = "PlayPosition",
    ["x"] = "MousePosition",
    -- ["["] = "LoopStart",
    -- ["]"] = "LoopEnd",
    ["<left>"] = "PrevMarker",
    ["<right>"] = "NextMarker",
    ["<M-left>"] = "PrevTimeSignatureMarker",
    ["<M-right>"] = "NextTimeSignatureMarker",
    ["<M-h>"] = "Left10Pix",
    ["<M-l>"] = "Right10Pix",
    ["<M-H>"] = "Left40Pix",
    ["<M-L>"] = "Right40Pix",
    ["h"] = "LeftGridDivision",
    ["l"] = "RightGridDivision",
    ["H"] = "PrevMeasure",
    ["L"] = "NextMeasure",
    ["<C-i>"] = "MoveRedo",
    ["<C-o>"] = "MoveUndo",
    ["<C-h>"] = "Prev4Beats",
    ["<C-l>"] = "Next4Beats",
    ["<C-H>"] = "Prev4Measures",
    ["<C-L>"] = "Next4Measures",
    ["`"] = "MarkedTimelinePosition",
  },
  timeline_operator = {
    ["r"] = "Record",
    ["t"] = "PlayAndLoop",
    ["%"] = "CreateMeasures",
    ["<C-%>"] = "CreateProjectTempo"
  },
  timeline_selector = {
    ["~"] = "MarkedRegion",
    ["v"] = "TimeSelection",
    ["!"] = "LoopSelection",
    ["<S-right>"] = "NextRegion",
    ["<S-left>"] = "PrevRegion",
    ["<CS-right>"] = "TimeSelectionShiftedRight",
    ["<CS-left>"] = "TimeSelectionShiftedLeft",
    ["i"] = {"+inner", {
               ["<M-w>"] = "AutomationItem",
               ["l"] = "AllTrackItems",
               ["r"] = "Region",
               ["p"] = "ProjectTimeline",
               ["w"] = "Item",
               ["W"] = "BigItem",
    }},
  },
  visual_timeline_command = {
    ["v"] = "SetModeNormal",
    ["o"] = "SwitchTimelineSelectionSide",
    ["<C-F>"] = "DuplicateTimeline",
  },
  command = {
    ["."] = "RepeatLastCommand",
    ["@"] = "PlayMacro",
    ["q"] = "RecordMacro",
    ["m"] = "Mark",
    ["~"] = "MarkedRegion",
    ["<C-'>"] = "DeleteMark",
    ["<S-right>"] = "NextRegion",
    ["<S-left>"] = "PrevRegion",
    ["<C-r>"] = "Redo",
    ["u"] = "Undo",
    ["R"] = "ToggleRecord",
    ["T"] = "Play",
    ["<C-T>"] = "PlayAndSkipTimeSelection",
    ["<M-t>"] = "PlayFromMousePosition",
    ["<CM-t>"] = "PlayFromMouseAndSoloTrack",
    ["<C-t>"] = "PlayFromEditCursorAndSoloTrackUnderMouse",
    ["tt"] = "PlayFromTimeSelectionStart",
    ["F"] = "Pause",
    ["<C-z>"] = "ZoomUndo",
    ["<C-Z>"] = "ZoomRedo",
    ["v"] = "SetModeVisualTimeline",
    ["<C-SPC>"] = "ToggleViewMixer",
    ["<ESC>"] = "Reset",
    ["<return>"] = "StartStop",
    ["X"] = "MoveToMousePositionAndPlay",
    ["dr"] = "RemoveRegion",
    ["!"] = "ToggleLoop",
    -- shortcuts
    ["<M-n>"] = "ShowNextFx",
    ["<M-N>"] = "ShowPrevFx",
    ["<M-e>"] = "ToggleEnvelopePointsMoveWithItems",
    ["<M-g>"] = "FocusMain",
    ["<M-f>"] = "ToggleShowFx",
    ["<M-F>"] = "CloseFx",
    ["<M-r>"] = "MidiLearnLastTouchedFxParam",
    ["<M-R>"] = "ModulateLastTouchedFxParam",
    ["<M-x>"] = "ShowBindingList",
    ["<C-s>"] = "ToggleSolo",
    ["<C-m>"] = "ToggleMute",
    ["<C-B>"] = "TapTempo",
    ["a"] = { "+automation", {
                ["r"] = "SetAutomationModeTrimRead",
                ["R"] = "SetAutomationModeRead",
                ["l"] = "SetAutomationModeLatch",
                ["p"] = "SetAutomationModeLatchPreview",
                ["t"] = "SetAutomationModeTouch",
                ["w"] = "SetAutomationModeWrite",
    }},
    ["<SPC>"] = { "+leader commands", {
      ["<SPC>"] = "ShowActionList",
      ["z"] = { "+zoom/scroll", {
                  ["t"] = "ScrollToPlayPosition",
                  ["e"] = "ScrollToEditCursor",
      }},
      ["m"] = { "+midi", {
                  ["x"] = "CloseWindow",
                  ["g"] = "SetMidiGridDivision",
                  ["q"] = "Quantize",
                  [","] = {"+options", {
                             ["g"] = "ToggleMidiEditorUsesMainGridDivision",
                             ["s"] = "ToggleMidiSnap",
                  }},
      }},
      ["r"] = { "+recording", {
                  ["o"] = "SetRecordMidiOutput",
                  ["d"] = "SetRecordMidiOverdub",
                  ["t"] = "SetRecordMidiTouchReplace",
                  ["r"] = "SetRecordMidiReplace",
                  ["M"] = "SetRecordMonitorOnly",
                  ["i"] = "SetRecordInput",
                  ["a"] = "SetRecordInput",
                  [","] = {"+options", {
                             ["n"] = "SetRecordModeNormal",
                             ["s"] = "SetRecordModeItemSelectionAutoPunch",
                             ["v"] = "SetRecordModeTimeSelectionAutoPunch",
                             ["p"] = "ToggleRecordingPreroll",
                             ["z"] = "ToggleRecordingAutoScroll",
                             ["t"] = "ToggleRecordToTapeMode",
                  }},
      }},
      ["s"] = { "+item selection", {
                  ["j"] = "NextTake",
                  ["k"] = "PrevTake",
                  ["m"] = "ToggleMuteItem",
                  ["d"] = "DeleteActiveTake",
                  ["c"] = "CropToActiveTake",
                  ["s"] = "OpenMidiEditor",
                  ["n"] = "ItemNormalize",
                  ["g"] = "GroupItems",
                  ["h"] = "HealItemsSplits",
                  ["x"] = {"+explode", {
                             ["p"] = "ExplodeTakesInPlace",
                             ["o"] = "ExplodeTakesInOrder",
                             ["a"] = "ExplodeTakesInAcrossTracks"
                  }},
                  ["S"] = {"+stretch", {
                             ["a"] = "AddStretchMarker",
                             ["d"] = "DeleteStretchMarker",
                  }},
                  ["#"] = {"+fade", {
                             ["i"] = "CycleItemFadeInShape",
                             ["o"] = "CycleItemFadeOutShape",
                  }},
                  ["t"] = {"+transients", {
                             ["a"] = "AdjustTransientDetection",
                             ["t"] = "CalculateTransientGuides",
                             ["c"] = "ClearTransientGuides",
                             ["s"] = "SplitItemAtTransients"
                  }},
                  ["e"] = {"+envelopes", {
                             ["s"] = "ViewTakeEnvelopes",
                             ["m"] = "ToggleTakeMuteEnvelope",
                             ["p"] = "ToggleTakePanEnvelope",
                             ["P"] = "ToggleTakePitchEnvelope",
                             ["v"] = "ToggleTakeVolumeEnvelope",
                  }},
                  ["f"] = {"+fx", {
                             ["a"] = "ApplyFxToItem",
                             ["p"] = "PasteItemFxChain",
                             ["d"] = "CutItemFxChain",
                             ["y"] = "CopyItemFxChain",
                             ["c"] = "ToggleShowTakeFxChain",
                             ["b"] = "ToggleTakeFxBypass",
                  }},
                  ["r"] = {"+rename", {
                             ["s"] = "RenameTakeSourceFile",
                             ["t"] = "RenameTake",
                             ["r"] = "RenameTakeAndSourceFile",
                             ["a"] = "AutoRenameTake",
                  }},
                  ["b"] = { "+timebase", {
                              ["t"] = "SetItemsTimebaseToTime",
                              ["b"] = "SetItemsTimebaseToBeatsPos",
                              ["r"] = "SetItemsTimebaseToBeatsPosLengthAndRate",
                  }},
      }},
      ["t"] = { "+track", {
                  ["n"] = "ResetTrackToNormal",
                  ["R"] = "RenderTrack",
                  ["N"] = "AddTrackVirtualInstrument",
                  ["r"] = "RenameTrack",
                  ["z"] = "MinimizeTracks",
                  ["t"] = "CycleRecordMonitor",
                  ["f"] = "CycleFolderState",
                  ["i"] = "SetTrackInputToMatchFirstSelected",
                  ["x"] = {"+routing", {
                            ["p"] = "TrackToggleSendToParent",
                            ["s"] = "ToggleShowTrackRouting",
                  }},
                  ["F"] = { "+freeze", {
                            ["f"] = "FreezeTrack",
                            ["u"] = "UnfreezeTrack",
                            ["s"] = "ShowTrackFreezeDetails",
                  }},
      }},
      ["e"] = {"+envelopes", {
                 ["t"]  = "ToggleShowAllEnvelope",
                 ["a"] = "ArmAllEnvelopes",
                 ["A"] = "UnarmAllEnvelopes",
                 ["d"] = "ClearAllEnvelope",
                 ["v"] = "ToggleVolumeEnvelope",
                 ["p"] = "TogglePanEnvelope",
                 ["w"] = "SelectWidthEnvelope",
                 ["s"] = {"+selected", {
                            ["d"] = "ClearEnvelope",
                            ["a"] = "ToggleArmEnvelope",
                            ["y"] = "CopyEnvelope",
                            ["t"] = "ToggleShowSelectedEnvelope",
                            ["b"] = "ToggleEnvelopeBypass",
                            ["s"] = {"+shape", {
                                       ["b"] = "SetEnvelopeShapeBezier",
                                       ["e"] = "SetEnvelopeShapeFastEnd",
                                       ["f"] = "SetEnvelopeShapeFastStart",
                                       ["l"] = "SetEnvelopeShapeLinear",
                                       ["s"] = "SetEnvelopeShapeSlowStart",
                                       ["S"] = "SetEnvelopeShapeSquare",
                            }},
                 }},
      }},
      ["f"] = { "+fx", {
                  ["a"] = "AddFx",
                  ["c"] = "ToggleShowFxChain",
                  ["x"] = "CloseFx",
                  ["d"] = "CutFxChain",
                  ["y"] = "CopyFxChain",
                  ["p"] = "PasteFxChain",
                  ["b"] = "ToggleFxBypass",
                  ["M"] = "ModulateLastTouchedFxParam",
                  ["m"] = "MidiLearnLastTouchedFxParam",
                  ["i"] = {"+input", {
                             ["s"] = "ToggleShowInputFxChain",
                             ["d"] = "CutInputFxChain",
                  }},
                  ["s"] = {"+show", {
                             ["n"] = "ShowNextFx",
                             ["p"] = "ShowPrevFx",
                             ["1"] = "ToggleShowFx1",
                             ["2"] = "ToggleShowFx2",
                             ["3"] = "ToggleShowFx3",
                             ["4"] = "ToggleShowFx4",
                             ["5"] = "ToggleShowFx5",
                             ["6"] = "ToggleShowFx6",
                             ["7"] = "ToggleShowFx7",
                             ["8"] = "ToggleShowFx8"
                  }},
      }},
      [","] = {"+options", {
                 ["p"] = "TogglePlaybackPreroll",
                 ["z"] = "TogglePlaybackAutoScroll",
                 ["v"] = "ToggleLoopSelectionFollowsTimeSelection",
                 ["s"] = "ToggleSnap",
                 ["m"] = "ToggleMetronome",
                 ["t"] = "ToggleStopAtEndOfTimeSelectionIfNoRepeat",
                 ["x"] = "ToggleAutoCrossfade",
                 ["e"] = "ToggleEnvelopePointsMoveWithItems",
                 ["c"] = "CycleRippleEditMode",
                 ["f"] = "ResetFeedbackWindow",
      }},
      ["%"] = { "+tempo", {
                  ["e"] = "EditTimeSignatureMarker",
                  ["d"] = "DeleteTimeSignatureMarker",
                  ["s"] = "ToggleShowTempoEnvelope"
      }},
      ["g"] = { "+global", {
                  ["g"] = "SetGridDivision",
                  ["r"] = "ResetControlDevices",
                  [","] = "ShowPreferences",
                  ["s"] = {"+show/hide", {
                             ["x"] = "ToggleShowRoutingMatrix",
                             ["w"] = "ToggleShowWiringDiagram",
                             ["t"] = "ToggleShowTrackManager",
                             ["m"] = "ShowMasterTrack",
                             ["M"] = "HideMasterTrack",
                             ["r"] = "ToggleShowRegionMarkerManager",
                  }},
                  ["f"] = {"+fx", {
                             ["x"] = "CloseAllFxChainsAndWindows",
                             ["c"] = "ViewFxChainMaster",
                  }},
                  ["e"] = { "+envelope", {
                            ["t"] = "ToggleShowAllEnvelopeGlobal",
                  }},
                  ["t"] = { "+track", {
                            ["t"] = "ToggleAutomaticRecordArm",
                            ["a"] = "ClearAllRecordArm",
                            ["s"] = "UnsoloAllTracks",
                            ["m"] = "UnmuteAllTracks",
                  }},
                  ["a"] = { "+automation/mode", {
                              ["r"] = "SetGlobalAutomationModeTrimRead",
                              ["l"] = "SetGlobalAutomationModeLatch",
                              ["p"] = "SetGlobalAutomationModeLatchPreview",
                              ["t"] = "SetGlobalAutomationModeTouch",
                              ["R"] = "SetGlobalAutomationModeRead",
                              ["w"] = "SetGlobalAutomationModeWrite",
                              ["S"] = "SetGlobalAutomationModeOff",
                  }},
      }},
      ["p"] = { "+project", {
                  [","] = "ShowProjectSettings",
                  ["n"] = "NextTab",
                  ["p"] = "PrevTab",
                  ["s"] = "SaveProject",
                  ["o"] = "OpenProject",
                  ["c"] = "NewProjectTab",
                  ["x"] = "CloseProject",
                  ["C"] = "CleanProjectDirectory",
                  ["S"] = "SaveProjectWithNewVersion",
                  ["t"] = { "+timebase", {
                              ["t"] = "SetProjectTimebaseToTime",
                              ["b"] = "SetProjectTimebaseToBeatsPos",
                              ["r"] = "SetProjectTimebaseToBeatsPosLengthAndRate",
                  }},
                  ["r"] = { "+render", {
                              ["."] = "RenderProjectWithLastSetting",
                              ["r"] = "RenderProject",
                  }},
      }},
    }},
  },
}
