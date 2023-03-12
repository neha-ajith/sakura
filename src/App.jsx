import Navbar from "./navbar";
import BlogCard from "./blogcard";
import BlogDetails from "./blogdetails";
import { BrowserRouter as Router, Routes, Route } from "react-router-dom";

function App() {
  return (
    <div
      className={`App bg-[url('./assets/bg.png')] bg-cover font-body p-5 w-full h-screen overflow-auto`}
    >
      <Navbar />
      <div className="content">
        <Router>
          <Routes>
            <Route path="/" element={<BlogCard />} />
            <Route path="/:id" element={<BlogDetails />} />
          </Routes>
        </Router>
      </div>
    </div>
  );
}

export default App;
