.class Lcom/avos/avoscloud/AVObject$23;
.super Lcom/avos/avoscloud/AVObject$KeyValueCallback;
.source "AVObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVObject;->addObjectToArray(Ljava/lang/String;Ljava/lang/Object;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVObject;

.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$unique:Z

.field final synthetic val$value:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVObject;ZLjava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2217
    iput-object p1, p0, Lcom/avos/avoscloud/AVObject$23;->this$0:Lcom/avos/avoscloud/AVObject;

    iput-boolean p2, p0, Lcom/avos/avoscloud/AVObject$23;->val$unique:Z

    iput-object p3, p0, Lcom/avos/avoscloud/AVObject$23;->val$key:Ljava/lang/String;

    iput-object p4, p0, Lcom/avos/avoscloud/AVObject$23;->val$value:Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/avos/avoscloud/AVObject$KeyValueCallback;-><init>(Lcom/avos/avoscloud/AVObject;Lcom/avos/avoscloud/AVObject$1;)V

    return-void
.end method


# virtual methods
.method public createOp()Lcom/avos/avoscloud/ops/AVOp;
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 2221
    iget-boolean v0, p0, Lcom/avos/avoscloud/AVObject$23;->val$unique:Z

    if-eqz v0, :cond_0

    .line 2222
    new-instance v0, Lcom/avos/avoscloud/ops/AddUniqueOp;

    iget-object v1, p0, Lcom/avos/avoscloud/AVObject$23;->val$key:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/avos/avoscloud/AVObject$23;->val$value:Ljava/lang/Object;

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lcom/avos/avoscloud/ops/AddUniqueOp;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2224
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/avos/avoscloud/ops/AddOp;

    iget-object v1, p0, Lcom/avos/avoscloud/AVObject$23;->val$key:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/avos/avoscloud/AVObject$23;->val$value:Ljava/lang/Object;

    aput-object v3, v2, v4

    invoke-direct {v0, v1, v2}, Lcom/avos/avoscloud/ops/AddOp;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
