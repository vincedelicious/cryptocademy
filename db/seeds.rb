Lesson.destroy_all

lesson1 = Lesson.create!(title: "Hello World!", points: 300, description: "Welcome to the world of Web3! A quick tutorial & some starting keywords to learn to familiarise yourself!")
lesson2 = Lesson.create(title: "Blockchain", points: 200, description: "Tokens, cryptocurrency, NFTs. All things that live on the Blockchain, and the Blockchain is what makes Web3 possible.")
lesson3 = Lesson.create(title: "Tokens", points: 150, description: "BTC, ETH, SOL - You may have heard of some of these, but what are tokens exactly, and why do people want to spend money on them?")
lesson4 = Lesson.create(title: "Wallets", points: 250, description: "How do you store your digital assets? How do other people send you digital stuff? Security concerns and all of that will be answered in this lesson about Wallets!")
lesson5 = Lesson.create(title: "Web3 - Infinite Possibilities", points: 300, description: "Tying it all together is the idea of Web3, and the possibilities")

card1 = Card.create!(header: "A Quick Tutorial", content: "
  <div>
  <p><strong>Welcome to Cryptocademy!</strong></p>
  <p>Our lessons take the form of cards with <strong>keywords</strong>, <strong>definitions</strong> &amp; <strong>examples</strong>, followed by a quiz.</p>
  <p>The idea of each lesson is to introduce you to the main concept &amp; then dive into the topic!</p>
  <p>We&rsquo;ll go into more detail for each concept; so don&rsquo;t worry too much about memorising every word 🚀</p>
  </div>
  <div class='d-flex justify-content-center'>
  <img alt='Welcome to Web3!' src='https://miro.medium.com/max/720/1*jvT5REAJKM3YJiApuRvgXg.gif' />
  </div>",
  card_number: "1", lesson: lesson1)
card2 = Card.create!(header: "Blockchain", content: "
  <div>
  <p>Imagine a <strong>ledger</strong> or logbook that keeps a <strong>record of transactions.</strong></p>
  <p>Now imagine if that ledger was on the internet and being looked at by billions of people &amp; computers.</p>
  <p>Everyone looking at this ledger has a copy of it, and every time there is a new transaction everyone checks to that everyone else got that same transaction and no one is writing down fake stuff.</p>
  </div>
  <div class='d-flex justify-content-center'>
  <img alt='Enhance!' src='http://www.reactiongifs.com/wp-content/uploads/2013/11/Spy-Kids-better-look-closer.gif' />
  </div>",
  card_number: "2", lesson: lesson1)
card3 = Card.create!(header: "Blockchain", content: "
  <div>
  <p>That is essentially a <strong>blockchain</strong>!</p>
  <p>It&rsquo;s a <em>shared &amp; distributed record</em> (<strong>chain</strong>) of <em>transactions</em> (<strong>blocks</strong>) that are being monitored &amp; agreed upon by so many computers that it is essentially impossible to hack or defraud.</p>
  <p>Blockchain is the technology that makes Web3 possible and enables verifiable digital ownership!</p>
  </div>
  <div class='d-flex justify-content-center'>
  <img alt='Blocks' src='https://feature.undp.org/beyond-bitcoin/assets/hxFnAcINBZ/block2.gif' />
  </div>",
  card_number: "3", lesson: lesson1)
card4 = Card.create!(header: "Different 'versions' of the Web", content: "
  <div>
  <p>Web1 was roughly the first version of the internet where you could access pages that displayed information.</p>
  <p>Think... an encyclopaedia or a novel. You can&#39;t add pages or text to it, it&#39;s just put up there by someone else for you to read.</p>
  <p>So: Web1: Read 📖</p>
  </div>
  <div class='d-flex justify-content-center'>
  <img alt='Reading!' src='https://c.tenor.com/akBy6qWGjs4AAAAj/peach-cat-mochi-peach-cat.gif'/>
  </div>",
  card_number: "4", lesson: lesson1)
card5 = Card.create!(header: "Web2 - User Content", content: "
  <div>
  <p>Web2 was when users <strong>could upload</strong> info like videos, blogs &amp; posts to sites.</p>
  <p>YouTube, Facebook, Instagram, Twitter, you may have heard of these sites!</p>
  <p>This is where most of the web today is</p>
  <p>So: Web2: Read-Write 📖 🖊️</p>
  <div class='d-flex justify-content-center'>
  <img alt='' src='https://c.tenor.com/pOv7SnZx7xAAAAAC/upload-cat.gif' />
  </div>",
  card_number: "5", lesson: lesson1)
card6 = Card.create!(header: "Web3 - User Ownership", content: "
  <div>
  <p>The thing is, how do you &#39;own&#39; something that is digital and you can just copy, paste and duplicate?</p>
  <p>This is the next step: <strong>verifiable digital ownership</strong></p>
  <p>Web3 is what we think this embodies, existing on blockchains & distributed + decentralised.</p>
  <p>These &lsquo;versions&rsquo; don&rsquo;t have updates to run or destroy old versions of sites, it&rsquo;s just a kind of lens to view the internet and what sort of things its users are getting up to.</p>
  <p>So: Web3: Read-Write-Own 📖 🖊️ 🔑</p>
  </div>
  <div class='d-flex justify-content-center'>
  <img alt='' src='https://c.tenor.com/LpsQcwWn6FcAAAAC/kingsmen-kingsman.gif' />
  </div>",
  card_number: "6", lesson: lesson1)
