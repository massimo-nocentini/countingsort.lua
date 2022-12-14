
local cs = {}

function cs.sort (tbl)

	local occurrences, sorted = {}, {}

	local m, M = math.huge, -math.huge

	for k, v in pairs (tbl) do

		if v < m then m = v end
		if v > M then M = v end
		
		local o = occurrences[v] or 0
		occurrences[v] = o + 1
	end

	local j = 1
	for i = m, M do
		for q = 1, occurrences[i] or 0 do
			sorted[j] = i
			j = j + 1
		end
	end

	return sorted
end

--print (table.concat (cs.sort {10, 0, 0, -1, 4, 3, 5, 20, 9, 9}, ' '))

return cs
