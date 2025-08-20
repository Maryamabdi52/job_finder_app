import 'package:flutter/material.dart';
import '../widgets/custom_drawer.dart';
import '../widgets/job_card.dart';
import '../models/job.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _searchController = TextEditingController();
  List<Job> jobs = [
    Job(
      id: '1',
      title: 'Flutter Developer',
      company: 'Tech Corp',
      location: 'New York',
      salary: '\$80,000 - \$100,000',
      type: 'Full-time',
    ),
    Job(
      id: '2',
      title: 'Senior React Developer',
      company: 'Web Solutions',
      location: 'Remote',
      salary: '\$90,000 - \$120,000',
      type: 'Full-time',
    ),
    Job(
      id: '3',
      title: 'web Developer',
      company: 'Tech Corp',
      location: 'New York',
      salary: '\$50,000 - \$100,000',
      type: 'Full-time',
    ),
    Job(
      id: '4',
      title: 'social media manager',
      company: 'Tech Corp',
      location: 'New York',
      salary: '\$100,000 - \$100,000',
      type: 'Full-time',
    ),
    Job(
      id: '5',
      title: 'software engineer',
      company: 'Tech Corp',
      location: 'New York',
      salary: '\$90,000 - \$100,000',
      type: 'Full-time',
    ),
    Job(
      id: '6',
      title: 'Full stack developer',
      company: 'Tech Corp',
      location: 'New York',
      salary: '\$80,000 - \$100,000',
      type: 'Full-time',
    ),
    Job(
      id: '7',
      title: 'data analyst',
      company: 'Tech Corp',
      location: 'New York',
      salary: '\$80,000 - \$100,000',
      type: 'Full-time',
    ),
    Job(
      id: '8',
      title: 'data scientist',
      company: 'Tech Corp',
      location: 'New York',
      salary: '\$80,000 - \$100,000',
      type: 'Full-time',
    ),

    // Add more sample jobs here
  ];

  List<Job> filteredJobs = [];

  @override
  void initState() {
    super.initState();
    filteredJobs = jobs;
  }

  void _filterJobs(String query) {
    setState(() {
      filteredJobs = jobs
          .where((job) =>
              job.title.toLowerCase().contains(query.toLowerCase()) ||
              job.company.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text(
          'Job Finder',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      drawer: const CustomDrawer(),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.blue.shade800,
              Colors.blue.shade500,
              Colors.indigo.shade400,
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Find Your Dream Job',
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 1.2,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      'Explore thousands of job opportunities',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.blue.shade50,
                        letterSpacing: 0.5,
                      ),
                    ),
                    const SizedBox(height: 24),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 20,
                            offset: const Offset(0, 5),
                          ),
                        ],
                      ),
                      child: TextField(
                        controller: _searchController,
                        onChanged: _filterJobs,
                        decoration: InputDecoration(
                          hintText: 'Search jobs...',
                          hintStyle: TextStyle(color: Colors.grey.shade400),
                          prefixIcon:
                              Icon(Icons.search, color: Colors.blue.shade700),
                          border: InputBorder.none,
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 16),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: ListView.builder(
                    padding: const EdgeInsets.only(top: 8),
                    itemCount: filteredJobs.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 16),
                        child: JobCard(job: filteredJobs[index]),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
