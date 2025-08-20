import { useNavigate } from 'react-router-dom';

function JobDetails() {
  const navigate = useNavigate();

  const handleApplyClick = () => {
    navigate(`/job-application/${jobId}`);
  };

  return (
    <button 
      className="bg-blue-500 text-white px-4 py-2 rounded hover:bg-blue-600"
      onClick={handleApplyClick}
    >
      Apply Now
    </button>
  );
} 