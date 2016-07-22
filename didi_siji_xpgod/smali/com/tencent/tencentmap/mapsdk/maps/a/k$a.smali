.class public final Lcom/tencent/tencentmap/mapsdk/maps/a/k$a;
.super Ljava/lang/Object;
.source "RTree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tencentmap/mapsdk/maps/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/Integer;

.field private b:Ljava/lang/Integer;

.field private c:Lcom/tencent/tencentmap/mapsdk/maps/a/n;

.field private d:Lcom/tencent/tencentmap/mapsdk/maps/a/l;

.field private e:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/k$a;->a:Ljava/lang/Integer;

    .line 183
    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/k$a;->b:Ljava/lang/Integer;

    .line 184
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/o;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/o;-><init>()V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/k$a;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/n;

    .line 185
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/m;

    invoke-direct {v0}, Lcom/tencent/tencentmap/mapsdk/maps/a/m;-><init>()V

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/k$a;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/l;

    .line 186
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/k$a;->e:Z

    .line 189
    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0
    .parameter

    .prologue
    .line 173
    invoke-direct {p0}, Lcom/tencent/tencentmap/mapsdk/maps/a/k$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/tencent/tencentmap/mapsdk/maps/a/k$a;
    .locals 1

    .prologue
    .line 202
    const/16 v0, 0x16

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/k$a;->b:Ljava/lang/Integer;

    .line 203
    return-object p0
.end method

.method public final b()Lcom/tencent/tencentmap/mapsdk/maps/a/k$a;
    .locals 1

    .prologue
    .line 214
    const/16 v0, 0x20

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/k$a;->a:Ljava/lang/Integer;

    .line 215
    return-object p0
.end method

.method public final c()Lcom/tencent/tencentmap/mapsdk/maps/a/k;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S::",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/q;",
            ">()",
            "Lcom/tencent/tencentmap/mapsdk/maps/a/k",
            "<TT;TS;>;"
        }
    .end annotation

    .prologue
    .line 266
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/k$a;->a:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 267
    iget-boolean v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/k$a;->e:Z

    .line 268
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/k$a;->a:Ljava/lang/Integer;

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/k$a;->b:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 272
    iget-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/k$a;->a:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-double v0, v0

    const-wide v2, 0x3fd999999999999aL

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/k$a;->b:Ljava/lang/Integer;

    .line 273
    :cond_1
    new-instance v0, Lcom/tencent/tencentmap/mapsdk/maps/a/k;

    new-instance v1, Lcom/tencent/tencentmap/mapsdk/maps/a/c;

    iget-object v2, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/k$a;->b:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/k$a;->a:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/k$a;->d:Lcom/tencent/tencentmap/mapsdk/maps/a/l;

    iget-object v5, p0, Lcom/tencent/tencentmap/mapsdk/maps/a/k$a;->c:Lcom/tencent/tencentmap/mapsdk/maps/a/n;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/tencent/tencentmap/mapsdk/maps/a/c;-><init>(IILcom/tencent/tencentmap/mapsdk/maps/a/l;Lcom/tencent/tencentmap/mapsdk/maps/a/n;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/tencent/tencentmap/mapsdk/maps/a/k;-><init>(Lcom/tencent/tencentmap/mapsdk/maps/a/c;B)V

    return-object v0
.end method
