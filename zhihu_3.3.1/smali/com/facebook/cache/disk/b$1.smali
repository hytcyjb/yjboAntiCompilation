.class Lcom/facebook/cache/disk/b$1;
.super Ljava/lang/Object;
.source "DefaultEntryEvictionComparatorSupplier.java"

# interfaces
.implements Lcom/facebook/cache/disk/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/cache/disk/b;->a()Lcom/facebook/cache/disk/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/cache/disk/b;


# direct methods
.method constructor <init>(Lcom/facebook/cache/disk/b;)V
    .locals 0
    .parameter

    .prologue
    .line 18
    iput-object p1, p0, Lcom/facebook/cache/disk/b$1;->a:Lcom/facebook/cache/disk/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/cache/disk/e$a;Lcom/facebook/cache/disk/e$a;)I
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-interface {p1}, Lcom/facebook/cache/disk/e$a;->a()J

    move-result-wide v0

    .line 22
    invoke-interface {p2}, Lcom/facebook/cache/disk/e$a;->a()J

    move-result-wide v2

    .line 23
    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    cmp-long v0, v2, v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 18
    check-cast p1, Lcom/facebook/cache/disk/e$a;

    check-cast p2, Lcom/facebook/cache/disk/e$a;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/cache/disk/b$1;->a(Lcom/facebook/cache/disk/e$a;Lcom/facebook/cache/disk/e$a;)I

    move-result v0

    return v0
.end method
