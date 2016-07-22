.class Lcom/didi/im/activity/ConversationActivity$8;
.super Ljava/lang/Thread;
.source "ConversationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/im/activity/ConversationActivity;->startAnimatedThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/im/activity/ConversationActivity;


# direct methods
.method constructor <init>(Lcom/didi/im/activity/ConversationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 460
    iput-object p1, p0, Lcom/didi/im/activity/ConversationActivity$8;->this$0:Lcom/didi/im/activity/ConversationActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 462
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/didi/im/activity/ConversationActivity$8;->this$0:Lcom/didi/im/activity/ConversationActivity;

    #getter for: Lcom/didi/im/activity/ConversationActivity;->recordState:I
    invoke-static {v1}, Lcom/didi/im/activity/ConversationActivity;->access$000(Lcom/didi/im/activity/ConversationActivity;)I

    move-result v1

    if-nez v1, :cond_1

    .line 464
    const-wide/16 v1, 0x78

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 465
    iget-object v1, p0, Lcom/didi/im/activity/ConversationActivity$8;->this$0:Lcom/didi/im/activity/ConversationActivity;

    #getter for: Lcom/didi/im/activity/ConversationActivity;->recordState:I
    invoke-static {v1}, Lcom/didi/im/activity/ConversationActivity;->access$000(Lcom/didi/im/activity/ConversationActivity;)I

    move-result v1

    if-nez v1, :cond_0

    .line 466
    iget-object v1, p0, Lcom/didi/im/activity/ConversationActivity$8;->this$0:Lcom/didi/im/activity/ConversationActivity;

    #getter for: Lcom/didi/im/activity/ConversationActivity;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/didi/im/activity/ConversationActivity;->access$900(Lcom/didi/im/activity/ConversationActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 468
    :catch_0
    move-exception v0

    .line 469
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 472
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_1
    return-void
.end method
