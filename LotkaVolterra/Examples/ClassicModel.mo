within LotkaVolterra.Examples;
model ClassicModel "This is the typical equation-oriented model"
  parameter Real alpha=0.1;
  parameter Real beta=0.02;
  parameter Real gamma=0.4;
  parameter Real delta=0.02;
protected
  Real x(start=10);
  Real y(start=10);
equation
  der(x) = x*(alpha-beta*y);
  der(y) = -y*(gamma-delta*x);
  annotation (experiment(StopTime=100, Tolerance=1e-008),
      __Dymola_experimentSetupOutput);
end ClassicModel;
