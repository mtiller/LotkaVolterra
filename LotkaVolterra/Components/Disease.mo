within LotkaVolterra.Components;
model Disease "Non-linear disease model"
  extends Icons.DeathIcon;
  extends Interfaces.SinkOrSource;
  parameter Real zeta "Disease coefficient";
equation
  // Rate of starvation is proportional to population
  pop.rate = zeta*pop.population*pop.population;
end Disease;
