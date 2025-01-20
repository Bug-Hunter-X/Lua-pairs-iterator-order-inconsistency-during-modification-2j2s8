The best solution is to avoid modifying the table while iterating. If you must modify the table, create a copy first or use a different iteration method that's less sensitive to table mutations.  Here's an example using a copy of the table:

local function foo(t)
  local tCopy = {}
  for k,v in pairs(t) do
    tCopy[k] = v
  end
  for k, v in pairs(tCopy) do
    if type(v) == "table" then
      foo(v)
    end
  end
end

local t = {a = 1, b = {c = 2, d = {e = 3}}}
foo(t)

Alternatively, use ipairs for sequential arrays where order matters. If order isn't critical, the original code could be fine as is, understanding that order isn't guaranteed.