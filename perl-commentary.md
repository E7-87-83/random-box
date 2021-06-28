== 依家常用 Perl 嘅 fields 有 ==

* Linux admin (一個 Perl 就可以發揮到 awk, sed 和 grep 等嘅功能，（據我理解）呢個亦係 Perl 創始人 Larry Wall 寫 Perl 出來的原意。）
* Bioinformatics (跟 Python 和 Java 的 libraries 競爭)
* 部分 subfield of Astronomy 常用 _Perl Data Language_ ，故仔可以喺 en.wikipedia.org/wiki/Perl_Data_Language 睇
* 部分 Perl 開發者無因為 Python 流行或者 Ruby 有 Ruby on Rails 而放棄 Perl ，依然開發各種 Perl 的 web backend
* Python 或 Ruby 未出現前嘅 "Legacy code"

== 以下的 fields ，已經被 Python 或 Ruby 搶到差唔多無 ==

* 初學 programming 嘅人 -> Python （人體實驗：我試過叫一個文科但頭腦很好的中學師妹選擇程式語言來學習，給了她 Rosettacode.org 的連結，特別向她推介 Lisp 和 Raku（舊名Perl6，跟Perl5 incompatible） ，她看過 Rosettacode.org 的例子後，說想要 Python ，因為好似比較易明）
* Data Science -> Python
* Web Development -> 除咗有 Python 和 Ruby ， Node.js (JavaScript嘅朋友)都加入競爭

== Perl嘅黑暗時代 ==

Perl4 橫行時， Ruby 和 Python 未成氣候，有不少不成熟的程式員寫出了一些難看的 Perl code ，導致 Perl 的聲譽大大受損。（後來有人出版《Perl Best Practices》和 Perl 加入了 "use strict; use warning;" 來幫助程式員處理困難）

這個黑暗時代，可以由 Ruby 創始人 Matz 解說他創作 Ruby 的原因：

" Well, Ruby was born on February 24, 1993. I was talking with my colleague about the possibility of an object-oriented scripting language. I knew Perl (Perl4, not Perl5), but I didn’t like it really, because it had the smell of a toy language (it still has). The object-oriented scripting language seemed very promising.

"    I knew Python then. But I didn’t like it, because I didn’t think it was a true object-oriented language—OO features appeared to be an add-on to the language. As a language manic and OO fan for 15 years, I really wanted a genuine object-oriented, easy-to-use scripting language. I looked for, but couldn’t find one.

 "   So, I decided to make it. It took several months to make the interpreter run. I put into it the features I love to have in my language, such as iterators, exception handling, garbage collection.

 "   Then, I reorganized the features of Perl into a class library, and implemented them. I posted Ruby 0.95 to the Japanese domestic newsgroups in Dec. 1995..."

== 語法嘅彈性 ==

自由，可以係寶，亦可以用作自刎的刀。我借用我跟　一個 中大CS畢業的人（朋友的弟弟）嘅看法(時間關係唔paraphrase)　討論表達吧 :

<quote>
你phy要用perl嗎？我感覺上perl不符合人腦思維
太容易有bug
他的library又不是特別可靠
...

太容易有bug因為太自由，例如可以dynamic scoping。沒有static typing check。我覺得不應靠個人習慣，而應靠compiler去確保一個software的可靠性，因為你要與人合作。相比之下，Haskell太無自由，所以很難有bug。現實上我們可平衡可靠與自由的取捨，而perl太偏向自由。

library的可靠性取決於是否多人管理、多人用。CPAN有很多library，大路的如catalyst我覺得是可靠的，但其他library有時是日久失修。或者會有多款選擇，結果是分薄了管理人員的資源

</quote>

== library ==

你可以到 metacpan.org 遊覽吓；多為 open-source modules, 有些變咗孤兒仔

CPAN(Comprehensive Perl Archive Network)？不過modules大多是open source, 有問題都可以trace返嘅

== 參考資料 ==
* http://www.softpanorama.org/People/Wall/index.shtml
* https://www.tiobe.com/tiobe-index/
* https://medium.com/swlh/perl-in-2020-is-it-still-worth-learning-today-6c88fa435fb4
* https://www.perlmonks.com/  , especially  https://www.perlmonks.com/?node=Tutorials
* https://www.ruby-lang.org/en/documentation/faq/1/
