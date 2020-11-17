import styles from "./lib/styles.jsx";

const style = {
  background: styles.colors.bg,
  cursor: "default",
  userSelect: "none",
  zIndex: "-1",
  width: "40%",
  height: "30px",
  position: "fixed",
  overflow: "hidden",
  top: "4px",
  right: "4px",
  left: "860px",
  borderRadius: "20px"
};

export const refreshFrequency = 1000000;

export const render = ({ output }) => {
  return <div style={style} />;
};

export default null;
