within LotkaVolterra.Examples;
model ThreeTierWithDisease "Add disease for rabbits"
  extends ThreeTierOmnivores;
  Components.Disease rdisease(zeta=1e-3)
    annotation (Placement(transformation(extent={{-80,-92},{-60,-72}})));
equation
  connect(rdisease.pop, rabbits.pop) annotation (Line(
      points={{-70,-72},{-70,-60},{-90,-60},{-90,0},{-40,0},{-40,-30}},
      color={0,0,0},
      smooth=Smooth.None));
  annotation (Diagram(graphics),
    experiment(StopTime=100, Tolerance=1e-008),
    __Dymola_experimentSetupOutput);
end ThreeTierWithDisease;
