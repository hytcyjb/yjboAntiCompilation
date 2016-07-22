.class Lcom/ddtaxi/a/a/ha;
.super Ljava/util/AbstractList;

# interfaces
.implements Ljava/util/List;


# instance fields
.field a:Lcom/ddtaxi/a/a/gy;


# direct methods
.method constructor <init>(Lcom/ddtaxi/a/a/gy;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lcom/ddtaxi/a/a/ha;->a:Lcom/ddtaxi/a/a/gy;

    return-void
.end method


# virtual methods
.method public a(I)Lcom/ddtaxi/a/a/ep;
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ha;->a:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0, p1}, Lcom/ddtaxi/a/a/gy;->a(I)Lcom/ddtaxi/a/a/ep;

    move-result-object v0

    return-object v0
.end method

.method a()V
    .locals 1

    iget v0, p0, Lcom/ddtaxi/a/a/ha;->modCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/ddtaxi/a/a/ha;->modCount:I

    return-void
.end method

.method public synthetic get(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ddtaxi/a/a/ha;->a(I)Lcom/ddtaxi/a/a/ep;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lcom/ddtaxi/a/a/ha;->a:Lcom/ddtaxi/a/a/gy;

    invoke-virtual {v0}, Lcom/ddtaxi/a/a/gy;->c()I

    move-result v0

    return v0
.end method
