#' US CFTC futures position Bloomberg tickers
#'
#' @description The dataset includes Bloomberg tickers for the US Commodity Futures
#'   Trading Commission (CFTC)'s 'legacy', 'disaggregated', 'supplemental' and 'traders
#'   in financial futures' reports. See 'Details' section below.
#'
#' @format A \linkS4class{data.table}. Columns include:
#' \itemize{
#'   \item{\code{name}: name of the futures series.}
#'   \item{\code{asset class}: asset class for the underlying futures series ('climate',
#'     'commodity', 'equity', 'fixed income' or 'currency').}
#'   \item{\code{active contract ticker}: active contract ticker for the underlying futures
#'     series.}
#'   \item{\code{MIC}: ISO 10383 Codes for exchanges and market identification (MIC).
#'     Identifies the exchange where the corresponding futures series trades.}
#'   \item{\code{format}: CFTC report format ('legacy', 'disaggregated', 'supplemental' or
#'     'traders in financial futures').}
#'   \item{\code{underlying}: underlying instrument ('futures only' or 'futures & options').}
#'   \item{\code{unit}: counting unit (number of 'contracts', 'traders' or 'total').}
#'   \item{\code{participant}: CFTC's trader classification. Report specific:
#'     \itemize{
#'       \item{legacy: 'commercial', 'non-commercial', 'non-reportable', 'total'.}
#'       \item{disaggregated: 'managed money', 'producer/merchant/processor/user', 'swap dealers',
#'         'other reportables'.}
#'       \item{supplemental: 'commercial - non-CIT', 'non-commercial - non-CIT',
#'         'index traders - non-CIT', 'index traders'.}
#'       \item{traders in financial futures: 'asset manager/institutional', 'dealer/intermediary',
#'         'leveraged funds', 'other reportables'.}
#'     }
#'   }
#'   \item{\code{position}: trader positions. Participant specific.
#'     \itemize{
#'       \item{commercial: 'long', 'short', 'net'.}
#'       \item{non-commercial: 'long', 'short', 'net', 'spreading'.}
#'       \item{non-reportable: 'long', 'short', 'net'.}
#'       \item{total: 'long', 'short', 'net', 'open interest', 'total'.}
#'       \item{managed money: 'long', 'short', 'net', 'spreading'.}
#'       \item{producer/merchant/processor/user: 'long', 'short', 'net'.}
#'       \item{swap dealers: 'long', 'short', 'net', 'spreading'.}
#'       \item{other reportables: 'long', 'short', 'net', 'spreading'.}
#'       \item{commercial - non-CIT: 'long', 'short', 'net'.}
#'       \item{non-commercial - non-CIT: 'long', 'short', 'net', 'spreading'.}
#'       \item{index traders - non-CIT: 'long', 'short'.}
#'       \item{index traders: 'long', 'short', 'net'.}
#'       \item{asset manager/institutional: 'long', 'short', 'net', 'spreading'.}
#'       \item{dealer/intermediary: 'long', 'short', 'net', 'spreading'.}
#'       \item{leveraged funds: 'long', 'short', 'net', 'spreading'.}
#'       \item{other reportables: 'long', 'short', 'net', 'spreading'.}
#'     }
#'   }
#'   \item{\code{ticker}: corresponding Bloomberg ticker.}
#' }
#'
#' @source
#'   \itemize{
#'     \item{\url{http://www.cftc.gov/MarketReports/CommitmentsofTraders/index.htm}}
#'     \item{\url{http://www.cftc.gov/MarketReports/CommitmentsofTraders/ExplanatoryNotes/index.htm}}
#'     \item{\url{http://www.cftc.gov/idc/groups/public/@commitmentsoftraders/documents/file/tfmexplanatorynotes.pdf}}
#'   }
#'
#' @seealso
#'   \itemize{
#'     \item{"CFTC <GO>" on a Bloomberg terminal.}
#'     \item{\href{https://github.com/bautheac/pullit/}{\pkg{pullit}} and
#'     \href{https://github.com/bautheac/storethat/}{\pkg{storethat}} packages
#'     from the \href{https://bautheac.github.io/finRes/}{\pkg{finRes}} suite.}
#'   }
#'
#' @details The Commitments of Traders (COT) reports provide a breakdown of each Tuesday's
#'   open interest for markets in which 20 or more traders hold positions equal to or
#'   above the reporting levels established by the CFTC. A trader must report his or her
#'   position if at the daily market close, their position is at or above the CFTC's
#'   reporting level in any futures month or option expiration. A trader is determined to
#'   be commercial or non-commercial using the following rational: all traders'
#'   reported futures positions in a commodity are classified as commercial if the trader
#'   uses futures contracts in that particular commodity for hedging as defined in
#'   the CFTC's regulations (1.3(z). Along with a breakdown by commercial/non-commercial
#'   traders, the CFTC also reports 'disaggregated' categories of producer/merchant,
#'   swap dealers, managed money and other reportables. When a contract does not meet the
#'   CFTC's minimum reporting requirement there will be no data reported and that
#'   date will be left blank.
#'
#'   SOURCE: \url{http://www.cftc.gov/MarketReports/CommitmentsofTraders/index.htm}
#'
#'   UPDATE INFO: Data is provided weekly on Friday at 3:30pm EST for the week ending on
#'     Tuesday. Data is only reported to the CFTC for markets in which 20 or more traders hold
#'     positions equal to or above the reporting levels established by the CFTC. If
#'     the minumum requirements are not met, no data will be posted for that week.
#'
#'   CALCULATIONS: Data is taken directly from the source without any manipulation, except
#'     for the 'Net' tickers, which are calculated by taking the long contracts minus the
#'     short contracts.
#'
#'   SOURCE METHODOLOGY: \url{http://www.cftc.gov/MarketReports/CommitmentsofTraders/ExplanatoryNotes/index.htm}
#'
#'   Please note that "The Disaggregated COT report data for physical commodity markets
#'     can be re-aggregated to get back to the two categories of the COT report. The
#'     TFF report, however, is not a disaggregation of the COT data for the financial
#'     futures markets. The traders classified into one of the four categories in the
#'     TFF report may be drawn from either the 'commercial' or 'noncommercial'
#'     categories of traders in the legacy COT reports."
#'
#'   HISTORICAL CONSIDERATIONS: The Coffee Sugar and Cocoa Exchange and New York Cotton
#'     Exchange were part of the New York Board of Trade which merged with Intercontinental
#'     Exchange (ICE) in January 2007. If a holiday falls on a Tuesday, report dates for
#'     the Monday before or Wednesday after are modified to reflect the Tuesday date, as
#'     if there were no holiday.
#'
#'   DATA DISCOVERY: For more details see {COT<GO>} <HELP> on a Bloomberg terminal.
#'
#'   RELATED SECTORS/FUNCTIONS: hit {FDM <GO>} on a Bloomberg terminal.
#'
#'   TFF Traders in Financial Futures Report: \cr
#'     Explanatory notes:
#'       \url{http://www.cftc.gov/idc/groups/public/@commitmentsoftraders/documents/file/tfmexplanatorynotes.pdf} \cr
#'     Future's only: hit {ALLX TFF1<GO>} {ALLX TFF2<GO>} {ALLX TFF3<GO>}
#'     on a Bloomberg terminal. \cr
#'     Future's & options combined: hit {ALLX TFC1<GO>} {ALLX TFC2<GO>}
#'     {ALLX TFC3<GO>} on a Bloomberg terminal.
#'
#'   ---CFTC ticker guide---
#'
#'   Ticker ends with:
#' \itemize{
#'   \item{Legacy:
#'     \itemize{
#'       \item{'COL': Commercial Long Contracts.}
#'       \item{'COS': Commercial Short Contracts.}
#'       \item{'CON': Commercial Net Contracts.}
#'       \item{'NCL': Non-Commercial Long Contracts.}
#'       \item{'NCP': Non-Commercial Spreading Contracts.}
#'       \item{'NCS': Non-Commercial Short Contracts.}
#'       \item{'NCN': Non-Commercial Net Contracts.}
#'       \item{'NRL': Non-Reportable Long Contracts.}
#'       \item{'NRS': Non-Reportable Short Contracts.}
#'       \item{'NRN': Non-Reportable Net Contracts.}
#'       \item{'OIN': Total Open Interest.}
#'       \item{'TCL': Commercial Long Traders.}
#'       \item{'TCS': Commercial Short Traders.}
#'       \item{'TLL': Total Long Contracts.}
#'       \item{'TLS': Total Short Contracts.}
#'       \item{'TLN': Total Net Contracts.}
#'       \item{'TNL': Non-Commercial Long Traders.}
#'       \item{'TNP': Non-Commercial Spreading Traders.}
#'       \item{'TNS': Non-Commercial Short Traders.}
#'       \item{'TTL': Total Long Traders.}
#'       \item{'TTO': Total Traders.}
#'       \item{'TTS': Total Short Traders.}
#'     }
#'   }
#'   \item{Disaggregated:
#'     \itemize{
#'       \item{'PML': Producer Merchant Long Contracts.}
#'       \item{'PMS': Producer Merchant Short Contracts.}
#'       \item{'PMN': Producer Merchant Net Contracts.}
#'       \item{'PTL': Producer Merchant Total Long Traders.}
#'       \item{'PTS': Producer Merchant Total Short Traders.}
#'       \item{'SWL': Swap Dealers Long Contracts.}
#'       \item{'SWD': Swap Dealers Spreading Contracts.}
#'       \item{'SWS': Swap Dealers Short Contracts.}
#'       \item{'SWN': Swap Dealers Net Contracts.}
#'       \item{'STL': Swap Dealers Total Long Traders.}
#'       \item{'STS': Swap Dealers Total Short Traders.}
#'       \item{'STD': Swap Dealers Total Spread Traders.}
#'       \item{'MML': Managed Money Long Contracts.}
#'       \item{'MMD': Managed Money Spreading Contracts.}
#'       \item{'MMS': Managed Money Short Contracts.}
#'       \item{'MMN': Managed Money Net Contracts.}
#'       \item{'MTL': Managed Money Total Long Traders.}
#'       \item{'MTS': Managed Money Total Short Traders.}
#'       \item{'MTD': Managed Money Total Spread Traders.}
#'       \item{'ORL': Other Reportables Long Contracts.}
#'       \item{'ORD': Other Reportables Spreading Contracts.}
#'       \item{'ORS': Other Reportables Short Contracts.}
#'       \item{'ORN': Other Reportables Net Contracts.}
#'       \item{'OTL': Other Reportables Total Long Traders.}
#'       \item{'OTS': Other Reportables Total Short Traders.}
#'       \item{'OTD': Other Reportables Total Spread Trader.}
#'     }
#'   }
#'   \item{Traders in Financial Futures (TFF):
#'     \itemize{
#'       \item{'DIL': Dealer Intermediary Long Contracts.}
#'       \item{'DIS': Dealer Intermediary Short Contracts.}
#'       \item{'DIN': Dealer Intermediary Net Total.}
#'       \item{'DID': Dealer Intermediary Spread Contracts.}
#'       \item{'DTL': Dealer Intermediary Total Long Traders.}
#'       \item{'DTS': Dealer Intermediary Total Short Traders.}
#'       \item{'DTD': Dealer Intermediary Total Spread Traders.}
#'       \item{'AIL': Asst Mgr Institutional Long Contracts.}
#'       \item{'AIS': Asst Mgr Institutional Short Contracts.}
#'       \item{'AIN': Asst Mgr Institutional Net Totals.}
#'       \item{'AID': Asst Mgr Institutional Spread Contracts.}
#'       \item{'ATL': Asst Mgr Institutional Total Long Traders.}
#'       \item{'ATS': Asst Mgr Institutional Total Short Traders.}
#'       \item{'ATD': Asst Mgr Institutional Total Spread Traders.}
#'       \item{'LFL': Leveraged Funds Long Contracts.}
#'       \item{'LFS': Leveraged Funds Short Contracts.}
#'       \item{'LFN': Leveraged Funds Net Totals.}
#'       \item{'LFD': Leveraged Funds Spread Contracts.}
#'       \item{'LTL': Leveraged Funds Total Long Traders.}
#'       \item{'LTS': Leveraged Funds Total Short Traders.}
#'       \item{'LTD': Leveraged Funds Total Spread Traders.}
#'       \item{'ORL': Other Reportables Long Contracts.}
#'       \item{'ORS': Other Reportables Short Contracts.}
#'       \item{'ORN': Other Reportables Net Totals.}
#'       \item{'ORD': Other Reportables Spread Contracts.}
#'       \item{'OTL': Other Reportables Total Long Traders.}
#'       \item{'OTS': Other Reportables Total Short Traders.}
#'       \item{'OTD': Other Reportables Total Spread Traders.}
#'     }
#'   }
#'   \item{Supplemental/Commodity Index Traders (CIT):
#'     \itemize{
#'       \item{'CLN': Non Commerical Long Non CIT.}
#'       \item{'CSN': Non Commerical Short Non CIT.}
#'       \item{'NPN': Non Commerical Spreading Non CIT.}
#'       \item{'NNT': Non Commerical Non CIT (Net).}
#'       \item{'OLN': Commerical Long Non CIT.}
#'       \item{'OSN': Commerical Short Non CIT.}
#'       \item{'CNT': Commerical Non CIT (Net).}
#'       \item{'CIL': Index Trader Long.}
#'       \item{'CIS': Index Trader Short.}
#'       \item{'CIN': Index Trader (Net).}
#'       \item{'NLN': # Traders Non Comm Long Non CIT.}
#'       \item{'NSN': # Traders Non Comm Short Non CIT.}
#'       \item{'STN': # Traders Non Comm Spread Non CIT.}
#'       \item{'LTN': # Traders Comm Long Non CIT.}
#'       \item{'TSN': # Traders Comm Short Non CIT.}
#'       \item{'ILT': # Traders Index Trader Long CIT.}
#'       \item{'IST': # Traders Index Trader Short CIT.}
#'       \item{'TLC': # Traders Index Trader Long Non CIT.}
#'       \item{'SNT': # Traders Index Trader Short Non CIT.}
#'       \item{'LTS': Leveraged Funds Total Short Traders.}
#'       \item{'LTD': Leveraged Funds Total Spread Traders.}
#'       \item{'ORL': Other Reportables Long Contracts.}
#'       \item{'ORS': Other Reportables Short Contracts.}
#'       \item{'ORN': Other Reportables Net Totals.}
#'       \item{'ORD': Other Reportables Spread Contracts.}
#'       \item{'OTL': Other Reportables Total Long Traders.}
#'       \item{'OTS': Other Reportables Total Short Traders.}
#'       \item{'OTD': Other Reportables Total Spread Traders.}
#'     }
#'   }
#' }
#'
#'   This data represents the number of non-commerical long traders who must report  their
#'     positions for the stated futures and/or option contracts. A trader must report his
#'     or her postion if at the daily market close, their position is at or above the CFTC's
#'     reporting level in any futures month or option expiration. A trader is determined to
#'     be commercial or non-commerical using the following rationale: all trader's reported
#'     futures positions in a commodity are classifed  as commercial if the trader uses
#'     futures contracts in that particular commodity for hedging as defined in the CFTC's
#'     regulations (1.3(z)).
#'
#' @importClassesFrom data.table data.table
#'
"tickers_cftc"






