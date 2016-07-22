.class Lcom/didi/beatles/im/BtsConversationActivity$14;
.super Ljava/lang/Object;
.source "BtsConversationActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/beatles/im/BtsConversationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/beatles/im/BtsConversationActivity;


# direct methods
.method constructor <init>(Lcom/didi/beatles/im/BtsConversationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 771
    iput-object p1, p0, Lcom/didi/beatles/im/BtsConversationActivity$14;->this$0:Lcom/didi/beatles/im/BtsConversationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "motionEvent"

    .prologue
    .line 774
    iget-object v0, p0, Lcom/didi/beatles/im/BtsConversationActivity$14;->this$0:Lcom/didi/beatles/im/BtsConversationActivity;

    #getter for: Lcom/didi/beatles/im/BtsConversationActivity;->mBottomBar:Lcom/didi/im/component/ConversationBottomBar;
    invoke-static {v0}, Lcom/didi/beatles/im/BtsConversationActivity;->access$1600(Lcom/didi/beatles/im/BtsConversationActivity;)Lcom/didi/im/component/ConversationBottomBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/im/component/ConversationBottomBar;->hideSoftKeyBoard()V

    .line 775
    const/4 v0, 0x0

    return v0
.end method
