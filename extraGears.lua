--
-- Extra Gears for FS 22
--
-- BarryCarlyon
-- Version 1.0.0.0
--

ExtraGears = {}
ExtraGears.MOD_NAME = g_currentModName

function ExtraGears.prerequisitesPresent(specializations)
  return true
end

function ExtraGears.registerEventListeners(vehicleType)
  print("ExtraGears -- registerEventListeners for ExtraGears" ..tostring(vehicleType));
  --SpecializationUtil.registerEventListener(vehicleType, "onLoad", ExtraGears)
end

--function ExtraGears:onLoad(savegame)
--  local spec = self.spec_ExtraGears
--end

-- inputBindings override Motorized
function Motorized:onRegisterActionEvents(isActiveForInput, isActiveForInputIgnoreSelection)
    if self.isClient then
        local spec = self.spec_motorized
        self:clearActionEventsTable(spec.actionEvents)

        if isActiveForInputIgnoreSelection then
            local _, actionEventId = self:addActionEvent(spec.actionEvents, InputAction.TOGGLE_MOTOR_STATE, self, Motorized.actionEventToggleMotorState, false, true, false, true, nil)
            g_inputBinding:setActionEventTextPriority(actionEventId, GS_PRIO_VERY_HIGH)
            g_inputBinding:setActionEventText(actionEventId, spec.turnOnText)

            if spec.motor.minForwardGearRatio == nil or spec.motor.minBackwardGearRatio == nil then
                if self:getGearShiftMode() ~= VehicleMotor.SHIFT_MODE_AUTOMATIC or not GS_IS_CONSOLE_VERSION then
                    if spec.motor.manualShiftGears then
                        print("ExtraGears -- Override Motorized:onRegisterActionEvents")
                        _, actionEventId = self:addActionEvent(spec.actionEvents, InputAction.SHIFT_GEAR_UP, self, Motorized.actionEventShiftGear, false, true, false, true, nil)
                        g_inputBinding:setActionEventTextVisibility(actionEventId, false)
                        _, actionEventId = self:addActionEvent(spec.actionEvents, InputAction.SHIFT_GEAR_DOWN, self, Motorized.actionEventShiftGear, false, true, false, true, nil)
                        g_inputBinding:setActionEventTextVisibility(actionEventId, false)

                        _, actionEventId = self:addActionEvent(spec.actionEvents, InputAction.SHIFT_GEAR_SELECT_1, self, Motorized.actionEventSelectGear, true, true, true, true, 1)
                        g_inputBinding:setActionEventTextVisibility(actionEventId, false)
                        _, actionEventId = self:addActionEvent(spec.actionEvents, InputAction.SHIFT_GEAR_SELECT_2, self, Motorized.actionEventSelectGear, true, true, true, true, 2)
                        g_inputBinding:setActionEventTextVisibility(actionEventId, false)
                        _, actionEventId = self:addActionEvent(spec.actionEvents, InputAction.SHIFT_GEAR_SELECT_3, self, Motorized.actionEventSelectGear, true, true, true, true, 3)
                        g_inputBinding:setActionEventTextVisibility(actionEventId, false)
                        _, actionEventId = self:addActionEvent(spec.actionEvents, InputAction.SHIFT_GEAR_SELECT_4, self, Motorized.actionEventSelectGear, true, true, true, true, 4)
                        g_inputBinding:setActionEventTextVisibility(actionEventId, false)
                        _, actionEventId = self:addActionEvent(spec.actionEvents, InputAction.SHIFT_GEAR_SELECT_5, self, Motorized.actionEventSelectGear, true, true, true, true, 5)
                        g_inputBinding:setActionEventTextVisibility(actionEventId, false)
                        _, actionEventId = self:addActionEvent(spec.actionEvents, InputAction.SHIFT_GEAR_SELECT_6, self, Motorized.actionEventSelectGear, true, true, true, true, 6)
                        g_inputBinding:setActionEventTextVisibility(actionEventId, false)
                        _, actionEventId = self:addActionEvent(spec.actionEvents, InputAction.SHIFT_GEAR_SELECT_7, self, Motorized.actionEventSelectGear, true, true, true, true, 7)
                        g_inputBinding:setActionEventTextVisibility(actionEventId, false)
                        _, actionEventId = self:addActionEvent(spec.actionEvents, InputAction.SHIFT_GEAR_SELECT_8, self, Motorized.actionEventSelectGear, true, true, true, true, 8)
                        g_inputBinding:setActionEventTextVisibility(actionEventId, false)

                        _, actionEventId = self:addActionEvent(spec.actionEvents, InputAction.EXG_GEAR_9, self, Motorized.actionEventSelectGear, true, true, true, true, 9)
                        g_inputBinding:setActionEventTextVisibility(actionEventId, false)
                        _, actionEventId = self:addActionEvent(spec.actionEvents, InputAction.EXG_GEAR_10, self, Motorized.actionEventSelectGear, true, true, true, true, 10)
                        g_inputBinding:setActionEventTextVisibility(actionEventId, false)
                        _, actionEventId = self:addActionEvent(spec.actionEvents, InputAction.EXG_GEAR_11, self, Motorized.actionEventSelectGear, true, true, true, true, 11)
                        g_inputBinding:setActionEventTextVisibility(actionEventId, false)
                        _, actionEventId = self:addActionEvent(spec.actionEvents, InputAction.EXG_GEAR_11, self, Motorized.actionEventSelectGear, true, true, true, true, 11)
                        g_inputBinding:setActionEventTextVisibility(actionEventId, false)
                        _, actionEventId = self:addActionEvent(spec.actionEvents, InputAction.EXG_GEAR_12, self, Motorized.actionEventSelectGear, true, true, true, true, 12)
                        g_inputBinding:setActionEventTextVisibility(actionEventId, false)
                        _, actionEventId = self:addActionEvent(spec.actionEvents, InputAction.EXG_GEAR_13, self, Motorized.actionEventSelectGear, true, true, true, true, 13)
                        g_inputBinding:setActionEventTextVisibility(actionEventId, false)
                        _, actionEventId = self:addActionEvent(spec.actionEvents, InputAction.EXG_GEAR_14, self, Motorized.actionEventSelectGear, true, true, true, true, 14)
                        g_inputBinding:setActionEventTextVisibility(actionEventId, false)
                        _, actionEventId = self:addActionEvent(spec.actionEvents, InputAction.EXG_GEAR_15, self, Motorized.actionEventSelectGear, true, true, true, true, 15)
                        g_inputBinding:setActionEventTextVisibility(actionEventId, false)
                        _, actionEventId = self:addActionEvent(spec.actionEvents, InputAction.EXG_GEAR_16, self, Motorized.actionEventSelectGear, true, true, true, true, 16)
                        g_inputBinding:setActionEventTextVisibility(actionEventId, false)
                        _, actionEventId = self:addActionEvent(spec.actionEvents, InputAction.EXG_GEAR_17, self, Motorized.actionEventSelectGear, true, true, true, true, 17)
                        g_inputBinding:setActionEventTextVisibility(actionEventId, false)
                        _, actionEventId = self:addActionEvent(spec.actionEvents, InputAction.EXG_GEAR_18, self, Motorized.actionEventSelectGear, true, true, true, true, 18)
                        g_inputBinding:setActionEventTextVisibility(actionEventId, false)

                        _, actionEventId = self:addActionEvent(spec.actionEvents, InputAction.EXG_GEAR_SHIFT_6_UP, self, MotorGearShiftEvent.shiftGearOverrideStep, false, true, false, true, 6)
                        g_inputBinding:setActionEventTextVisibility(actionEventId, false)
                        _, actionEventId = self:addActionEvent(spec.actionEvents, InputAction.EXG_GEAR_SHIFT_6_DOWN, self, MotorGearShiftEvent.shiftGearOverrideStep, false, true, false, true, -6)
                        g_inputBinding:setActionEventTextVisibility(actionEventId, false)

                        _, actionEventId = self:addActionEvent(spec.actionEvents, InputAction.EXG_GEAR_SHIFT_8_UP, self, MotorGearShiftEvent.shiftGearOverrideStep, false, true, false, true, 8)
                        g_inputBinding:setActionEventTextVisibility(actionEventId, false)
                        _, actionEventId = self:addActionEvent(spec.actionEvents, InputAction.EXG_GEAR_SHIFT_8_DOWN, self, MotorGearShiftEvent.shiftGearOverrideStep, false, true, false, true, -8)
                        g_inputBinding:setActionEventTextVisibility(actionEventId, false)


                        _, actionEventId = self:addActionEvent(spec.actionEvents, InputAction.EXG_GEAR_SHIFT_A8, self, MotorGearShiftEvent.shiftGearOverride, false, true, false, true, 8)
                        g_inputBinding:setActionEventTextVisibility(actionEventId, false)
                        _, actionEventId = self:addActionEvent(spec.actionEvents, InputAction.EXG_GEAR_SHIFT_B8, self, MotorGearShiftEvent.shiftGearOverride, false, true, false, true, 16)
                        g_inputBinding:setActionEventTextVisibility(actionEventId, false)
                        _, actionEventId = self:addActionEvent(spec.actionEvents, InputAction.EXG_GEAR_SHIFT_A6, self, MotorGearShiftEvent.shiftGearOverride, false, true, false, true, 6)
                        g_inputBinding:setActionEventTextVisibility(actionEventId, false)
                        _, actionEventId = self:addActionEvent(spec.actionEvents, InputAction.EXG_GEAR_SHIFT_B6, self, MotorGearShiftEvent.shiftGearOverride, false, true, false, true, 12)
                        g_inputBinding:setActionEventTextVisibility(actionEventId, false)
                        _, actionEventId = self:addActionEvent(spec.actionEvents, InputAction.EXG_GEAR_SHIFT_C6, self, MotorGearShiftEvent.shiftGearOverride, false, true, false, true, 18)
                        g_inputBinding:setActionEventTextVisibility(actionEventId, false)

                    end

                    if spec.motor.manualShiftGroups then
                        if spec.motor.gearGroups ~= nil then
                            _, actionEventId = self:addActionEvent(spec.actionEvents, InputAction.SHIFT_GROUP_UP, self, Motorized.actionEventShiftGroup, false, true, false, true, nil)
                            g_inputBinding:setActionEventTextVisibility(actionEventId, false)
                            _, actionEventId = self:addActionEvent(spec.actionEvents, InputAction.SHIFT_GROUP_DOWN, self, Motorized.actionEventShiftGroup, false, true, false, true, nil)
                            g_inputBinding:setActionEventTextVisibility(actionEventId, false)

                            _, actionEventId = self:addActionEvent(spec.actionEvents, InputAction.SHIFT_GROUP_SELECT_1, self, Motorized.actionEventSelectGroup, true, true, true, true, 1)
                            g_inputBinding:setActionEventTextVisibility(actionEventId, false)
                            _, actionEventId = self:addActionEvent(spec.actionEvents, InputAction.SHIFT_GROUP_SELECT_2, self, Motorized.actionEventSelectGroup, true, true, true, true, 2)
                            g_inputBinding:setActionEventTextVisibility(actionEventId, false)
                            _, actionEventId = self:addActionEvent(spec.actionEvents, InputAction.SHIFT_GROUP_SELECT_3, self, Motorized.actionEventSelectGroup, true, true, true, true, 3)
                            g_inputBinding:setActionEventTextVisibility(actionEventId, false)
                            _, actionEventId = self:addActionEvent(spec.actionEvents, InputAction.SHIFT_GROUP_SELECT_4, self, Motorized.actionEventSelectGroup, true, true, true, true, 4)
                            g_inputBinding:setActionEventTextVisibility(actionEventId, false)
                        end
                    end

                    _, actionEventId = self:addActionEvent(spec.actionEvents, InputAction.AXIS_CLUTCH_VEHICLE, self, Motorized.actionEventClutch, false, false, true, true, nil)
                    g_inputBinding:setActionEventTextVisibility(actionEventId, false)
                end
            end

            if self:getDirectionChangeMode() == VehicleMotor.DIRECTION_CHANGE_MODE_MANUAL or self:getGearShiftMode() ~= VehicleMotor.SHIFT_MODE_AUTOMATIC then
                _, actionEventId = self:addActionEvent(spec.actionEvents, InputAction.DIRECTION_CHANGE, self, Motorized.actionEventDirectionChange, false, true, false, true, nil, nil, true)
                g_inputBinding:setActionEventTextVisibility(actionEventId, false)
                _, actionEventId = self:addActionEvent(spec.actionEvents, InputAction.DIRECTION_CHANGE_POS, self, Motorized.actionEventDirectionChange, false, true, false, true, nil, nil, true)
                g_inputBinding:setActionEventTextVisibility(actionEventId, false)
                _, actionEventId = self:addActionEvent(spec.actionEvents, InputAction.DIRECTION_CHANGE_NEG, self, Motorized.actionEventDirectionChange, false, true, false, true, nil, nil, true)
                g_inputBinding:setActionEventTextVisibility(actionEventId, false)
            end

            Motorized.updateActionEvents(self)
        end
    end
