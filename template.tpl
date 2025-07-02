___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "displayName": "SignalsGateway Pixel - Alpha - v0",
  "categories": ["ANALYTICS"],
  "description": "A template for the SignalsGateway Pixel.",
  "securityGroups": [],
  "id": "signals_gateway_pixel_v0",
  "type": "TAG",
  "version": 1,
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "GROUP",
    "name": "sgwPixelSettings",
    "displayName": "Signals Gateway Pixel Settings",
    "groupStyle": "NO_ZIPPY",
    "subParams": [
      {
        "alwaysInSummary": true,
        "valueValidators": [
          {
            "args": [
              "^[0-9,]+$"
            ],
            "errorMessage": "Invalid Pixel ID format",
            "type": "REGEX"
          }
        ],
        "displayName": "Signals Gateway Pixel ID",
        "simpleValueType": true,
        "name": "sgwPixelId",
        "type": "TEXT",
        "valueHint": "e.g. 12345678910",
        "help": "Enter the Signals Gateway Pixel ID exactly as provided by the Signals Gateway Pixel Source in your Signals Gateway."
      },
      {
        "type": "TEXT",
        "name": "sgwHost",
        "displayName": "Signals Gateway Pixel Host",
        "simpleValueType": true,
        "alwaysInSummary": true,
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ],
        "valueHint": "https://sgw.domain.com/",
        "help": "Enter the Signals Gateway Pixel Host URL exactly as provided by the Signals Gateway Pixel Source in your Signals Gateway."
      },
      {
        "type": "TEXT",
        "name": "sgwScriptUrl",
        "displayName": "Signals Gateway Pixel Script URL",
        "simpleValueType": true,
        "alwaysInSummary": true,
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ],
        "valueHint": "https://sgw.domain.com/12345678/events.js",
        "help": "Enter the Signals Gateway Pixel script URL exactly as provided by the Signals Gateway Pixel Source in your Signals Gateway. Make sure this URL matches the value in your template’s “inject permission” setting."
      }
    ]
  },
  {
    "type": "CHECKBOX",
    "name": "enhancedEcommerce",
    "checkboxText": "Enhanced Ecommerce dataLayer Integration",
    "simpleValueType": true,
    "help": "If you check this, then the SignalsGateway pixel will populate \u003cstrong\u003eEvent Name\u003c/strong\u003e and \u003cstrong\u003eObject Properties\u003c/strong\u003e automatically from the last \u003ca href\u003d\"https://developers.google.com/tag-manager/enhanced-ecommerce\"\u003eecommerce\u003c/a\u003e object pushed into the dataLayer array."
  },
  {
    "type": "RADIO",
    "name": "eventName",
    "displayName": "Event name",
    "radioItems": [
      {
        "value": "standard",
        "displayValue": "Standard",
        "subParams": [
          {
            "type": "SELECT",
            "name": "standardEventName",
            "macrosInSelect": false,
            "selectItems": [
              {
                "displayValue": "PageView",
                "value": "PageView"
              },
              {
                "displayValue": "AddPaymentInfo",
                "value": "AddPaymentInfo"
              },
              {
                "displayValue": "AddToCart",
                "value": "AddToCart"
              },
              {
                "displayValue": "AddToWishlist",
                "value": "AddToWishlist"
              },
              {
                "displayValue": "CompleteRegistration",
                "value": "CompleteRegistration"
              },
              {
                "displayValue": "Contact",
                "value": "Contact"
              },
              {
                "displayValue": "CustomizeProduct",
                "value": "CustomizeProduct"
              },
              {
                "displayValue": "Donate",
                "value": "Donate"
              },
              {
                "displayValue": "FindLocation",
                "value": "FindLocation"
              },
              {
                "displayValue": "InitiateCheckout",
                "value": "InitiateCheckout"
              },
              {
                "displayValue": "Lead",
                "value": "Lead"
              },
              {
                "displayValue": "Purchase",
                "value": "Purchase"
              },
              {
                "displayValue": "Schedule",
                "value": "Schedule"
              },
              {
                "displayValue": "Search",
                "value": "Search"
              },
              {
                "displayValue": "StartTrial",
                "value": "StartTrial"
              },
              {
                "displayValue": "SubmitApplication",
                "value": "SubmitApplication"
              },
              {
                "displayValue": "Subscribe",
                "value": "Subscribe"
              },
              {
                "displayValue": "ViewContent",
                "value": "ViewContent"
              }
            ],
            "simpleValueType": true,
            "defaultValue": "PageView"
          }
        ]
      },
      {
        "value": "custom",
        "displayValue": "Custom",
        "subParams": [
          {
            "type": "TEXT",
            "name": "customEventName",
            "displayName": "",
            "simpleValueType": true
          }
        ]
      },
      {
        "value": "variable",
        "displayValue": "Variable",
        "subParams": [
          {
            "type": "SELECT",
            "name": "variableEventName",
            "macrosInSelect": true,
            "selectItems": [],
            "simpleValueType": true
          }
        ]
      }
    ],
    "simpleValueType": true,
    "enablingConditions": [
      {
        "paramName": "enhancedEcommerce",
        "paramValue": true,
        "type": "NOT_EQUALS"
      }
    ]
  },
  {
    "type": "RADIO",
    "name": "eecEventName",
    "displayName": "Event Name",
    "radioItems": [
      {
        "value": "eec",
        "displayValue": "Set automatically from dataLayer"
      }
    ],
    "simpleValueType": true,
    "help": "The Enhanced Ecommerce integration populates the Event Name automatically depending on what type of \u003cstrong\u003eecommerce\u003c/strong\u003e object was last pushed into dataLayer (\"detail\" -\u003e \"ViewContent\", \"add\" -\u003e \"AddToCart\", \"checkout\" -\u003e \"InitiateCheckout\", \"purchase\" -\u003e \"Purchase\").",
    "enablingConditions": [
      {
        "paramName": "enhancedEcommerce",
        "paramValue": true,
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "SELECT",
    "name": "consent",
    "displayName": "Consent Granted (GDPR)",
    "macrosInSelect": true,
    "selectItems": [
      {
        "value": true,
        "displayValue": "True"
      },
      {
        "value": false,
        "displayValue": "False"
      }
    ],
    "simpleValueType": true,
    "help": "If you set Consent Granted to \u003cstrong\u003efalse\u003c/strong\u003e, the pixel will not send any hits until a tag is fired where Consent Granted is set to \u003cstrong\u003etrue\u003c/strong\u003e. See \u003ca href\u003d\"https://developers.facebook.com/docs/marketing-api/gateway-products/signals-gateway/signals-gateway-pixel-onboarding#step-2--set-up-signals-gateway-pixel/\"\u003ethis article\u003c/a\u003e for more information."
  },
  {
    "simpleValueType": true,
    "name": "advancedMatching",
    "checkboxText": "Enable Advanced Matching",
    "type": "CHECKBOX"
  },
  {
    "type": "GROUP",
    "name": "dataProcessingOptionsGroup",
    "displayName": "Data Processing Options",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "LABEL",
        "name": "dpoInfo",
        "displayName": "Data Processing Options force this SignalsGateway event to comply to regional regulations with regard to the processing and selling of user data. Read \u003ca href\u003d\"https://developers.facebook.com/docs/marketing-api/gateway-products/signals-gateway/signals-gateway-pixel-onboarding#step-2--set-up-signals-gateway-pixel\"\u003ethis\u003c/a\u003e for more information about how to configure this section."
      },
      {
        "type": "CHECKBOX",
        "name": "dpoLDU",
        "checkboxText": "Limited Data Use (LDU)",
        "simpleValueType": true
      },
      {
        "type": "TEXT",
        "name": "dpoCountry",
        "displayName": "Country",
        "simpleValueType": true,
        "defaultValue": 0,
        "enablingConditions": [
          {
            "paramName": "dpoLDU",
            "paramValue": true,
            "type": "EQUALS"
          }
        ],
        "valueValidators": [
          {
            "type": "NUMBER"
          }
        ]
      },
      {
        "type": "TEXT",
        "name": "dpoState",
        "displayName": "State",
        "simpleValueType": true,
        "defaultValue": 0,
        "enablingConditions": [
          {
            "paramName": "dpoLDU",
            "paramValue": true,
            "type": "EQUALS"
          }
        ],
        "valueValidators": [
          {
            "type": "NUMBER"
          }
        ]
      }
    ]
  },
  {
    "enablingConditions": [
      {
        "paramName": "advancedMatching",
        "type": "EQUALS",
        "paramValue": true
      }
    ],
    "displayName": "Customer Information Data Parameters",
    "name": "advancedMatchingGroup",
    "groupStyle": "ZIPPY_CLOSED",
    "type": "GROUP",
    "subParams": [
      {
        "displayName": "",
        "name": "advancedMatchingList",
        "simpleTableColumns": [
          {
            "selectItems": [
              {
                "displayValue": "City",
                "value": "ct"
              },
              {
                "displayValue": "Country",
                "value": "cn"
              },
              {
                "displayValue": "Date of Birth",
                "value": "db"
              },
              {
                "displayValue": "Email",
                "value": "em"
              },
              {
                "displayValue": "External ID",
                "value": "external_id"
              },
              {
                "displayValue": "First Name",
                "value": "fn"
              },
              {
                "displayValue": "Gender",
                "value": "ge"
              },
              {
                "displayValue": "Last Name",
                "value": "ln"
              },
              {
                "displayValue": "Phone",
                "value": "ph"
              },
              {
                "displayValue": "State",
                "value": "st"
              },
              {
                "displayValue": "Zip Code",
                "value": "zp"
              }
            ],
            "defaultValue": "",
            "displayName": "Parameter name",
            "name": "name",
            "isUnique": true,
            "type": "SELECT"
          },
          {
            "defaultValue": "",
            "displayName": "Parameter value",
            "name": "value",
            "type": "TEXT"
          }
        ],
        "type": "SIMPLE_TABLE",
        "newRowButtonText": "Add parameter",
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ]
      }
    ]
  },
  {
    "displayName": "Object Properties",
    "name": "objectPropertiesGroup",
    "groupStyle": "ZIPPY_CLOSED",
    "type": "GROUP",
    "subParams": [
      {
        "type": "LABEL",
        "name": "enhancedEcommerceObject",
        "displayName": "\u003cstrong\u003eWarning!\u003c/strong\u003e Object properties are populated automatically based on the most recent \u003cstrong\u003eecommerce\u003c/strong\u003e object pushed into dataLayer. If you add properties here that are already set by the integration (content_type, contents, num_items, value, currency), then the properties you add here will override those set automatically by the integration!",
        "enablingConditions": [
          {
            "paramName": "enhancedEcommerce",
            "paramValue": true,
            "type": "EQUALS"
          }
        ]
      },
      {
        "type": "SELECT",
        "name": "objectPropertiesFromVariable",
        "displayName": "Load Properties From Variable",
        "macrosInSelect": true,
        "selectItems": [
          {
            "value": false,
            "displayValue": "False"
          }
        ],
        "simpleValueType": true,
        "help": "You can use a variable that returns a JavaScript object with the properties you want to use. This object will be merged with any additional properties you add via the table below. Any conflicts will be resolved in favor of the properties you add to the table."
      },
      {
        "name": "objectPropertyList",
        "simpleTableColumns": [
          {
            "valueValidators": [],
            "defaultValue": "",
            "displayName": "Property Name",
            "name": "name",
            "isUnique": true,
            "type": "TEXT"
          },
          {
            "defaultValue": "",
            "displayName": "Property Value",
            "name": "value",
            "type": "TEXT"
          }
        ],
        "type": "SIMPLE_TABLE",
        "newRowButtonText": "Add property"
      }
    ]
  },
  {
    "displayName": "More Settings",
    "name": "moreSettingsGroup",
    "groupStyle": "ZIPPY_CLOSED",
    "type": "GROUP",
    "subParams": [
      {
        "type": "CHECKBOX",
        "name": "disablePushState",
        "checkboxText": "Disable History Event Tracking",
        "simpleValueType": true,
        "help": "The SignalsGateway Pixel tracks history events (pushState and replaceState) automatically as PageViews. Check this box to prevent the pixel from tracking such events automatically."
      },
      {
        "type": "TEXT",
        "name": "eventId",
        "displayName": "Event ID",
        "simpleValueType": true,
        "help": "Set the Event ID parameter in case you are tracking the same event server-side as well. The Event ID can be used to deduplicate the same event if sent from multiple sources. See more \u003ca href\u003d\"https://developers.facebook.com/docs/marketing-api/gateway-products/signals-gateway/signals-gateway-pixel-onboarding#step-2-3--set-up-deduplication/\"\u003ehere\u003c/a\u003e."
      }
    ]
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const createQueue = require('createQueue');
const callInWindow = require('callInWindow');
const aliasInWindow = require('aliasInWindow');
const copyFromWindow = require('copyFromWindow');
const setInWindow = require('setInWindow');
const injectScript = require('injectScript');
const makeTableMap = require('makeTableMap');
const makeNumber = require('makeNumber');
const getType = require('getType');
const copyFromDataLayer = require('copyFromDataLayer');
const math = require('Math');
const log = require('logToConsole');

const initIds = copyFromWindow('_cbq_gtm_ids') || [];
const pixelIds = data.sgwPixelId;
const standardEventNames = ['AddPaymentInfo', 'AddToCart', 'AddToWishlist', 'CompleteRegistration', 'Contact', 'CustomizeProduct', 'Donate', 'FindLocation', 'InitiateCheckout', 'Lead', 'PageView', 'Purchase', 'Schedule', 'Search', 'StartTrial', 'SubmitApplication', 'Subscribe', 'ViewContent'];
const ecommerce = copyFromDataLayer('ecommerce', 1);

// Helper methods
const fail = msg => {
    log(msg);
    data.gtmOnFailure();
};

const mergeObj = (obj, obj2) => {
    for (let key in obj2) {
        if (obj2.hasOwnProperty(key)) {
            obj[key] = obj2[key];
        }
    }
    return obj;
};

const parseEecObj = prod => {
    return {
        id: prod.id,
        quantity: prod.quantity
    };
};

// Initialize EEC integration
let eventName, action, eecObjectProps;
if (data.enhancedEcommerce) {
    if (!ecommerce) return fail('SignalsGateway Pixel: No valid "ecommerce" object found in dataLayer');
    if (ecommerce.detail) { eventName = 'ViewContent'; action = 'detail'; }
    else if (ecommerce.add) { eventName = 'AddToCart'; action = 'add'; }
    else if (ecommerce.checkout) { eventName = 'InitiateCheckout'; action = 'checkout'; }
    else if (ecommerce.purchase) { eventName = 'Purchase'; action = 'purchase'; }
    else return fail('SignalsGateway Pixel: Most recently pushed "ecommerce" object must be one of types "detail", "add", "checkout" or "purchase".');

    if (!ecommerce[action].products || getType(ecommerce[action].products) !== 'array') return fail('SignalsGateway pixel: Most recently pushed "ecommerce" object did not have a valid "products" array.');
    eecObjectProps = {
        content_type: 'product',
        contents: ecommerce[action].products.map(parseEecObj),
        value: ecommerce[action].products.reduce((acc, cur) => {
            const curVal = math.round(makeNumber(cur.price || 0) * (cur.quantity || 1) * 100) / 100;
            return acc + curVal;
        }, 0.0),
        currency: ecommerce.currencyCode || 'USD'
    };
    if (['InitiateCheckout', 'Purchase'].indexOf(eventName) > -1) eecObjectProps.num_items = ecommerce[action].products.reduce((acc, cur) => {
        return acc + makeNumber(cur.quantity || 1);
    }, 0);
}

// Build the cbq() command arguments
const cidParams = data.advancedMatchingList && data.advancedMatchingList.length ? makeTableMap(data.advancedMatchingList, 'name', 'value') : {};
const objectProps = data.objectPropertyList && data.objectPropertyList.length ? makeTableMap(data.objectPropertyList, 'name', 'value') : {};
const objectPropsFromVar = getType(data.objectPropertiesFromVariable) === 'object' ? data.objectPropertiesFromVariable : {};
const mergedObjectProps = mergeObj(objectPropsFromVar, objectProps);
const finalObjectProps = mergeObj(eecObjectProps || {}, mergedObjectProps);
eventName = eventName || (data.eventName === 'custom' ? data.customEventName : (data.eventName === 'variable' ? data.variableEventName : data.standardEventName));

const command = standardEventNames.indexOf(eventName) === -1 ? 'trackSingleCustom' : 'trackSingle';
const consent = data.consent === false ? 'revoke' : 'grant';

// Utility function to use either cbq.queue[]
// (if the SignalsGateway SDK hasn't loaded yet), or cbq.callMethod()
// if the SDK has loaded.
const getCbq = () => {
    // Return the existing 'cbq' global method if available
    let cbq = copyFromWindow('cbq');
    if (cbq) {
        return cbq;
    }

    // Initialize the 'cbq' global method to either use
    // cbq.callMethod or cbq.queue)
    setInWindow('cbq', function () {
        const callMethod = copyFromWindow('cbq.callMethod.apply');
        if (callMethod) {
            callInWindow('cbq.callMethod.apply', null, arguments);
        } else {
            callInWindow('cbq.queue.push', arguments);
        }
    });
    aliasInWindow('_cbq', 'cbq');

    // Create the cbq.queue
    createQueue('cbq.queue');

    // Return the global 'cbq' method, created above
    return copyFromWindow('cbq');
};

// Get reference to the global method
const cbq = getCbq();

cbq('consent', consent);

// Set Data Processing Options
if (data.dpoLDU) {
    cbq('dataProcessingOptions', ['LDU'], makeNumber(data.dpoCountry), makeNumber(data.dpoState));
}

// Handle multiple, comma-separated pixel IDs,
// and initialize each ID if not done already.
pixelIds.split(',').forEach(pixelId => {
    if (initIds.indexOf(pixelId) === -1) {

        cbq('setHost', data.sgwHost);

        // If the user has chosen to disable pushState and replaceState tracking
        if (data.disablePushState) {
          setInWindow('cbq.disablePushState', true);
        }

        // Initialize pixel and store in global array
        cbq('init', pixelId, cidParams);
        // Set integration method as GTM
        cbq('set', 'integrationMethod', 'gtm-sgw-pixel@1.0.0');

        // Only load config if the sgwScriptUrl does not include the pixelId
        if (data.sgwScriptUrl && pixelId && data.sgwScriptUrl.indexOf(pixelId) === -1) {
          cbq('loadConfig', pixelId);
        }

        initIds.push(pixelId);
        setInWindow('_cbq_gtm_ids', initIds, true);

    }

    // Call the cbq() method with the parameters defined earlier
    if (data.eventId) {
        cbq(command, pixelId, eventName, finalObjectProps, { eventID: data.eventId });
    } else {
        cbq(command, pixelId, eventName, finalObjectProps);
    }
});
injectScript(data.sgwScriptUrl, data.gtmOnSuccess, data.gtmOnFailure, 'SGW Pixel');


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "access_globals",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keys",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "cbq"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "_cbq_gtm"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "_cbq"
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "_cbq_gtm_ids"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "cbq.callMethod.apply"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "cbq.queue.push"
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "cbq.queue"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "cbq.disablePushState"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
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
  },
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
                "string": "https://sgw.domain.com/1234567890/events.js"
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
  },
  {
    "instance": {
      "key": {
        "publicId": "logging",
        "versionId": "1"
      },
      "param": [
        {
          "key": "environments",
          "value": {
            "type": 1,
            "string": "debug"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "read_data_layer",
        "versionId": "1"
      },
      "param": [
        {
          "key": "allowedKeys",
          "value": {
            "type": 1,
            "string": "specific"
          }
        },
        {
          "key": "keyPatterns",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "ecommerce"
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
- name: Library is injected
  code: |-
    // Call runCode to run the template's code.
    runCode(mockData);
    // Verify that the tag finished successfully.
    assertApi('injectScript').wasCalledWith(scriptUrl, success, failure, 'SGW Pixel');
    assertApi('gtmOnSuccess').wasCalled();
- name: cbq does not exist - method created
  code: |-
    let cbq;

    mock('copyFromWindow', key => {
      if (key === 'cbq') return cbq;
    });

    mock('createQueue', key => {});

    mock('setInWindow', (key, val) => {
      if (key === 'cbq') cbq = val;
    });

    // Call runCode to run the template's code.
    runCode(mockData);

    // Verify that the tag finished successfully.
    assertApi('aliasInWindow').wasCalledWith('_cbq', 'cbq');
    assertApi('setInWindow').wasCalled();
    assertApi('gtmOnSuccess').wasCalled();
- name: cbq exists - method copied
  code: |-
    mock('setInWindow', key => {
      if (key === 'cbq') fail('setInWindow called with cbq even though variable exists');
    });

    mock('createQueue', key => {});

    // Call runCode to run the template's code.
    runCode(mockData);

    // Verify that the tag finished successfully.
    assertApi('gtmOnSuccess').wasCalled();
- name: makeTableMap called
  code: |-
    mockData.advancedMatching = true;

    // Call runCode to run the template's code.
    runCode(mockData);

    // Verify that the tag finished successfully.
    assertApi('makeTableMap').wasCalledWith(mockData.advancedMatchingList, 'name', 'value');
    assertApi('makeTableMap').wasCalledWith(mockData.objectPropertyList, 'name', 'value');
    assertApi('gtmOnSuccess').wasCalled();
- name: Consent set
  code: |-
    mock('copyFromWindow', key => {
      if (key === 'cbq') return function() {
        if (arguments[0] === 'consent') {
          assertThat(arguments[1], 'Consent set incorrectly').isEqualTo('grant');
        }
      };
    });

    // Call runCode to run the template's code.
    runCode(mockData);

    // Verify that the tag finished successfully.
    assertApi('gtmOnSuccess').wasCalled();
- name: DPO LDU set
  code: |-
    mockData.dpoLDU = true;
    mockData.dpoCountry = '0';
    mockData.dpoState = '0';

    mock('copyFromWindow', key => {
      if (key === 'cbq') return function() {
        if (arguments[0] === 'consent') {
          assertThat(arguments[1], 'Consent set incorrectly').isEqualTo('grant');
        }
        if (arguments[0] === 'dataProcessingOptions') {
          assertThat(arguments[1], 'LDU array value not set').isEqualTo(['LDU']);
          assertThat(arguments[2], 'LDU country not set').isEqualTo(0);
          assertThat(arguments[3], 'LDU state not set').isEqualTo(0);
        }
      };
    });

    // Call runCode to run the template's code.
    runCode(mockData);

    // Verify that the tag finished successfully.
    assertApi('gtmOnSuccess').wasCalled();
- name: DPO LDU not set
  code: |-
    mock('copyFromWindow', key => {
      if (key === 'cbq') return function() {
        if (arguments[0] === 'consent') {
          assertThat(arguments[1], 'Consent set incorrectly').isEqualTo('grant');
        }
        if (arguments[0] === 'dataProcessingOptions') {
          fail('dataProcessingOptions called even though DPO was not set');
        }
      };
    });

    // Call runCode to run the template's code.
    runCode(mockData);

    // Verify that the tag finished successfully.
    assertApi('gtmOnSuccess').wasCalled();
- name: Pixel IDs set - do not initialize
  code: |-
    mock('copyFromWindow', key => {
      if (key === '_cbq_gtm_ids') return ['12345', '23456'];
      if (key === 'cbq') return function() {
        if (arguments[0] === 'init') fail('init called even though pixel IDs already initialized');
      };
    });

    // Call runCode to run the template's code.
    runCode(mockData);

    // Verify that the tag finished successfully.
    assertApi('gtmOnSuccess').wasCalled();
- name: Pixel IDs not set - run init process
  code: "let index = 0;\nlet count = 0;\nlet _cbq_gtm_ids;\n\nmockData.advancedMatching\
    \ = true;\nmockData.disablePushState = true;\n\nmock('setInWindow', (key, val)\
    \ => {\n  if (key === 'cbq.disablePushState') count += 1;\n  if (key === '_cbq_gtm_ids')\
    \ _cbq_gtm_ids = val;\n});\n\nconst initObj = {\n  ct: 'Helsinki',\n  cn: 'Finland',\n\
    \  external_id: 'UserId'\n};\n\nmock('copyFromWindow', key => {\n  if (key ===\
    \ 'cbq') return function() {\n    //if (arguments[0] === 'set' && arguments[1]\
    \ === 'agent') {\n    //  assertThat(arguments[2], 'agent set with invalid value').isEqualTo('SGW-GTM-WebTemplate');\n\
    \    //  assertThat(arguments[3], 'agent set with invalid pixel ID').isEqualTo(mockData.sgwPixelId.split(',')[index]);\n\
    \    //  index += 1;\n    //}\n    if (arguments[0] === 'init') {\n      assertThat(arguments[1],\
    \ 'init called with incorrect pixelId').isEqualTo(mockData.sgwPixelId.split(',')[index]);\n\
    \      assertThat(arguments[2], 'init called with incorrect initObj').isEqualTo(initObj);\n\
    \      index += 1;\n    } \n  };\n});\n\n// Call runCode to run the template's\
    \ code.\nrunCode(mockData);\n\nassertThat(_cbq_gtm_ids, '_cbq_gtm_ids has incorrect\
    \ contents').isEqualTo(mockData.sgwPixelId.split(','));\nassertThat(index, 'init\
    \ called incorrect number of times: ' + index).isEqualTo(2);\nassertThat(count,\
    \ 'cbq.disablePushState called incorrect number of times: ' + count).isEqualTo(2);\n\
    \n// Verify that the tag finished successfully.\nassertApi('gtmOnSuccess').wasCalled();"
- name: Send standard event
  code: "const eventParams = {\n  prop1: 'val1',\n  prop2: 'val2'\n};\n\nlet index\
    \ = 0;\nmock('copyFromWindow', key => {\n  if (key === 'cbq') return function()\
    \ {\n    if (arguments[0] === 'trackSingle') {\n      assertThat(arguments[1],\
    \ 'trackSingle called with incorrect pixel ID').isEqualTo(mockData.sgwPixelId.split(',')[index]);\n\
    \      assertThat(arguments[2], 'trackSingle called with incorrect event name').isEqualTo(mockData.standardEventName);\n\
    \      assertThat(arguments[3], 'trackSingle called with incorrect event parameters').isEqualTo(eventParams);\n\
    \      index += 1;\n    }\n  };\n});\n     \n// Call runCode to run the template's\
    \ code.\nrunCode(mockData);\n\n// Verify that the tag finished successfully.\n\
    assertThat(index, 'trackSingle called incorrect number of times').isEqualTo(2);\n\
    assertApi('gtmOnSuccess').wasCalled();"
- name: Send custom event
  code: "mockData.eventName = 'custom';\n\nconst eventParams = {\n  prop1: 'val1',\n\
    \  prop2: 'val2'\n};\n\nlet index = 0;\nmock('copyFromWindow', key => {\n  if\
    \ (key === 'cbq') return function() {\n    if (arguments[0] === 'trackSingleCustom')\
    \ {\n      assertThat(arguments[1], 'trackSingleCustom called with incorrect pixel\
    \ ID').isEqualTo(mockData.sgwPixelId.split(',')[index]);\n      assertThat(arguments[2],\
    \ 'trackSingleCustom called with incorrect event name').isEqualTo(mockData.customEventName);\n\
    \      assertThat(arguments[3], 'trackSingleCustom called with incorrect event\
    \ parameters').isEqualTo(eventParams);\n      index += 1;\n    }\n  };\n});\n\
    \     \n// Call runCode to run the template's code.\nrunCode(mockData);\n\n//\
    \ Verify that the tag finished successfully.\nassertThat(index, 'trackSingleCustom\
    \ called incorrect number of times').isEqualTo(2);\nassertApi('gtmOnSuccess').wasCalled();"
- name: Send variable event with standard name
  code: "mockData.eventName = 'variable';\nmockData.variableEventName = 'PageView';\n\
    \nconst eventParams = {\n  prop1: 'val1',\n  prop2: 'val2'\n};\n\nlet index =\
    \ 0;\nmock('copyFromWindow', key => {\n  if (key === 'cbq') return function()\
    \ {\n    if (arguments[0] === 'trackSingle') {\n      assertThat(arguments[1],\
    \ 'trackSingle called with incorrect pixel ID').isEqualTo(mockData.sgwPixelId.split(',')[index]);\n\
    \      assertThat(arguments[2], 'trackSingle called with incorrect event name').isEqualTo(mockData.variableEventName);\n\
    \      assertThat(arguments[3], 'trackSingle called with incorrect event parameters').isEqualTo(eventParams);\n\
    \      index += 1;\n    }\n  };\n});\n     \n// Call runCode to run the template's\
    \ code.\nrunCode(mockData);\n\n// Verify that the tag finished successfully.\n\
    assertThat(index, 'trackSingle called incorrect number of times').isEqualTo(2);\n\
    assertApi('gtmOnSuccess').wasCalled();"
- name: Send variable event with custom name
  code: "mockData.eventName = 'variable';\nmockData.variableEventName = 'custom';\n\
    \nconst eventParams = {\n  prop1: 'val1',\n  prop2: 'val2'\n};\n\nlet index =\
    \ 0;\nmock('copyFromWindow', key => {\n  if (key === 'cbq') return function()\
    \ {\n    if (arguments[0] === 'trackSingleCustom') {\n      assertThat(arguments[1],\
    \ 'trackSingleCustom called with incorrect pixel ID').isEqualTo(mockData.sgwPixelId.split(',')[index]);\n\
    \      assertThat(arguments[2], 'trackSingleCustom called with incorrect event\
    \ name').isEqualTo(mockData.variableEventName);\n      assertThat(arguments[3],\
    \ 'trackSingleCustom called with incorrect event parameters').isEqualTo(eventParams);\n\
    \      index += 1;\n    }\n  };\n});\n     \n// Call runCode to run the template's\
    \ code.\nrunCode(mockData);\n\n// Verify that the tag finished successfully.\n\
    assertThat(index, 'trackSingleCustom called incorrect number of times').isEqualTo(2);\n\
    assertApi('gtmOnSuccess').wasCalled();"
- name: Send event parameters from a variable
  code: "mockData.objectPropertiesFromVariable = {\n  prop1: 'val1',\n  prop2: 'val2'\n\
    };\n\nlet index = 0;\nmock('copyFromWindow', key => {\n  if (key === 'cbq') return\
    \ function() {\n    if (arguments[0] === 'trackSingle') {\n      assertThat(arguments[1],\
    \ 'trackSingle called with incorrect pixel ID').isEqualTo(mockData.sgwPixelId.split(',')[index]);\n\
    \      assertThat(arguments[2], 'trackSingle called with incorrect event name').isEqualTo(mockData.standardEventName);\n\
    \      assertThat(arguments[3], 'trackSingle called with incorrect event parameters').isEqualTo(mockData.objectPropertiesFromVariable);\n\
    \      index += 1;\n    }\n  };\n});\n     \n// Call runCode to run the template's\
    \ code.\nrunCode(mockData);\n\n// Verify that the tag finished successfully.\n\
    assertThat(index, 'trackSingle called incorrect number of times').isEqualTo(2);\n\
    assertApi('gtmOnSuccess').wasCalled();"
- name: Enhanced Ecommerce integration fails with invalid object
  code: |-
    mockData.enhancedEcommerce = true;

    // Call runCode to run the template's code.
    runCode(mockData);

    // Verify that the tag finished successfully.
    assertApi('logToConsole').wasCalledWith('SignalsGateway Pixel: No valid "ecommerce" object found in dataLayer');
    assertApi('gtmOnFailure').wasCalled();
    assertApi('gtmOnSuccess').wasNotCalled();
- name: Enhanced Ecommerce integration fails with invalid action
  code: |-
    mockData.enhancedEcommerce = true;

    mock('copyFromDataLayer', key => {
      if (key === 'ecommerce') return {
        invalid: true
      };
    });

    // Call runCode to run the template's code.
    runCode(mockData);

    // Verify that the tag finished successfully.
    assertApi('logToConsole').wasCalledWith('SignalsGateway Pixel: Most recently pushed "ecommerce" object must be one of types "detail", "add", "checkout" or "purchase".');
    assertApi('gtmOnFailure').wasCalled();
    assertApi('gtmOnSuccess').wasNotCalled();
- name: Enhanced Ecommerce ViewContent works
  code: "mockData.enhancedEcommerce = true;\nmockData.objectPropertyList = {};\n\n\
    mock('copyFromDataLayer', key => {\n  if (key === 'ecommerce') return {\n    currencyCode:\
    \ 'EUR',\n    detail: {\n      products: mockEec.gtm.products\n    }\n  };\n});\n\
    \nlet index = 0;\nmock('copyFromWindow', key => {\n  if (key === 'cbq') return\
    \ function() {\n    if (arguments[0] === 'trackSingle') {\n      assertThat(arguments[1],\
    \ 'trackSingle called with incorrect pixel ID').isEqualTo(mockData.sgwPixelId.split(',')[index]);\n\
    \      assertThat(arguments[2], 'trackSingle called with incorrect event name').isEqualTo('ViewContent');\n\
    \      assertThat(arguments[3], 'trackSingle called with incorrect event parameters').isEqualTo(mockEec.fb);\n\
    \      index += 1;\n    }\n  };\n});\n     \n// Call runCode to run the template's\
    \ code.\nrunCode(mockData);\n\n// Verify that the tag finished successfully.\n\
    assertThat(index, 'trackSingle called incorrect number of times').isEqualTo(2);\n\
    assertApi('gtmOnSuccess').wasCalled();"
- name: Enhanced Ecommerce AddToCart works
  code: "mockData.enhancedEcommerce = true;\nmockData.objectPropertyList = {};\n\n\
    mock('copyFromDataLayer', key => {\n  if (key === 'ecommerce') return {\n    currencyCode:\
    \ 'EUR',\n    add: {\n      products: mockEec.gtm.products\n    }\n  };\n});\n\
    \nlet index = 0;\nmock('copyFromWindow', key => {\n  if (key === 'cbq') return\
    \ function() {\n    if (arguments[0] === 'trackSingle') {\n      assertThat(arguments[1],\
    \ 'trackSingle called with incorrect pixel ID').isEqualTo(mockData.sgwPixelId.split(',')[index]);\n\
    \      assertThat(arguments[2], 'trackSingle called with incorrect event name').isEqualTo('AddToCart');\n\
    \      assertThat(arguments[3], 'trackSingle called with incorrect event parameters').isEqualTo(mockEec.fb);\n\
    \      index += 1;\n    }\n  };\n});\n     \n// Call runCode to run the template's\
    \ code.\nrunCode(mockData);\n\n// Verify that the tag finished successfully.\n\
    assertThat(index, 'trackSingle called incorrect number of times').isEqualTo(2);\n\
    assertApi('gtmOnSuccess').wasCalled();"
- name: Enhanced Ecommerce InitiateCheckout works
  code: "mockData.enhancedEcommerce = true;\nmockEec.fb.num_items = 3;\nmockData.objectPropertyList\
    \ = {};\n\nmock('copyFromDataLayer', key => {\n  if (key === 'ecommerce') return\
    \ {\n    currencyCode: 'EUR',\n    checkout: {\n      products: mockEec.gtm.products\n\
    \    }\n  };\n});\n\nlet index = 0;\nmock('copyFromWindow', key => {\n  if (key\
    \ === 'cbq') return function() {\n    if (arguments[0] === 'trackSingle') {\n\
    \      assertThat(arguments[1], 'trackSingle called with incorrect pixel ID').isEqualTo(mockData.sgwPixelId.split(',')[index]);\n\
    \      assertThat(arguments[2], 'trackSingle called with incorrect event name').isEqualTo('InitiateCheckout');\n\
    \      assertThat(arguments[3], 'trackSingle called with incorrect event parameters').isEqualTo(mockEec.fb);\n\
    \      index += 1;\n    }\n  };\n});\n     \n// Call runCode to run the template's\
    \ code.\nrunCode(mockData);\n\n// Verify that the tag finished successfully.\n\
    assertThat(index, 'trackSingle called incorrect number of times').isEqualTo(2);\n\
    assertApi('gtmOnSuccess').wasCalled();"
- name: Enhanced Ecommerce Purchase works
  code: "mockData.enhancedEcommerce = true;\nmockEec.fb.num_items = 3;\nmockData.objectPropertyList\
    \ = {};\n\nmock('copyFromDataLayer', key => {\n  if (key === 'ecommerce') return\
    \ {\n    currencyCode: 'EUR',\n    purchase: {\n      products: mockEec.gtm.products\n\
    \    }\n  };\n});\n\nlet index = 0;\nmock('copyFromWindow', key => {\n  if (key\
    \ === 'cbq') return function() {\n    if (arguments[0] === 'trackSingle') {\n\
    \      assertThat(arguments[1], 'trackSingle called with incorrect pixel ID').isEqualTo(mockData.sgwPixelId.split(',')[index]);\n\
    \      assertThat(arguments[2], 'trackSingle called with incorrect event name').isEqualTo('Purchase');\n\
    \      assertThat(arguments[3], 'trackSingle called with incorrect event parameters').isEqualTo(mockEec.fb);\n\
    \      index += 1;\n    }\n  };\n});\n     \n// Call runCode to run the template's\
    \ code.\nrunCode(mockData);\n\n// Verify that the tag finished successfully.\n\
    assertThat(index, 'trackSingle called incorrect number of times').isEqualTo(2);\n\
    assertApi('gtmOnSuccess').wasCalled();"
- name: Object merge with variable and list works
  code: "mockData.objectPropertiesFromVariable = {\n  prop1: 'var1',\n  prop2: 'var2',\n\
    \  prop3: 'var3'\n};\n\nconst expected = {\n  prop1: 'val1',\n  prop2: 'val2',\n\
    \  prop3: 'var3'\n};\n\nlet index = 0;\nmock('copyFromWindow', key => {\n  if\
    \ (key === 'cbq') return function() {\n    if (arguments[0] === 'trackSingle')\
    \ {\n      assertThat(arguments[1], 'trackSingle called with incorrect pixel ID').isEqualTo(mockData.sgwPixelId.split(',')[index]);\n\
    \      assertThat(arguments[2], 'trackSingle called with incorrect event name').isEqualTo('PageView');\n\
    \      assertThat(arguments[3], 'trackSingle called with incorrect event parameters').isEqualTo(expected);\n\
    \      index += 1;\n    }\n  };\n});\n     \n// Call runCode to run the template's\
    \ code.\nrunCode(mockData);\n\n// Verify that the tag finished successfully.\n\
    assertThat(index, 'trackSingle called incorrect number of times').isEqualTo(2);\n\
    assertApi('gtmOnSuccess').wasCalled();"
- name: Object merge with variable, list and eec works
  code: "mockData.enhancedEcommerce = true;\nmockData.objectPropertiesFromVariable\
    \ = {\n  content_type: 'product_group'\n};\nmockData.objectPropertyList = [{\n\
    \  name: 'currency',\n  value: 'USD'\n}];\nmockEec.fb.num_items = 3;\nmockEec.fb.content_type\
    \ = 'product_group';\nmockEec.fb.currency = 'USD';\n\nmock('copyFromDataLayer',\
    \ key => {\n  if (key === 'ecommerce') return {\n    currencyCode: 'EUR',\n  \
    \  purchase: {\n      products: mockEec.gtm.products\n    }\n  };\n});\n\nlet\
    \ index = 0;\nmock('copyFromWindow', key => {\n  if (key === 'cbq') return function()\
    \ {\n    if (arguments[0] === 'trackSingle') {\n      assertThat(arguments[1],\
    \ 'trackSingle called with incorrect pixel ID').isEqualTo(mockData.sgwPixelId.split(',')[index]);\n\
    \      assertThat(arguments[2], 'trackSingle called with incorrect event name').isEqualTo('Purchase');\n\
    \      assertThat(arguments[3], 'trackSingle called with incorrect event parameters').isEqualTo(mockEec.fb);\n\
    \      index += 1;\n    }\n  };\n});\n     \n// Call runCode to run the template's\
    \ code.\nrunCode(mockData);\n\n// Verify that the tag finished successfully.\n\
    assertThat(index, 'trackSingle called incorrect number of times').isEqualTo(2);\n\
    assertApi('gtmOnSuccess').wasCalled();"
- name: Send event ID
  code: "mockData.eventId = 'eventId';\n\nmock('copyFromWindow', key => {\n  if (key\
    \ === 'cbq') return function() {\n    if (arguments[0] === 'trackSingle') {\n\
    \      assertThat(arguments[4], 'eventID not included in hit').isEqualTo({eventID:\
    \ mockData.eventId});\n    }\n  };\n});\n     \n// Call runCode to run the template's\
    \ code.\nrunCode(mockData);\n\n// Verify that the tag finished successfully.\n\
    assertApi('gtmOnSuccess').wasCalled();"
setup: "const mockData = {\n  sgwPixelId: '12345,23456',\n  sgwPixelHost: 'https://sdk.leowu.uk/',\n\
  \  sgwScriptUrl: 'https://sdk.leowu.uk/sdk/events.js',\n  eventName: 'standard',\n\
  \  standardEventName: 'PageView',\n  customEventName: 'custom',\n  variableEventName:\
  \ 'standard',\n  consent: true,\n  advancedMatching: false,\n  advancedMatchingList:\
  \ [{name: 'ct', value: 'Helsinki'},{name: 'cn', value: 'Finland'},{name: 'external_id',\
  \ value: 'UserId'}],\n  objectPropertiesFromVariable: false,\n  objectPropertyList:\
  \ [{name: 'prop1', value: 'val1'},{name: 'prop2', value: 'val2'}],\n  enhancedEcommerce:\
  \ false,\n  eventId: ''\n};\n\nconst mockEec = {\n  gtm: {  \n    products: [{\n\
  \      id: 'i1',\n      name: 'n1',\n      category: 'c1',\n      price: '1.00',\n\
  \      quantity: 1\n    },{\n      id: 'i2',\n      name: 'n2',\n      category:\
  \ 'c2',\n      price: '2.00',\n      quantity: 2\n    }]\n  },\n  fb: {\n    content_type:\
  \ 'product',\n    contents: [{\n      id: 'i1',\n      quantity: 1\n    },{\n  \
  \    id: 'i2',\n      quantity: 2\n    }],\n    currency: 'EUR',\n    value: 5.00\n\
  \  }\n};\n\nconst scriptUrl = 'https://sdk.leowu.uk/sdk/events.js';\n\n// Create\
  \ injectScript mock\nlet success, failure;\nmock('injectScript', (url, onsuccess,\
  \ onfailure) => {\n  success = onsuccess;\n  failure = onfailure;\n  onsuccess();\n\
  });\n\nmock('copyFromWindow', key => {\n  if (key === 'cbq') return () => {};\n\
  });"


___NOTES___

Created on 3/3/2025, 1:32:46 PM
