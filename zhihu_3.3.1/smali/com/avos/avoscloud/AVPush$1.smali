.class Lcom/avos/avoscloud/AVPush$1;
.super Lcom/avos/avoscloud/GenericObjectCallback;
.source "AVPush.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVPush;->sendInBackground(ZLcom/avos/avoscloud/SendCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVPush;

.field final synthetic val$internalCallback:Lcom/avos/avoscloud/SendCallback;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVPush;Lcom/avos/avoscloud/SendCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 240
    iput-object p1, p0, Lcom/avos/avoscloud/AVPush$1;->this$0:Lcom/avos/avoscloud/AVPush;

    iput-object p2, p0, Lcom/avos/avoscloud/AVPush$1;->val$internalCallback:Lcom/avos/avoscloud/SendCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/GenericObjectCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 252
    iget-object v0, p0, Lcom/avos/avoscloud/AVPush$1;->val$internalCallback:Lcom/avos/avoscloud/SendCallback;

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/avos/avoscloud/AVPush$1;->val$internalCallback:Lcom/avos/avoscloud/SendCallback;

    invoke-static {p1, p2}, Lcom/avos/avoscloud/AVErrorUtils;->createException(Ljava/lang/Throwable;Ljava/lang/String;)Lcom/avos/avoscloud/AVException;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/SendCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    .line 255
    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;Lcom/avos/avoscloud/AVException;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 243
    iget-object v0, p0, Lcom/avos/avoscloud/AVPush$1;->this$0:Lcom/avos/avoscloud/AVPush;

    new-instance v1, Lcom/avos/avoscloud/AVObject;

    const-string v2, "_Notification"

    invoke-direct {v1, v2}, Lcom/avos/avoscloud/AVObject;-><init>(Ljava/lang/String;)V

    #setter for: Lcom/avos/avoscloud/AVPush;->notification:Lcom/avos/avoscloud/AVObject;
    invoke-static {v0, v1}, Lcom/avos/avoscloud/AVPush;->access$002(Lcom/avos/avoscloud/AVPush;Lcom/avos/avoscloud/AVObject;)Lcom/avos/avoscloud/AVObject;

    .line 244
    iget-object v0, p0, Lcom/avos/avoscloud/AVPush$1;->this$0:Lcom/avos/avoscloud/AVPush;

    #getter for: Lcom/avos/avoscloud/AVPush;->notification:Lcom/avos/avoscloud/AVObject;
    invoke-static {v0}, Lcom/avos/avoscloud/AVPush;->access$000(Lcom/avos/avoscloud/AVPush;)Lcom/avos/avoscloud/AVObject;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/avos/avoscloud/AVUtils;->copyPropertiesFromJsonStringToAVObject(Ljava/lang/String;Lcom/avos/avoscloud/AVObject;)V

    .line 245
    iget-object v0, p0, Lcom/avos/avoscloud/AVPush$1;->val$internalCallback:Lcom/avos/avoscloud/SendCallback;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/avos/avoscloud/AVPush$1;->val$internalCallback:Lcom/avos/avoscloud/SendCallback;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/avos/avoscloud/SendCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    .line 248
    :cond_0
    return-void
.end method
