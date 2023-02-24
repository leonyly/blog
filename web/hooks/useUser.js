import {createContext,useState,useCallback,useEffect,useContext } from 'react'

export const UserService = createContext(null);
 
export default () => useContext(UserService)

export const useRootUserService = () => {
  const [user, setUser] = useState({});
  const [isLoginShow, setIsLoginShow] = useState(false);

	useEffect(() => {
    const user = JSON.parse( localStorage.getItem("user"));
    if (user) {
      setUser(user);
    }
  }, []);

  const login = useCallback((user) => {
    setUser(user);
		localStorage.setItem('user', JSON.stringify(user))
  }, []);

	const logout = useCallback(() => {
    setUser({});
		localStorage.setItem('user', JSON.stringify({}))
  }, []);

	const showLogin = useCallback(() => {
    setIsLoginShow(true);
  }, []);

	const hideLogin = useCallback(() => {
    setIsLoginShow(false);
  }, []);

 
  return {
    user,
    login,
		logout,
		isLoginShow,
		showLogin,
		hideLogin
  };
};