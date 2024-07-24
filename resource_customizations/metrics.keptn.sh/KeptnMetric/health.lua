local hs = {}
if obj.status.errMsg == nil and obj.status.value ~= nil then
    hs.status = "Healthy"
    hs.message = "KeptnMetric is healthy"
    return hs
end
if obj.status.errMsg ~= nil then
    hs.status = "Degraded"
    hs.message = "KeptnMetric is degraded"
    return hs
end
hs.status = "Progressing"
hs.message = "KeptnMetric is progressing"
return hs
