<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\App;



class language
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure(\Illuminate\Http\Request): (\Illuminate\Http\Response|\Illuminate\Http\RedirectResponse)  $next
     * @return \Illuminate\Http\Response|\Illuminate\Http\RedirectResponse
     */
    public function handle(Request $request, Closure $next)
    {

        if(Session::get('website_language')!=null){

            App::setlocale(Session::get('website_language'));
        }
        else{
            Session::put('website_language','vi');
            App::setlocale(Session::get('website_language'));
        }
          // Lấy dữ liệu lưu trong Session, không có thì trả về default lấy trong config
        // Chuyển ứng dụng sang ngôn ngữ được chọn

        return $next($request);

    }
}
