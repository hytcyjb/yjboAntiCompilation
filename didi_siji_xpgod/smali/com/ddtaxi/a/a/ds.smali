.class public final Lcom/ddtaxi/a/a/ds;
.super Lcom/ddtaxi/a/a/dy;

# interfaces
.implements Lcom/ddtaxi/a/a/fx;


# instance fields
.field private final a:I

.field private b:Lcom/ddtaxi/a/a/am;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/ddtaxi/a/a/dw;

.field private final e:Lcom/ddtaxi/a/a/dr;


# direct methods
.method private constructor <init>(Lcom/ddtaxi/a/a/am;Lcom/ddtaxi/a/a/dw;Lcom/ddtaxi/a/a/dr;I)V
    .locals 2

    invoke-direct {p0}, Lcom/ddtaxi/a/a/dy;-><init>()V

    iput p4, p0, Lcom/ddtaxi/a/a/ds;->a:I

    iput-object p1, p0, Lcom/ddtaxi/a/a/ds;->b:Lcom/ddtaxi/a/a/am;

    iput-object p2, p0, Lcom/ddtaxi/a/a/ds;->d:Lcom/ddtaxi/a/a/dw;

    iput-object p3, p0, Lcom/ddtaxi/a/a/ds;->e:Lcom/ddtaxi/a/a/dr;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/ddtaxi/a/a/dr;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ddtaxi/a/a/am;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ddtaxi/a/a/ds;->c:Ljava/lang/String;

    invoke-static {p2}, Lcom/ddtaxi/a/a/dw;->a(Lcom/ddtaxi/a/a/dw;)Lcom/ddtaxi/a/a/dm;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ddtaxi/a/a/dm;->c(Lcom/ddtaxi/a/a/dy;)V

    invoke-static {p2}, Lcom/ddtaxi/a/a/dw;->a(Lcom/ddtaxi/a/a/dw;)Lcom/ddtaxi/a/a/dm;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ddtaxi/a/a/dm;->a(Lcom/ddtaxi/a/a/ds;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ddtaxi/a/a/am;Lcom/ddtaxi/a/a/dw;Lcom/ddtaxi/a/a/dr;ILcom/ddtaxi/a/a/ds;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ddtaxi/a/a/ds;-><init>(Lcom/ddtaxi/a/a/am;Lcom/ddtaxi/a/a/dw;Lcom/ddtaxi/a/a/dr;I)V

    return-void
.end method

.method private a(Lcom/ddtaxi/a/a/am;)V
    .locals 0

    iput-object p1, p0, Lcom/ddtaxi/a/a/ds;->b:Lcom/ddtaxi/a/a/am;

    return-void
.end method

.method static synthetic a(Lcom/ddtaxi/a/a/ds;Lcom/ddtaxi/a/a/am;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ddtaxi/a/a/ds;->a(Lcom/ddtaxi/a/a/am;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ds;->b:Lcom/ddtaxi/a/a/am;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/am;->k()I

    move-result v0

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/ddtaxi/a/a/ds;->a:I

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ds;->b:Lcom/ddtaxi/a/a/am;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/am;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ds;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e()Lcom/ddtaxi/a/a/dw;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ds;->d:Lcom/ddtaxi/a/a/dw;

    return-object v0
.end method

.method public f()Lcom/ddtaxi/a/a/am;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ds;->b:Lcom/ddtaxi/a/a/am;

    return-object v0
.end method

.method public g()Lcom/ddtaxi/a/a/dr;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ds;->e:Lcom/ddtaxi/a/a/dr;

    return-object v0
.end method

.method public h()Lcom/ddtaxi/a/a/aq;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ds;->b:Lcom/ddtaxi/a/a/am;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/am;->m()Lcom/ddtaxi/a/a/aq;

    move-result-object v0

    return-object v0
.end method

.method public synthetic n()Lcom/ddtaxi/a/a/gk;
    .locals 1

    invoke-virtual {p0}, Lcom/ddtaxi/a/a/ds;->f()Lcom/ddtaxi/a/a/am;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ds;->b:Lcom/ddtaxi/a/a/am;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/am;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