card7 = Card.create!(header: "Tokens", content: "
  <div>
  <p>Coins in your pocket are things you can exchange for snacks and coffee, but you can&rsquo;t eat them!</p>
  <p>Now that you know about the ability to own digital stuff, think of Tokens as <strong>coins that live on the blockchain</strong> and <strong>can be exchanged</strong> for stuff.</p>
  <p>The value of a Token is determined by many things, but it&rsquo;s important to note that <em>not all Tokens are the same</em>, and <em>anyone</em> can make a Token!</p>
  <p>Common Tokens you may have heard of could be <strong>Bitcoin</strong>, <strong>Ether</strong> or <strong>DogeCoin</strong>.</p>
  </div>
  <div class='d-flex justify-content-center'>
  <img alt='' src='https://c.tenor.com/JYQs3LWRKgcAAAAC/btc-bitcoin.gif' />
  </div>",
  card_number: "7", lesson: lesson1)
card8 = Card.create!(header: "Wallets", content: "
  <div>
  <p>A Wallet on Web3 is a thing that <strong>stores information about what you own on the blockchain.</strong></p>
  <p>It is made up of two things: An &lsquo;<strong>address</strong>&rsquo; and a &lsquo;<strong>private key</strong>&rsquo;.</p>
  <p>The <strong>address is public information</strong>, but your <strong>private key must never be shared with anyone!</strong></p>
  <h2><strong>Anyone who has your private key can access the stuff in your wallet!</strong></h2>
  <p>Exactly like if their hand could reach right into your physical wallet and take your stuff!</p>
  </div>
  <div class='d-flex justify-content-center'>
  <img alt='' src='https://pbs.twimg.com/media/FcDV5QzaUAM2MLa?format=jpg&name=large' />
  </div>",
  card_number: "8", lesson: lesson1)
card9 = Card.create!(header: "That's the basics!", content: "
  <div>
  <p>Well done! You&#39;ve taken the first step into this new world.</p>
  <p>The words you&#39;ve just read about will be explained in further detail in the rest of the course, but you&#39;re truly in it now.</p>
  <p>Goodluck with the quiz, and <strong>welcome to Web3! </strong>👋</p>
  </div>
  <div class='d-flex justify-content-center'>
  <img alt='' src='https://c.tenor.com/yCFHzEvKa9MAAAAi/hello.gif' />
  </div",
  card_number: "9", lesson: lesson1)

# Quiz Area

q1 = Question.create(content: "A blockchain is like a ____.", lesson: lesson1)
a1 = Answer.create(content: "receipt", correct: false, option: 1, question: q1)
a1 = Answer.create(content: "Lego set", correct: false, option: 2, question: q1)
a1 = Answer.create(content: "ledger", correct: true, option: 3, question: q1)
a1 = Answer.create(content: "fence", correct: false, option: 4, question: q1)

q2 = Question.create(content: "What are Tokens used for?", lesson: lesson1)
a2 = Answer.create(content: "Swapping for prizes!", correct: false, option: 1, question: q2)
a2 = Answer.create(content: "Exchanged for stuff", correct: true, option: 2, question: q2)
a2 = Answer.create(content: "Logging in", correct: false, option: 3, question: q2)
a2 = Answer.create(content: "Testing Wallets", correct: false, option: 4, question: q2)

q3 = Question.create(content: "What is okay to share about your Wallet?", lesson: lesson1)
a2 = Answer.create(content: "Address", correct: true, option: 1, question: q3)
a2 = Answer.create(content: "Private Keys", correct: false, option: 2, question: q3)
a2 = Answer.create(content: "Passphrase", correct: false, option: 3, question: q3)
a2 = Answer.create(content: "All of the above", correct: false, option: 4, question: q3)

q4 = Question.create(content: "Which of these resembles Web3?", lesson: lesson1)
a2 = Answer.create(content: "A network of static pages that show information", correct: false, option: 1, question: q4)
a2 = Answer.create(content: "A network where users own digital assets", correct: true, option: 2, question: q4)
a2 = Answer.create(content: "A network where users can upload information to others", correct: false, option: 3, question: q4)
a2 = Answer.create(content: "A network used by sensitive, centralised organisations", correct: false, option: 4, question: q4)

q5 = Question.create(content: "A wallet is made of...", lesson: lesson1)
a2 = Answer.create(content: "Tokens, NFTs & Cryptocurrencies", correct: false, option: 1, question: q5)
a2 = Answer.create(content: "Address, Tokens, Keys", correct: false, option: 2, question: q5)
a2 = Answer.create(content: "NFTs, Keys, Tokens", correct: false, option: 3, question: q5)
a2 = Answer.create(content: "Keys, Address, Passphrase", correct: true, option: 4, question: q5)
