.class Lcom/didi/im/component/ConversationBottomBar$5;
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
    .line 207
    iput-object p1, p0, Lcom/didi/im/component/ConversationBottomBar$5;->this$0:Lcom/didi/im/component/ConversationBottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 211
    iget-object v0, p0, Lcom/didi/im/component/ConversationBottomBar$5;->this$0:Lcom/didi/im/component/ConversationBottomBar;

    invoke-virtual {v0}, Lcom/didi/im/component/ConversationBottomBar;->switchToVoiceInput()V

    .line 212
    return-void
.end method
