.class public Lcom/ddtaxi/a/a/ga;
.super Lcom/ddtaxi/a/a/gd;


# instance fields
.field private final b:Lcom/ddtaxi/a/a/gm;


# direct methods
.method public constructor <init>(Lcom/ddtaxi/a/a/gm;Lcom/ddtaxi/a/a/el;Lcom/ddtaxi/a/a/k;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lcom/ddtaxi/a/a/gd;-><init>(Lcom/ddtaxi/a/a/el;Lcom/ddtaxi/a/a/k;)V

    iput-object p1, p0, Lcom/ddtaxi/a/a/ga;->b:Lcom/ddtaxi/a/a/gm;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 2

    invoke-super {p0}, Lcom/ddtaxi/a/a/gd;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ddtaxi/a/a/ga;->a:Lcom/ddtaxi/a/a/gm;

    iget-object v1, p0, Lcom/ddtaxi/a/a/ga;->b:Lcom/ddtaxi/a/a/gm;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()Lcom/ddtaxi/a/a/gm;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ga;->b:Lcom/ddtaxi/a/a/gm;

    invoke-virtual {p0, v0}, Lcom/ddtaxi/a/a/ga;->b(Lcom/ddtaxi/a/a/gm;)Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ga;->b()Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ga;->b()Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ga;->b()Lcom/ddtaxi/a/a/gm;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
