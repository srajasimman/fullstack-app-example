const getBackendUrl = () => {
  const isProd = process.env.NODE_ENV === 'production';
  if (isProd) {
    return process.env.REACT_APP_BACKEND_HOST || 'backend:5000';
  }
  return 'localhost:5000';
};

export const config = {
  backendUrl: `http://${getBackendUrl()}`
};
