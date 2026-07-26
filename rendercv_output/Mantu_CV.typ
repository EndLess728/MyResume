// Import the rendercv function and all the refactored components
#import "@preview/rendercv:0.3.0": *

// Apply the rendercv template with custom configuration
#show: rendercv.with(
  name: "Mantu",
  title: "Mantu - CV",
  footer: context { [#emph[Mantu -- #str(here().page())\/#str(counter(page).final().first())]] },
  top-note: [ #emph[Last updated on July 26, 2026] ],
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
    month: 7,
    day: 26,
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

Senior React Native Developer with 7+ years of experience building high-performance mobile apps across iOS and Android, specializing in native modules, real-time ML integration, and cross-platform architecture

== Skills

#strong[Languages:] JavaScript, TypeScript, Swift, Java

#strong[Technologies:] React Native, Expo, Expo Router, Expo EAS, React, Next.js, Redux, Zustand, React Query, Jest, Firebase, REST API, Git, CI\/CD

== Experience

#regular-entry(
  [
    #strong[Sr. React Native Developer & Team Lead], iTechnolabs Pvt. Ltd. -- Mohali, Punjab

  ],
  [
    Aug 2022 – present

  ],
  main-column-second-row: [
    - Led and mentored 12+ developers in Agile sprints, establishing TypeScript-first coding standards and code review practices that reduced production bugs across all team projects

    - Integrated Google's MediaPipe PoseLandmark model for real-time human pose estimation in a fitness app, achieving 95\% pose accuracy across 33 body landmarks

    - Architected a Turbo Module for human pose detection supporting React Native's New Architecture, and extended Expo compatibility via a custom config plugin

    - Created a production-ready React Native boilerplate (Expo SDK 57) featuring TypeScript, Expo Router, Zustand, TanStack Query, i18n, ESLint, Prettier, and Husky pre-commit hooks

    - Built a high-performance POS system using React Native and Next.js with real-time inventory sync, barcode scanning, and cross-platform support

    - Accelerated app startup by 20\% by adopting React Native's bridgeless architecture and cut project setup time by 30\% via Expo migration

    - Automated iOS and Android builds and store submissions using Expo EAS, streamlining CI\/CD release pipelines for App Store and Google Play

    - Resolved critical Google Maps integration bugs, cutting client API costs by 40\% and preventing billing overcharges

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

    - Created an Android native module enabling background tasks with 99.9\% reliability

    - Built a food delivery app serving 1,000+ users, implementing real-time tracking and payments via WebSockets and Maps

    - Resolved subscription validation loopholes by implementing server-side receipt verification, achieving 100\% compliance with single-user license policies

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

    - Implemented HMAC-based API authentication across all apps, achieving 100\% security audit compliance and eliminating unauthorized access

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
    #summary[Expo config plugin to detect installed apps on Android and iOS (265.3K+ downloads)]

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
    #summary[Real-time pose detection for React Native using MediaPipe BlazePose with GPU acceleration (9.6K+ downloads)]

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

    - Integrated Google's MediaPipe PoseLandmarker for on-device human pose estimation, enabling real-time workout form analysis across 33 body landmarks

    - Built an AI-driven engine generating personalized workout and meal plans based on user body metrics, increasing user engagement by 35\%

    - Implemented camera-based meal scanning to auto-detect macros and calories, streamlining food logging and improving daily tracking consistency by 40\%

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

    - Architected a corporate mobility platform using Expo, supporting automated scheduling and recurring ride management for employee transportation

    - Designed a resilient background location service that bypasses Android Doze mode and OEM battery optimizations, achieving 100\% tracking uptime

    - Created stutter-free map animations using custom coordinate interpolation for driver markers, delivering smooth real-time location updates

    - Implemented permission handling flows to secure 'Always Allow' location access, resolving background execution failures across Samsung, Xiaomi, and Oppo devices

  ],
)

  #regular-entry(
  [
    #strong[#link("https://jobr.com")[JOBR - POS]]

  ],
  [
  ],
  main-column-second-row: [
    #summary[Point of Sale system for service management]

    - Built a custom calendar module for service scheduling with drag-and-drop support

    - Integrated Apple's Tap to Pay SDK for contactless NFC transactions, eliminating the need for external card readers

    - Created a digital wallet module for JOBR coins to facilitate in-app transactions

    - Built a companion web app using Next.js with shared business logic, enabling consistent cross-platform functionality

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
