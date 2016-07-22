.class Lcom/didi/im/component/ConversationBottomBar$4;
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
    .line 188
    iput-object p1, p0, Lcom/didi/im/component/ConversationBottomBar$4;->this$0:Lcom/didi/im/component/ConversationBottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 192
    iget-object v0, p0, Lcom/didi/im/component/ConversationBottomBar$4;->this$0:Lcom/didi/im/component/ConversationBottomBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/im/component/ConversationBottomBar;->switchToTextInput(Z)V

    .line 193
    return-void
.end method
