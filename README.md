# Mailchimp Strategy

MailChimp OAuth2 strategy for OmniAuth 1.0 using the v2 Mailchimp API.

# Mailchimp OAuth documentation

http://developer.mailchimp.com/documentation/mailchimp/guides/how-to-use-oauth2/

# Auth Hash

```ruby
{"user_id"=>String,
 "username"=>String,
 "member_since"=>String,
 "is_approved"=>Boolean,
 "is_trial"=>Boolean,
 "has_activated"=>Boolean,
 "timezone"=>String,
 "plan_type"=>String,
 "plan_high"=>Integer,
 "plan_low"=>Integer,
 "plan_start_date"=>String,
 "pending_monthly"=>Boolean,
 "first_payment"=>String,
 "last_payment"=>String,
 "times_logged_in"=>Integer,
 "last_login"=>String,
 "affiliate_link"=>String,
 "industry"=>String,
 "contact"=>
  {"fname"=>String,
   "lname"=>String,
   "email"=>String,
   "company"=>String,
   "address1"=>String,
   "address2"=>String,
   "city"=>String,
   "state"=>String,
   "zip"=>String,
   "country"=>String,
   "url"=>String,
   "phone"=>String,
   "fax"=>String?},
 "modules"=>[],
 "orders"=>
  [{"order_id"=>Integer,
    "type"=>String,
    "amount"=>Integer|Float,
    "date"=>String,
    "credits_used"=>Integer|Float}],
 "rewards"=>
  {"referrals_this_month"=>Integer,
   "notify_on"=>Boolean,
   "notify_email"=>String?,
   "credits"=>
    {"this_month"=>Integer, "total_earned"=>Integer, "remaining"=>Integer},
   "inspections"=>
    {"this_month"=>Integer, "total_earned"=>Integer, "remaining"=>Integer},
   "referrals"=>[],
   "applied"=>
    [{"value"=>Integer,
      "date"=>String,
      "order_id"=>Integer,
      "order_desc"=>String}]},
 "integrations"=>[]
}
```

# License

Copyright (c) 2011 Florian Mhun

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
