using Plots
# function f to be learnt
f(x) = 0.1x^3-0.1x^2+0.1x
# input and output (=observation)
x, y = [-4 -3 -2 -1 0 1 2 3 4.], f.([-4,-3,-2,-1,0,1,2,3,4.]) # Dummy data
m=size(x)[1]
n=size(x)[2]
o=size(y)[1]

# test parameters
W2 = ones(n, o)
b2 = ones(m, o)
predict1(x) = x*W1 .+ b1
W1 = rand(n, o)
b1 = rand(m, o)
predict2(x) = x*W2 .+ b2

ŷ1 = predict1(x)
ŷ2 = predict2(x)

scatter(x[:], y, grid="off", markersize=6, label = "Observation", legend=:bottomright)
scatter!(x[:], ŷ1[:], markersize=6,label = "Guess 1: W, b are random.")
scatter!(x[:], ŷ2[:], markersize=6,label = "Guess 2: W, b are ones.")
plot!(x[:], y, color="blue", label = "")
plot!(x[:], ŷ1[:],  color="orange",label = "")
plot!(x[:], ŷ2[:],   color="green",label = "")

savefig("pdfs/regression_example.pdf")
# function loss(x, y)
#   ŷ = predict(x)
#   sum((y .- ŷ).^2)
# end
#loss(x, y) # ~ 3
