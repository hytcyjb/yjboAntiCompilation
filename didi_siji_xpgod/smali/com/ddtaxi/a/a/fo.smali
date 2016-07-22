.class public abstract Lcom/ddtaxi/a/a/fo;
.super Lcom/ddtaxi/a/a/d;


# instance fields
.field private a:Lcom/ddtaxi/a/a/k;


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/ddtaxi/a/a/d;-><init>()V

    sget-object v0, Lcom/ddtaxi/a/a/k;->d:Lcom/ddtaxi/a/a/k;

    iput-object v0, p0, Lcom/ddtaxi/a/a/fo;->a:Lcom/ddtaxi/a/a/k;

    return-void
.end method


# virtual methods
.method public synthetic H()Lcom/ddtaxi/a/a/gm;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/fo;->c()Lcom/ddtaxi/a/a/fn;

    move-result-object v0

    return-object v0
.end method

.method public synthetic S()Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/fo;->b()Lcom/ddtaxi/a/a/fo;

    move-result-object v0

    return-object v0
.end method

.method public synthetic V()Lcom/ddtaxi/a/a/gn;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/fo;->a()Lcom/ddtaxi/a/a/fo;

    move-result-object v0

    return-object v0
.end method

.method public a()Lcom/ddtaxi/a/a/fo;
    .locals 1

    sget-object v0, Lcom/ddtaxi/a/a/k;->d:Lcom/ddtaxi/a/a/k;

    iput-object v0, p0, Lcom/ddtaxi/a/a/fo;->a:Lcom/ddtaxi/a/a/k;

    return-object p0
.end method

.method public abstract a(Lcom/ddtaxi/a/a/fn;)Lcom/ddtaxi/a/a/fo;
.end method

.method public final a(Lcom/ddtaxi/a/a/k;)Lcom/ddtaxi/a/a/fo;
    .locals 0

    iput-object p1, p0, Lcom/ddtaxi/a/a/fo;->a:Lcom/ddtaxi/a/a/k;

    return-object p0
.end method

.method protected a(Lcom/ddtaxi/a/a/o;Lcom/ddtaxi/a/a/r;Lcom/ddtaxi/a/a/el;I)Z
    .locals 1

    invoke-virtual {p1, p4, p2}, Lcom/ddtaxi/a/a/o;->a(ILcom/ddtaxi/a/a/r;)Z

    move-result v0

    return v0
.end method

.method public synthetic ap()Lcom/ddtaxi/a/a/d;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/fo;->b()Lcom/ddtaxi/a/a/fo;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/ddtaxi/a/a/fo;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is supposed to be overridden by subclasses."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract c()Lcom/ddtaxi/a/a/fn;
.end method

.method public final d()Lcom/ddtaxi/a/a/k;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/fo;->a:Lcom/ddtaxi/a/a/k;

    return-object v0
.end method
