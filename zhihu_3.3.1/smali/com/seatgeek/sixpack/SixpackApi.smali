.class public interface abstract Lcom/seatgeek/sixpack/SixpackApi;
.super Ljava/lang/Object;
.source "SixpackApi.java"


# virtual methods
.method public abstract convert(Lcom/seatgeek/sixpack/Experiment;)Lcom/seatgeek/sixpack/response/ConvertResponse;
    .parameter
        .annotation runtime Lretrofit/http/Query;
            value = "experiment"
        .end annotation
    .end parameter
    .annotation runtime Lretrofit/http/GET;
        value = "/convert"
    .end annotation
.end method

.method public abstract participate(Lcom/seatgeek/sixpack/Experiment;Ljava/util/List;Lcom/seatgeek/sixpack/Alternative;Ljava/lang/Double;Ljava/lang/Boolean;)Lcom/seatgeek/sixpack/response/ParticipateResponse;
    .parameter
        .annotation runtime Lretrofit/http/Query;
            value = "experiment"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lretrofit/http/Query;
            value = "alternatives"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lretrofit/http/Query;
            value = "force"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lretrofit/http/Query;
            value = "traffic_fraction"
        .end annotation
    .end parameter
    .parameter
        .annotation runtime Lretrofit/http/Query;
            value = "prefetch"
        .end annotation
    .end parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/seatgeek/sixpack/Experiment;",
            "Ljava/util/List",
            "<",
            "Lcom/seatgeek/sixpack/Alternative;",
            ">;",
            "Lcom/seatgeek/sixpack/Alternative;",
            "Ljava/lang/Double;",
            "Ljava/lang/Boolean;",
            ")",
            "Lcom/seatgeek/sixpack/response/ParticipateResponse;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/participate"
    .end annotation
.end method
