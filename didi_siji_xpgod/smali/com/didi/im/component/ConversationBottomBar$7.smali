.class Lcom/didi/im/component/ConversationBottomBar$7;
.super Ljava/lang/Object;
.source "ConversationBottomBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/didi/im/component/ConversationBottomBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/im/component/ConversationBottomBar;


# direct methods
.method constructor <init>(Lcom/didi/im/component/ConversationBottomBar;)V
    .locals 0
    .parameter

    .prologue
    .line 224
    iput-object p1, p0, Lcom/didi/im/component/ConversationBottomBar$7;->this$0:Lcom/didi/im/component/ConversationBottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 228
    iget-object v1, p0, Lcom/didi/im/component/ConversationBottomBar$7;->this$0:Lcom/didi/im/component/ConversationBottomBar;

    #getter for: Lcom/didi/im/component/ConversationBottomBar;->etInput:Lx/EditText;
    invoke-static {v1}, Lcom/didi/im/component/ConversationBottomBar;->access$300(Lcom/didi/im/component/ConversationBottomBar;)Lx/EditText;

    move-result-object v1

    invoke-virtual {v1}, Lx/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, mssage:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 230
    iget-object v1, p0, Lcom/didi/im/component/ConversationBottomBar$7;->this$0:Lcom/didi/im/component/ConversationBottomBar;

    #getter for: Lcom/didi/im/component/ConversationBottomBar;->mListener:Lcom/didi/im/component/ConversationBottomBar$ConversationBottomBarListener;
    invoke-static {v1}, Lcom/didi/im/component/ConversationBottomBar;->access$200(Lcom/didi/im/component/ConversationBottomBar;)Lcom/didi/im/component/ConversationBottomBar$ConversationBottomBarListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/didi/im/component/ConversationBottomBar$ConversationBottomBarListener;->onTextMessageSend(Ljava/lang/String;)V

    .line 231
    iget-object v1, p0, Lcom/didi/im/component/ConversationBottomBar$7;->this$0:Lcom/didi/im/component/ConversationBottomBar;

    #getter for: Lcom/didi/im/component/ConversationBottomBar;->etInput:Lx/EditText;
    invoke-static {v1}, Lcom/didi/im/component/ConversationBottomBar;->access$300(Lcom/didi/im/component/ConversationBottomBar;)Lx/EditText;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Lx/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 236
    :goto_0
    return-void

    .line 233
    :cond_0
    const v1, 0x7f0b038d

    invoke-static {v1}, Lcom/didi/common/helper/ToastHelper;->showShortInfo(I)V

    goto :goto_0
.end method