#' Bloomberg tickers for various popular futures series
#'
#' @description The dataset includes Bloomberg active contract tickers for several popular futures series including
#'   commodity, currency, financial as well as index futures with underlyings from various asset classes.
#'
#' @format A \linkS4class{data.table}. Columns include:
#' \itemize{
#'   \item{\code{ticker}: active contract ticker for the futures series.}
#'   \item{\code{name}: corresponding futures series's underlying name.}
#'   \item{\code{asset class}: asset class for the underlying futures series; 'commodity', 'currency', 'financial' and 'index'.}
#'   \item{\code{sector}: underlying instrument sector; asset class specific.
#'     \itemize{
#'       \item{commodity: 'agriculturals', 'energy', 'metals'.}
#'       \item{currency: domestic currency.}
#'       \item{financial: instrument type.}
#'       \item{index: index asset class.}
#'     }
#'   }
#'   \item{\code{subsector}: underlying instrument subsector; asset class specific.
#'     \itemize{
#'       \item{commodity:
#'         \itemize{
#'           \item{agriculturals: 'grains', 'livestock', 'softs'.}
#'           \item{energy: 'gas', 'petroleum'.}
#'           \item{metals: 'base', 'precious'.}
#'         }
#'       }
#'       \item{currency: foreign currency.}
#'       \item{financial: for government debt underlyings, corresponding country code (ISO 3166-1 alpha-2).}
#'       \item{index. sector specific:
#'         \itemize{
#'           \item{commodity indexes (commodity): commodity sector covered by the index.}
#'           \item{equity indexes (equity): country/region covered by the index.}
#'         }
#'       }
#'     }
#'   }
#'   \item{\code{currency}: currency for observed price variables.}
#'   \item{\code{MIC}: ISO 10383 Codes for exchanges and market identification (MIC). Identifies the exchange where the corresponding futures series trades.}
#'   \item{\code{term structure length}: length of the term structure for the futures series (number of contracts).}
#'   \item{\code{contract size}: size of the corresponding contract with units specified in \code{trading unit} below.}
#'   \item{\code{point value}: change in contract value for one point change in price.}
#'   \item{\code{tick size}: minimum price fluctuation.}
#'   \item{\code{tick value}: change in price resulting for a minimum price fluctuation described above.}
#'   \item{\code{FIGI}: Financial Instrument Global Identifier. Twelve character, alphanumeric identifier. The first 2 characters are upper-case consonants
#'     (including "Y"), the third character is the upper-case "G", characters 4 -11 are any upper-case consonant (including "Y") or integer between 0 and 9,
#'     and the last character is a check-digit. An identifier is assigned to instruments of all asset classes, is unique to an individual instrument and once
#'     issued will not change for an instrument. For equity instruments an identifier is issued per instrument per trading venue.}
#'   \item{\code{description}: descriptive elements for the corresponding futures series.}
#' }
#'
#' @source Bloomberg
#'
#' @seealso
#'   \itemize{
#'     \item{"GFUT <GO>" on a Bloomberg terminal.}
#'     \item{The \href{https://bautheac.github.io/finRes/}{\pkg{finRes}} suite, in particular the
#'     \href{https://github.com/bautheac/pullit/}{\pkg{pullit}} and
#'     \href{https://github.com/bautheac/storethat/}{\pkg{storethat}} packages.}
#'   }
#'
#' @importClassesFrom data.table data.table
#'
"tickers_futures"


