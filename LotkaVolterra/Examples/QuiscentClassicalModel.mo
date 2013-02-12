within LotkaVolterra.Examples;
model QuiscentClassicalModel "Adding quiescent initial conditions"
  extends ClassicModel;
initial equation
  der(x) = 0;
  der(y) = 0;
  annotation (experiment(StopTime=100, Tolerance=1e-008));
end QuiscentClassicalModel;
