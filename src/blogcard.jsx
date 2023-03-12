import { data } from "../db/data";

const BlogCard = () => {
  return (
    <div className="blog-wrapper">
      <center>
        <h2 className="md:text-5xl text-3xl font-semibold mt-10 mb-4 text-red-400">
          My Blogs
        </h2>
      </center>
      {data.map((blog) => (
        <div className="blog-card p-5 mx-10 hover:shadow-md" key={blog.id}>
          <h2 className="md:text-4xl text-3xl font-bold">{blog.title}</h2>
          <div className="md:flex justify-between">
            <p className="text-sm mb-2">{blog.date}</p>
            <a href="/">Read More</a>
          </div>
        </div>
      ))}
    </div>
  );
};

export default BlogCard;
