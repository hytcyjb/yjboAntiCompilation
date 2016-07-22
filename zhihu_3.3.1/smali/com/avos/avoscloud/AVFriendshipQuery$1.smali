.class Lcom/avos/avoscloud/AVFriendshipQuery$1;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVFriendshipQuery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVFriendshipQuery;->getInBackground(Ljava/lang/String;ZLcom/avos/avoscloud/callback/AVFriendshipCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVFriendshipQuery;

.field final synthetic val$internalCallback:Lcom/avos/avoscloud/callback/AVFriendshipCallback;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVFriendshipQuery;Lcom/avos/avoscloud/callback/AVFriendshipCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/avos/avoscloud/AVFriendshipQuery$1;->this$0:Lcom/avos/avoscloud/AVFriendshipQuery;

    iput-object p2, p0, Lcom/avos/avoscloud/AVFriendshipQuery$1;->val$internalCallback:Lcom/avos/avoscloud/callback/AVFriendshipCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 85
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery$1;->val$internalCallback:Lcom/avos/avoscloud/callback/AVFriendshipCallback;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/avos/avoscloud/AVFriendshipQuery$1;->val$internalCallback:Lcom/avos/avoscloud/callback/AVFriendshipCallback;

    const/4 v1, 0x0

    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/callback/AVFriendshipCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 89
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 37
    .line 39
    invoke-static {p1}, Lcom/avos/avoscloud/AVUtils;->isBlankContent(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 41
    new-instance p2, Lcom/avos/avoscloud/AVException;

    const/16 v0, 0x65

    const-string v1, "Object is not found."

    invoke-direct {p2, v0, v1}, Lcom/avos/avoscloud/AVException;-><init>(ILjava/lang/String;)V

    move-object v0, v3

    .line 78
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/avos/avoscloud/AVFriendshipQuery$1;->val$internalCallback:Lcom/avos/avoscloud/callback/AVFriendshipCallback;

    if-eqz v1, :cond_1

    .line 79
    iget-object v1, p0, Lcom/avos/avoscloud/AVFriendshipQuery$1;->val$internalCallback:Lcom/avos/avoscloud/callback/AVFriendshipCallback;

    invoke-virtual {v1, v0, p2}, Lcom/avos/avoscloud/callback/AVFriendshipCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 81
    :cond_1
    return-void

    .line 44
    :cond_2
    :try_start_0
    new-instance v4, Lcom/avos/avoscloud/AVFriendship;

    invoke-direct {v4}, Lcom/avos/avoscloud/AVFriendship;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 45
    :try_start_1
    const-class v0, Lcom/avos/avoscloud/AVFriendship$AVFriendshipResponse;

    invoke-static {p1, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/avos/avoscloud/AVFriendship$AVFriendshipResponse;

    .line 47
    iget-object v1, p0, Lcom/avos/avoscloud/AVFriendshipQuery$1;->this$0:Lcom/avos/avoscloud/AVFriendshipQuery;

    iget-object v1, v1, Lcom/avos/avoscloud/AVFriendshipQuery;->userClazz:Ljava/lang/Class;

    if-eqz v1, :cond_6

    .line 48
    invoke-virtual {v4}, Lcom/avos/avoscloud/AVFriendship;->getFollowers()Ljava/util/List;

    move-result-object v5

    .line 49
    invoke-virtual {v4}, Lcom/avos/avoscloud/AVFriendship;->getFollowees()Ljava/util/List;

    move-result-object v6

    .line 50
    iget-object v1, v0, Lcom/avos/avoscloud/AVFriendship$AVFriendshipResponse;->followers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 51
    iget-object v2, p0, Lcom/avos/avoscloud/AVFriendshipQuery$1;->this$0:Lcom/avos/avoscloud/AVFriendshipQuery;

    iget-object v2, v2, Lcom/avos/avoscloud/AVFriendshipQuery;->userClazz:Ljava/lang/Class;

    const/4 v8, 0x0

    invoke-static {v2, v8}, Lcom/avos/avoscloud/AVUser;->newAVUser(Ljava/lang/Class;Lcom/avos/avoscloud/LogInCallback;)Lcom/avos/avoscloud/AVUser;

    move-result-object v8

    .line 52
    const-string v2, "follower"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-static {v2, v8}, Lcom/avos/avoscloud/AVUtils;->copyPropertiesFromMapToAVObject(Ljava/util/Map;Lcom/avos/avoscloud/AVObject;)V

    .line 54
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    invoke-virtual {v4}, Lcom/avos/avoscloud/AVFriendship;->getUser()Lcom/avos/avoscloud/AVUser;

    move-result-object v2

    if-nez v2, :cond_3

    .line 56
    iget-object v2, p0, Lcom/avos/avoscloud/AVFriendshipQuery$1;->this$0:Lcom/avos/avoscloud/AVFriendshipQuery;

    iget-object v2, v2, Lcom/avos/avoscloud/AVFriendshipQuery;->userClazz:Ljava/lang/Class;

    const/4 v8, 0x0

    invoke-static {v2, v8}, Lcom/avos/avoscloud/AVUser;->newAVUser(Ljava/lang/Class;Lcom/avos/avoscloud/LogInCallback;)Lcom/avos/avoscloud/AVUser;

    move-result-object v2

    .line 57
    const-string v8, "user"

    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-static {v1, v2}, Lcom/avos/avoscloud/AVUtils;->copyPropertiesFromMapToAVObject(Ljava/util/Map;Lcom/avos/avoscloud/AVObject;)V

    .line 59
    invoke-virtual {v4, v2}, Lcom/avos/avoscloud/AVFriendship;->setUser(Lcom/avos/avoscloud/AVUser;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 72
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v4

    .line 73
    :goto_2
    iget-object v2, p0, Lcom/avos/avoscloud/AVFriendshipQuery$1;->val$internalCallback:Lcom/avos/avoscloud/callback/AVFriendshipCallback;

    if-eqz v2, :cond_0

    .line 74
    iget-object v2, p0, Lcom/avos/avoscloud/AVFriendshipQuery$1;->val$internalCallback:Lcom/avos/avoscloud/callback/AVFriendshipCallback;

    invoke-static {v1, p1}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/avos/avoscloud/callback/AVFriendshipCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    goto :goto_0

    .line 62
    :cond_4
    :try_start_2
    invoke-virtual {v4, v5}, Lcom/avos/avoscloud/AVFriendship;->setFollowers(Ljava/util/List;)V

    .line 63
    iget-object v0, v0, Lcom/avos/avoscloud/AVFriendship$AVFriendshipResponse;->followees:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 64
    iget-object v2, p0, Lcom/avos/avoscloud/AVFriendshipQuery$1;->this$0:Lcom/avos/avoscloud/AVFriendshipQuery;

    iget-object v2, v2, Lcom/avos/avoscloud/AVFriendshipQuery;->userClazz:Ljava/lang/Class;

    const/4 v5, 0x0

    invoke-static {v2, v5}, Lcom/avos/avoscloud/AVUser;->newAVUser(Ljava/lang/Class;Lcom/avos/avoscloud/LogInCallback;)Lcom/avos/avoscloud/AVUser;

    move-result-object v2

    .line 65
    const-string v5, "followee"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {v0, v2}, Lcom/avos/avoscloud/AVUtils;->copyPropertiesFromMapToAVObject(Ljava/util/Map;Lcom/avos/avoscloud/AVObject;)V

    .line 67
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 69
    :cond_5
    invoke-virtual {v4, v6}, Lcom/avos/avoscloud/AVFriendship;->setFollowees(Ljava/util/List;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_6
    move-object v0, v4

    .line 76
    goto/16 :goto_0

    .line 72
    :catch_1
    move-exception v0

    move-object v1, v0

    move-object v0, v3

    goto :goto_2
.end method
