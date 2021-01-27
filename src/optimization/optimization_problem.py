from casadi import SX


class OptimizationProblem:
    """Defines optimization problem with objective function and constraints."""

    def __init__(self, objective_function):
        """
        Create optimization problem.

        :param objective_function:
        """
        self.objective_function = objective_function

    def explore(self):
        """
        Sample method for testing.

        :return: objective function of this optimization problem
        """
        x = SX.sym("x", 3)
        print(x)
        return self.objective_function
