local lib = require("library")

return {
  ["PrevBigItemStart"] = lib.moveToPrevBigItemStart,
  ["NextBigItemStart"] = lib.moveToNextBigItemStart,
  ["NextBigItemEnd"] = lib.moveToNextBigItemEnd,
  ["PrevItemStart"] = lib.moveToPrevItemStart,
  ["NextItemStart"] = lib.moveToNextItemStart,
  ["NextItemEnd"] = lib.moveToNextItemEnd,
  ["FirstItemStart"] = lib.moveToFirstItemStart,
  ["LastItemEnd"] = lib.moveToLastItemEnd,
  ["FirstTrack"] = lib.firstTrack,
  ["LastTrack"] = lib.lastTrack,
  ["BigItem"] = lib.selectInnerBigItem,
  ["Item"] = lib.selectInnerItem,
  ["PlayMacro"] = "PlayMacro",
  ["Selection"] = "No-op",
  ["RecordMacro"] = "RecordMacro",
  ["RepeatLastCommand"] = "RepeatLastCommand",
  ["SwitchTimelineSelectionSide"] = lib.switchTimelineSelectionSide,
  ["FolderParent"] = "_SWS_SELPARENTS",
  ["AllTracks"] = 40296,
  ["MakeFolder"] = "_SWS_MAKEFOLDER",
  ["OuterFolder"] =  {"FolderParent", "SelectFoldersChildren"},
  ["SelectFoldersChildren"] = "_SWS_SELCHILDREN2",
  ["SelectOnlyFoldersChildren"] = "_SWS_SELCHILDREN",
  ["InnerFolder"] = {"FolderParent", "SelectOnlyFoldersChildren"},
  ["SelectedItems"] = 41039,
  ["AllTrackItems"] = {"SelectItemsOnTrack", "SelectedItems"},
  ["SelectItemsOnTrack"] = 40421,
  ["No-op"] = 65535,
  ["Reset"] = {"Stop", "SetRecordModeToNormal", "ResetToNormal"},
  ["SetRecordModeToNormal"] = 40252,
  ["ResetToNormal"] = lib.resetToNormal,
  ["OpenReaperKeysConfig"] = lib.openConfig,
  ["ToggleVisualTimelineMode"] = lib.toggleVisualTimelineMode,
  ["ToggleVisualTrackMode"] = lib.toggleVisualTrackMode,
  ["PasteRegister"] = lib.register_actions.pasteRegister,
  ["SaveFxChain"] = lib.register_actions.saveFxChain,
  ["VerticalScrollEnd"] = "_XENAKIOS_TVPAGEEND",
  ["VerticalScrollBeginning"] = "_XENAKIOS_TVPAGEHOME",
  ["SelectLastOfSelectedTracks"] = "_XENAKIOS_SELLASTOFSELTRAX",
  ["SelectFirstOfSelectedTracks"] = "_XENAKIOS_SELFIRSTOFSELTRAX",
  ["NextFolderNear"] = "_SWS_SELNEARESTNEXTFOLDER",
  ["PrevFolderNear"] = "_SWS_SELNEARESTPREVFOLDER",
  ["Stop"] = 40667,
  ["NextTrack"] = 40285,
  ["PrevTrack"] = 40286,
  ["Prev10Track"] = {"PrevTrack", repetitions=10},
  ["Prev5Track"] = {"PrevTrack", repetitions=5},
  ["Next10Track"] = {"NextTrack", repetitions=10},
  ["Next5Track"] = {"NextTrack", repetitions=5},
  ["RightPixel"] = 40105,
  ["LeftPixel"] = 40104,
  ["SaveItemSelection"] = "_SWS_SAVEALLSELITEMS1",
  ["RestoreItemSelection"] = "_SWS_RESTALLSELITEMS1",
  ["EndOfBigItem"] = 65535, --TODO
  ["EndOfItem"] = 41168,
  ["Change"] = {"GoToTimeSelectionStart", "Play", "_SWS_AWRECORDCOND"},
  ["PlaySelection"] = {"GoToTimeSelectionStart", "Play", ""},
  ["Play"] = 1007,
  ["NextTrackKeepSel"] = 40287,
  ["PrevTrackKeepSel"] = 40288,
  ["ArmToggle"] = 9,
  ["CropToActiveTake"] = 40131,
  ["SetTimeSelectionStart"] = 40222,
  ["SetTimeSelectionEnd"] = 40223,
  ["ToggleStopAtEndOfTimeSelectionIfNoRepeat"] = 41834,
  ["ZoomToPlayPosition"] = 40150,
  ["ZoomInHoriz"] = 1012,
  ["ZoomOutHorizon"] = 1011,
  ["SnapshotsRecallCurrent1"] = "_SWSSNAPSHOT_GET",
  ["SnapshotsAddNew"] = "_SWSSNAPSHOT_NEW",
  ["SnapshotsAddNew"] = "_SWSSNAPSHOT_NEW",
  ["SnapshotsDeleteCurrent"] = "_SWSSNAPSHOT_DELCUR",
  ["SnapshotsRecallNext"] = "_SWSSNAPSHOT_GET_NEXT",
  ["SnapshotsAddAndName"] = "_SWSSNAPSHOT_NEWEDIT",
  ["SnapshotsRecallPrev"] = "_SWSSNAPSHOT_GET_PREVIOUS",
  ["SnapshotsRecallCurrent"] = "_SWSSNAPSHOT_GET",
  ["SnapshotsSaveCurrent"] = "_SWSSNAPSHOT_SAVE",
  -- ["SnapshotsRecall1"] = "_SWSSNAPSHOT_GET1",
  -- ["SnapshotsRecall2"] = "_SWSSNAPSHOT_GET2",
  -- ["SnapshotsRecall3"] = "_SWSSNAPSHOT_GET3",
  -- ["SnapshotsRecall4"] = "_SWSSNAPSHOT_GET4",
  -- ["SnapshotsRecall5"] = "_SWSSNAPSHOT_GET5",
  -- ["SnapshotsRecall6"] = "_SWSSNAPSHOT_GET6",
  -- ["SnapshotsRecall7"] = "_SWSSNAPSHOT_GET7",
  -- ["SnapshotsRecall8"] = "_SWSSNAPSHOT_GET8",
  -- ["SnapshotsRecall9"] = "_SWSSNAPSHOT_GET9",
  -- ["SnapshotsSave1"] = "_SWSSNAPSHOT_SAVE1",
  -- ["SnapshotsSave2"] = "_SWSSNAPSHOT_SAVE2",
  -- ["SnapshotsSave3"] = "_SWSSNAPSHOT_SAVE3",
  -- ["SnapshotsSave4"] = "_SWSSNAPSHOT_SAVE4",
  -- ["SnapshotsSave5"] = "_SWSSNAPSHOT_SAVE5",
  -- ["SnapshotsSave6"] = "_SWSSNAPSHOT_SAVE6",
  -- ["SnapshotsSave7"] = "_SWSSNAPSHOT_SAVE7",
  -- ["SnapshotsSave8"] = "_SWSSNAPSHOT_SAVE8",
  -- ["SnapshotsSave9"] = "_SWSSNAPSHOT_SAVE9",
  ["SnapshotsSave"] = {"_SWSSNAPSHOT_SAVE%d", postfix_number=true },
  ["SnapshotsOpenWindow"] = "_SWSSNAPSHOT_OPEN",
  ["GrowItemLeft"] = 40225,
  ["NextEnvelope"] = 41864,
  ["PrevEnvelope"] = 41863,
  ["FxToggleShowAll"] = "_S&M_WNTGL5",
  ["FocusMain"] = "_S&M_WNMAIN",
  ["ZoomInVert"] = 40111,
  ["ZoomOutVert"] = 40112,
  ["ShrinkItemRight"] = 40228,
  ["ShrinkItemLeft"] = 40226,
  ["FxShowPrevSel"] = "_S&M_WNONLY1",
  ["ZoomRedo"] = "_SWS_REDOZOOM",
  ["TapTempo"] = 1134,
  ["FxShowNextSel"] = "_S&M_WNONLY2",
  ["ZoomUndo"] = "_SWS_UNDOZOOM",
  ["FxShowPrevSel"] = "_S&M_WNONLY1",
  ["RenameTrack"] = 40696,
  ["InsertTrackAbove"] = "_SWS_INSRTTRKABOVE",
  ["EnterTrackAbove"] = {"InsertTrackAbove", "ColorTrackWithTrackBelow", "RenameTrack"},
  ["EnterTrackBelow"] = {"InsertTrackBelow", "ColorTrackWithTrackAbove", "RenameTrack"},
  ["InsertTrackBelow"] = 40001,
  ["ColorTrackWithTrackBelow"] = "_SWS_COLTRACKNEXT",
  ["ColorTrackWithTrackAbove"] = "_SWS_COLTRACKPREV",
  ["ToggleViewMixer"] = 40078,
  ["Paste"] = "_SWS_AWPASTE",
  ["PasteAbove"] = {"PrevTrack", "Paste"},
  ["ToggleLoop"] = 1068,
  ["SelectItemsInTrack"] = 40421,
  ["GoToTimeSelectionStart"] = 40632,
  ["GoToTimeSelectionEnd"] = 40633,
  ["DeleteActiveTake"] = 40129,
  ["CutTrack"] = {"CopyTrack", "RemoveTrack", "PrevTrack", "NextTrack"},
  ["CopyTrack"] = 40210,
  ["RemoveTrack"] = 40005,
  ["DeleteItems"] = {"SelectItems", "CutItem"},
  ["SplitAtTimeSelection"] = 40061,
  ["SelectItemsCrossingTimeSelection"] = 40718,
  ["SelectItems"] = {"SelectItemsCrossingTimeSelection", "SplitAtTimeSelection"},
  ["SplitAndSelectItemsInRegion"] = "_S&M_SPLIT11",
  ["DelEnvelopeInRegion"] = 40089,
  ["RegionGoToSelectPrev"] = "_SWS_SELPREVMORR",
  ["RegionGoToSelectNext"] = "_SWS_SELNEXTMORR",
  ["SnapshotsAddNewAllTracks"] = "_SWSSNAPSHOT_NEWALL",
  ["GlueItems"] = 41588,
  ["FitItemsToRegion"] = 41385,
  ["ExpandItemsToRegion"] =  {"GlueItems", "FitItemsToRegion"},
  ["RegionSplitItems"] = 40061,
  ["SetTimeSelectionStart"] = 40222,
  ["SetTimeSelectionEnd"] = 40223,
  ["RegionSelectPrev"] = "_SWS_SELPREVREG",
  ["GoToTimeSelectionStart"] = 40632,
  ["GoToTimeSelectionEnd"] = 40633,
  ["RegionSelectNext"] = "_SWS_SELNEXTREG",
  ["RegionSelectPrev"] = "_SWS_SELPREVREG",
  ["RegionInsertFromSel"] = 40174,
  ["SelectItemsInGroups"] = 40034,
  ["RegionSelectPrev"] = "_SWS_SELPREVREG",
  ["SelectAllItems"] = 40182,
  ["SelectAllTracks"] = 40296,
  ["RegionSelectNext"] = "_SWS_SELNEXTREG",
  ["RegionSelectPrev"] = "_SWS_SELPREVREG",
  ["SelectRegionItems"] = 40717,
  ["CutItem"] = 40699,
  ["CopyFxChain"] = "_S&M_SMART_CPY_FXCHAIN",
  ["CopyTrack"] = 40210,
  ["ZoomProject"] = 40295,
  ["TrackView.Load_1"] = 40444,
  ["TrackView.Load_2"] = 40445,
  ["TrackView.Load_3"] = 40446,
  ["TrackView.Load_4"] = 40447,
  ["TrackView.Load_5"] = 40448,
  ["TrackView.Load_6"] = 40449,
  ["TrackView.Load_7"] = 40450,
  ["TrackView.Load_8"] = 40451,
  ["TrackView.Load_9"] = 40452,
  ["UncollapseFolder"] = "_SWS_UNCOLLAPSE",
  ["VerticalZoom"] = "_SWS_VZOOMFITMIN",
  ["SaveSelection"] = "_SWS_SAVESEL",
  ["RestoreSelection"] = "_SWS_TOGSAVESEL",
  ["ZoomFolder"] = {"SaveSelection", "PrevFolderNear", "UncollapseFolder", "InnerFolder", "VerticalZoom", "RestoreSelection"},
  ["ZoomAllTracks"] = {"ZoomProject",  "SaveSelection",  "SelectAllTracks", "VerticalZoom", "RestoreSelection"},
  ["TrackView.Save_1"] = 40464,
  ["TrackView.Save_2"] = 40465,
  ["TrackView.Save_3"] = 40466,
  ["TrackView.Save_4"] = 40467,
  ["TrackView.Save_5"] = 40468,
  ["TrackView.Save_6"] = 40469,
  ["TrackView.Save_7"] = 40470,
  ["TrackView.Save_8"] = 40471,
  ["TrackView.Save_9"] = 40472,
  ["ZoomTimeSelection"] = 40031,
  ["ZoomTimeAndTrackSelection"] = {"ZoomTimeSelection",  "VerticalZoom"},
  ["ZoomTrackSelection"] = "VerticalZoom",
  ["ZoomItemSelection"] = "_SWS_ITEMZOOM",
  ["ScrollToSelectedTrack"] = 40913,
  ["PrevTake"] = 40126,
  ["NextTake"] = 40125,
  ["ShowActionList"] = 40605,
  ["DeleteItem"] = 40006,
  ["CopyItem"] = 40698,
  ["PasteItem"] = 40058,
  ["NextMarker"] = 40173,
  ["PrevMarker"] = 40172,
  ["PrevMarker"] = 40172,
  ["OpenMidiEditor"] = 40153,
  ["ItemNormalize"] = 40108,
  ["ItemApplyFX"] = 40209,
  ["ItemSplitSelRight"] = "_SWS_AWSPLITXFADELEFT",
  ["GlueItems"] = 41588,
  ["GroupItems"] = 40032,
  ["MoveItemLeftToEditCursor"] = 41306,
  ["MoveItemRightToEditCursor"] = 41307,
  ["TrimItemLeftToEditCursor"] = 41305,
  ["TrimItemRightToEditCursor"] = 41311,
  ["ShowTrackRouting"] = 40293,
  ["RenderTrack"] = "_SWS_AWRENDERSTEREOSMART",
  ["FreezeTrack"] = 41223,
  ["UnfreezeTrack"] = 41644,
  ["ShowTrackFreezeDetails"] = 41654,
  ["ToggleSolo"] = 7,
  ["ToggleMute"] = 6,
  ["CycleRecordMonitor"] = 40495,
  ["AddTrackVirtualInstrument"] = 40701,
  ["InsertTrack"] = 40001,
  ["RenameTrack"] = 40696,
  ["ColorTrack"] = 40360,
  ["SetTrackMidiAllChannels"] = "_S&M_MIDI_INPUT_ALL_CH",
  ["IncreaseTrackHeight"] = 41325,
  ["DecreaseTrackHeight"] = 41326,
  ["MixerShowHideChildrenOfSelectedTrack"] = 41665,
  ["CycleFolderCollapsedState"] = 1042,
  ["CycleFolderState"] = 1041,
  ["ClearFxChainInputCurrentTrack"] = "_S&M_CLR_INFXCHAIN",
  ["ClearFxChainCurrentTrack"] = "_S&M_CLRFXCHAIN3",
  ["FxAdd"] = "_S&M_CONSOLE_ADDFX",
  ["PasteFxChain"] = "_S&M_SMART_PST_FXCHAIN",
  ["ViewFxChainInputCurrentTrack"] = 40844,
  ["FxChainToggleShow"] = "_S&M_TOGLFXCHAIN",
  ["FxToggleShowAll"] = "_S&M_WNTGL5",
  ["FxCloseSel"] = "_S&M_WNCLS5",
  ["FxShowNextSel"] = "_S&M_WNONLY2",
  ["FxShowPrevSel"] = "_S&M_WNONLY1",
  ["FxShowPrevSel"] = "_S&M_WNONLY1",
  ["TrackToggleFXBypass"] = 8,
  ["FxToggleShow1"] = "_S&M_TOGLFLOATFX1",
  ["FxToggleShow2"] = "_S&M_TOGLFLOATFX2",
  ["FxToggleShow3"] = "_S&M_TOGLFLOATFX3",
  ["FxToggleShow4"] = "_S&M_TOGLFLOATFX4",
  ["FxToggleShow5"] = "_S&M_TOGLFLOATFX5",
  ["FxToggleShow6"] = "_S&M_TOGLFLOATFX6",
  ["FxToggleShow7"] = "_S&M_TOGLFLOATFX7",
  ["FxToggleShow8"] = "_S&M_TOGLFLOATFX8",
  ["ShowRoutingMatrix"] = 40251,
  ["ShowWiringDiagram"] = 42031,
  ["FxCloseAll"] = "_S&M_WNCLS3",
  ["FxCloseAll"] = "_S&M_WNCLS3",
  ["ResetAllMidiDevices"] = 41175,
  ["ResetAllControlSurfaceDevices"] = 42348,
  ["ResetControlDevices"] = {"ResetAllMidiDevices", "ResetAllControlSurfaceDevices"},
  ["ShowTrackManager"] = 40906,
  ["UnsoloAllTracks"] = 40340,
  ["UnmuteAllTracks"] = 40339,
  ["ViewFxChainMaster"] = 40846,
  ["ClearAllRecordArm"] = 40491,
  ["Preferences"] = 40016,
  ["CycleRippleEditMode"] = 1155,
  ["SnapToggle"] = 1157,
  ["ToggleMetronome"] = 40364,
  ["ToggleShowAllEnvelopeGlobal"] = 41152,
  ["ToggleEnvelopePointsMoveWithItems"] = 40070,
  ["ArmToggleSelected"] = 9,
  ["SetModeInput"] = 40496,
  ["SetModeMidiOutput"] = 40500,
  ["SetModeMidiOverdub"] = 40503,
  ["SetModeMidiTouchReplace"] = 40852,
  ["SetModeMidiReplace"] = 40504,
  ["SetModeMonitorOnly"] = 40498,
  ["SetGlobalEnvelopeModeTrimRead"] = 40878,
  ["SetGlobalEnvelopeModeLatch"] = 40881,
  ["SetGlobalEnvelopeModeLatchPreview"] = 42022,
  ["SetGlobalEnvelopeModeLatch"] = 40881,
  ["SetGlobalEnvelopeModeLatchPreview"] = 42022,
  ["SetGlobalEnvelopeModeRead"] = 40879,
  ["SetGlobalEnvelopeModeTouch"] = 40880,
  ["SetGlobalEnvelopeModeWrite"] = 40882,
  ["SetGlobalEnvelopeModeOff"] = 40876,
  ["SetEnvelopeModeTrimRead"] = 40400,
  ["SetEnvelopeModeRead"] = 40401,
  ["SetEnvelopeModeLatchPreview"] = 42023,
  ["SetEnvelopeModeLatch"] = 40404,
  ["SetEnvelopeModeLatchPreview"] = 42023,
  ["SetEnvelopeModeLatch"] = 40404,
  ["SetEnvelopeModeTouch"] = 40402,
  ["SetEnvelopeModeWrite"] = 40403,
  ["ToggleShowAllEnvelope"] = 41151,
  ["ToggleShowEnvelope"] = 40884,
  ["ToggleVolumeEnvelope"] = 40406,
  ["TogglePanEnvelope"] = 40407,
  ["DelSelEnvelope"] = 40333,
  ["ClearEnvelope"] = 40065,
  ["ClearAllEnvelope"] = "_S&M_REMOVE_ALLENVS",
  ["CopySelEnvelope"] = 40035,
  ["ToggleArmAllEnvelope"] = "_S&M_TGLARMALLENVS",
  ["ToggleArmEnvelope"] = 40863,
  ["RenderProjectWithLastSetting"] = 41824,
  ["RenderProject"] = 40015,
  ["NextTab"] = 40861,
  ["PrevTab"] = 40862,
  ["SaveProject"] = 40026,
  ["OpenProject"] = 40025,
  ["NewProjectTab"] = 40859,
  ["CloseProject"] = 40860,
  ["CleanProjectDirectory"] = 40098,
  ["GoProjectEnd"] = 40043,
  ["GoProjectBeginning"] = 40042,
  ["MoveEditCursorToPlayCursor"] = 40434,
  ["CursorLeft40"] = {"CursorLeft10", repetitions = 4},
  ["CursorRight40"] = {"CursorRight10", repetitions = 4},
  ["CursorLeft10"] = "_XENAKIOS_MOVECUR10PIX_LEFT",
  ["CursorRight10"] = "_XENAKIOS_MOVECUR10PIX_RIGHT",
  ["MoveToFirstItem"] = {"_XENAKIOS_SELFIRSTITEMSOFTRACKS", 41173},
  ["PrevMeasure"] = 40840,
  ["NextMeasure"] = 40839,
  ["Prev4Measures"] = {"PrevMeasure", repetitions = 4},
  ["Next4Measures"] = {"NextMeasure", repetitions = 4},
  ["PrevBeat"] = 40842,
  ["NextBeat"] = 40841,
  ["Prev4Beats"] = {"PrevBeat", repetitions = 4},
  ["Next4Beats"] = {"NextBeat", repetitions = 4},
  ["MidiLearnLastTouchedFX"] = 41144,
  ["PlayFromMouse"] = "_BR_PLAY_MOUSECURSOR",
  ["MoveEditCursorToMouse"] = 40514,
  ["MoveEditCursorToMouseAndSnap"] = 40513,
  ["MoveEditCursorToMouseAndPlay"] = {"MoveEditCursorToMouse", "Play"},
  ["MoveEditCursorToMouseAndPlaySnap"] = {"MoveEditCursorToMouseAndSnap", "Play"},
  ["ShowEnvelopeModulationLastTouchedFx"] = 41143,
  ["FxShowPrevSel"] = "_S&M_WNONLY1",
  ["FocusMainAndToggleFloatingWindows"] = {"FocusMain", "ToggleFloatingWindows"},
  ["ToggleFloatingWindows"] = 41074,
  ["PlayPause"] = 40073,
  ["FxShowNextSel"] = "_S&M_WNONLY2",
  ["FxShowPrevSel"] = "_S&M_WNONLY1",
  ["Redo"] = 40030,
  ["StartStop"] = 40044,
  ["ToggleRecording"] = 1013,
  ["ChangeUntilEnd"] = {"Play", 1013},
  ["Undo"] = 40029,
}
