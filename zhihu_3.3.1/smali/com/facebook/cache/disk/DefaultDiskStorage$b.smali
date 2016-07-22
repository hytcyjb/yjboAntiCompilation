.class Lcom/facebook/cache/disk/DefaultDiskStorage$b;
.super Ljava/lang/Object;
.source "DefaultDiskStorage.java"

# interfaces
.implements Lcom/facebook/cache/disk/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/cache/disk/DefaultDiskStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/cache/disk/DefaultDiskStorage;

.field private final b:Lcom/facebook/a/b;

.field private c:J

.field private d:J


# direct methods
.method private constructor <init>(Lcom/facebook/cache/disk/DefaultDiskStorage;Ljava/io/File;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const-wide/16 v2, -0x1

    .line 542
    iput-object p1, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$b;->a:Lcom/facebook/cache/disk/DefaultDiskStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 543
    invoke-static {p2}, Lcom/facebook/common/internal/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    invoke-static {p2}, Lcom/facebook/a/b;->a(Ljava/io/File;)Lcom/facebook/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$b;->b:Lcom/facebook/a/b;

    .line 545
    iput-wide v2, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$b;->c:J

    .line 546
    iput-wide v2, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$b;->d:J

    .line 547
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/cache/disk/DefaultDiskStorage;Ljava/io/File;Lcom/facebook/cache/disk/DefaultDiskStorage$1;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 537
    invoke-direct {p0, p1, p2}, Lcom/facebook/cache/disk/DefaultDiskStorage$b;-><init>(Lcom/facebook/cache/disk/DefaultDiskStorage;Ljava/io/File;)V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 4

    .prologue
    .line 551
    iget-wide v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$b;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$b;->b:Lcom/facebook/a/b;

    invoke-virtual {v0}, Lcom/facebook/a/b;->c()Ljava/io/File;

    move-result-object v0

    .line 553
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$b;->d:J

    .line 555
    :cond_0
    iget-wide v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$b;->d:J

    return-wide v0
.end method

.method public b()Lcom/facebook/a/b;
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$b;->b:Lcom/facebook/a/b;

    return-object v0
.end method

.method public c()J
    .locals 4

    .prologue
    .line 565
    iget-wide v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$b;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 566
    iget-object v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$b;->b:Lcom/facebook/a/b;

    invoke-virtual {v0}, Lcom/facebook/a/b;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$b;->c:J

    .line 568
    :cond_0
    iget-wide v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$b;->c:J

    return-wide v0
.end method
