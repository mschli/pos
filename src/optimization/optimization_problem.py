from casadi import SX


class OptimizationProblem:
    def __init__(self, objective_function):
        self.objective_function = objective_function

    def explore(self):
        x = SX.sym("x", 3)
        print(x)
        return self.objective_function
