.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/t;
.super Ljava/lang/Object;
.source "ListPair.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/tencent/tencentmap/mapsdk/maps/a/s;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lcom/tencent/tencentmap/mapsdk/maps/a/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tencentmap/mapsdk/maps/a/r",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/tencent/tencentmap/mapsdk/maps/a/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/tencentmap/mapsdk/maps/a/r",
            "<TT;>;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/Float;

.field private final d:Ljava/lang/Float;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/t;,"Lcom/tencent/tencentmap/mapsdk/maps/a/t<TT;>;"
    .local p1, list1:Ljava/util/List;,"Ljava/util/List<TT;>;"
    .local p2, list2:Ljava/util/List;,"Ljava/util/List<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/t;->c:Ljava/lang/Float;

    .line 21
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/r;

    invoke-direct {v0, p1}, Lcom/tencent/tencentmap/mapsdk/maps/a/r;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/t;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/r;

    .line 22
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/r;

    invoke-direct {v0, p2}, Lcom/tencent/tencentmap/mapsdk/maps/a/r;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/t;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/r;

    .line 23
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/t;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/r;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/r;->b()Lcom/tencent/tencentmap/mapsdk/maps/a/q;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/q;->a()Lcom/tencent/tencentmap/mapsdk/maps/a/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->h()F

    move-result v0

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/t;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/r;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/r;->b()Lcom/tencent/tencentmap/mapsdk/maps/a/q;

    move-result-object v1

    invoke-interface {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/q;->a()Lcom/tencent/tencentmap/mapsdk/maps/a/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->h()F

    move-result v1

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/t;->d:Ljava/lang/Float;

    .line 24
    return-void
.end method


# virtual methods
.method public final a()Lcom/tencent/tencentmap/mapsdk/maps/a/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/r",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 27
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/t;,"Lcom/tencent/tencentmap/mapsdk/maps/a/t<TT;>;"
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/t;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/r;

    return-object v0
.end method

.method public final b()Lcom/tencent/tencentmap/mapsdk/maps/a/r;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/r",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/t;,"Lcom/tencent/tencentmap/mapsdk/maps/a/t<TT;>;"
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/t;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/r;

    return-object v0
.end method

.method public final c()F
    .locals 2

    .prologue
    .line 35
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/t;,"Lcom/tencent/tencentmap/mapsdk/maps/a/t<TT;>;"
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/t;->c:Ljava/lang/Float;

    if-nez v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/t;->a:Lcom/tencent/tencentmap/mapsdk/maps/a/r;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/r;->b()Lcom/tencent/tencentmap/mapsdk/maps/a/q;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/q;->a()Lcom/tencent/tencentmap/mapsdk/maps/a/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->g()F

    move-result v0

    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/t;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/r;

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/r;->b()Lcom/tencent/tencentmap/mapsdk/maps/a/q;

    move-result-object v1

    invoke-interface {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/q;->a()Lcom/tencent/tencentmap/mapsdk/maps/a/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/tencentmap/mapsdk/maps/a/v;->g()F

    move-result v1

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/t;->c:Ljava/lang/Float;

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/t;->c:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method
