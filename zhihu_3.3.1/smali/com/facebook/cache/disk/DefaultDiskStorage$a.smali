.class Lcom/facebook/cache/disk/DefaultDiskStorage$a;
.super Ljava/lang/Object;
.source "DefaultDiskStorage.java"

# interfaces
.implements Lcom/facebook/common/file/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/cache/disk/DefaultDiskStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/cache/disk/DefaultDiskStorage;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/cache/disk/e$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/facebook/cache/disk/DefaultDiskStorage;)V
    .locals 1
    .parameter

    .prologue
    .line 235
    iput-object p1, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$a;->a:Lcom/facebook/cache/disk/DefaultDiskStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$a;->b:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/cache/disk/DefaultDiskStorage;Lcom/facebook/cache/disk/DefaultDiskStorage$1;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 235
    invoke-direct {p0, p1}, Lcom/facebook/cache/disk/DefaultDiskStorage$a;-><init>(Lcom/facebook/cache/disk/DefaultDiskStorage;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/cache/disk/e$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 257
    iget-object v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$a;->b:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/io/File;)V
    .locals 0
    .parameter

    .prologue
    .line 241
    return-void
.end method

.method public b(Ljava/io/File;)V
    .locals 4
    .parameter

    .prologue
    .line 245
    iget-object v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$a;->a:Lcom/facebook/cache/disk/DefaultDiskStorage;

    invoke-static {v0, p1}, Lcom/facebook/cache/disk/DefaultDiskStorage;->a(Lcom/facebook/cache/disk/DefaultDiskStorage;Ljava/io/File;)Lcom/facebook/cache/disk/DefaultDiskStorage$c;

    move-result-object v0

    .line 246
    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/facebook/cache/disk/DefaultDiskStorage$c;->a:Lcom/facebook/cache/disk/DefaultDiskStorage$FileType;

    sget-object v1, Lcom/facebook/cache/disk/DefaultDiskStorage$FileType;->CONTENT:Lcom/facebook/cache/disk/DefaultDiskStorage$FileType;

    if-ne v0, v1, :cond_0

    .line 247
    iget-object v0, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$a;->b:Ljava/util/List;

    new-instance v1, Lcom/facebook/cache/disk/DefaultDiskStorage$b;

    iget-object v2, p0, Lcom/facebook/cache/disk/DefaultDiskStorage$a;->a:Lcom/facebook/cache/disk/DefaultDiskStorage;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Lcom/facebook/cache/disk/DefaultDiskStorage$b;-><init>(Lcom/facebook/cache/disk/DefaultDiskStorage;Ljava/io/File;Lcom/facebook/cache/disk/DefaultDiskStorage$1;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    :cond_0
    return-void
.end method

.method public c(Ljava/io/File;)V
    .locals 0
    .parameter

    .prologue
    .line 253
    return-void
.end method
