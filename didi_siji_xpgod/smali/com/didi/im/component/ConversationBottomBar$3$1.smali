.class Lcom/didi/im/component/ConversationBottomBar$3$1;
.super Ljava/lang/Object;
.source "ConversationBottomBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/im/component/ConversationBottomBar$3;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/didi/im/component/ConversationBottomBar$3;


# direct methods
.method constructor <init>(Lcom/didi/im/component/ConversationBottomBar$3;)V
    .locals 0
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/didi/im/component/ConversationBottomBar$3$1;->this$1:Lcom/didi/im/component/ConversationBottomBar$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/didi/im/component/ConversationBottomBar$3$1;->this$1:Lcom/didi/im/component/ConversationBottomBar$3;

    iget-object v0, v0, Lcom/didi/im/component/ConversationBottomBar$3;->this$0:Lcom/didi/im/component/ConversationBottomBar;

    #getter for: Lcom/didi/im/component/ConversationBottomBar;->tvVoiceRecord:Lx/TextView;
    invoke-static {v0}, Lcom/didi/im/component/ConversationBottomBar;->access$000(Lcom/didi/im/component/ConversationBottomBar;)Lx/TextView;

    move-result-object v0

    const v1, 0x7f0b0385

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v0, p0, Lcom/didi/im/component/ConversationBottomBar$3$1;->this$1:Lcom/didi/im/component/ConversationBottomBar$3;

    iget-object v0, v0, Lcom/didi/im/component/ConversationBottomBar$3;->this$0:Lcom/didi/im/component/ConversationBottomBar;

    #getter for: Lcom/didi/im/component/ConversationBottomBar;->tvVoiceRecord:Lx/TextView;
    invoke-static {v0}, Lcom/didi/im/component/ConversationBottomBar;->access$000(Lcom/didi/im/component/ConversationBottomBar;)Lx/TextView;

    move-result-object v0

    const v1, 0x7f0201e5

    invoke-virtual {v0, v1}, Lx/TextView;->setBackgroundResource(I)V

    .line 169
    return-void
.end method
