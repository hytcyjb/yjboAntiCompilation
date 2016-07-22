.class Lcom/didi/frame/push/PushOptionRecord$1;
.super Ljava/lang/Object;
.source "PushOptionRecord.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/frame/push/PushOptionRecord;->onOptionCallback(I[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/frame/push/PushOptionRecord;

.field final synthetic val$args:[Ljava/lang/Object;

.field final synthetic val$res:I


# direct methods
.method constructor <init>(Lcom/didi/frame/push/PushOptionRecord;I[Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/didi/frame/push/PushOptionRecord$1;->this$0:Lcom/didi/frame/push/PushOptionRecord;

    iput p2, p0, Lcom/didi/frame/push/PushOptionRecord$1;->val$res:I

    iput-object p3, p0, Lcom/didi/frame/push/PushOptionRecord$1;->val$args:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 123
    iget-object v0, p0, Lcom/didi/frame/push/PushOptionRecord$1;->this$0:Lcom/didi/frame/push/PushOptionRecord;

    iget-object v1, v0, Lcom/didi/frame/push/PushOptionRecord;->optionCallback:Lcom/didi/frame/push/PushOptionRecord$PushOptionCallback;

    iget-object v2, p0, Lcom/didi/frame/push/PushOptionRecord$1;->this$0:Lcom/didi/frame/push/PushOptionRecord;

    iget v0, p0, Lcom/didi/frame/push/PushOptionRecord$1;->val$res:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget v3, p0, Lcom/didi/frame/push/PushOptionRecord$1;->val$res:I

    iget-object v4, p0, Lcom/didi/frame/push/PushOptionRecord$1;->val$args:[Ljava/lang/Object;

    invoke-interface {v1, v2, v0, v3, v4}, Lcom/didi/frame/push/PushOptionRecord$PushOptionCallback;->onOptionCallback(Lcom/didi/frame/push/PushOptionRecord;ZI[Ljava/lang/Object;)Z

    .line 124
    return-void

    .line 123
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
