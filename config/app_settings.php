<?php

return [

    // All the sections for the settings page
    'sections' => [
        'app' => [
            'title' => 'General Settings',
            'descriptions' => '', // (optional)
            'icon' => 'fa fa-cog', // (optional)

            'inputs' => [
                [
                    'name' => 'app_name', // unique key for setting
                    'type' => 'text', // type of input can be text, number, textarea, select, boolean, checkbox etc.
                    'label' => 'App Name', // label for input
                    // optional properties
                    'placeholder' => 'Application Name', // placeholder for input
                    'class' => 'form-control', // override global input_class
                    'style' => '', // any inline styles
                    'rules' => 'required|min:2|max:20', // validation rules for this input
                    'value' => config('app.name'), // any default value
                    'hint' => 'You can set the app name here' // help block text for input
                ],
                [
                    'name' => 'app_currency',
                    'type' => 'text',
                    'label' => 'App Currency',
                    'placeholder' => 'Application Currency',
                    'class' => 'form-control',
                    'style' => '', // any inline styles
                    'rules' => 'required|max:10', // validation rules for this input
                    'value' => '$', // any default value
                    'hint' => 'Use your currency symbol like $',
                ],
                [
                    'name' => 'logo',
                    'type' => 'image',
                    'label' => 'Upload logo',
                    'hint' => 'Recommended image size is 150px x 150px',
                    'rules' => 'image|max:500',
                    'disk' => 'public', // which disk you want to upload
                    'path' => 'logos', // path on the disk,
                    'preview_class' => 'thumbnail',
                    'preview_style' => 'height:40px'
                ]
                   ,
                [
                    'name' => 'favicon',
                    'type' => 'image',
                    'label' => 'Upload favicon',
                    'hint' => 'Recommended image size is 16px x 16px or 32px x 32px',
                    'rules' => 'image|max:500',
                    'disk' => 'public', // which disk you want to upload
                    'path' => 'logos', // path on the disk,
                    'preview_class' => 'thumbnail',
                    'preview_style' => 'height:40px'
                ],
            ]
        ],
        
    ],

    // Setting page url, will be used for get and post request
    'url' => 'settings',

    // Any middleware you want to run on above route
    'middleware' => ['auth'],

    // View settings
    // 'setting_page_view' => 'app_settings::settings_page',
    'setting_page_view' => 'admin.settings',
    'flash_partial' => 'app_settings::_flash',

    // Setting section class setting
    'section_class' => 'card mb-3',
    'section_heading_class' => 'card-header',
    'section_body_class' => 'card-body',

    // Input wrapper and group class setting
    'input_wrapper_class' => 'form-group',
    'input_class' => 'form-control',
    'input_error_class' => 'has-error',
    'input_invalid_class' => 'is-invalid',
    'input_hint_class' => 'form-text text-muted',
    'input_error_feedback_class' => 'text-danger',

    // Submit button
    'submit_btn_text' => 'Save Settings',
    'submit_success_message' => 'Settings has been saved.',

    // Remove any setting which declaration removed later from sections
    'remove_abandoned_settings' => false,

    // Controller to show and handle save setting
    'controller' => '\App\Http\Controllers\Admin\SettingController',

    // settings group
    'setting_group' => function() {
        // return 'user_'.auth()->id();
        return 'default';
    }
];
