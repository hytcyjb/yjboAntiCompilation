.class Lcom/avos/avoscloud/AVIMEventHandler$1;
.super Ljava/lang/Object;
.source "AVIMEventHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/avos/avoscloud/AVIMEventHandler;->processEvent(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/avos/avoscloud/AVIMEventHandler;

.field final synthetic val$eventScene:Ljava/lang/Object;

.field final synthetic val$operand:Ljava/lang/Object;

.field final synthetic val$operation:I

.field final synthetic val$operator:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/avos/avoscloud/AVIMEventHandler;ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 10
    iput-object p1, p0, Lcom/avos/avoscloud/AVIMEventHandler$1;->this$0:Lcom/avos/avoscloud/AVIMEventHandler;

    iput p2, p0, Lcom/avos/avoscloud/AVIMEventHandler$1;->val$operation:I

    iput-object p3, p0, Lcom/avos/avoscloud/AVIMEventHandler$1;->val$operator:Ljava/lang/Object;

    iput-object p4, p0, Lcom/avos/avoscloud/AVIMEventHandler$1;->val$operand:Ljava/lang/Object;

    iput-object p5, p0, Lcom/avos/avoscloud/AVIMEventHandler$1;->val$eventScene:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 13
    iget-object v0, p0, Lcom/avos/avoscloud/AVIMEventHandler$1;->this$0:Lcom/avos/avoscloud/AVIMEventHandler;

    iget v1, p0, Lcom/avos/avoscloud/AVIMEventHandler$1;->val$operation:I

    iget-object v2, p0, Lcom/avos/avoscloud/AVIMEventHandler$1;->val$operator:Ljava/lang/Object;

    iget-object v3, p0, Lcom/avos/avoscloud/AVIMEventHandler$1;->val$operand:Ljava/lang/Object;

    iget-object v4, p0, Lcom/avos/avoscloud/AVIMEventHandler$1;->val$eventScene:Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/avos/avoscloud/AVIMEventHandler;->processEvent0(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 14
    return-void
.end method