end


function MotorGearShiftEvent:shiftGearOverrideStep(actionName, keyStatus, shiftAmount, arg4, arg5, two)
  if nil == ExtraGears.lastshiftGearOverrideAmount then
    ExtraGears.lastshiftGearOverrideAmount = 0
  end
  ExtraGears.shiftGearOverrideAmount = ExtraGears.shiftGearOverrideAmount + shiftAmount
  if ExtraGears.shiftGearOverrideAmount < 0 then
    ExtraGears.shiftGearOverrideAmount = 0
  end
  -- probably need to add a cap
  -- this needs more thought
  -- 21 is 3 x 8
  if ExtraGears.shiftGearOverrideAmount >= 24 then
    ExtraGears.shiftGearOverrideAmount = 0
  end
end
-- keyStatus 1 down
-- keyStatus 0 released
function MotorGearShiftEvent:shiftGearOverride(actionName, keyStatus, shiftAmount, arg4, arg5, two)
  --print("ExtraGears -- shift amount " ..tostring(actionName) .." " ..tostring(keyStatus) .." " ..tostring(shiftAmount) .." " ..tostring(arg4) .." " ..tostring(arg5) .." " ..tostring(two))

  --local spec = self.spec_ExtraGears
  if nil == ExtraGears.lastshiftGearOverrideAmount then
    ExtraGears.shiftGearOverrideAmount = shiftAmount
  elseif ExtraGears.lastshiftGearOverrideAmount == shiftAmount then
    ExtraGears.shiftGearOverrideAmount = 0;
  else
    ExtraGears.shiftGearOverrideAmount = shiftAmount
  end
  print("ExtraGears -- shift amount now " ..tostring(ExtraGears.shiftGearOverrideAmount))
  ExtraGears.lastshiftGearOverrideAmount = ExtraGears.shiftGearOverrideAmount
