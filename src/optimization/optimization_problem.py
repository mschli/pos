class OptimizationProblem:
    def __init__(self, objective_function):
        self.objective_function = objective_function

    def explore(self):
        return self.objective_function
