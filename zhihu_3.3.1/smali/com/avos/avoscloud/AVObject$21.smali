.class Lcom/avos/avoscloud/AVObject$21;
.super Lcom/avos/avoscloud/AVObject$KeyValueCallback;
.source "AVObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVObject;->addRelation(Lcom/avos/avoscloud/AVObject;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVObject;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$object:Lcom/avos/avoscloud/AVObject;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVObject;Ljava/lang/String;Lcom/avos/avoscloud/AVObject;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2191
    iput-object p1, p0, Lcom/avos/avoscloud/AVObject$21;->this$0:Lcom/avos/avoscloud/AVObject;

    iput-object p2, p0, Lcom/avos/avoscloud/AVObject$21;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/avos/avoscloud/AVObject$21;->val$object:Lcom/avos/avoscloud/AVObject;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/avos/avoscloud/AVObject$KeyValueCallback;-><init>(Lcom/avos/avoscloud/AVObject;Lcom/avos/avoscloud/AVObject$1;)V

    return-void
.end method


# virtual methods
.method public createOp()Lcom/avos/avoscloud/ops/AVOp;
    .locals 5

    .prologue
    .line 2195
    new-instance v0, Lcom/avos/avoscloud/ops/AddRelationOp;

    iget-object v1, p0, Lcom/avos/avoscloud/AVObject$21;->val$key:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/avos/avoscloud/AVObject;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/avos/avoscloud/AVObject$21;->val$object:Lcom/avos/avoscloud/AVObject;

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/avos/avoscloud/ops/AddRelationOp;-><init>(Ljava/lang/String;[Lcom/avos/avoscloud/AVObject;)V

    return-object v0
.end method
