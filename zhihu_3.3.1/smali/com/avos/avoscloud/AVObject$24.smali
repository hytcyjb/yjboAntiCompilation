.class Lcom/avos/avoscloud/AVObject$24;
.super Lcom/avos/avoscloud/AVObject$KeyValueCallback;
.source "AVObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVObject;->removeObjectForKey(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVObject;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVObject;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2235
    iput-object p1, p0, Lcom/avos/avoscloud/AVObject$24;->this$0:Lcom/avos/avoscloud/AVObject;

    iput-object p2, p0, Lcom/avos/avoscloud/AVObject$24;->val$key:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/avos/avoscloud/AVObject$KeyValueCallback;-><init>(Lcom/avos/avoscloud/AVObject;Lcom/avos/avoscloud/AVObject$1;)V

    return-void
.end method


# virtual methods
.method public createOp()Lcom/avos/avoscloud/ops/AVOp;
    .locals 2

    .prologue
    .line 2238
    new-instance v0, Lcom/avos/avoscloud/ops/DeleteOp;

    iget-object v1, p0, Lcom/avos/avoscloud/AVObject$24;->val$key:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/avos/avoscloud/ops/DeleteOp;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
