.class Lcom/avos/avoscloud/AVUser$27;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVUser;->getFollowersInBackground(Lcom/avos/avoscloud/FindCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVUser;

.field final synthetic val$callback:Lcom/avos/avoscloud/FindCallback;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVUser;Lcom/avos/avoscloud/FindCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1835
    iput-object p1, p0, Lcom/avos/avoscloud/AVUser$27;->this$0:Lcom/avos/avoscloud/AVUser;

    iput-object p2, p0, Lcom/avos/avoscloud/AVUser$27;->val$callback:Lcom/avos/avoscloud/FindCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1847
    invoke-super {p0, p1, p2}, Lcom/avos/avoscloud/GenericObjectCallback;->onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1848
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser$27;->val$callback:Lcom/avos/avoscloud/FindCallback;

    if-eqz v0, :cond_0

    .line 1849
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser$27;->val$callback:Lcom/avos/avoscloud/FindCallback;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/FindCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 1851
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1838
    invoke-super {p0, p1, p2}, Lcom/avos/avoscloud/GenericObjectCallback;->onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V

    .line 1839
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser$27;->this$0:Lcom/avos/avoscloud/AVUser;

    const-string v1, "follower"

    #calls: Lcom/avos/avoscloud/AVUser;->processResultByTag(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    invoke-static {v0, p1, v1}, Lcom/avos/avoscloud/AVUser;->access$100(Lcom/avos/avoscloud/AVUser;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1840
    iget-object v1, p0, Lcom/avos/avoscloud/AVUser$27;->val$callback:Lcom/avos/avoscloud/FindCallback;

    if-eqz v1, :cond_0

    .line 1841
    iget-object v1, p0, Lcom/avos/avoscloud/AVUser$27;->val$callback:Lcom/avos/avoscloud/FindCallback;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/avos/avoscloud/FindCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 1843
    :cond_0
    return-void
.end method
