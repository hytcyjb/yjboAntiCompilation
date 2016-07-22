.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/ao;
.super Ljava/lang/Object;
.source "KeyframeSet.java"


# instance fields
.field a:I

.field b:Lcom/tencent/tencentmap/mapsdk/maps/a/an;

.field c:Lcom/tencent/tencentmap/mapsdk/maps/a/an;

.field d:Landroid/view/animation/Interpolator;

.field e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/an;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private varargs constructor <init>([Lcom/tencent/tencentmap/mapsdk/maps/a/an;)V
    .locals 2
    .parameter "keyframes"

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    array-length v0, p1

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ao;->a:I

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ao;->e:Ljava/util/ArrayList;

    .line 51
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ao;->e:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 52
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ao;->e:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/an;

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ao;->b:Lcom/tencent/tencentmap/mapsdk/maps/a/an;

    .line 53
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ao;->e:Ljava/util/ArrayList;

    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ao;->a:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tencentmap/mapsdk/maps/a/an;

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ao;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/an;

    .line 54
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ao;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/an;

    invoke-virtual {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/an;->b()Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ao;->d:Landroid/view/animation/Interpolator;

    .line 55
    return-void
.end method


# virtual methods
.method public final a()Lcom/tencent/tencentmap/mapsdk/maps/a/ao;
    .locals 5

    .prologue
    .line 144
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ao;->e:Ljava/util/ArrayList;

    .line 145
    .local v1, keyframes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/tencent/tencentmap/mapsdk/maps/a/an;>;"
    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ao;->e:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 146
    .local v3, numKeyframes:I
    new-array v2, v3, [Lcom/tencent/tencentmap/mapsdk/maps/a/an;

    .line 147
    .local v2, newKeyframes:[Lcom/tencent/tencentmap/mapsdk/maps/a/an;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, v3, :cond_0

    .line 150
    new-instance v4, Lcom/tencent/tencentmap/mapsdk/maps/a/ao;

    invoke-direct {v4, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/ao;-><init>([Lcom/tencent/tencentmap/mapsdk/maps/a/an;)V

    .line 151
    return-object v4

    .line 148
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tencent/tencentmap/mapsdk/maps/a/an;

    invoke-virtual {v4}, Lcom/tencent/tencentmap/mapsdk/maps/a/an;->c()Lcom/tencent/tencentmap/mapsdk/maps/a/an;

    move-result-object v4

    aput-object v4, v2, v0

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/ao;->a()Lcom/tencent/tencentmap/mapsdk/maps/a/ao;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 213
    const-string v1, " "

    .line 214
    .local v1, returnVal:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ao;->a:I

    if-lt v0, v2, :cond_0

    .line 217
    return-object v1

    .line 215
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/ao;->e:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/tencentmap/mapsdk/maps/a/an;

    invoke-virtual {v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/an;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 214
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
