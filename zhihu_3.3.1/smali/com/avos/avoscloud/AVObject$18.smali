.class Lcom/avos/avoscloud/AVObject$18;
.super Lcom/avos/avoscloud/SaveCallback;
.source "AVObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVObject;->saveObject(ZZLcom/avos/avoscloud/SaveCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVObject;

.field final synthetic val$callback:Lcom/avos/avoscloud/SaveCallback;

.field final synthetic val$isEventually:Z

.field final synthetic val$sync:Z


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVObject;ZZLcom/avos/avoscloud/SaveCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1712
    iput-object p1, p0, Lcom/avos/avoscloud/AVObject$18;->this$0:Lcom/avos/avoscloud/AVObject;

    iput-boolean p2, p0, Lcom/avos/avoscloud/AVObject$18;->val$sync:Z

    iput-boolean p3, p0, Lcom/avos/avoscloud/AVObject$18;->val$isEventually:Z

    iput-object p4, p0, Lcom/avos/avoscloud/AVObject$18;->val$callback:Lcom/avos/avoscloud/SaveCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/SaveCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/avos/avoscloud/AVException;)V
    .locals 4
    .parameter

    .prologue
    .line 1716
    iget-object v0, p0, Lcom/avos/avoscloud/AVObject$18;->this$0:Lcom/avos/avoscloud/AVObject;

    iget-boolean v1, p0, Lcom/avos/avoscloud/AVObject$18;->val$sync:Z

    iget-boolean v2, p0, Lcom/avos/avoscloud/AVObject$18;->val$isEventually:Z

    iget-object v3, p0, Lcom/avos/avoscloud/AVObject$18;->val$callback:Lcom/avos/avoscloud/SaveCallback;

    #calls: Lcom/avos/avoscloud/AVObject;->_saveObject(ZZLcom/avos/avoscloud/SaveCallback;)V
    invoke-static {v0, v1, v2, v3}, Lcom/avos/avoscloud/AVObject;->access$800(Lcom/avos/avoscloud/AVObject;ZZLcom/avos/avoscloud/SaveCallback;)V

    .line 1717
    return-void
.end method
