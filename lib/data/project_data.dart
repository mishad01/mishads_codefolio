import 'package:flutter/cupertino.dart';
import 'package:mishads_codefolio/core/config/web_asset_path.dart';

import '../feature/projects/model/project_model.dart';

class ProjectData extends ChangeNotifier {
  final List<ProjectModel> _projectData = [
    ProjectModel(
      title: "EduBridge",
      description:
          "EduBridge is a free, open-source learning platform for Bangladeshi students. Built with Flutter, GetX, and Supabase, it helps students learn together and access quality education easily.",
      duration: "Jan 2025 - Present",
      organization: "Geeky Solutions",
      features: [
        "Free & Open Access – No paywalls",
        "Community-Driven Learning – Notes, Videos, MCQs",
        "Localized for Bangladesh – Bengali-first interface",
        "Dual-Mode Access – For learners and contributors",
        "Future Ready – AI tutors, gamification, job skills",
      ],
      techStack: ["Flutter", "GetX", "Supabase", "PostgreSQL"],
      skills: [
        "Flutter",
        "Supabase",
        "REST APIs",
        "Cross-platform Development",
      ],
      categories: ["Flutter", "Backend", "Open Source", "Education"],
      imageUrl: WebAssetPath.eduBridge,
    ),
    ProjectModel(
      title: "Social Media App (Ostad Pro Batch Project)",
      description:
          "Built using Flutter and Firebase following MVVM architecture with Agile development using Jira. Features login/signup, feed, profile, notifications, and image sharing.",
      duration: "Dec 2024 - Present",
      organization: "Ostad Pro",
      features: [
        "Authentication",
        "Home Feed",
        "Follow/Unfollow",
        "Notifications",
        "Profile Management",
        "Upload/View Images",
      ],
      techStack: ["Flutter", "Firebase", "MVVM", "Jira"],
      skills: ["Flutter", "Firebase", "REST APIs", "State Management"],
      categories: ["Flutter", "Firebase", "Social Media", "Agile"],
      imageUrl: WebAssetPath.social,
    ),
    ProjectModel(
      title: "CraftyBay E-commerce App",
      description:
          "CraftyBay is an e-commerce platform featuring GetX state management, payment integration, and dynamic UI powered by APIs.",
      duration: "Oct 2024",
      organization: "Crafty Bae",
      features: [
        "Product Browsing",
        "Wishlist, Cart, Checkout",
        "Payment Gateway Integration",
        "Create/Read Product Reviews",
      ],
      techStack: ["Flutter", "GetX", "REST APIs", "MVVM"],
      skills: [
        "Flutter",
        "REST APIs",
        "State Management",
        "Payment Gateway Integration",
      ],
      categories: ["Flutter", "E-commerce", "API Integration"],
      imageUrl: WebAssetPath.ecommerce,
    ),
    ProjectModel(
      title: "EasyMsg - Messaging App",
      description:
          "A secure group messaging app built with Flutter & Firebase. Features include real-time chat, encryption, and user authentication.",
      duration: "Sep 2024",
      organization: "CSE 412.2 Project",
      features: [
        "Login/Signup with Firebase",
        "Real-time Chat",
        "End-to-End Encryption",
        "Scalable UI with GetX",
      ],
      techStack: ["Flutter", "Firebase", "GetX"],
      skills: ["Firebase", "GetX", "REST APIs", "State Management"],
      categories: ["Flutter", "Firebase", "Security", "Messaging"],
      imageUrl: WebAssetPath.message,
    ),
    ProjectModel(
      title: "Coffee Shop App",
      description:
          "Track coffee orders in real-time using Google Maps. Features a smooth UI and efficient state management for tracking delivery progress.",
      duration: "Aug 2024",
      organization: "Independent",
      features: [
        "Real-time Order Tracking",
        "Live Location with Google Maps",
        "Smooth UI/UX",
        "Real-time GetX State Management",
      ],
      techStack: ["Flutter", "Google Maps", "Geolocator", "GetX"],
      skills: ["Flutter", "Location Tracking", "State Management"],
      categories: ["Flutter", "Maps", "Location", "UI/UX"],
      imageUrl: WebAssetPath.coffee,
    ),
    ProjectModel(
      title: "Task Manager",
      description:
          "A Flutter task management app with clean architecture, REST APIs, and multiple utilities like Shared Preferences and Image Picker.",
      duration: "Jul 2024",
      organization: "Independent",
      features: [
        "REST API Integration",
        "Task CRUD",
        "Clean Architecture",
        "Feature-Based Structure",
      ],
      techStack: ["Flutter", "GetX", "REST APIs", "Shared Preferences"],
      skills: ["Flutter", "Mobile Development", "GetX", "REST APIs"],
      categories: ["Flutter", "Productivity", "Architecture"],
      imageUrl: WebAssetPath.task,
    ),
    ProjectModel(
      title: "Firelightsync IoT - Home Automation",
      description:
          "Built using Flutter and Firebase to control IoT devices (bulbs, relays) remotely. Hardware included NodeMCU and 4-channel relay module.",
      duration: "Apr 2024",
      organization: "Independent",
      features: [
        "Remote Device Control",
        "Firebase Realtime Integration",
        "NodeMCU + Relay Hardware Setup",
      ],
      techStack: ["Flutter", "Firebase", "NodeMCU", "IoT Modules"],
      skills: [
        "IoT",
        "Flutter",
        "Firebase",
        "NodeMCU",
        "Hardware & Software Integration",
      ],
      categories: ["Flutter", "IoT", "Hardware", "Firebase"],
      imageUrl: WebAssetPath.iot,
    ),
    ProjectModel(
      title: "MealMate – Meal Recommendation App",
      description:
          "A simple and elegant app that suggests meals based on diet preferences. Users can explore meals, view ingredients, and save favorites.",
      duration: "Feb 2024",
      organization: "Independent",
      features: [
        "Meal Recommendation",
        "Diet Filtering",
        "Favorites List",
        "Clean & Interactive UI",
      ],
      techStack: ["Flutter", "Provider", "API Integration"],
      skills: ["Flutter", "API Handling", "State Management"],
      categories: ["Flutter", "Health", "API"],
      imageUrl: WebAssetPath.meal,
    ),
    ProjectModel(
      title: "Quizzy – MCQ Practice App",
      description:
          "Quizzy is an interactive quiz app tailored for students preparing for competitive exams in Bangladesh. It supports subject-wise MCQs, instant feedback, and leaderboard integration.",
      duration: "Mar 2024",
      organization: "Independent",
      features: [
        "Subject-wise MCQs",
        "Instant Feedback & Score Tracking",
        "Leaderboards for Competitions",
        "Dark/Light Mode Support",
      ],
      techStack: ["Flutter", "Firebase", "GetX"],
      skills: ["Flutter", "Quiz Logic", "Firestore", "State Management"],
      categories: ["Flutter", "Education", "Quiz", "Gamification"],
      imageUrl: WebAssetPath.quizz,
    ),
    ProjectModel(
      title: "Kotlin Note App – Jetpack Compose",
      description:
          "A native Android Note-taking app built using Jetpack Compose, Kotlin, ROOM, Hilt, and MVVM architecture. Features smooth async operations with Coroutines and elegant UI interactions.",
      duration: "May 2025",
      organization: "Independent",
      features: [
        "LazyColumn & Staggered Grid Views",
        "Expandable Cards with Custom Animations",
        "ROOM Database for Persistent Notes",
        "Hilt for Dependency Injection",
        "Navigation Component for Multi-screen Flow",
        "Kotlin Coroutines & Flow for Async Handling",
      ],
      techStack: [
        "Kotlin",
        "Jetpack Compose",
        "ROOM",
        "Hilt",
        "Navigation Component",
        "Coroutines",
        "Flow",
      ],
      skills: [
        "Native Android Development",
        "Dependency Injection",
        "State Management",
        "UI Design with Compose",
        "Async Programming",
      ],
      categories: ["Android", "Kotlin", "Jetpack Compose", "Productivity"],
      imageUrl: WebAssetPath.kotlinTask,
    ),
    ProjectModel(
      title: "Basic Movie App with Jetpack Compose & Navigation",
      description:
          "A modern movie listing app developed using Jetpack Compose and Navigation components. Displays dynamic content, poster previews, expandable cards, and a detail screen with image support.",
      duration: "June 2025",
      organization: "Self Project",
      features: [
        "LazyColumn Movie List with Clickable Rows",
        "Navigation Between Screens with Arguments",
        "Expandable Movie Info Cards",
        "Top App Bar with Back Navigation",
        "Image Loading with Coil",
      ],
      techStack: ["Kotlin", "Jetpack Compose", "Navigation Component", "Coil"],
      skills: [
        "Composable Design",
        "Android Navigation",
        "State Management",
        "Dynamic UI",
      ],
      categories: [
        "Android",
        "Kotlin",
        "Jetpack Compose",
        "UI Design",
        "Navigation",
      ],
      imageUrl: WebAssetPath.kMovie,
    ),
    ProjectModel(
      title: "Basic Jetpack Compose Tip Calculator App",
      description:
          "An interactive tip calculator built using Jetpack Compose that allows users to calculate tips, split bills, and adjust percentages with a smooth UI and state management.",
      duration: "June 2025",
      organization: "Self Project",
      features: [
        "Custom Input Fields with State Hoisting",
        "Tip Percentage Slider & Calculations",
        "Per-Person Cost Computation",
        "Reusable Composables and Round Icon Buttons",
      ],
      techStack: ["Kotlin", "Jetpack Compose"],
      skills: ["State Hoisting", "UI Composables", "Kotlin", "Declarative UI"],
      categories: [
        "Android",
        "Jetpack Compose",
        "Kotlin",
        "UI",
        "State Management",
      ],
      imageUrl: WebAssetPath.kTip,
    ),

    ProjectModel(
      title: "Bangla Currency Detection using CNN",
      description:
          "A deep learning project for detecting and classifying Bangladeshi currency notes using Convolutional Neural Networks (CNN). Trained on a custom dataset with TensorFlow/Keras.",
      duration: "Apr 2025",
      organization: "Thesis Work",
      features: [
        "CNN Architecture for Image Classification",
        "Custom Dataset of Taka Notes",
        "Model Training & Evaluation in Google Colab",
        "Performance Optimization & Visualization",
      ],
      techStack: ["Python", "TensorFlow", "Keras", "Colab"],
      skills: ["CNN", "Image Classification", "Model Training", "Colab"],
      categories: [
        "Machine Learning",
        "Deep Learning",
        "Computer Vision",
        "ml",
        "dl",
      ],
    ),
    ProjectModel(
      title: "Data Analysis & Visualization Series",
      description:
          "A comprehensive notebook-based exploration of data analysis and visualization, covering NumPy, Pandas, Matplotlib, and Seaborn in practical use cases.",
      duration: "Nov 2024 - Feb 2025",
      organization: "Academic Modules",
      features: [
        "Data Cleaning and Wrangling with Pandas",
        "Exploratory Data Analysis",
        "Visualizations using Matplotlib & Seaborn",
        "Real Dataset Case Studies",
      ],
      techStack: ["Python", "NumPy", "Pandas", "Matplotlib", "Seaborn"],
      skills: ["EDA", "Data Wrangling", "Plotting", "Notebook Practice"],
      categories: [
        "Machine Learning",
        "Deep Learning",
        "Visualization",
        "Python",
        "ml",
        "dl",
      ],
    ),
    ProjectModel(
      title:
          "ANN Practice Series (MLP, Churn Prediction, Handwriting, Admissions)",
      description:
          "Developed several ANN-based models for classification and regression using Keras. Projects included churn prediction, digit classification, and graduate admission prediction.",
      duration: "Dec 2024 - Feb 2025",
      organization: "Machine Learning Lab",
      features: [
        "Weight Initialization Tricks",
        "Binary & Multi-Class Classification",
        "Regression with ANN",
        "Performance Evaluation & Plotting",
      ],
      techStack: ["Python", "Keras", "TensorFlow"],
      skills: ["ANN", "Model Tuning", "Classification", "Regression"],
      categories: ["Machine Learning", "ANN", "Python", "ml", "dl"],
    ),
    ProjectModel(
      title: "Machine Learning Labs: Naive Bayes, K-Means, PCA",
      description:
          "Hands-on lab notebooks for implementing Naive Bayes, K-Means Clustering, and dimensionality reduction using PCA. Each lab features theory, implementation, and visual output.",
      duration: "Oct 2024 - Jan 2025",
      organization: "Academic Labs",
      features: [
        "Text Classification with Naive Bayes",
        "K-Means Clustering for Image/Data",
        "Dimensionality Reduction with PCA",
        "Well-documented Colab Notebooks",
      ],
      techStack: ["Python", "scikit-learn", "Colab"],
      skills: ["Naive Bayes", "Clustering", "PCA", "ML Algorithms"],
      categories: [
        "Machine Learning",
        "Clustering",
        "Classification",
        "ml",
        "dl",
      ],
    ),
    ProjectModel(
      title: "Low Light Image Enhancement using Deep Learning",
      description:
          "Experimented with CNN-based techniques to enhance visibility in low-light images. Implemented image preprocessing, histogram equalization, and learned filters.",
      duration: "Jun 2025",
      organization: "Independent Experiment",
      features: [
        "Low-light Dataset Preprocessing",
        "Image Enhancement using Filters",
        "Custom CNN Model",
        "Before-After Visual Comparisons",
      ],
      techStack: ["Python", "OpenCV", "Keras", "Colab"],
      skills: ["Image Processing", "Deep Learning", "CNN", "OpenCV"],
      categories: [
        "Computer Vision",
        "Image Enhancement",
        "Machine Learning",
        "Deep Learning",
        "ml",
        "dl",
      ],
    ),
  ];
  List<ProjectModel> get projectData => _projectData;
}
