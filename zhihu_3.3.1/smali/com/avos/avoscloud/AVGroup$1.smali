.class Lcom/avos/avoscloud/AVGroup$1;
.super Lcom/avos/avoscloud/GetCallback;
.source "AVGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVGroup;->getMembersInBackground(Lcom/avos/avoscloud/GroupMemberQueryCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
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
.field final synthetic this$0:Lcom/avos/avoscloud/AVGroup;

.field final synthetic val$callback:Lcom/avos/avoscloud/GroupMemberQueryCallback;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVGroup;Lcom/avos/avoscloud/GroupMemberQueryCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 169
    iput-object p1, p0, Lcom/avos/avoscloud/AVGroup$1;->this$0:Lcom/avos/avoscloud/AVGroup;

    iput-object p2, p0, Lcom/avos/avoscloud/AVGroup$1;->val$callback:Lcom/avos/avoscloud/GroupMemberQueryCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/GetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/avos/avoscloud/AVObject;Lcom/avos/avoscloud/AVException;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 173
    iget-object v0, p0, Lcom/avos/avoscloud/AVGroup$1;->val$callback:Lcom/avos/avoscloud/GroupMemberQueryCallback;

    if-eqz v0, :cond_0

    .line 174
    if-eqz p2, :cond_1

    .line 175
    iget-object v0, p0, Lcom/avos/avoscloud/AVGroup$1;->val$callback:Lcom/avos/avoscloud/GroupMemberQueryCallback;

    invoke-virtual {v0, v2, p2}, Lcom/avos/avoscloud/GroupMemberQueryCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/avos/avoscloud/AVGroup$1;->val$callback:Lcom/avos/avoscloud/GroupMemberQueryCallback;

    const-string v1, "m"

    invoke-virtual {p1, v1}, Lcom/avos/avoscloud/AVObject;->getList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/avos/avoscloud/GroupMemberQueryCallback;->internalDone(Ljava/lang/Object;Lcom/avos/avoscloud/AVException;)V

    goto :goto_0
.end method
