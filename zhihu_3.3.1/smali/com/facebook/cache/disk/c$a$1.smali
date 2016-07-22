.class Lcom/facebook/cache/disk/c$a$1;
.super Ljava/lang/Object;
.source "DiskCacheConfig.java"

# interfaces
.implements Lcom/facebook/common/internal/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/cache/disk/c$a;->a()Lcom/facebook/cache/disk/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/common/internal/i",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/cache/disk/c$a;


# direct methods
.method constructor <init>(Lcom/facebook/cache/disk/c$a;)V
    .locals 0
    .parameter

    .prologue
    .line 243
    iput-object p1, p0, Lcom/facebook/cache/disk/c$a$1;->a:Lcom/facebook/cache/disk/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/io/File;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/facebook/cache/disk/c$a$1;->a:Lcom/facebook/cache/disk/c$a;

    invoke-static {v0}, Lcom/facebook/cache/disk/c$a;->k(Lcom/facebook/cache/disk/c$a;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/facebook/cache/disk/c$a$1;->a()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
