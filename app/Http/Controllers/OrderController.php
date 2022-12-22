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

    public function indexOne($id)
    {
        $order = Order::find($id);

        if ($order) {
            return $order;
        }
        return 'Not Found';
    }

    public function store(Request $request)
    {
        $newOrder = new Order;
        $newOrder->name = $request->order['name'];
        $newOrder->phone = $request->order['phone'];
        $newOrder->address = $request->order['address'];
        $newOrder->reviewed = $request->order['reviewed'];
        $newOrder->completed = $request->order['completed'];
        $newOrder->products = $request->order['products'];

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
