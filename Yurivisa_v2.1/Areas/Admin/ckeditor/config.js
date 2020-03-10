/**
 * @license Copyright (c) 2003-2019, CKSource - Frederico Knabben. All rights reserved.
 * For licensing, see https://ckeditor.com/legal/ckeditor-oss-license
 */

CKEDITOR.editorConfig = function (config) {
    // Define changes to default configuration here. For example:
    // config.language = 'fr';
    // config.uiColor = '#AADC6E';
    config.filebrowserBrowseUrl = '/Areas/Admin/ckfinder/ckfinder.html';
    config.filebrowserImageBrowseUrl = '/Areas/Admin/ckfinder/ckfinder.html?type=Images';
    config.filebrowserFlashBrowseUrl = '/Areas/Admin/ckfinder/ckfinder.html?type=Flash';
    config.filebrowserUploadUrl = '/Areas/Admin/ckfinder/core/connector/aspx/connector.aspx?command=QuickUpload&type=Files';
    config.filebrowserImageUploadUrl = '/Areas/Admin/ckfinder/core/connector/aspx/connector.aspx?command=QuickUpload&type=Images';
    config.filebrowserFlashUploadUrl = '/Areas/Admin/ckfinder/core/connector/aspx/connector.aspx?command=QuickUpload&type=Flash';
    config.filebrowserWindowWidth = '1200';
    config.filebrowserWindowHeight = '1000';
};
