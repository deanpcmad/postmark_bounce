# PostmarkBounce

`postmark_bounce` is a gem to accept and log Postmark bounces in your Rails application

## Installation

Add the gem to your Gemfile and bundle install.

Mount the engine in your app:

```ruby
mount PostmarkBounce::Engine, at: "/postmark_bounce"
```

## Showing in your views

I'm currently using this in my views:

```haml
- if PostmarkBounce::Email.shown.first
  - bounce = PostmarkBounce::Email.shown.first
  .alert.alert-warning.alert-bounce
    .container
      %p.pull-right= link_to "Dismiss", "/postmark_bounce/#{bounce.message_id}/hide", method: :put
      %b An email to <mark>#{bounce.email}</mark> with the subject of <mark>#{bounce.subject}</mark> bounced at <mark>#{bounce.bounced_at.to_s(:short)}</mark> due to an error
      %p= bounce.description
```

## To test

```bash
curl http://localhost:3000/postmark_bounce \
  -X POST \
  -H "Content-Type: application/json" \
  -d '{ "ID": 42, "Type": "HardBounce", "TypeCode": 1, "Name": "Hard bounce", "Tag": "Test", "MessageID": "883953f4-6105-42a2-a16a-77a8eac79483", "Description": "The server was unable to deliver your message (ex: unknown user, mailbox not found).", "Details": "Test bounce details", "Email": "john@example.com", "BouncedAt": "2014-08-01T13:28:10.2735393-04:00", "DumpAvailable": true, "Inactive": true, "CanActivate": true, "Subject": "Test subject" }'
```

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
