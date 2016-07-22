.class final Lcom/avos/avoscloud/AVObject$6;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVObject;->fetchAllIfNeededInBackground(Ljava/util/List;Lcom/avos/avoscloud/FindCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$internalCallback:Lcom/avos/avoscloud/FindCallback;

.field final synthetic val$result:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/avos/avoscloud/FindCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 745
    iput-object p1, p0, Lcom/avos/avoscloud/AVObject$6;->val$result:Ljava/util/List;

    iput-object p2, p0, Lcom/avos/avoscloud/AVObject$6;->val$internalCallback:Lcom/avos/avoscloud/FindCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupRequestFinished(IILcom/avos/avoscloud/AVObject;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 748
    if-eqz p3, :cond_0

    .line 749
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject$6;->val$result:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 751
    :cond_0
    if-gtz p1, :cond_1

    iget-object v0, p0, Lcom/avos/avoscloud/AVObject$6;->val$internalCallback:Lcom/avos/avoscloud/FindCallback;

    if-eqz v0, :cond_1

    .line 752
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject$6;->val$internalCallback:Lcom/avos/avoscloud/FindCallback;

    iget-object v1, p0, Lcom/avos/avoscloud/AVObject$6;->val$result:Ljava/util/List;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/FindCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 754
    :cond_1
    return-void
.end method
