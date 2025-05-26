# Spongeqr

## 🏁 Goal of the project

Sponge QR empowers event organizers to easily capture and manage guest data through seamless QR code check-ins. Whether you're hosting a private party, art exhibit, meetups, or full-scale conference, Sponge QR simplifies the entire guest flow from sign-up to showtime.

Here’s how it works:

1. **Create your event**: Set up your event in minutes with a custom subscription page.
2. **Choose what matters**: Decide exactly what information you want to collect from your guests (name, email, preferences—your call).
3. **Share and promote**: Let guests subscribe online. Each guest gets a unique QR code.
4. **Launch day, made easy**: Scan guest QR codes at the door using any mobile device with an internet connections and instantly check them in.
5. **Unlock audience insights**: Get real-time access to guest data to better understand and engage your audience.

Sponge QR makes guest management smarter, faster, and delightfully simple.

## 👨🏻‍💻 Development plan

### Phase I: Event Host Event Creation Lifecycle [WIP]

- Host authentication (sign up/login) using email + magic code verification.
- Create/edit/delete events.
- Registration page per event (guests are not allow to register yet).
- Restrict access per host (hosts can only manage their own data).
- Host role for full event management access.
- Admin role for full platform access.

### Phase II: Guest Registration & QR Lifecycle [WIP]

- Email-based registration form.
- Register guests, generate unique QR codes, and check them in.
- Associate guests with events, unique per-guest-per-event QR code generation.
- One-time QR check-in logic (QR is only valid per event until the event finishes).
- Send email with QR code to guest.

Diagram: [WIP]

### Phase III: Guest Data Management [WIP-TBD]

- Editable guest info via their own QR code.

Diagram: [WIP]

### Phase IV: Event Host Data Management (Dashboard) [WIP-TBD]

- Host dashboard listing all their events
- Per-event view: guest list, check-in status, timestamps
- CSV export of guests and check-ins

Diagram: [WIP]

### Phase V: Event Host Customizable Event Register Page [WIP-TBD]

- Public event page with basic customization
- Social sharing / copyable registration link
- Preview of public registration form

Diagram: [WIP]

### Phase VI: Event Host Customizable Data Gathering From Guests [WIP-TBD]

- Custom form builder for events (UI)
- Field types: text, dropdown, checkbox, etc.
- Field validation rules (required, max-length)
- Store and show guest responses

Diagram: [WIP]

### Phase VII: Smart AI for data insight [WIP-TBD]

- Since each event can collect different types of guest data, the resulting dataset will be unstructured and vary from event to event. This makes it difficult to standardize insights across the platform. To address this, we plan to implement an AI-powered system that can analyze the unique data collected for each event and generate tailored insights for event hosts.

Diagram: [WIP]

## How to run the project

To start your Phoenix server:

- Run `mix setup` to install and setup dependencies
- Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

- Official website: <https://www.phoenixframework.org/>
- Guides: <https://hexdocs.pm/phoenix/overview.html>
- Docs: <https://hexdocs.pm/phoenix>
- Forum: <https://elixirforum.com/c/phoenix-forum>
- Source: <https://github.com/phoenixframework/phoenix>
