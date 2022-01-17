---
bibliography: references.bib
---

# Lecture 1: Financial interconnections in the early modern period

Much of the material we will be focusing on in the second semester relates to the functioning of the international capital market viewing finance as a system that develops globally. This is of course something you will have already encountered --- say in the movement of the price level as dictated by silver discoveries in the Americas --- but as we move out of the 19th and into the 20th centuries the speed of movements becomes quicker, the prices of financial instruments come to be more closely integrated, and therefore insofar as information in one location can be incorporated into the price there it can be more rapidly transmitted to prices everywhere.

From a certain point of view this is simply the story of the period of intensified economic globalization that is characteristic of the 19th century (see e.g. @orourke2002 ) with the coming of the railway, the steamship and the telegraph, but narrated through the lens of financial markets.

This 'interconnected' aspect of financial markets is one of the things that is both most feared and celebrated in contemporary financial market commentary. The aftermath of the Great Recession saw a wealth of commentary on 'contagion' and 'international propagation' and other concerns about how financial risk can spread through financial networks (see for instance the book by the now-head of the Bank for International Settlements @shin2019 ).

This lecture is a form of stage-setting: we are laying the groundwork for understanding the rapid international transmission of shocks by beginning in the early modern period and starting on the history of how these arbitrage operations were built and operated in the era before the telegraph.

## Some historical background

Start with the development of financial activity in the early modern period and the links between England and the Netherlands \[@dickson2017\] .

### What was traded

Worth setting out in a little detail the key financial innovations of the period including

-   The South Sea Company (SSC)

-   The East India Company (EIC)

-   The Bank of England Shares (BoE)

-   Several UK govt annuities that figure in the study of @koudijs2016

### How it was traded

Also probably worth setting out what things we know about the level of financial sophistication and complexity that was being used by market participants. There is some of this at the start of @neal1987 and also @neal2002 including reflecting on the use of options and futures. There is a useful article by @murphy2009 on this question looking at British data.

### How we know about

Talk a little about the *Course of the Exchange* and other 19th century information products. This is covered in Chapter 2 of @neal2002 and also an article by @mccusker2005 on the business press in the early modern period.

## Studying integration

Here we get into Neal's article [@neal1987] on market integration and the set of tests he runs. Worth being explicit about the econometric framework and what it implies.

Neal starts out testing for a random walk using an ARMA representation \[@neal1987, p. 103\]. We'll come back in a second to what an ARMA is and a random walk. The point to grasp at the start is simply that he is testing whether past prices of securities quoted on London or Amsterdam can predict future prices. Why does this matter?

What does it actually mean if prices are a random walk/hard to forecast? This speaks to some fundamental questions in financial economics. These debates are well-surveyed in the opening chapter of @shleifer2000 which discusses weak and strong versions of the Efficient Markets Hypothesis (EMH) and what they entail. This sometimes gets mixed up with the question of the rationality/irrationality of investors. Certainly, if all investors are hyper-rational automatons that can use present information to form accurate expectations of the future returns of a security, than current security prices will reflect that expectation given arbitrage operations. Formally, what this means is that if a market is 'efficient' that the future value of a security should not be forecast-able using past values: $E[Y_{t+1} - Y_t]=0$. Usually we might allow a fudge-factor here for various transaction costs that put limits on arbitrage as well as predictability that arises through market-microstructure effects\[\@hasbrouck2007; @ohara1998\].

But if investors are not rational (or not all of them) it does not follow necessarily that prices will *not* reflect have this property. For instance, if only some traders are 'rational' in their approach to trading, but the 'irrational' traders are uncorrelated than these irrationalities will cancel and the expectation will hold. In addition, an even weaker case for the EMH comes from selection effects: if 'rational' traders buy securities when they are priced below fundamental value and sell them when they are priced above, they must be buying them from and selling them to the irrational traders, who are therefore buying high and selling low. This means that the wealth of irrational traders must be falling as irrationality is costly, and since prices aggregate information weighted by wealth in the fullness of time the irrational traders should constitute a smaller and smaller share of the market and thus exert a small influence on prices.

