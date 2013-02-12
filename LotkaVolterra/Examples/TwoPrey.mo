within LotkaVolterra.Examples;
model TwoPrey "Predator prey model with two species"
  extends ComponentOriented;
  Components.RegionalPopulation moles(                    initial_population=10,
      steady_state=steady_state)
    annotation (Placement(transformation(extent={{-50,-10},{-30,10}})));
  Components.Reproduction mbirths(alpha=0.2)
    annotation (Placement(transformation(extent={{-80,-10},{-60,10}})));
  Components.Predation predation2(delta=0.4, beta=0.1)
    annotation (Placement(transformation(extent={{-10,10},{10,30}})));
equation
  connect(mbirths.pop, moles.pop)  annotation (Line(
      points={{-70,10},{-70,20},{-40,20},{-40,10}},
      color={128,255,0},
      smooth=Smooth.None));
  connect(predation2.pop_a, moles.pop)  annotation (Line(
      points={{-10,20},{-40,20},{-40,10}},
      color={255,0,0},
      smooth=Smooth.None));
  connect(predation2.pop_b, foxes.pop) annotation (Line(
      points={{10,20},{40,20},{40,-30}},
      color={0,255,0},
      smooth=Smooth.None));
  annotation (experiment(StopTime=100, Tolerance=1e-008));
end TwoPrey;
