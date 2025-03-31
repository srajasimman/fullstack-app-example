const getBackendUrl = () => {
  const env = process.env.APP_ENV;
  if (env === 'production') {
    return process.env.APP_BACKEND_HOST || 'backend:5000';
  }
  return 'localhost:5000';
};

export const config = {
  backendUrl: `http://${getBackendUrl()}`
};