The EMH comes in different flavors that are sometimes labelled from 'weak' to 'strong' to 'very strong' and reflect the degree to which it is believed that traders can profit from trading securities. Strong and very strong versions of the EMH are arguably paradoxical as if you cannot profit off trading its hard to see how information gets into prices in the first place [@grossman1980]. The weak form of the EMH posits that you cannot make money off of a knowledge of past prices and returns -- which are sometimes referred to as 'stale information'. It is important to be careful here because the meaning of 'making money' is ambiguous. As Shleifer explains:

> ...'making money' in finance means making a superior return after an adjustment for risk. Showing that a particular strategy based on exploiting stale information on average earns a positive cash flow over some period of time is not, therefore, by itself evidence of market inefficiency. To earn this profit, an investor may have to bear risk and his profit may just be a fair market compensation for risk-bearing \[@shleifer2000, p. 5\].

Shleifer refers to the recognition that tests of market efficiency depend on both a model of risk and expected returns as Fama's "deepest insight" \[@shleifer2000, p. 6\], and it has certainty complicated the thorny issue of resolving questions around market efficiency. But even taking these concerns into account, it is quite fair to say of modern stock markets that prices are *very hard to predict* and this is a consequence of the rapidity with which information about an instrument's value are incorporated into its price without necessarily conceding that the price is therefore in some broader sense 'correct' (say an accurate forecast of future discounted cash flow).

@neal1987 starts with the question of whether BoE and EIC share prices in London and Amsterdam are forecastable using an ARMA model. ARMA here is the standard acronym for an Auto-Regressive Moving Average model. This is a statistical technique that aims to model a time series (a set of measurements of a variable at fixed points in time) as a linear function of its past values. If we call the variable $y$ and index time periods $\{…, t-1, t, t+1, …\}$ then an ARMA(p,q) is written

$$
y_t = c + \epsilon_{t} + \sum_{i=1}^p \phi_i y_{t-i} + \sum_{i=1}^q \theta_i \epsilon_{t-i}.
$$

In words, the time series is being expressed as the sum of its own past values (the $\phi_i y_{t-i}$ terms) and its past deviations from the deterministic components of the model (the \$\\theta_i \epsilon\_{t-i}\$ terms). These 'deviations' are often called 'shocks' in the literature. To fix intuitions, look at an ARMA(1,0) where we imagine that $y_t$ is the percent return on some security (in finance it is typical to work with returns or log-returns):

$$
y_t = c + \phi y_{t-1} + \epsilon_t.
$$

If the coefficient $\phi$ is not equal to zero, you could look at the price of the security today ($y_t$) and use that to consistently profit on future price changes. For instance, if $\phi= - .5$ this is saying that gains are mean-reverting, a 10% rise at time $t$ predicts a 5% fall at time $t+1$.

The order of the ARMA (p and q) are often picked automatically by using a metric of how well the model fits the sample. In Neal's case he follows a procedure starting large (an ARMA(10,10)) and winnowing down based on significance, or else following a recursive procedure. Nowadays, it would be more typical to pick a model by cross-validation.

Neal is proposing that an 'efficient' market should yield a (0,0) estimate. That is, there should be no statistical association with any lagged prices or any lagged pricing errors. This is roughly what he shows in table 2 \[@neal1987, p. 103\] where most estimates for most time periods yield a (0,0). He's a little unclear in the text but I assume he is working with the log-returns as this is typical. He concludes that "for the period as a whole, both methods are consistent in showing market efficiency in both markets for Bank of England stock and in the London market for East India Company stock" \[@neal1987, p. 104\].

It's reasonable to raise some objections to Neal's approach both methodologically and conceptually. Methodologically, we might ask how the time periods were defined, and what the results might look like if we perturbed the periodization. It is also important to ask about the problem of multiple testing, although in this case that would suggest some of these findings of predictable prices are likely spurious.

Substantively, its reasonable to ask to what extent the finding that prices are hard to predict validates the view that markets are efficient here. The prices are every two weeks, which is a substantial gap in time. Even processes that do not have agents actively trying to exploit information in a way that erodes predictability tend to be quite hard to predict substantially far out so there is a sense in which this is a weak test of efficiency. It is perfectly plausible that prices two weeks ago could fail to predict prices today while prices yesterday might.

