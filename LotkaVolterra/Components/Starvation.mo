within LotkaVolterra.Components;
model Starvation "Starvation model"
  extends Icons.DeathIcon;
  extends Interfaces.SinkOrSource;
  parameter Real gamma "Starvation coefficient";
equation
  // Rate of starvation is proportional to population
  decline = gamma*pop.population;
end Starvation;
