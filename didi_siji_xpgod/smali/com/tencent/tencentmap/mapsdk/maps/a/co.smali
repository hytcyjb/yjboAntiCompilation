.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/co;
.super Ljava/lang/Object;
.source "RingBuffer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:I

.field private volatile b:[Ljava/lang/Object;

.field private volatile c:I

.field private volatile d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/co;,"Lcom/tencent/tencentmap/mapsdk/maps/a/co<TE;>;"
    const/16 v0, 0x64

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/co;->a:I

    .line 41
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/co;->b:[Ljava/lang/Object;

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/co;->d:I

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/co;->c:I

    .line 43
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/co;,"Lcom/tencent/tencentmap/mapsdk/maps/a/co<TE;>;"
    const/4 v1, 0x0

    .line 73
    iget v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/co;->d:I

    iget v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/co;->c:I

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    if-eqz v2, :cond_1

    move-object v0, v1

    .line 84
    :goto_1
    return-object v0

    .line 73
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 77
    :cond_1
    iget v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/co;->c:I

    iget v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/co;->a:I

    rem-int/2addr v2, v3

    iput v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/co;->c:I

    .line 80
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/co;->b:[Ljava/lang/Object;

    iget v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/co;->c:I

    aget-object v0, v2, v3

    .line 81
    .local v0, elem:Ljava/lang/Object;,"TE;"
    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/co;->b:[Ljava/lang/Object;

    iget v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/co;->c:I

    aput-object v1, v2, v3

    .line 82
    iget v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/co;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/co;->c:I

    goto :goto_1
.end method

.method public final a(Ljava/lang/Object;)Z
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/co;,"Lcom/tencent/tencentmap/mapsdk/maps/a/co<TE;>;"
    .local p1, obj:Ljava/lang/Object;,"TE;"
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 59
    iget v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/co;->d:I

    add-int/lit8 v2, v2, 0x1

    iget v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/co;->a:I

    rem-int/2addr v2, v3

    iget v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/co;->c:I

    if-ne v2, v3, :cond_0

    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    .line 65
    :goto_1
    return v0

    :cond_0
    move v2, v0

    .line 59
    goto :goto_0

    .line 63
    :cond_1
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/co;->d:I

    iget v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/co;->a:I

    rem-int/2addr v0, v2

    iput v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/co;->d:I

    .line 64
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/co;->b:[Ljava/lang/Object;

    iget v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/co;->d:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/co;->d:I

    aput-object p1, v0, v2

    move v0, v1

    .line 65
    goto :goto_1
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 91
    .local p0, this:Lcom/tencent/tencentmap/mapsdk/maps/a/co;,"Lcom/tencent/tencentmap/mapsdk/maps/a/co<TE;>;"
    const/4 v1, 0x0

    iput v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/co;->d:I

    iput v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/co;->c:I

    .line 92
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/co;->b:[Ljava/lang/Object;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 95
    return-void

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/co;->b:[Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
