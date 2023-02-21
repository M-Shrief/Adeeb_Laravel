<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Order;

class OrderController extends Controller
{
    public function index()
    {
        return Order::all();
    }

    public function indexOne($name, $phone)
    {
        $order = Order::where('name', $name)->where('phone', $phone)->get();

        if ($order) {
            return $order;
        } else {
            return 'Not Found';
        }
    }

    public function store(Request $request)
    {
        $newOrder = new Order;
        $newOrder->name = $request->name;
        $newOrder->phone = $request->phone;
        $newOrder->address = $request->address;
        $newOrder->products = $request->products;
        $newOrder->reviewed = false;
        $newOrder->completed = false;

        $newOrder->save();
        return $newOrder;
    }

    public function update(Request $request, $id)
    {
        $existingOrder = Order::find($id);
        if ($existingOrder) {
            $existingOrder->reviewed = $request->order['reviewed'];
            $existingOrder->completed = $request->order['completed'];
            $existingOrder->save();
            return $existingOrder;
        }
        return 'Not Found';
    }

    public function destroy($id)
    {
        $existingOrder = Order::find($id);
        if ($existingOrder) {
            $existingOrder->delete();
            return "Deleted";
        }
        return "Not Found";
    }
}
