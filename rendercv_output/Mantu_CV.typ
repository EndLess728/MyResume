// Import the rendercv function and all the refactored components
#import "@preview/rendercv:0.3.0": *

// Apply the rendercv template with custom configuration
#show: rendercv.with(
  name: "Mantu",
  title: "Mantu - CV",
  footer: context { [#emph[Mantu -- #str(here().page())\/#str(counter(page).final().first())]] },
  top-note: [ #emph[Last updated in Jan 2026] ],
  locale-catalog-language: "en",
  text-direction: ltr,
  page-size: "us-letter",
  page-top-margin: 0.7in,
  page-bottom-margin: 0.7in,
  page-left-margin: 0.7in,
  page-right-margin: 0.7in,
  page-show-footer: false,
  page-show-top-note: true,
  colors-body: rgb(0, 0, 0),
  colors-name: rgb(0, 0, 0),
  colors-headline: rgb(0, 0, 0),
  colors-connections: rgb(0, 0, 0),
  colors-section-titles: rgb(0, 0, 0),
  colors-links: rgb(0, 0, 0),
  colors-footer: rgb(128, 128, 128),
  colors-top-note: rgb(128, 128, 128),
  typography-line-spacing: 0.4em,
  typography-alignment: "justified",
  typography-date-and-location-column-alignment: right,
  typography-font-family-body: "XCharter",
  typography-font-family-name: "XCharter",
  typography-font-family-headline: "XCharter",
  typography-font-family-connections: "XCharter",
  typography-font-family-section-titles: "XCharter",
  typography-font-size-body: 10pt,
  typography-font-size-name: 25pt,
  typography-font-size-headline: 10pt,
  typography-font-size-connections: 10pt,
  typography-font-size-section-titles: 1.2em,
  typography-small-caps-name: false,
  typography-small-caps-headline: false,
  typography-small-caps-connections: false,
  typography-small-caps-section-titles: false,
  typography-bold-name: false,
  typography-bold-headline: false,
  typography-bold-connections: false,
  typography-bold-section-titles: true,
  links-underline: true,
  links-show-external-link-icon: false,
  header-alignment: center,
  header-photo-width: 3.5cm,
  header-space-below-name: 0.7cm,
  header-space-below-headline: 0.7cm,
  header-space-below-connections: 0.7cm,
  header-connections-hyperlink: true,
  header-connections-show-icons: false,
  header-connections-display-urls-instead-of-usernames: true,
  header-connections-separator: "|",
  header-connections-space-between-connections: 0.5cm,
  section-titles-type: "with_full_line",
  section-titles-line-thickness: 0.5pt,
  section-titles-space-above: 0.5cm,
  section-titles-space-below: 0.3cm,
  sections-allow-page-break: true,
  sections-space-between-text-based-entries: 0.15cm,
  sections-space-between-regular-entries: 0.42cm,
  entries-date-and-location-width: 4.15cm,
  entries-side-space: 0cm,
  entries-space-between-columns: 0.1cm,
  entries-allow-page-break: false,
  entries-short-second-row: false,
  entries-degree-width: 1cm,
  entries-summary-space-left: 0cm,
  entries-summary-space-above: 0.08cm,
  entries-highlights-bullet:  text(13pt, [•], baseline: -0.6pt) ,
  entries-highlights-nested-bullet:  text(13pt, [•], baseline: -0.6pt) ,
  entries-highlights-space-left: 0cm,
  entries-highlights-space-above: 0.08cm,
  entries-highlights-space-between-items: 0.08cm,
  entries-highlights-space-between-bullet-and-text: 0.3em,
  date: datetime(
    year: 2026,
    month: 1,
    day: 11,
  ),
)


= Mantu

#connections(
  [#link("tel:+91-94645-42728", icon: false, if-underline: false, if-color: false)[094645 42728]],
  [#link("mailto:aryanmk.mk5@gmail.com", icon: false, if-underline: false, if-color: false)[aryanmk.mk5\@gmail.com]],
  [#link("https://www.linkedin.com/in/mantu-kumar-16439117b/", icon: false, if-underline: false, if-color: false)[Linkedin]],
  [#link("https://endless728.github.io/", icon: false, if-underline: false, if-color: false)[endless728.github.io]],
  [#link("https://github.com/EndLess728", icon: false, if-underline: false, if-color: false)[github.com\/EndLess728]],
)


== Skills

#strong[Languages:] JavaScript, TypeScript, Swift, Java

#strong[Technologies:] React Native, Expo, React, Next.js, Redux, Zustand, React Query, Jest, Firebase, GitHub, CI\/CD

#strong[Tools:] Xcode, Android Studio, VSCode, Cursor, Postman, Antigravity

== Experience

#regular-entry(
  [
    #strong[Sr. React Native Developer & Team Lead], iTechnolabs Pvt. Ltd. -- Mohali, Punjab

  ],
  [
    Aug 2022 – present

  ],
  main-column-second-row: [
    - Led and mentored a team of 12+ developers, enforcing TypeScript standards that eliminated runtime errors and boosted team productivity by 25\%.

    - Integrated Google's MediaPipe PoseLandmark model for real-time human pose estimation in a fitness app, achieving 95\% pose accuracy across 33 body landmarks for workout tracking.

    - Architected a Turbo Module for human pose detection supporting React Native's New Architecture, and extended Expo compatibility via a custom config plugin.

    - Created a production-ready React Native boilerplate (Expo SDK 54) featuring TypeScript, Zustand, TanStack Query, i18n, ESLint, Prettier, and Husky pre-commit hooks.

    - Engineered a high-performance POS system (React Native + Next.js), boosting operational efficiency by 30\% and user satisfaction by 20\%.

    - Accelerated app performance by 20\% through the implementation of a new bridgeless architecture and cut project setup time by 30\% by migrating to Expo.

    - Managed end-to-end client communication and delivery for key accounts, achieving a 95\% client satisfaction rate through transparent reporting.

    - Resolved critical Google Maps integration bugs, cutting client API costs by 40\% and preventing billing leakages.

  ],
)

#regular-entry(
  [
    #strong[Sr. React Native Developer], Suffescom Solutions -- Mohali, Punjab

  ],
  [
    Oct 2021 – Aug 2022

  ],
  main-column-second-row: [
    - Directed and coached a team of 7 developers, establishing React Native coding standards that enhanced collaboration and code quality.

    - Created an Android native module enabling background tasks with 99.9\% reliability.

    - Built a food delivery app serving 1,000+ users, implementing real-time tracking and payments via WebSockets and Maps.

    - Enhanced app security by resolving subscription loopholes, ensuring 100\% compliance with single-user policies.

  ],
)

#regular-entry(
  [
    #strong[Junior iOS Developer & React Native Developer], Immanent Solutions -- Mohali, Punjab

  ],
  [
    Sept 2018 – Oct 2021

  ],
  main-column-second-row: [
    - Engineered 4 scalable mobile apps for event, education, social, and crypto sectors, serving 1,000+ users via iOS and React Native.

    - Achieved 100\% security compliance by implementing HMAC-based API authentication to mitigate unauthorized access risks.

    - Shortened development time by 40\% by migrating native iOS codebases to React Native.

  ],
)

== Open Source

  #regular-entry(
  [
    #strong[#link("https://www.npmjs.com/package/expo-check-installed-apps")[expo-check-installed-apps]]

  ],
  [
  ],
  main-column-second-row: [
    #summary[Expo config plugin to detect installed apps on Android and iOS (173.9K+ downloads)]

    - Created an Expo module enabling developers to query device-installed apps for feature gating.

    - Supports Expo SDK 51+ with automatic native code injection via config plugin.

  ],
)

  #regular-entry(
  [
    #strong[#link("https://www.npmjs.com/package/react-native-mediapipe-posedetection")[react-native-mediapipe-posedetection]]

  ],
  [
  ],
  main-column-second-row: [
    #summary[Real-time pose detection for React Native using MediaPipe BlazePose with GPU acceleration (3.4K+ downloads)]

    - Crafted a high-performance native module supporting 33 pose landmarks with \~15 FPS real-time detection.

    - Implemented GPU-accelerated inference for iOS and Android using Vision Camera frame processing.

  ],
)

== Projects

  #regular-entry(
  [
    #strong[#link("https://focusbear.io")[Focusbear - ADHD]]

  ],
  [
  ],
  main-column-second-row: [
    #summary[Productivity app helping users block distractions and build healthy habits.]

    - Built native modules for Android (distraction-blocking dialog) and iOS (Screen Time API), achieving a 50\% decrease in user distractions.

    - Formulated a scheduled app-blocking feature, elevating user focus consistency by 40\% during routine intervals.

    - Deployed a log file system to track errors and crashes, boosting error resolution efficiency by 50\%.

    - Introduced offline API caching, ensuring 99.9\% uptime and an uninterrupted user experience.

  ],
)

  #regular-entry(
  [
    #strong[Elevyn - AI Fitness]

  ],
  [
  ],
  main-column-second-row: [
    #summary[AI-powered fitness app with personalized workouts, meal planning, and calorie tracking.]

    - Integrated Google's MediaPipe PoseLandmarker for on-device human pose estimation, enabling real-time workout form analysis across 33 body landmarks.

    - Built an AI-driven engine generating personalized workout and meal plans based on user body metrics, increasing user engagement by 35\%.

    - Implemented camera-based meal scanning to auto-detect macros and calories, streamlining food logging and boosting daily tracking consistency by 40\%.

  ],
)

  #regular-entry(
  [
    #strong[#link("https://jobr.com")[JOBR - POS]]

  ],
  [
  ],
  main-column-second-row: [
    #summary[Point of Sale system for service management.]

    - Crafted a custom calendar module for service scheduling, enhancing appointment management efficiency by 40\%.

    - Integrated Apple’s Tap to Pay for secure transactions, increasing payment versatility by 50\%.

    - Created a wallet module for JOBR coins, boosting in-app transaction engagement and user retention by 30\%.

    - Built a web app using Next.js, ensuring consistent cross-platform functionality and refining UX by 40\%.

  ],
)

  #regular-entry(
  [
    #strong[#link("https://mealed.net")[Mealed - Food Ordering]]

  ],
  [
  ],
  main-column-second-row: [
    #summary[On-demand food ordering and delivery platform.]

    - Integrated React Native Maps for real-time driver tracking, enhancing order capabilities by 50\%.

    - Added Stripe for card payments and created a wallet module, enhancing transaction convenience by 40\%.

    - Implemented real-time push notifications using Notifee, boosting user engagement for order updates by 25\%.

    - Incorporated Agora for in-app calling, elevating communication efficiency by 35\%.

  ],
)

  #regular-entry(
  [
    #strong[Ride2Duty]

  ],
  [
  ],
  main-column-second-row: [
    #summary[Corporate mobility platform streamlining employee commutes via automated scheduling.]

    - Architected a corporate commute platform using Expo, enabling automated scheduling and recurring ride management for seamless employee transportation.

    - Designed a resilient background location service that bypasses Android battery optimizations (Doze mode), ensuring 100\% real-time tracking reliability.

    - Created stutter-free map animations by implementing custom coordinate interpolation for driver markers, ensuring smooth real-time location updates.

    - Established critical permission handling flows to secure 'Always Allow' access, resolving background execution failures across diverse Android OEM devices.

  ],
)

== Education

#education-entry(
  [
    #strong[Sri Sukhmani Institute of Information & Technology], B.Tech in Computer Science

  ],
  [
    Nov 2019

  ],
  main-column-second-row: [
  ],
)
