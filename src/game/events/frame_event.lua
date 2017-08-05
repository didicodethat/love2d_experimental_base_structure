local FrameEvent = class('FrameEvent')

function FrameEvent:initialize(dt)
    self.dt = dt
end

return FrameEvent