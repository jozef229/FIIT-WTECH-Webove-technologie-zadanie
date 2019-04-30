<?php

namespace App\Http\Controllers;

use Auth;
use App\Product;
use App\Category;
use App\Color;
use App\Memory;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    //funkcia vypisujuca vsetky produkty alebo uz vyhladane produkty -> sluzi na vyhladavanie podla stringu
    public function index()
    {
        $categories = Category::all();
        $memories = Memory::all();
        $colors = Color::all();
        if(request()->has('category') || request()->has('search')) {
            if(request()->has('category') && request()->has('search') ){
                $products = Product::where([['name', 'LIKE', '%' . request('search') . '%']])
                    ->where('category_id', request('category'))
                    ->paginate(9);
                $products->withPath('?search='.request('search').'&category='.request('category'));
            }
            else if(request()->has('category')) {
                $products = Product::where('category_id', request('category'))->paginate(9);
                $products->withPath('?category='.request('category'));
            }
            else {
                $products = Product::where([['name', 'LIKE', '%' . request('search') . '%']])->paginate(9);
                $products->withPath('?search='.request('search'));
            }
        }
        else {
            $products = Product::paginate(9);
        }
        $request = '';
        return view('layouts.other.all_products',compact('products',$products, 'request', $request,'categories', $categories, 'memories', $memories, 'colors', $colors));
    }

    //funkcia spracuva udaje a vyfiltruje produkty nasledne ich zasle na stranku
    public function filter(Request $request)
    {
        $memories = Memory::all();
        $colors = Color::all();
        if(!$request->color){
            $request->color = Color::select('id');
        }
        if(!$request->price){
            $request->price = PHP_INT_MAX;
        }
        if(!$request->memory){
            $request->memory = Memory::select('id');
        }
        $products = Product::where('price', '<', $request->price)
            ->whereIn('memory_id', $request->memory)
            ->whereIn('color_id', $request->color)
            ->paginate(50);
        return view('layouts.other.all_products',compact('products',$products, 'request', $request, 'memories', $memories, 'colors', $colors));
    }



    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    //spusti stranky na vytvaranie produktu
    public function create()
    {
        if (Auth::user() && Auth::user()->role === false) {
            $categories = Category::all();
            $memories = Memory::all();
            $colors = Color::all();
            return view('layouts.admin.create_product', compact('categories', $categories, 'memories', $memories, 'colors', $colors));
        }else {
            return redirect('/');
        }
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    //ulozenie produktu
    public function store(Request $request)
    {
        if (Auth::user() && Auth::user()->role === false) {
            $validation = $request->validate([
                'name' => 'required|min:3',
                'description' => 'required',
                'image' => 'nullable|image|mimes:jpeg,png|max:4096'
            ]);
            $file = $validation['image'];
            $fileName = md5($file->getClientOriginalName()) . time() . '.' . $file->getClientOriginalExtension();
            $file->storeAs(config('app.products-images-path'), $fileName);
            $product = Product::create([
                'name' => $request->name,
                'description' => $request->description,
                'price' => $request->price,
                'memory_id' => $request->memory,
                'category_id' => $request->category,
                'color_id' => $request->color,
                'file' => $fileName]);
            return redirect('/products/' . $product->id);
        }else {
            return redirect('/');
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
     */
    //detail produktu
    public function show(Product $product)
    {
        $categories = Category::where('id', '=',  $product->category_id)->get();
        $memories = Memory::where('id', $product->memory_id)->get();
        $colors = Color::where('id', $product->color_id)->get();
        return view('layouts.other.product_detail',compact('product', $product, 'categories', $categories, 'memories', $memories, 'colors', $colors));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
     */
    //editacia produktu
    public function edit(Product $product)
    {
        if (Auth::user() && Auth::user()->role === false) {
            $categories = Category::all();
            $memories = Memory::all();
            $colors = Color::all();
            return view('layouts.admin.edit_product', compact('product', $product, 'categories', $categories, 'memories', $memories, 'colors', $colors));
        }else {
            return redirect('/');
        }
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
     */
    //update produktu
    public function update(Request $request, Product $product)
    {
        if (Auth::user() && Auth::user()->role === false) {
            $request->validate([
                'name' => 'required|min:3',
                'description' => 'required',
            ]);

            $product->name = $request->name;
            $product->description = $request->description;
            $product->price = $request->price;
            $product->category_id = $request->category;
            $product->memory_id = $request->memory;
            $product->color_id = $request->color;
            $product->save();
            $request->session()->flash('message', 'Produkt bola úspešne zmenení.');

            return redirect('products');
        }else {
            return redirect('/');
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
     */
    //vymazanie produktu
    public function destroy(Request $request, Product $product)
    {
        if (Auth::user() && Auth::user()->role === false) {
            $product->delete();
            $request->session()->flash('message', 'Produkt bol úspešne vymazaný.');
            return redirect('products');
        }else {
            return redirect('/');
        }
    }
}
