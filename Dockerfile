FROM julia

COPY . .
RUN julia install.jl
EXPOSE 8080
CMD julia app.jl
