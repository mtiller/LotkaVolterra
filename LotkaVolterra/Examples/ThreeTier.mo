within LotkaVolterra.Examples;
model ThreeTier "The hunter becomes the hunted"
  extends ComponentOriented;
  Components.RegionalPopulation wolves(initial_population=10, steady_state=
        steady_state)
    annotation (Placement(transformation(extent={{-50,40},{-30,60}})));
  Components.Predation wolf_pred(beta=0.04, delta=0.08)
    annotation (Placement(transformation(extent={{10,60},{-10,80}})));
  Components.Starvation wstarvation(gamma=0.4)
    annotation (Placement(transformation(extent={{-80,40},{-60,60}})));
equation
  connect(wstarvation.pop, wolves.pop) annotation (Line(
      points={{-70,60},{-70,70},{-40,70},{-40,60}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(wolves.pop, wolf_pred.pop_b) annotation (Line(
      points={{-40,60},{-40,70},{-10,70}},
      color={0,255,0},
      smooth=Smooth.None));
  connect(wolf_pred.pop_a, foxes.pop) annotation (Line(
      points={{10,70},{40,70},{40,-30}},
      color={255,0,0},
      smooth=Smooth.None));
  annotation (
    Diagram(graphics),
    experiment(StopTime=100, Tolerance=1e-008),
    __Dymola_experimentSetupOutput);
end ThreeTier;
