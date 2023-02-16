
ACTION UpdateStructs: 
	IF SimulateZone1Enable THEN
		Fans.Fan1 := TempController[0].Info.Simulation.CoolValue;
		Heaters.Heater1 := TempController[0].Info.Simulation.HeatValue;
		Temps.Temp1 := TempController[0].Info.Simulation.ActualTemperature;
	ELSE
		Fans.Fan1 := TempController[0].CoolValue;
		Heaters.Heater1 := TempController[0].HeatValue;
		Temps.Temp1 := gTemp1;
	END_IF;
	
	IF SimulateZone2Enable THEN
		Fans.Fan2 := TempController[1].Info.Simulation.CoolValue;
		Heaters.Heater2 := TempController[1].Info.Simulation.HeatValue;
		Temps.Temp2 := TempController[1].Info.Simulation.ActualTemperature;
	ELSE
		Fans.Fan2 := TempController[1].CoolValue;
		Heaters.Heater2 := TempController[1].HeatValue;
		Temps.Temp2 := gTemp2;
	END_IF;
	
	IF SimulateZone3Enable THEN
		Fans.Fan3 := TempController[2].Info.Simulation.CoolValue;
		Heaters.Heater3 := TempController[2].Info.Simulation.HeatValue;
		Temps.Temp3 := TempController[2].Info.Simulation.ActualTemperature;
	ELSE
		Fans.Fan3 := TempController[2].CoolValue;
		Heaters.Heater3 := TempController[2].HeatValue;
		Temps.Temp3 := gTemp3;
	END_IF;
	
	IF SimulateZone4Enable THEN
		Fans.Fan4 := TempController[3].Info.Simulation.CoolValue;
		Heaters.Heater4 := TempController[3].Info.Simulation.HeatValue;
		Temps.Temp4 := TempController[3].Info.Simulation.ActualTemperature;
	ELSE
		Fans.Fan4 := TempController[3].CoolValue;
		Heaters.Heater4 := TempController[3].HeatValue;
		Temps.Temp4 := gTemp4;
	END_IF;
	
//	Fans.Fan1 := TempController[0].Info.Simulation.CoolValue;
//	Fans.Fan2 := TempController[1].CoolValue;
//	Fans.Fan3 := TempController[2].CoolValue;
//	Fans.Fan4 := TempController[3].CoolValue;
//
//	Temps.Temp1 := TempController[0].Info.Simulation.ActualTemperature;
//	Temps.Temp2 := gTemp2;
//	Temps.Temp3 := gTemp3;
//	Temps.Temp4 := gTemp4;
	
	SetPoint.SetPoint1 := SetTemp1;
	SetPoint.SetPoint2 := SetTemp2;
	SetPoint.SetPoint3 := SetTemp3;
	SetPoint.SetPoint4 := SetTemp4;
	
	Zones.Zone1 := ZoneStatus[0];
	Zones.Zone2 := ZoneStatus[1];
	Zones.Zone3 := ZoneStatus[2];
	Zones.Zone4 := ZoneStatus[3];
	
//	Heaters.Heater1 := TempController[0].Info.Simulation.HeatValue;
//	Heaters.Heater2 := TempController[1].HeatValue;
//	Heaters.Heater3 := TempController[2].HeatValue;
//	Heaters.Heater4 := TempController[3].HeatValue;
	
	MachineState.Machine_state := STATUS;
END_ACTION
