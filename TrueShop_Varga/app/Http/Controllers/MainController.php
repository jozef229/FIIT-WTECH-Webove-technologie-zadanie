<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Auth;
use App\Product;
use App\User;
use App\Action;
use App\Delivery;
use App\Payment;
use App\Order;
use App\Product_Order;
use Illuminate\Support\Facades\Input;

class MainController extends Controller
{
    //funkcia odkazujuca na pociatocnu stranku "homa page"
    public function index()
    {
        if (Auth::user() && Auth::user()->role === false){
            return view('layouts.admin.home');
        }else{
            $actions = Action::all();
            $news = Product::orderBy('id', 'desc')->take(4)->get();
            return view('layouts.other.home', compact('actions', $actions, 'news', $news));
        }
    }


    //funkcia odkazujuca na kosik posiela don hodnoty z tabuliek a vybrane produkty zo session taktiez pridava produkt
    public function basket(Request $request, Product $product){
        if($request->session()->has('shopping_card')){
            $p = session('shopping_card').' '.$product->id;
        }
        else{
            $p = '0 '.$product->id;
        }
        $rozdelene = preg_split("/ /", $p);
        $rozdelene = array_unique($rozdelene);
        $products = Product::whereIn('id', $rozdelene)->get() ;
        $price = Product::whereIn('id', $rozdelene)->sum('price');
        $p = implode(' ', $rozdelene);
        session(['shopping_card' => $p]);
        $deliveries = Delivery::all();
        $payments = Payment::all();
        return view('layouts.other.basket',compact('products',$products, 'deliveries', $deliveries, 'payments', $payments, 'price', $price));
    }

    //funkcia odkazujuca na kosik odkialkolvek (nepridava produkt do kosika)
    public function basket_only(Request $request){
        if($request->session()->has('shopping_card')) {
            $p = session('shopping_card');
        }
        else{
            $p = '0';
        }
        $rozdelene = preg_split("/ /", $p);
        $products = Product::whereIn('id', $rozdelene)->get();
        $price = Product::whereIn('id', $rozdelene)->sum('price');
        $deliveries = Delivery::all();
        $payments = Payment::all();
        return view('layouts.other.basket',compact('products',$products, 'deliveries', $deliveries, 'payments', $payments, 'price', $price));
    }

    //vymazava prvok z kosika a naspat presmeruje na kosik
    public function basket_refresh(Request $request, Product $product){
        $p = session('shopping_card');
        $p = str_replace(' '.$product->id,"", $p);
        $rozdelene = preg_split("/ /", $p);
        $products = Product::whereIn('id', $rozdelene)->get() ;
        $price = Product::whereIn('id', $rozdelene)->sum('price');
        $p = implode(' ', $rozdelene);
        session(['shopping_card' => $p]);
        $deliveries = Delivery::all();
        $payments = Payment::all();
        return view('layouts.other.basket',compact('products',$products, 'deliveries', $deliveries, 'payments', $payments, 'price', $price));
    }

    //nakup -> vlozi a vytvori zaznanm o nakupe v tabulkach
    public function order(Request $request){
        $request->validate([
            'name' => 'required|string|max:255',
            'street' => 'required|string|max:255',
            'city' => 'required|string|max:255',
            'zip' => 'required|string|max:255',
        ]);
        $p = session('shopping_card');
        $rozdelene = preg_split("/ /", $p);
        $products = Product::whereIn('id', $rozdelene)->get();
        $order = Order::create([
            'user_id' => Auth::user()->id,
            'payment_id' => $request->payment,
            'delivery_id' => $request->delivery,
            'name' => $request->name,
            'street' => $request->street,
            'city' => $request->city,
            'zip' => $request->zip,
        ]);

        $i = 0;
        foreach ($products as $product){
            Product_Order::create([
                'order_id' => $order->id,
                'product_id' => $product->id,
                'count' => $request->number[$i],
            ]);
            $i = $i + 1;
        }
        $request->session()->flash('message', 'Zakúpene produkty');
        session(['shopping_card' => '0']);
        return redirect('/');
    }

    //funkcia sluziaca pre admina na pridanie akciovych ponuk (obrazkov)
    public function store(Request $request){
        if (Input::get('action1')) {
            $validation = $request->validate([
                'image1' => 'nullable|image|mimes:jpeg,png|max:4096'
            ]);
            $file = $validation['image1'];
            $fileName = md5($file->getClientOriginalName()) . time() . '.' . $file->getClientOriginalExtension();
            $file->storeAs(config('app.products-images-path'), $fileName);
            $action = Action::where('id', 1)->get();
            if(count($action) > 0){
                Action::where('id', 1)->update(array('file' => $fileName));
            }
            else{
                Action::create(['file' => $fileName]);
            }
        }
        if (Input::get('action2')) {
            $validation = $request->validate([
                'image2' => 'nullable|image|mimes:jpeg,png|max:4096'
            ]);
            $file = $validation['image2'];
            $fileName = md5($file->getClientOriginalName()) . time() . '.' . $file->getClientOriginalExtension();
            $file->storeAs(config('app.products-images-path'), $fileName);
            $action = Action::where('id', 2)->get();
            if(count($action) > 0){
                Action::where('id', 2)->update(array('file' => $fileName));
            }
            else{
                Action::create(['file' => $fileName]);
            }
        }
        if (Input::get('action3')) {
            $validation = $request->validate([
                'image3' => 'nullable|image|mimes:jpeg,png|max:4096'
            ]);
            $file = $validation['image3'];
            $fileName = md5($file->getClientOriginalName()) . time() . '.' . $file->getClientOriginalExtension();
            $file->storeAs(config('app.products-images-path'), $fileName);
            $action = Action::where('id', 3)->get();
            if(count($action) > 0){
                Action::where('id', 3)->update(array('file' => $fileName));
            }
            else{
                Action::create(['file' => $fileName]);
            }
        }
        if (Input::get('action4')) {
            $validation = $request->validate([
                'image4' => 'nullable|image|mimes:jpeg,png|max:4096'
            ]);
            $file = $validation['image4'];
            $fileName = md5($file->getClientOriginalName()) . time() . '.' . $file->getClientOriginalExtension();
            $file->storeAs(config('app.products-images-path'), $fileName);
            $action = Action::where('id', 4)->get();
            if(count($action) > 0){
                Action::where('id', 4)->update(array('file' => $fileName));
            }
            else{
                Action::create(['file' => $fileName]);
            }
        }

        if (Auth::user() && Auth::user()->role === false){
            return view('layouts.admin.home');
        }else{
            return view('layouts.other.home');
        }

    }
}




