#' Field symbols for Bloomberg financial data
#'
#' @description Helper dataset for working with Bloomberg in R.
#'   Provides field symbols for various security type-data type combinations
#'
#' @format A \linkS4class{data.table}. Columns include:
#' \itemize{
#'   \item{\code{instrument}: underlying financial instrument type (futures, equity, fund, etc.).}
#'   \item{\code{book}: data book.}
#'   \item{\code{type:subsection}: data classification elements.}
#'   \item{\code{name}: field name.}
#'   \item{\code{symbol}: corresponding Bloomberg data field symbol.}
#' }
#'
#' @source Bloomberg
#'
#' @seealso
#'   \itemize{
#'     \item{Data field search monitor on a Bloomberg terminal.}
#'     \item{The \href{https://bautheac.github.io/finRes/}{\pkg{finRes}} suite, in particular the
#'     href{https://github.com/bautheac/pullit/}{\pkg{pullit}} and
#'     \href{https://github.com/bautheac/storethat/}{\pkg{storethat}} packages.}
#'   }
#'
#' @importClassesFrom data.table data.table
#'
"fields"


#' Futures delivery month symbols
#'
#' @description Lists the Street convention symbols for futures delivery month.
#'
#' @format A \linkS4class{data.table}. Columns include:
#' \itemize{
#'   \item{name: month name.}
#'   \item{symbol: corresponding symbol.}
#' }
#'
#' @source \url{https://www.cmegroup.com/month-codes.html?redirect=/product-codes-listing/month-codes.html}
#'
#' @seealso
#'   \itemize{
#'     \item{The \href{https://bautheac.github.io/finRes/}{\pkg{finRes}} suite, in particular the
#'     \href{https://github.com/bautheac/pullit/}{\pkg{pullit}} and
#'     \href{https://github.com/bautheac/storethat/}{\pkg{storethat}} packages.}
#'   }
#'
#' @importClassesFrom data.table data.table
#'
"months"



