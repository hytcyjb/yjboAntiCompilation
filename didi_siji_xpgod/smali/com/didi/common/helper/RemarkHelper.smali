.class public Lcom/didi/common/helper/RemarkHelper;
.super Ljava/lang/Object;
.source "RemarkHelper.java"


# static fields
.field private static remarkListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Lcom/didi/frame/remark/RemarkListener;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/didi/common/helper/RemarkHelper;->remarkListeners:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addRemarkListener(Lcom/didi/frame/remark/RemarkListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 15
    if-nez p0, :cond_0

    .line 18
    :goto_0
    return-void

    .line 17
    :cond_0
    sget-object v0, Lcom/didi/common/helper/RemarkHelper;->remarkListeners:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static notifyChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "lastRemark"
    .parameter "newRemark"

    .prologue
    .line 31
    sget-object v3, Lcom/didi/common/helper/RemarkHelper;->remarkListeners:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 34
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/SoftReference<Lcom/didi/frame/remark/RemarkListener;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 35
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/SoftReference;

    .line 36
    .local v2, ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lcom/didi/frame/remark/RemarkListener;>;"
    if-eqz v2, :cond_0

    .line 38
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/didi/frame/remark/RemarkListener;

    .line 39
    .local v1, listener:Lcom/didi/frame/remark/RemarkListener;
    if-eqz v1, :cond_0

    .line 41
    invoke-interface {v1, p0, p1}, Lcom/didi/frame/remark/RemarkListener;->onRemarkChange(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 43
    .end local v1           #listener:Lcom/didi/frame/remark/RemarkListener;
    .end local v2           #ref:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Lcom/didi/frame/remark/RemarkListener;>;"
    :cond_1
    return-void
.end method

.method public static removeRemarkListener(Lcom/didi/frame/remark/RemarkListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 21
    if-nez p0, :cond_0

    .line 24
    :goto_0
    return-void

    .line 23
    :cond_0
    sget-object v0, Lcom/didi/common/helper/RemarkHelper;->remarkListeners:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static setRemark(Ljava/lang/String;)V
    .locals 4
    .parameter "string"

    .prologue
    .line 46
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRemark setRemark : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 47
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getLastRemark()Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, lastRemark:Ljava/lang/String;
    move-object v1, p0

    .line 49
    .local v1, newRemark:Ljava/lang/String;
    invoke-static {p0}, Lcom/didi/frame/business/OrderHelper;->setRemark(Ljava/lang/String;)V

    .line 50
    invoke-static {v0, v1}, Lcom/didi/common/helper/RemarkHelper;->notifyChange(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    return-void
.end method
