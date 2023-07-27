<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class StudentCreateRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, mixed>
     */
    public function rules()
    {
        return [
            'nis' => 'unique:students|max:4|required',
            'name' => 'max:20|required',
            'gender' => 'required',
            'class_id' => 'required',
        ];
    }

    // Fungsi untuk mengubah nama atribut
    public function attributes()
    {
        return [
            'class_id' => 'class',
        ];
    }

    // Fungsi untuk mengubah kata-kata pesan
    public function messages()
    {
        return [
            'nis.required' => 'NIS harus diisi!',
            'nis.max' => 'NIS maksimal :max karakter!',
        ];
    }
}
