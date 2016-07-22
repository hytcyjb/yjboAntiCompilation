.class Lcom/didi/im/activity/ConversationActivity$13;
.super Ljava/lang/Object;
.source "ConversationActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    .line 730
    iput-object p1, p0, Lcom/didi/im/activity/ConversationActivity$13;->this$0:Lcom/didi/im/activity/ConversationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "motionEvent"

    .prologue
    .line 733
    iget-object v0, p0, Lcom/didi/im/activity/ConversationActivity$13;->this$0:Lcom/didi/im/activity/ConversationActivity;

    #getter for: Lcom/didi/im/activity/ConversationActivity;->mBottomBar:Lcom/didi/im/component/ConversationBottomBar;
    invoke-static {v0}, Lcom/didi/im/activity/ConversationActivity;->access$1200(Lcom/didi/im/activity/ConversationActivity;)Lcom/didi/im/component/ConversationBottomBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/im/component/ConversationBottomBar;->hideSoftKeyBoard()V

    .line 734
    const/4 v0, 0x0

    return v0
.end method
