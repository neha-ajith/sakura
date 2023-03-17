import { useState } from "react";
import { Link } from "react-router-dom";

const NavBar = () => {
  const [navbar, setNavbar] = useState(false);

  return (
    <nav>
      <div className="navbar justify-between px-4 mx-auto md:items-center md:flex">
        <div>
          <div className="flex items-center justify-between py-3">
            <h1 className="text-5xl md:text-7xl font-banner text-banner">
              Sakura
            </h1>
            <div className="md:hidden">
              <button
                className="p-2 text-red-400 rounded-md outline-none focus:border-red-400 focus:border hover:text-black"
                onClick={() => setNavbar(!navbar)}
              >
                {navbar ? (
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    className="w-6 h-6"
                    viewBox="0 0 20 20"
                    fill="currentColor"
                  >
                    <path
                      fillRule="evenodd"
                      d="M4.293 4.293a1 1 0 011.414 0L10 8.586l4.293-4.293a1 1 0 111.414 1.414L11.414 10l4.293 4.293a1 1 0 01-1.414 1.414L10 11.414l-4.293 4.293a1 1 0 01-1.414-1.414L8.586 10 4.293 5.707a1 1 0 010-1.414z"
                      clipRule="evenodd"
                    />
                  </svg>
                ) : (
                  <svg
                    xmlns="http://www.w3.org/2000/svg"
                    className="w-6 h-6"
                    fill="none"
                    viewBox="0 0 24 24"
                    stroke="currentColor"
                    strokeWidth={2}
                  >
                    <path
                      strokeLinecap="round"
                      strokeLinejoin="round"
                      d="M4 6h16M4 12h16M4 18h16"
                    />
                  </svg>
                )}
              </button>
            </div>
          </div>
        </div>
        <div>
          <div
            className={`md:flex justify-self-center pb-3 mt-8 md:pb-0 md:mt-0 ${
              navbar ? "block" : "hidden"
            }`}
          >
            <ul className="md:flex text-right">
              <li>
                <Link to="/">Home</Link>
              </li>
              <li>
                <Link to="/about">About</Link>
              </li>
              <li>
                <a target="_blank" href="https://github.com/neha-ajith/sakura">Loved it? Star on Github</a>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </nav>
  );
};

export default NavBar;
