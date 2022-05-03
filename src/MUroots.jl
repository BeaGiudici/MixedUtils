"""
newton(f, x0; eps=1.0e-12, max_iteration=1e3)

Find the roots of the function f(x), given an approximate root x0
"""
function newton(f, x0; eps=1.e-12, max_iteration=1e3)
	val, der = f(x0)
	xnow = x0
	niter = 0
	err = val/der
	while abs(err) > eps
		xnext = xnow - err
		val, der = f(xnext)
		err  = val/der
		xnow = xnext

		niter = niter + 1
		if niter > max_iteration
			return nothing, niter
		end
	end

	return xnow, niter
end
