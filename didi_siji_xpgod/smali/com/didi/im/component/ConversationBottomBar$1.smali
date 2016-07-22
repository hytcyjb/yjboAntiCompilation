.class Lcom/didi/im/component/ConversationBottomBar$1;
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
    .line 101
    iput-object p1, p0, Lcom/didi/im/component/ConversationBottomBar$1;->this$0:Lcom/didi/im/component/ConversationBottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/didi/im/component/ConversationBottomBar$1;->this$0:Lcom/didi/im/component/ConversationBottomBar;

    #getter for: Lcom/didi/im/component/ConversationBottomBar;->tvVoiceRecord:Lx/TextView;
    invoke-static {v0}, Lcom/didi/im/component/ConversationBottomBar;->access$000(Lcom/didi/im/component/ConversationBottomBar;)Lx/TextView;

    move-result-object v0

    const v1, 0x7f0b0393

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    invoke-static {}, Lcom/didi/common/util/Utils;->isFastDoubleClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    :cond_0
    return-void
.end method
