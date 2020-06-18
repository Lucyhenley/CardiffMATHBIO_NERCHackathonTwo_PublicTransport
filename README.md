# NERC COVID-19 Hackathon Two: Recovery

This repository is Cardiff University MATHBIO's entry to <a href="https://digitalenvironment.org/home/covid-19-digital-sprint-hackathons/covid-19-hackathon-2-recovery/" target="_blank">**COVID-19 Hackathon 2: Recovery**</a>.

---

## Table of Contents

- [Introduction](#introduction)
- [Background](#background)
- [Transport Capacity](#transport-capacity)
- [Shielding](#shielding)
- [Emissions](#emissions)
- [The GUI](#the-gui)
- [Team](#team)


---

## Introduction
During lockdown in Great Britain, usage of all forms of motorised transport fell due to travel restrictions. As the UK eases lockdown measures, however, the use of personal vehicles has increased, whilst use of public transport remains low. If this trend continues, we may expect to see people who previously used public transport choosing to use road travel instead, which will lead to an increase in emissions from travel.

To solve this problem, we have designed an app which tests the effects of social distancing measures and plastic shielding placement on the capacity of public transport for commuting, attempting to optimise the number of people who can safely use public transport to encourage its use as an alternative to commuting by car. We then predict the effect that different social distancing and shielding methods will have on the emissions generated by travel, allowing us to isolate the specific combinations of measures needed to make public transport have lower emissions than using cars.

The project meets the requirements of the hackathon in the following ways:

- **Specific**- We have assessed one of the potential negative aspects of lockdown and recovery on UK emissions, and therefore on meeting the Paris and net zero targets. We also highlight the impact on the environment using multiple signals, including shield pattern design and social distancing perimeters, in order to guide decision making in public transport design and government policy.
- **Measurable**- The outcome for any given seating arrangement or shielding pattern is an expected emissions per passenger, in grams of CO2 per person per kilometer. We can therefore quantify the effect our solutions will have on UK emissions.
-**Achievable**- Solutions involve the placement of plastic shielding in appropriate locations or the reduction of the social distancing measure to some value between 1 and 2m. These are both feasible as plastic shielding placement is a common solution to this problem, and social distancing measures are as low as 1m in EU nations such as France.
-**Relevant**- the solution put forward focusses on helping governments and businesses to maximise their use of resources whilst minimising their impact on the environment through reducing emisions, which falls within the NERC remit. The subject is relevant to the impact of recovery measures following lockdown, and the solution achieves its desired goal of suggesting which measures will achieve optimum reductions in emissions.
-**Timebound**- We have explored a number of possible outcomes and achieved the solution desired as set out at the beginning of the task. Further developments could be made to the model, but the developments made are satisfactory for the allocated timeframe.


## Background

[During the lockdown period in Great Britain, restrictions on travel lead to large reductions in the use of cars and public transport](https://www.gov.uk/government/statistics/transport-use-during-the-coronavirus-covid-19-pandemic). By 12/04/2020, compared to the a typical day in 2019, use of cars fell as low as 22%, National Rail to 4% and busses outside of London to 10%. This reduction in travel has contributed to overall reductions in emissions, but as lockdown measures are restricted, personal vehicle usage has increased again, approaching 70% of typical values from 2019 by 15/06/2020. Use of public transport remain low, however, with National Rail and busses outside of London running at 8% and 14% of normal usage respectively. This suggests that people choosing to use personal vehicles as opposed to public transport could be a possible long term consequence of lockdown.

[Reducing emissions from travelling is a key component for the UK in meeting the Paris Accord, as road transport makes up around 20% of UK greenhouse emissions ](https://www.ons.gov.uk/economy/environmentalaccounts/articles/roadtransportandairemissions/2019-09-16). Encouraging people to choose public transport instead of personal vehicles leads to a reduction in emissions per person, so we need some way of facilitating the usage of public transport to prevent an increase in emissions from travel.

If we assume that the public can be enticed to use public transport, the greatest factor limiting its use becomes the number of people who can safely fit into a carriage under current restriction measures- which we denote by 'transport capacity'.

---

## Transport capacity

One restriction on the number of people using public transport is the effect of social distancing. In the UK, social distancing requires that people remain 2 meters away from one another to minimise the risk of transmission of disease, which also applies to seating on public transport. This means that many seats become unusable if someone is sat too close to them. A train or bus can quickly become 'full' with only a fraction of its total capacity on board, as all remaining empty seats are within 2 meters of another passenger.

In order to address this problem, we have designed an app which determines the actual maximum capacity of a train or bus, depending on the radius of social distancing. This app also demonstrates where these passengers should be sitting to achieve this capacity. This is achieved for the class 150 sprinter train and the Dennis Dart bus, as examples, but can be generalised for any particular model.

---
## The GUI

Link to GUI in shiny apps

Gif of changing sliders in GUI?


---

## Shielding
Many industries have taken to the use of plastic barriers, or 'shields', which can ease the effect of social distancing by placing a physical barrier between people to prevent transmission of disease. This can be applied to public transport, in order to maximise the capacity of public transport.

We define some basic shielding patterns in the app, and include the effect of shields 'blocking' transmission of disease to increase the number of people who can safely use public transport. A possible side effect is that we can demonstrate multiple shielding patterns which achieve the same capacity but use different quantities of shielding material. As most shielding is made of plastic, reducing the volume of plastic required has additional benefits in reducing pollution.

---

## Emissions
If public transport cannot meet demand, then passengers will need to find alternative means of getting to their destination- for example, using personal vehicles. By maximising the number of people who can fit into a train or bus for a given social distancing measure, we can minimise the number of people who need to drive and therefore reduce emissions from travel as a result of Covid-19.

To calculate and quantify the effect of capacity of public transport on overall emissions, we use data relating to the emissions of cars used for commuting to work. A train uses a roughly fixed amount of energy to run irrespective of the number of passengers using it, so train emissions per passenger fall as passenger capacity increases. [Train emissions are found here.] https://laqm.defra.gov.uk/documents/AEAPTEGCarbonFootprintingfinalversion2009.pdf.

Car emission data is taken from measurements of the emissions generated by cars used for commuting, found [ here](http://www.aef.org.uk/downloads/Grams_CO2_transportmodesUK.pdf).

We assume that all passengers who cannot fit onto a train would instead choose to use a car to commute to work, which means that they now contribute the emissions of a car.

---
## Assumptions

- We assume that all people travelling are commuters. This means that they are travelling alone, so they must all socially distance from one another and, if they cannot travel by train, will take separate cars to their destination as they cannot share cars with other passengers.
- We assume that passengers who do not fit onto a train will travel by car instead of finding another alternative method of transport.
-We assume trains are running at full capacity, and therefore any unfilled seats on a bus or train correspond to a commuter who must drive to work
- We assume that passengers must be seated on the bus or train, and so are restricted to being located in the seat locations.



## Team

The team is comprised of PhD Students from the mathematics department of Cardiff University, all working in the mathematical biology group. The group also received supervision from their common supervisor, Dr Thomas Woolley.

| <a href="https://github.com/Lucyhenley" target="_blank">**Lucy Henley, Project Lead**</a> | <a href="https://github.com/joshwillmoore1" target="_blank">**Joshua Moore**</a> | <a href="https://github.com/OstlerT" target="_blank">**Timothy Ostler**</a> |
| :---: |:---:| :---:|
| [![FVCproductions](https://avatars1.githubusercontent.com/Lucyhenley)](https://github.com/Lucyhenley)    | [![FVCproductions](https://avatars1.githubusercontent.com/joshwillmoore1)](https://github.com/joshwillmoore1) | [![FVCproductions](https://avatars1.githubusercontent.com/OstlerT)](https://github.com/OstlerT)  |
| <a href="https://github.com/Lucyhenley" target="_blank">`github.com/Lucyhenley`</a> | <a href="https://github.com/joshwillmoore1" target="_blank">`github.com/joshwillmoore1`</a> | <a href="https://github.com/OstlerT" target="_blank">`github.com/OstlerT`</a> |

---

## License

[![License](http://img.shields.io/:license-mit-blue.svg?style=flat-square)](http://badges.mit-license.org)

- **[MIT license](http://opensource.org/licenses/mit-license.php)**
- Copyright 2015 © <a href="http://fvcproductions.com" target="_blank">FVCproductions</a>.
