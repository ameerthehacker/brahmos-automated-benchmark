const fs = require('fs');
const brahmosPackagePath = '~/benchmarking-tool/frameworks/keyed/brahmos/package.json';
const package = JSON.parse(fs.readFileSync(brahmosPackagePath))
// update to local dependency
package.dependencies.brahmos = 'file:./lib';

fs.writeFileSync(brahmosPackagePath, JSON.stringify(package));

console.log('updated `Brahmos` to be a local dependency');
