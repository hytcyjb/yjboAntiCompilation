.class final Lcom/ddtaxi/a/a/ft;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ddtaxi/a/a/eo;


# instance fields
.field final a:Lcom/ddtaxi/a/a/fy;

.field final b:I

.field final c:Lcom/ddtaxi/a/a/iw;

.field final d:Z

.field final e:Z


# direct methods
.method constructor <init>(Lcom/ddtaxi/a/a/fy;ILcom/ddtaxi/a/a/iw;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ddtaxi/a/a/ft;->a:Lcom/ddtaxi/a/a/fy;

    iput p2, p0, Lcom/ddtaxi/a/a/ft;->b:I

    iput-object p3, p0, Lcom/ddtaxi/a/a/ft;->c:Lcom/ddtaxi/a/a/iw;

    iput-boolean p4, p0, Lcom/ddtaxi/a/a/ft;->d:Z

    iput-boolean p5, p0, Lcom/ddtaxi/a/a/ft;->e:Z

    return-void
.end method


# virtual methods
.method public A()Lcom/ddtaxi/a/a/fy;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ft;->a:Lcom/ddtaxi/a/a/fy;

    return-object v0
.end method

.method public a(Lcom/ddtaxi/a/a/ft;)I
    .locals 2

    iget v0, p0, Lcom/ddtaxi/a/a/ft;->b:I

    iget v1, p1, Lcom/ddtaxi/a/a/ft;->b:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public a(Lcom/ddtaxi/a/a/gn;Lcom/ddtaxi/a/a/gm;)Lcom/ddtaxi/a/a/gn;
    .locals 1

    check-cast p1, Lcom/ddtaxi/a/a/fo;

    check-cast p2, Lcom/ddtaxi/a/a/fn;

    invoke-virtual {p1, p2}, Lcom/ddtaxi/a/a/fo;->a(Lcom/ddtaxi/a/a/fn;)Lcom/ddtaxi/a/a/fo;

    move-result-object v0

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/ddtaxi/a/a/ft;

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/ft;->a(Lcom/ddtaxi/a/a/ft;)I

    move-result v0

    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/ddtaxi/a/a/ft;->b:I

    return v0
.end method

.method public h()Lcom/ddtaxi/a/a/jb;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ft;->c:Lcom/ddtaxi/a/a/iw;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/iw;->a()Lcom/ddtaxi/a/a/jb;

    move-result-object v0

    return-object v0
.end method

.method public j()Lcom/ddtaxi/a/a/iw;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ft;->c:Lcom/ddtaxi/a/a/iw;

    return-object v0
.end method

.method public o()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ddtaxi/a/a/ft;->d:Z

    return v0
.end method

.method public p()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ddtaxi/a/a/ft;->e:Z

    return v0
.end method
