.class public Lcom/didi/im/component/ConversationTitleBar;
.super Landroid/widget/RelativeLayout;
.source "ConversationTitleBar.java"


# instance fields
.field private ibtClose:Lx/ImageButton;

.field private tvTitle:Lx/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-direct {p0}, Lcom/didi/im/component/ConversationTitleBar;->init()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    invoke-direct {p0}, Lcom/didi/im/component/ConversationTitleBar;->init()V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    invoke-direct {p0}, Lcom/didi/im/component/ConversationTitleBar;->init()V

    .line 40
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/didi/im/component/ConversationTitleBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0300b5

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 44
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0803c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lx/TextView;

    iput-object v1, p0, Lcom/didi/im/component/ConversationTitleBar;->tvTitle:Lx/TextView;

    .line 45
    const v1, 0x7f0803c7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lx/ImageButton;

    iput-object v1, p0, Lcom/didi/im/component/ConversationTitleBar;->ibtClose:Lx/ImageButton;

    .line 46
    iget-object v1, p0, Lcom/didi/im/component/ConversationTitleBar;->ibtClose:Lx/ImageButton;

    const/16 v2, 0xc8

    invoke-static {v1, v2}, Lcom/didi/common/util/Utils;->enlargeHitRect(Landroid/view/View;I)V

    .line 47
    return-void
.end method


# virtual methods
.method public setRightDrawable(ILandroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "resId"
    .parameter "listener"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/didi/im/component/ConversationTitleBar;->ibtClose:Lx/ImageButton;

    invoke-virtual {v0, p1}, Lx/ImageButton;->setImageResource(I)V

    .line 79
    iget-object v0, p0, Lcom/didi/im/component/ConversationTitleBar;->ibtClose:Lx/ImageButton;

    invoke-virtual {v0, p2}, Lx/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    return-void
.end method

.method public setTitle(I)V
    .locals 2
    .parameter "resId"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/didi/im/component/ConversationTitleBar;->tvTitle:Lx/TextView;

    invoke-static {p1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/didi/im/component/ConversationTitleBar;->tvTitle:Lx/TextView;

    invoke-virtual {v0, p1}, Lx/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    return-void
.end method