#' Roll symbols for futures term structure Bloomberg ticker construction
#'
#' @description Helper dataset for Bloomberg futures term structure ticker construction.
#'   Provides roll type and roll adjustment symbols to use along days and months offsets in
#'   constructing Bloomberg futures term structure tickers.
#'
#' @format A \linkS4class{data.table}. Columns include:
#' \itemize{
#'   \item{\code{roll}: divides variables between roll type ('type') and roll adjustment (adjustment) variables.}
#'   \item{\code{symbol}: roll type or adjustment symbol.}
#'   \item{\code{name}: corresponding roll type or adjustment name.}
#' }
#'
#' @source Bloomberg
#'
#' @seealso
#' \itemize{
#'   \item{function \code{\link[pullit]{futures_ticker}} in package \href{https://github.com/bautheac/pullit/}{\pkg{pullit}}.}
#'   \item{"GFUT <GO>" &/or "DOCS #2072138 <GO>" on a Bloomberg terminal.}
#'   \item{The \href{https://bautheac.github.io/finRes/}{\pkg{finRes}} suite in general, in particular the
#'     \href{https://github.com/bautheac/pullit/}{\pkg{pullit}} and
#'     \href{https://github.com/bautheac/storethat/}{\pkg{storethat}} packages.}
#' }
#'
#'
#' @importClassesFrom data.table data.table
#'
"rolls"

