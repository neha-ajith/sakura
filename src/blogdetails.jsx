import { useParams } from "react-router-dom";
import data from "../data/db.json";

const BlogDetails = () => {
  const { id } = useParams();
  const blogId = parseInt(id);
  const blogs = data.blogs.filter((item) => item.id === blogId);
  const blog = blogs[0];
  const arr = blog.body.split("\n");
  const result = arr.map((element) => {
    return [element, <br/>];
  }).flat();

  return (
    <div className="blog-detail p-8">
      <h1 className="text-4xl md:text-5xl font-bold mb-3 text-red-400">{blog.title}</h1>
        <p className=" text-sm mb-2">{blog.date}</p>
        <p className="text-lg md:text-xl font-semibold">{result}</p>
    </div>
  );
};

export default BlogDetails;
