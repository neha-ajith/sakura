import Navbar from "./navbar";
import BlogCard from "./blogcard";
import BlogDetails from "./blogdetails";
import About from "./about";
import { Route, Switch } from "react-router-dom";

function App() {
  return (
    <div
      className="App bg-[url('/assets/bg.png')] bg-cover font-body p-5 w-full h-screen overflow-auto"
    >
      <Navbar />
      <div className="content">
        <Switch>
          <Route exact path="/" component={BlogCard} />
          <Route path="/about" component={About} />
          <Route path="/:id" component={BlogDetails} />
        </Switch>
      </div>
    </div>
  );
}

export default App;
