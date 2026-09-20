// Import the rendercv function and all the refactored components
#import "@preview/rendercv:0.3.0": *

// Apply the rendercv template with custom configuration
#show: rendercv.with(
  name: "Mantu",
  title: "Mantu - CV",
  footer: context { [#emph[Mantu -- #str(here().page())\/#str(counter(page).final().first())]] },
  top-note: [ #emph[Last updated on Sept 20, 2026] ],
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
    month: 9,
    day: 20,
  ),
)


= Mantu

#connections(
  [#link("tel:+91-94645-42728", icon: false, if-underline: false, if-color: false)[094645 42728]],
  [#link("mailto:mantu.codes@gmail.com", icon: false, if-underline: false, if-color: false)[mantu.codes\@gmail.com]],
  [#link("https://www.linkedin.com/in/mantu-kumar-16439117b/", icon: false, if-underline: false, if-color: false)[Linkedin]],
  [#link("https://endless728.github.io/", icon: false, if-underline: false, if-color: false)[endless728.github.io]],
  [#link("https://github.com/EndLess728", icon: false, if-underline: false, if-color: false)[github.com\/EndLess728]],
)


== Profile Summary

Senior React Native developer with 8 years shipping production iOS and Android apps, specializing in scalable cross-platform architecture, Swift and Kotlin native modules, and app performance. Led and mentored teams of up to 12 engineers across the full release cycle, from design to App Store and Google Play delivery

== Skills

#strong[Languages:] JavaScript, TypeScript, Swift, Java, GraphQL

#strong[Mobile & Web:] React Native, Expo, Expo Router, Expo EAS, React Navigation, Turbo Modules, Native Modules (Swift\/Kotlin), React, Next.js

#strong[Data & State:] Apollo Client, GraphQL, REST APIs, Redux Toolkit,Redux Saga, Zustand, TanStack Query, offline caching, WebSockets

#strong[Testing & Tooling:] Jest, React Native Testing Library, Detox, Maestro, ESLint, Prettier, Husky, Git, GitHub Actions, CI\/CD, EAS Build\/Submit, App Store & Play Store releases, Firebase (Crashlytics, Analytics)

== Experience

#regular-entry(
  [
    #strong[Sr. React Native Developer & Team Lead], iTechnolabs Pvt. Ltd. -- Mohali, Punjab

  ],
  [
    Aug 2022 – present

  ],
  main-column-second-row: [
    - Led and mentored 12+ developers in Agile sprints, owning technical decision-making and delivery planning, and establishing TypeScript-first coding standards and code review practices that reduced production bugs across all team projects

    - Integrated Google's MediaPipe PoseLandmark model for real-time human pose estimation in a fitness app, achieving 95\% pose accuracy across 33 body landmarks

    - Architected a Turbo Module for human pose detection supporting React Native's New Architecture, and extended Expo compatibility via a custom config plugin

    - Integrated GraphQL APIs with Apollo Client, designing queries and mutations, tuning cache and fetch policies, and centralizing error handling while aligning schemas with backend teams

    - Established automated testing with Jest and React Native Testing Library for unit\/integration coverage, plus Detox and Maestro end-to-end suites wired into CI to block regressions before release

    - Defined a scalable app architecture of reusable component libraries, typed navigation flows, and modular state\/networking layers, shipped as a production-ready boilerplate (Expo SDK 57, TypeScript, Expo Router, Zustand, TanStack Query, ESLint, Husky) that cut new-project setup by 30\%

    - Built a high-performance POS system using React Native and Next.js with real-time inventory sync, barcode scanning, and cross-platform support

    - Accelerated app startup by 20\% via React Native's bridgeless architecture, and profiled rendering and memory to remove wasted re-renders and leaks for smoother scrolling on low-end devices

    - Owned release management for App Store and Google Play, automating iOS\/Android builds and store submissions through Expo EAS CI\/CD pipelines

    - Troubleshot complex production issues end to end, turning Firebase Crashlytics reports into targeted hotfix releases and fixing Google Maps integration bugs that cut client API costs by 40\%

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
    - Led a team of 7 developers, implementing React Native coding standards and PR review workflows that improved code consistency and reduced merge conflicts

    - Standardized client-side data handling with Redux Toolkit and normalized API caching, replacing ad-hoc state with predictable, testable patterns reused across apps

    - Created an Android native module enabling background tasks with 99.9\% reliability

    - Built a food delivery app for 1,000+ users with real-time tracking and payments via WebSockets and Maps

    - Closed subscription validation loopholes with server-side receipt verification, reaching 100\% license compliance

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
    - Built 4 mobile apps across event, education, social, and crypto sectors, serving 1,000+ users on iOS and React Native

    - Implemented HMAC-based API authentication across all apps, achieving 100\% security audit compliance

    - Reduced development time by 40\% by migrating native iOS codebases to React Native

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
    #summary[Expo config plugin to detect installed apps on Android and iOS (325.7K+ downloads)]

    - Created an Expo module enabling developers to query device-installed apps for feature gating

    - Implemented automatic native code injection via Expo config plugin, supporting SDK 51+ with zero manual setup

  ],
)

  #regular-entry(
  [
    #strong[#link("https://www.npmjs.com/package/react-native-mediapipe-posedetection")[react-native-mediapipe-posedetection]]

  ],
  [
  ],
  main-column-second-row: [
    #summary[Real-time pose detection for React Native using MediaPipe BlazePose with GPU acceleration (20.3K+ downloads)]

    - Built a high-performance native module supporting 33 pose landmarks with \~15 FPS real-time detection

    - Implemented GPU-accelerated inference for iOS and Android using Vision Camera frame processing

  ],
)

== Projects

  #regular-entry(
  [
    #strong[#link("https://elevynofficialapp.com/")[Elevyn - AI Fitness]]

  ],
  [
  ],
  main-column-second-row: [
    #summary[AI-powered fitness app with personalized workouts, meal planning, and calorie tracking]

    - Integrated MediaPipe PoseLandmarker for on-device pose estimation, enabling real-time workout form analysis across 33 landmarks

    - Built an AI-driven engine generating personalized workout and meal plans, increasing user engagement by 35\%

    - Implemented camera-based meal scanning to auto-detect macros and calories, improving tracking consistency by 40\%

  ],
)

  #regular-entry(
  [
    #strong[#link("https://focusbear.io")[Focusbear - ADHD]]

  ],
  [
  ],
  main-column-second-row: [
    #summary[Productivity app helping users block distractions and build healthy habits]

    - Built native modules for Android (distraction-blocking overlay) and iOS (Screen Time API), reducing screen-time on blocked apps by 50\%

    - Developed a scheduled app-blocking feature using AlarmManager and BGTaskScheduler, enabling automated distraction-free intervals

    - Deployed a structured log file system to capture errors and crashes, reducing average bug resolution time by 50\%

    - Implemented offline API caching with automatic sync, maintaining app functionality during network outages

  ],
)

  #regular-entry(
  [
    #strong[#link("https://www.swivics.com")[Swivics]]

  ],
  [
  ],
  main-column-second-row: [
    #summary[Corporate mobility platform streamlining employee commutes via automated scheduling]

    - Architected the platform in Expo with automated scheduling and recurring ride management

    - Designed a resilient background location service that bypasses Android Doze mode and OEM battery optimizations, achieving 100\% tracking uptime

    - Created stutter-free map animations via custom coordinate interpolation for driver markers, and resolved 'Always Allow' permission failures across Samsung, Xiaomi, and Oppo devices

  ],
)

  #regular-entry(
  [
    #strong[#link("https://apps.apple.com/in/app/mergata/id6753675571")[Mergata]]

  ],
  [
  ],
  main-column-second-row: [
    #summary[Community app for the Albanian diaspora covering border wait times, rideshares, jobs, and housing]

    - Built geofencing in Expo to detect proximity to border crossings and prompt travelers for real-time wait-time reports

    - Integrated interactive maps visualizing border checkpoints, live queue lengths, and crowdsourced crossing-time estimates

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
