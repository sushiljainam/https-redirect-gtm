___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "TAG",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Redirect to HTTPS",
  "brand": {
    "id": "brand_dummy",
    "displayName": "Templates by sushiljainam"
  },
  "description": "Add this tag to force your web pages to redirect from http to https via browser.\nPriority must be set high.\n\nopen source at https://gist.github.com/sushiljainam/8c1f8681cb654006088120a7651cbe7d and https://github.com/sushiljainam/https-redirect-gtm",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

// Enter your template code here.

const queryPermission = require('queryPermission');
const injectScript = require('injectScript');
const url = 'https://gist.githubusercontent.com/sushiljainam/8c1f8681cb654006088120a7651cbe7d/raw/d74577948315161ddf2fef1edda23610c3bc78ff/redirect.js';
if (queryPermission('inject_script', url)) {
  injectScript(url);
}

// Call data.gtmOnSuccess when the tag is finished.
data.gtmOnSuccess();


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "inject_script",
        "versionId": "1"
      },
      "param": [
        {
          "key": "urls",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "https://gist.githubusercontent.com/sushiljainam/"
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___TESTS___

scenarios:
- name: test 1
  code: |-
    const mockData = {
      // Mocked field values
    };

    // Call runCode to run the template's code.
    runCode(mockData);

    // Verify that the tag finished successfully.
    assertApi('gtmOnSuccess').wasCalled();


___NOTES___

Created on 15/06/2021, 12:58:48