Neal then moves to explaining some of the seeming pricing anomalies. He notes that they may well arise from the specifics of how prices are quoted on the two exchanges. In the London market, recorded prices are typically 'spot' prices. This means that they record the cost of buying a share for immediate payment and immediate delivery. In contrast, in Amsterdam (and indeed later in London this will be typical) share prices are quoted for *future* delivery. You buy a share for delivery at a specific date in the future (or alternatively sell a share now for future delivery --- a little reflection on the way selling for future delivery works also suggests a method of shorting shares in a rather risky way). To clarify the mechanics, you are entering into an agreement now to exchange the share for a given sum in the future (a settlement day). This means the buyer of the share is not parting with their money right away, and the seller goes without the cash in the meantime, so futures prices are higher to reflect the opportunity cost of holding the share instead of cash. Since this occurs on the dividend payment date the spot rises mechanically towards the futures price (more precisely, trades that happen on the settlement day are just spot trades). Neal studies this mechanism in a regression framework by measuring the time until the dividend payment date, as well as some other 'structural' factors like exchange rates.

Neal's reflections here underline how important it is to understand the specifics of how bargains are entered into and recorded when attempting to apply contemporary financial econometrics. This injunction applies not only to historical data -- although of course historical data offers some particular complexity -- but applies as well to practices in contemporary markets. The 'anomalies' that arise from the specifics of how markets are organized and trades conducted has spawned its own sub-literature called the 'market microstructure' literature [@ohara1998; @hasbrouck2007; @bouchaud2018].

### Koudijs and 'The Boat that Did Not Sail'

A starting point for the Koudijs paper is recognizing that for readers of the *Journal of Finance*, if not for Koudijs himself, the past is kostly viewed as a laboratory for testing financial theory, rather than something to which financial theory is being applied in aide of explanation. Of course, one can do both profitably, but some of the orientation and presentation of this paper is geared to answering the question "what do these early modern markets tell us about *how financial markets work*" rather than the question "what does financial theory tell us about *how early modern markets worked*". This difference in emphasis is a common tension in modern cliometric work -- and indeed in the mid-to-late-20th century with the rise of cliometrics there was some significant debate on this point (see for instance @polanyi1957 arguing that the past has a different economics and the rejoinder in @north1977 ).

@koudijs2016 wants to decompose the variance in stock returns into the different sources of 'things that make prices move'. Koudijs decomposes these things into the following categories following the literature:

> \(1\) the arrival of public news and (2) the impact of the trading process, which can capture privately informed trading, liquidity trades or shifts in investor sentiment \[@koudijs2016, p. 1185\].

Let's work through these categories in turn to make them clear

1.  Public news: includes stuff like 'the government announces the EIC's finances are in trouble'

2.  The trading process:

    1.  Koudijs includes here *private information* e.g. a director of the EIC knows a ship has sank before the rest of the market does

    2.  *liquidity trades*: a term of art in finance meaning usually you buy/sell because you want to hold less/more money. In the easier case of switching into money e.g. you want to buy a house so you sell your EIC stock. The trade is essentially unrelated to information about the EIC.

    3.  *investor sentiment*: this tends to capture things we think about as possibly 'irrational' aspects of trade e.g. everyone is really hot on crypto right now.

Part of Koudijs pitch here is that the integration of the English and Dutch markets in select securities in this period offers a great opportunity to unpick this *theoretical* question about how much of share price changes are due to each of these factors because of the particular characteristics of early modern markets: they are integrated, and there is information flow, but that flow is mediated by boats and by essentially random processes like the weather. The key phrase here Koudijs invokes is 'natural experiment', which is meant to signal that from a statistical point of view some of the analysis can be viewed as possessing some of the desirable inferential characteristics of a controlled experiment, but that this has arisen naturally rather than by design. 'Natural experiment' designs have become increasingly popular in economic history as economics has become increasingly interested in the robust statistical estimation of causal effects.

TO DO

Write out section on impact of public news -- including econometric design

Write out section on decomposition of residual variance -- variance on non-boat days
