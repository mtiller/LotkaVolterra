within LotkaVolterra.Examples;
model ComponentOrientedArchitecture
  "A component-oriented version of the Lotka-Volterra system"

  Components.RegionalPopulation rabbits(initial_population=10, steady_state=
        steady_state)
    annotation (Placement(transformation(extent={{-50,-50},{-30,-30}})));
  Components.RegionalPopulation foxes(initial_population=10, steady_state=
        steady_state)
    annotation (Placement(transformation(extent={{30,-50},{50,-30}})));
  replaceable Components.Starvation
                        starvation(gamma=0.4) constrainedby
    Interfaces.SinkOrSource
    annotation (Placement(transformation(extent={{60,-50},{80,-30}})));
  replaceable Components.Reproduction
                          rbirths(alpha=0.1) constrainedby
    Interfaces.SinkOrSource
    annotation (Placement(transformation(extent={{-80,-50},{-60,-30}})));
  replaceable Components.Predation
                       fox_pred(beta=0.02, delta=0.02) constrainedby
    Interfaces.Interaction
    annotation (Placement(transformation(extent={{-10,-30},{10,-10}})));
  parameter Boolean steady_state = false;
equation
  connect(starvation.pop, foxes.pop)  annotation (Line(
      points={{70,-30},{70,-20},{40,-20},{40,-30}},
      color={0,0,0},
      smooth=Smooth.None));
  connect(rbirths.pop, rabbits.pop)
                                   annotation (Line(
      points={{-70,-30},{-70,-20},{-40,-20},{-40,-30}},
      color={128,255,0},
      smooth=Smooth.None));
  connect(fox_pred.pop_b, foxes.pop)   annotation (Line(
      points={{10,-20},{40,-20},{40,-30}},
      color={0,255,0},
      smooth=Smooth.None));
  connect(fox_pred.pop_a, rabbits.pop)  annotation (Line(
      points={{-10,-20},{-40,-20},{-40,-30}},
      color={255,0,0},
      smooth=Smooth.None));
  annotation (Diagram(graphics),
    experiment(StopTime=100, Tolerance=1e-008),
    __Dymola_experimentSetupOutput);
end ComponentOrientedArchitecture;
