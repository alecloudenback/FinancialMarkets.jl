a365 = A365()
d1 = Date(2013, 1, 1)
d2 = Date(2014, 6, 30)
r = InterestRate(0.04, Simply, a365)
df = DiscountFactor(1 / (1 + 0.04 * years(d1, d2, a365)), d1, d2)
@test_approx_eq convert(DiscountFactor, r, d1, d2).discountfactor df.discountfactor
@test_approx_eq convert(InterestRate, df, Simply, a365).rate r.rate
