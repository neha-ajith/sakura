import { Link } from "react-router-dom";
import data from '../data/db.json';

const BlogCard = () => {
  const blogs = data.blogs;
  return (
    <div className="blog-wrapper">
      <center>
        <h2 className="md:text-5xl text-3xl font-semibold mt-10 mb-4 text-red-400">
          My Blogs
        </h2>
      </center>
      {blogs.map((blog) => (
        <div className="blog-card p-5 mx-10 hover:shadow-md" key={blog.id}>
          <h2 className="md:text-4xl text-3xl font-bold">{blog.title}</h2>
          <div className="md:flex justify-between">
            <p className="text-sm mb-2">{blog.date}</p>
            <Link to={`/${blog.id}`}>Read More</Link>
          </div>
        </div>
      ))}
    </div>
  );
};

export default BlogCard;
