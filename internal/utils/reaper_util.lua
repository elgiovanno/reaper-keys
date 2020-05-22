local log = require("utils.log")

local reaper_util = {}

function getItemPositionsOnSelectedTrack()
  local current_track = reaper.GetSelectedTrack(0, 0)
  local num_items = reaper.GetTrackNumMediaItems(current_track)
  local item_positions = {}
  for i=1,num_items do
    local item = reaper.GetTrackMediaItem(current_track, i-1)
    local start = reaper.GetMediaItemInfo_Value(item, "D_POSITION")
    local length = reaper.GetMediaItemInfo_Value(item, "D_LENGTH")
    item_positions[i] = {left=start, right=start+length}
  end

  return item_positions
end

function getBigItemPositionsOnSelectedTrack()
  local item_positions = getItemPositionsOnSelectedTrack()
  local big_item_positions = {}
  local j = 1

  if #item_positions == 0 then
    return big_item_positions
  end

  local next_big_item_left = item_positions[1].left
  for i=1,#item_positions do
    local this_item = item_positions[i]
    local next_item = item_positions[i+1]

    if not next_item then
      big_item_positions[j] = {left=next_big_item_left, right=this_item.right}
      break
    end

    if this_item.right < next_item.left then
      big_item_positions[j] = {left=next_big_item_left, right=this_item.right}
      next_big_item_left = next_item.left
      j = j +1
    end
  end

  return big_item_positions
end

function reaper_util.firstTrack()
  local first_track = reaper.GetTrack(0, 0)
  reaper.SetOnlyTrackSelected(first_track)
end

function reaper_util.lastTrack()
  local num_tracks = reaper.GetNumTracks()
  local last_track = reaper.GetTrack(0, num_tracks-1)
  reaper.SetOnlyTrackSelected(last_track)
end

function reaper_util.selectInnerItem()
  local item_positions = getItemPositionsOnSelectedTrack()
  local current_position = reaper.GetCursorPosition()
  for i,item in pairs(item_positions) do
    if item.left <= current_position and item.right >= current_position then
      reaper.GetSet_LoopTimeRange(true, false, item.left, item.right, false)
      break
    end
  end
end

function reaper_util.selectInnerBigItem()
  local item_positions = getBigItemPositionsOnSelectedTrack()
  local current_position = reaper.GetCursorPosition()
  for i,item in pairs(item_positions) do
    if item.left <= current_position and item.right >= current_position then
      reaper.GetSet_LoopTimeRange(true, false, item.left, item.right, false)
      break
    end
  end
end

function reaper_util.moveToLastItemEnd()
  local item_positions = getBigItemPositionsOnSelectedTrack()
  if #item_positions > 0 then
    local last_item  = item_positions[#item_positions]
    reaper.SetEditCurPos(last_item.right, true, false)
  end
end

function reaper_util.moveToFirstItemStart()
  local item_positions = getBigItemPositionsOnSelectedTrack()
  if #item_positions > 0 then
    local first_item  = item_positions[1]
    reaper.SetEditCurPos(first_item.left, true, false)
  end
end

function reaper_util.moveToPrevBigItemStart()
  local current_position = reaper.GetCursorPosition()
  local item_positions = getBigItemPositionsOnSelectedTrack()
  for i,item in pairs(item_positions) do
    if item.left < current_position and item.right >= current_position then
      current_position = item.left
      break
    end

    local next_item = item_positions[i+1]
    if not next_item or next_item.left >= current_position then
      current_position = item.left
      break
    end
  end
  reaper.SetEditCurPos(current_position, true, false)
end

function reaper_util.moveToNextBigItemStart()
  local current_position = reaper.GetCursorPosition()
  for i,big_item_position in pairs(getBigItemPositionsOnSelectedTrack()) do
    if current_position < big_item_position.left  then
      current_position = big_item_position.left
      break
    end
  end
  reaper.SetEditCurPos(current_position, true, false)
end

function reaper_util.moveToNextBigItemEnd()
  local current_position = reaper.GetCursorPosition()
  for i,big_item_position in pairs(getBigItemPositionsOnSelectedTrack()) do
    if big_item_position.right > current_position then
      current_position = big_item_position.right
      break
    end
  end
  reaper.SetEditCurPos(current_position, true, false)
end

function reaper_util.moveToPrevItemStart()
  local current_position = reaper.GetCursorPosition()
  local item_positions = getItemPositionsOnSelectedTrack()
  for i,item in pairs(item_positions) do
    if item.left < current_position and item.right >= current_position then
      current_position = item.left
      break
    end

    local next_item = item_positions[i+1]
    if not next_item or next_item.left >= current_position then
      current_position = item.left
      break
    end
  end
  reaper.SetEditCurPos(current_position, true, false)
end

function reaper_util.moveToNextItemStart()
  local current_position = reaper.GetCursorPosition()
  for i,item_position in pairs(getItemPositionsOnSelectedTrack()) do
    if current_position < item_position.left  then
      current_position = item_position.left
      break
    end
  end
  reaper.SetEditCurPos(current_position, true, false)
end

function reaper_util.moveToNextItemEnd()
  local current_position = reaper.GetCursorPosition()
  for i,item_position in pairs(getItemPositionsOnSelectedTrack()) do
    if item_position.right > current_position then
      current_position = item_position.right
      break
    end
  end
  reaper.SetEditCurPos(current_position, true, false)
end

return reaper_util