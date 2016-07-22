.class final Lcom/avos/avoscloud/AVObject$8;
.super Lcom/avos/avoscloud/GetCallback;
.source "AVObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVObject;->fetchAllInBackground(ZLjava/util/List;Lcom/avos/avoscloud/GenericObjectCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/avos/avoscloud/GetCallback",
        "<",
        "Lcom/avos/avoscloud/AVObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/avos/avoscloud/GenericObjectCallback;

.field final synthetic val$counter:Ljava/util/concurrent/atomic/AtomicInteger;

.field final synthetic val$total:I


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/GenericObjectCallback;Ljava/util/concurrent/atomic/AtomicInteger;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 786
    iput-object p1, p0, Lcom/avos/avoscloud/AVObject$8;->val$callback:Lcom/avos/avoscloud/GenericObjectCallback;

    iput-object p2, p0, Lcom/avos/avoscloud/AVObject$8;->val$counter:Ljava/util/concurrent/atomic/AtomicInteger;

    iput p3, p0, Lcom/avos/avoscloud/AVObject$8;->val$total:I

    invoke-direct {p0}, Lcom/avos/avoscloud/GetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/avos/avoscloud/AVObject;Lcom/avos/avoscloud/AVException;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 789
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject$8;->val$callback:Lcom/avos/avoscloud/GenericObjectCallback;

    if-eqz v0, :cond_0

    .line 790
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject$8;->val$callback:Lcom/avos/avoscloud/GenericObjectCallback;

    iget-object v1, p0, Lcom/avos/avoscloud/AVObject$8;->val$counter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    iget v2, p0, Lcom/avos/avoscloud/AVObject$8;->val$total:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/avos/avoscloud/GenericObjectCallback;->onGroupRequestFinished(IILcom/avos/avoscloud/AVObject;)V

    .line 792
    :cond_0
    return-void
.end method
