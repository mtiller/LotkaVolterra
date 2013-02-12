within LotkaVolterra.Interfaces;
partial model SinkOrSource
  "Model for population dynamics that are either sinks or sources"

  Interfaces.Population pop
    annotation (Placement(transformation(extent={{-10,90},{10,110}})));
protected
  Real growth "Growth in the population (if positive)";
  Real decline "Decline in the population (if positive)";
equation
  decline = -growth;
  pop.rate = decline;
end SinkOrSource;
