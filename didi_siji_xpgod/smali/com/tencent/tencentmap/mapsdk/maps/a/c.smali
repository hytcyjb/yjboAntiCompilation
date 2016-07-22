.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/c;
.super Ljava/lang/Object;
.source "Context.java"


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Lcom/tencent/tencentmap/mapsdk/maps/a/n;

.field private final d:Lcom/tencent/tencentmap/mapsdk/maps/a/l;


# direct methods
.method public constructor <init>(IILcom/tencent/tencentmap/mapsdk/maps/a/l;Lcom/tencent/tencentmap/mapsdk/maps/a/n;)V
    .locals 1
    .parameter "minChildren"
    .parameter "maxChildren"
    .parameter "selector"
    .parameter "splitter"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    if-eqz p4, :cond_0

    if-eqz p3, :cond_0

    const/4 v0, 0x2

    if-le p2, v0, :cond_0

    if-lez p1, :cond_0

    if-lt p1, p2, :cond_1

    .line 28
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 31
    :cond_1
    iput-object p3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/c;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/l;

    .line 32
    iput p2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/c;->a:I

    .line 33
    iput p1, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/c;->b:I

    .line 34
    iput-object p4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/c;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/n;

    .line 35
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/c;->a:I

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/c;->b:I

    return v0
.end method

.method public final c()Lcom/tencent/tencentmap/mapsdk/maps/a/n;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/c;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/n;

    return-object v0
.end method

.method public final d()Lcom/tencent/tencentmap/mapsdk/maps/a/l;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/c;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/l;

    return-object v0
.end method
