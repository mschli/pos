from unittest import TestCase

from src.optimization.optimization_problem import OptimizationProblem


class TestOptimizationProblem(TestCase):
    def test_explore(self):
        problem = OptimizationProblem("hello world")
        self.assertEqual("hello world", problem.explore())
