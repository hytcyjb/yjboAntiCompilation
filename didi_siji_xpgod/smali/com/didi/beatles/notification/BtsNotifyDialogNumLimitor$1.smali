.class final Lcom/didi/beatles/notification/BtsNotifyDialogNumLimitor$1;
.super Landroid/support/v4/util/LruCache;
.source "BtsNotifyDialogNumLimitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/notification/BtsNotifyDialogNumLimitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

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


# direct methods
.method constructor <init>(I)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 11
    invoke-direct {p0, p1}, Landroid/support/v4/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected entryRemoved(ZLjava/lang/Integer;Ljava/lang/ref/SoftReference;Ljava/lang/ref/SoftReference;)V
    .locals 1
    .parameter "evicted"
    .parameter "key"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/app/Activity;",
            ">;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/app/Activity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p3, oldValue:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/app/Activity;>;"
    .local p4, newValue:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/app/Activity;>;"
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/util/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 18
    if-eqz p3, :cond_0

    .line 19
    invoke-virtual {p3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 20
    .local v0, ac:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 24
    .end local v0           #ac:Landroid/app/Activity;
    :cond_0
    return-void
.end method

.method protected bridge synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 11
    check-cast p2, Ljava/lang/Integer;

    .end local p2
    check-cast p3, Ljava/lang/ref/SoftReference;

    .end local p3
    check-cast p4, Ljava/lang/ref/SoftReference;

    .end local p4
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/didi/beatles/notification/BtsNotifyDialogNumLimitor$1;->entryRemoved(ZLjava/lang/Integer;Ljava/lang/ref/SoftReference;Ljava/lang/ref/SoftReference;)V

    return-void
.end method
