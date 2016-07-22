.class Lcom/avos/avoscloud/AVQuery$15;
.super Lcom/avos/avoscloud/FindCallback;
.source "AVQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVQuery;->deleteAllInBackground(Lcom/avos/avoscloud/DeleteCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/avos/avoscloud/FindCallback",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVQuery;

.field final synthetic val$cb:Lcom/avos/avoscloud/DeleteCallback;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVQuery;Lcom/avos/avoscloud/DeleteCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1607
    iput-object p1, p0, Lcom/avos/avoscloud/AVQuery$15;->this$0:Lcom/avos/avoscloud/AVQuery;

    iput-object p2, p0, Lcom/avos/avoscloud/AVQuery$15;->val$cb:Lcom/avos/avoscloud/DeleteCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/FindCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Ljava/util/List;Lcom/avos/avoscloud/AVException;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;",
            "Lcom/avos/avoscloud/AVException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1611
    if-eqz p2, :cond_0

    .line 1612
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery$15;->val$cb:Lcom/avos/avoscloud/DeleteCallback;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lcom/avos/avoscloud/DeleteCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 1617
    :goto_0
    return-void

    .line 1614
    :cond_0
    iget-object v0, p0, Lcom/avos/avoscloud/AVQuery$15;->val$cb:Lcom/avos/avoscloud/DeleteCallback;

    invoke-static {p1, v0}, Lcom/avos/avoscloud/AVObject;->deleteAllInBackground(Ljava/util/Collection;Lcom/avos/avoscloud/DeleteCallback;)V

    goto :goto_0
.end method
