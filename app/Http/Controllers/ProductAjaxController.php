<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Http\JsonResponse;
use Illuminate\Contracts\View\View;
use Intervention\Image\Facades\Image;
use Illuminate\Contracts\View\Factory;
use Yajra\DataTables\Facades\DataTables;

class ProductAjaxController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request): JsonResponse | View | Factory
    {
        if ($request->ajax()) {
            $data = Product::latest()->get();
            return Datatables::of($data)
                ->addIndexColumn()
                ->addColumn('action', function ($row) {
                    $btn = '<a href="javascript:void(0)" data-toggle="tooltip"  data-id="' . $row->id . '" data-original-title="Edit" class="edit btn btn-primary btn-sm editProduct">Edit</a>';
                    $btn = $btn . ' <a href="javascript:void(0)" data-toggle="tooltip"  data-id="' . $row->id . '" data-original-title="Delete" class="btn btn-danger btn-sm deleteProduct">Delete</a>';
                    return $btn;
                })
                ->addColumn('photo', function ($row) {
                    $photo = '<img src="' . $row->photo . '" width="100" height="100">';
                    return $photo;
                })
                ->rawColumns(['action', 'photo'])
                ->make(true);
        }
        return view('welcome');
    }



    /**

     * Store a newly created resource in storage.

     *

     * @param  \Illuminate\Http\Request  $request

     * @return \Illuminate\Http\Response

     */

    public function store(Request $request)
    {
        // if ($request->file('photo')) {
        //     $path = $request->file('photo')->getRealPath();
        //     $logo = file_get_contents($path);
        //     // $base64 = base64_encode($logo);
        // }

        $product = Product::updateOrCreate(
            [
                'id' => $request->product_id

            ],
            [
                'name' => $request->name,
                'detail' => $request->detail
            ]
        );

        // update image
        // if ($request->hasFile('photo')) {
        //     $img = $request->file('photo');
        //     $folderPath = "images/";
        //     $image_parts = explode(";base64,", $img);
        //     $image_type_aux = explode("image/", $image_parts[0]);
        //     $image_type = $image_type_aux[1];
        //     $image_base64 = base64_decode($image_parts[1]);
        //     $file = $folderPath . uniqid() . '. ' . $image_type;
        //     dd($file);
        //     // file_put_contents($file, $image_base64);
        // }

        // way 3 for base encode
        // if ($request->hasFile('photo')) {
        //     $imageData = $request->file('photo');
        //     // Get the base-64 string from the image data
        //     $imageData = str_replace('data:image/png;base64,', '', $imageData);
        //     $imageData = str_replace(' ', '+', $imageData);
        //     $imageData = base64_decode($imageData);
        //     // Create a unique name for the image
        //     $imageName = uniqid() . '.png';
        //     // Set the path for the image
        //     $imagePath = public_path('images/' . $imageName);
        //     // Use Intervention Image to save the image
        //     Image::make($imageData)->save($imagePath);
        //     Product::where('id', $product->id)->update([
        //         'photo' => $imageName
        //     ]);
        // }

        // 1st image store and upload
        // if ($request->hasFile('photo')) {
        //     $product = Product::find($product->id);
        //     if ($product->photo != null) {
        //         // delete old photo
        //         $old_location = 'public/uploads/membership_photos/' . $product->photo;
        //         unlink(base_path($old_location));
        //     }
        //     $uploaded_photo = $request->file('photo');
        //     if ($uploaded_photo->isValid() && $uploaded_photo->getError() == 0) {
        //         $new_photo_name = $product->id . $uploaded_photo->getClientOriginalExtension();
        //         $new_photo_location = public_path('uploads/membership_photos/') . $new_photo_name;
        //         Image::make($uploaded_photo)->resize(450, 450)->save($new_photo_location, 100);

        //         Product::find($product->id)->update([
        //             'photo' => $new_photo_name
        //         ]);
        //     } else {
        //         Log::error('Error uploading file: ' . $uploaded_photo->getError());
        //     }
        // }


        // 2nd
        // if ($request->hasFile('photo')) {
        //     if ($product->photo != null) {
        //         // delete photo
        //         $old_location = 'public/uploads/membership_photos/' . $product->photo;
        //         unlink(base_path($old_location));
        //     }

        //     $uploaded_photo = $request->file('photo');
        //     $new_photo_name = $product->id . '-' . Str::random(3) . "." . $uploaded_photo->extension();

        //     $new_photo_location = 'public/uploads/membership_photos/' . $new_photo_name;
        //     Image::make($uploaded_photo)->resize(450, 450)->save(base_path($new_photo_location), 100);

        //     Product::find($product->id)->update([
        //         'photo' => $new_photo_name
        //     ]);
        // }

        return response()->json(['success' => 'Product saved successfully.']);
    }

    /**

     * Show the form for editing the specified resource.

     *

     * @param  \App\Product  $product

     * @return \Illuminate\Http\Response

     */

    public function edit($id)

    {

        $product = Product::find($id);

        return response()->json($product);
    }



    /**

     * Remove the specified resource from storage.

     *

     * @param  \App\Product  $product

     * @return \Illuminate\Http\Response

     */

    public function destroy($id)

    {

        Product::find($id)->delete();



        return response()->json(['success' => 'Product deleted successfully.']);
    }
}
