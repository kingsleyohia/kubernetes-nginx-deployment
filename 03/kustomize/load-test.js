// load-test.js
import http from 'k6/http';
import { sleep } from 'k6';

export let options = {
    stages: [
        { duration: '2m', target: 100 }, // Ramp up to 100 users over 2 minutes
        { duration: '3m', target: 100 }, // Stay at 100 users for 3 minutes
        { duration: '2m', target: 0 },   // Scale down to 0 users over 2 minutes
    ]
};

export default function () {
    http.get('http://localhost:3000'); 
    sleep(1);
}
