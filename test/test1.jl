using MixedUtils, Test

@testset "Newton's Method" begin
	f(x) = x^2 - 4.0, 2*x0
	x0 = 2.3

	root, ind = newton(f, x0)
	@test f(root)[1] < 1.0e-8
end