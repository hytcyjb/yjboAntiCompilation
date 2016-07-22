.class public Lcom/didi/beatles/notification/BtsNotifyDialogNumLimitor;
.super Ljava/lang/Object;
.source "BtsNotifyDialogNumLimitor.java"


# static fields
.field private static mCache:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/app/Activity;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 10
    new-instance v0, Lcom/didi/beatles/notification/BtsNotifyDialogNumLimitor$1;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/didi/beatles/notification/BtsNotifyDialogNumLimitor$1;-><init>(I)V

    sput-object v0, Lcom/didi/beatles/notification/BtsNotifyDialogNumLimitor;->mCache:Landroid/support/v4/util/LruCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Landroid/app/Activity;)V
    .locals 3
    .parameter "ac"

    .prologue
    .line 28
    if-eqz p0, :cond_0

    .line 29
    sget-object v0, Lcom/didi/beatles/notification/BtsNotifyDialogNumLimitor;->mCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    :cond_0
    return-void
.end method

.method public static clearAll()V
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/didi/beatles/notification/BtsNotifyDialogNumLimitor;->mCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->evictAll()V

    .line 42
    return-void
.end method

.method public static remove(Landroid/app/Activity;)V
    .locals 2
    .parameter "ac"

    .prologue
    .line 35
    if-eqz p0, :cond_0

    .line 36
    sget-object v0, Lcom/didi/beatles/notification/BtsNotifyDialogNumLimitor;->mCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    :cond_0
    return-void
.end method
