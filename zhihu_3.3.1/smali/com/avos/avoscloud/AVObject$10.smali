.class Lcom/avos/avoscloud/AVObject$10;
.super Lcom/avos/avoscloud/AVObject$KeyValueCallback;
.source "AVObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVObject;->increment(Ljava/lang/String;Ljava/lang/Number;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVObject;

.field final synthetic val$amount:Ljava/lang/Number;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVObject;Ljava/lang/String;Ljava/lang/Number;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1324
    iput-object p1, p0, Lcom/avos/avoscloud/AVObject$10;->this$0:Lcom/avos/avoscloud/AVObject;

    iput-object p2, p0, Lcom/avos/avoscloud/AVObject$10;->val$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/avos/avoscloud/AVObject$10;->val$amount:Ljava/lang/Number;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/avos/avoscloud/AVObject$KeyValueCallback;-><init>(Lcom/avos/avoscloud/AVObject;Lcom/avos/avoscloud/AVObject$1;)V

    return-void
.end method


# virtual methods
.method public createOp()Lcom/avos/avoscloud/ops/AVOp;
    .locals 3

    .prologue
    .line 1327
    new-instance v0, Lcom/avos/avoscloud/ops/IncrementOp;

    iget-object v1, p0, Lcom/avos/avoscloud/AVObject$10;->val$key:Ljava/lang/String;

    iget-object v2, p0, Lcom/avos/avoscloud/AVObject$10;->val$amount:Ljava/lang/Number;

    invoke-direct {v0, v1, v2}, Lcom/avos/avoscloud/ops/IncrementOp;-><init>(Ljava/lang/String;Ljava/lang/Number;)V

    return-object v0
.end method
