import JobApplication from './pages/job_application';

function App() {
  return (
    <Router>
      <Routes>
        <Route path="/job-application/:jobId" element={<JobApplication />} />
      </Routes>
    </Router>
  );
} 