import { library } from '@fortawesome/fontawesome-svg-core'
import { faCopyright } from '@fortawesome/free-regular-svg-icons'
import { faBitcoin, faEthereum, faMastodon, faTwitter } from '@fortawesome/free-brands-svg-icons'
import { faEnvelope } from '@fortawesome/free-solid-svg-icons'
import './dm-footer.tag'

library.add(faCopyright)
library.add(faBitcoin)
library.add(faEthereum)
library.add(faMastodon)
library.add(faTwitter)
library.add(faEnvelope)
riot.mount('dm-footer')