
const INTERNAL_IP = window.location.host.split(":")[0]  // We use the internal ip to have fun at home :)
const API_PATH = 'ws://' + INTERNAL_IP + ':8000/ws/chat';

export default {
  API_PATH
};