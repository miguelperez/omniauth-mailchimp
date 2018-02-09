# Mailchimp Strategy

MailChimp OAuth2 strategy for OmniAuth 1.0 using the v2 Mailchimp API.

# Mailchimp OAuth documentation

http://developer.mailchimp.com/documentation/mailchimp/guides/how-to-use-oauth2/

# Auth Hash

JSON as per https://us9.api.mailchimp.com/schema/3.0/Root.json

```ruby

{"account_id"=>String,
 "login_id"=>String,
 "account_name"=>String,
 "email"=>String,
 "first_name"=>String,
 "last_name"=>String,
 "username"=>String,
 "avatar_url"=>String,
 "role"=>String,
 "member_since"=>String,
 "pricing_plan_type"=>String,
 "first_payment"=>String,
 "account_timezone"=>String,
 "account_industry"=>String,
 "contact"=>
  {"company"=>String,
   "addr1"=>String,
   "addr2"=>String,
   "city"=>String,
   "state"=>String,
   "zip"=>String,
   "country"=>String},
 "pro_enabled"=>FalseClass,
 "last_login"=>String,
 "total_subscribers"=>Integer,
 "industry_stats"=>
  {"open_rate"=>Float, "bounce_rate"=>Float, "click_rate"=>Float},
 "_links"=>
  [{"rel"=>String, "href"=>String, "method"=>String, "targetSchema"=>String},
   {"rel"=>String,
    "href"=>String,
    "method"=>String,
    "targetSchema"=>String,
    "schema"=>String}]}
```

# License

Copyright (c) 2011 Florian Mhun

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
