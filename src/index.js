import { library } from '@fortawesome/fontawesome-svg-core'
import { faCopyright } from '@fortawesome/free-regular-svg-icons'
import { faBitcoin, faEthereum, faMastodon, faTwitter } from '@fortawesome/free-brands-svg-icons'
const tags = require('./dm-footer.tag')

library.add(faCopyright)
library.add(faBitcoin)
library.add(faEthereum)
library.add(faMastodon)
library.add(faTwitter)
riot.mount('dm-footer')