end

function MotorGearShiftEvent:run(connection)
    if self.vehicle ~= nil and self.vehicle:getIsSynchronized() then
        local spec = self.vehicle.spec_motorized
        if spec ~= nil and spec.isMotorStarted then
            if self.shiftType == MotorGearShiftEvent.TYPE_SHIFT_UP then
                spec.motor:shiftGear(true)
            elseif self.shiftType == MotorGearShiftEvent.TYPE_SHIFT_DOWN then
                spec.motor:shiftGear(false)
            elseif self.shiftType == MotorGearShiftEvent.TYPE_SELECT_GEAR then
                if nill == ExtraGears.shiftGearOverrideAmount then
                    ExtraGears.shiftGearOverrideAmount = 0
                end
                -- is the stick in neutral?
                -- only bump if not in neutral
                if self.shiftValue > 0 then
                  self.shiftValue = self.shiftValue + ExtraGears.shiftGearOverrideAmount;
                end
                -- print("ExtraGears -- shift to " ..tostring(self.shiftValue))
                spec.motor:selectGear(self.shiftValue, self.shiftValue ~= 0)
            elseif self.shiftType == MotorGearShiftEvent.TYPE_SHIFT_GROUP_UP then
                spec.motor:shiftGroup(true)
            elseif self.shiftType == MotorGearShiftEvent.TYPE_SHIFT_GROUP_DOWN then
                spec.motor:shiftGroup(false)
            elseif self.shiftType == MotorGearShiftEvent.TYPE_SELECT_GROUP then
                spec.motor:selectGroup(self.shiftValue, self.shiftValue ~= 0)
            elseif self.shiftType == MotorGearShiftEvent.TYPE_DIRECTION_CHANGE then
                spec.motor:changeDirection()
            elseif self.shiftType == MotorGearShiftEvent.TYPE_DIRECTION_CHANGE_POS then
                spec.motor:changeDirection(1)
            elseif self.shiftType == MotorGearShiftEvent.TYPE_DIRECTION_CHANGE_NEG then
                spec.motor:changeDirection(-1)
            end
        end
    end
end