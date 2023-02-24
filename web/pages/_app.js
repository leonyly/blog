import '../styles/reset.scss'
import 'antd/dist/antd.css'
import '../styles/globals.scss'
import '../styles/styles.scss'
import "../assets/iconfont/iconfont.css";
import '../styles/_highlight.scss'
import {UserService, useRootUserService} from '/hooks/useUser'

function MyApp({ Component, pageProps }) {
  return (
		<UserService.Provider value={useRootUserService()}>
			<Component {...pageProps} />
		</UserService.Provider>
	)
}

export default MyApp
