.class Lcom/avos/avoscloud/AVUser$23;
.super Lcom/avos/avoscloud/SaveCallback;
.source "AVUser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVUser;->signUp(ZLcom/avos/avoscloud/SignUpCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVUser;

.field final synthetic val$callback:Lcom/avos/avoscloud/SignUpCallback;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVUser;Lcom/avos/avoscloud/SignUpCallback;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1449
    iput-object p1, p0, Lcom/avos/avoscloud/AVUser$23;->this$0:Lcom/avos/avoscloud/AVUser;

    iput-object p2, p0, Lcom/avos/avoscloud/AVUser$23;->val$callback:Lcom/avos/avoscloud/SignUpCallback;

    invoke-direct {p0}, Lcom/avos/avoscloud/SaveCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/avos/avoscloud/AVException;)V
    .locals 1
    .parameter

    .prologue
    .line 1453
    iget-object v0, p0, Lcom/avos/avoscloud/AVUser$23;->val$callback:Lcom/avos/avoscloud/SignUpCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/avos/avoscloud/AVUser$23;->val$callback:Lcom/avos/avoscloud/SignUpCallback;

    invoke-virtual {v0, p1}, Lcom/avos/avoscloud/SignUpCallback;->internalDone(Lcom/avos/avoscloud/AVException;)V

    .line 1454
    :cond_0
    return-void
.end method
