import React from "react";
import style from '../../styles/footer.module.scss'
export default function MyFooter() {
  return (
    <div className={style.myfooter}>
      <div className="footer">
        <div className="footer-floor">
          <p className="mr">
            <a
              href="https://beian.miit.gov.cn/"
              className="text-textcolor"
              target="_blank"
            >
              粤ICP备19089604号-1
            </a>
          </p>
          <p>
            Copyright（c）·
            <a
              href="https://github.com/zxb1655"
              className="text-textcolor"
              target="_blank"
            >
              zxbLeon
            </a>
            ·版权所有
          </p>
        </div>
      </div>
    </div>
  );
}
