.class Lcom/didi/im/activity/ConversationActivity$14;
.super Lcom/didi/common/helper/DialogHelper$DialogHelperListener;
.source "ConversationActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/im/activity/ConversationActivity;
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
    .line 776
    iput-object p1, p0, Lcom/didi/im/activity/ConversationActivity$14;->this$0:Lcom/didi/im/activity/ConversationActivity;

    invoke-direct {p0}, Lcom/didi/common/helper/DialogHelper$DialogHelperListener;-><init>()V

    return-void
.end method


# virtual methods
.method public submitOnly()V
    .locals 1

    .prologue
    .line 780
    iget-object v0, p0, Lcom/didi/im/activity/ConversationActivity$14;->this$0:Lcom/didi/im/activity/ConversationActivity;

    #calls: Lcom/didi/im/activity/ConversationActivity;->removeDialog()V
    invoke-static {v0}, Lcom/didi/im/activity/ConversationActivity;->access$1300(Lcom/didi/im/activity/ConversationActivity;)V

    .line 781
    return-void
.end method
