local hs = {}
if obj.status == "Succeeded" then
    hs.status = "Healthy"
    hs.message = "KeptnAppCreationRequest is healthy"
    return hs
end
if obj.status == "Failed" then
    hs.status = "Degraded"
    hs.message = "KeptnAppCreationRequest is degraded"
    return hs
end
hs.status = "Progressing"
hs.message = "KeptnAppCreationRequest is progressing"
return hs
