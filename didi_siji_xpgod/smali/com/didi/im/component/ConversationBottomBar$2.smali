.class Lcom/didi/im/component/ConversationBottomBar$2;
.super Ljava/lang/Object;
.source "ConversationBottomBar.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 112
    iput-object p1, p0, Lcom/didi/im/component/ConversationBottomBar$2;->this$0:Lcom/didi/im/component/ConversationBottomBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 131
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 126
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 116
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 117
    .local v0, content:Ljava/lang/String;
    iget-object v1, p0, Lcom/didi/im/component/ConversationBottomBar$2;->this$0:Lcom/didi/im/component/ConversationBottomBar;

    #calls: Lcom/didi/im/component/ConversationBottomBar;->setBottomBarRightButton(Ljava/lang/String;)V
    invoke-static {v1, v0}, Lcom/didi/im/component/ConversationBottomBar;->access$100(Lcom/didi/im/component/ConversationBottomBar;Ljava/lang/String;)V

    .line 118
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/16 v2, 0xc8

    if-lt v1, v2, :cond_0

    .line 119
    const v1, 0x7f0b038c

    invoke-static {v1}, Lcom/didi/common/helper/ToastHelper;->showShortInfo(I)V

    .line 121
    :cond_0
    return-void
.end method
