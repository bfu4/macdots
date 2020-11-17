import styles from "./lib/styles.jsx";

const style = {
  background: "#e79bb9",
  cursor: "default",
  userSelect: "none",
  zIndex: "-1",
  width: "43%",
  height: "30px",
  position: "fixed",
  overflow: "hidden",
  top: "4px",
  right: "4px",
  left: "230px",
  borderRadius: "20px"
};

export const refreshFrequency = 1000000;

export const render = ({ output }) => {
  return <div style={style} />;
};

export default null;
