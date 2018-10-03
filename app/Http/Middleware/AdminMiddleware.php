<?php

namespace App\Http\Middleware;

use Closure;

class AdminMiddleware
{
    /**
     * Handle an incoming request. Middleware for admin
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        if (\Auth::user() && \Auth::user()->admin) {
            return $next($request);
        } elseif ($request->user()) {
            return redirect('/');
        }

        return redirect('/login');
    }
}
