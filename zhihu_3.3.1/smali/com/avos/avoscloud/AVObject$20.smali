.class Lcom/avos/avoscloud/AVObject$20;
.super Lcom/avos/avoscloud/AVObject$KeyValueCallback;
.source "AVObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVObject;->addRelationFromServer(Ljava/lang/String;Ljava/lang/String;Z)V
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
    .line 2178
    iput-object p1, p0, Lcom/avos/avoscloud/AVObject$20;->this$0:Lcom/avos/avoscloud/AVObject;

    iput-object p2, p0, Lcom/avos/avoscloud/AVObject$20;->val$key:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/avos/avoscloud/AVObject$KeyValueCallback;-><init>(Lcom/avos/avoscloud/AVObject;Lcom/avos/avoscloud/AVObject$1;)V

    return-void
.end method


# virtual methods
.method public createOp()Lcom/avos/avoscloud/ops/AVOp;
    .locals 3

    .prologue
    .line 2182
    new-instance v0, Lcom/avos/avoscloud/ops/AddRelationOp;

    iget-object v1, p0, Lcom/avos/avoscloud/AVObject$20;->val$key:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/avos/avoscloud/AVObject;

    invoke-direct {v0, v1, v2}, Lcom/avos/avoscloud/ops/AddRelationOp;-><init>(Ljava/lang/String;[Lcom/avos/avoscloud/AVObject;)V

    return-object v0
.end method
