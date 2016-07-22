.class public Lcom/didi/common/ui/component/SearchBar;
.super Lcom/didi/common/base/BaseLayout;
.source "SearchBar.java"


# instance fields
.field private mCountText:Lx/TextView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f080505
    .end annotation
.end field

.field private mEditText:Lx/EditText;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f080503
    .end annotation
.end field

.field private mImgBack:Lx/ImageView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        click = "back"
        id = 0x7f080501
    .end annotation
.end field

.field private mImgClear:Lx/ImageView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        click = "clear"
        id = 0x7f080504
    .end annotation
.end field

.field private mOnBackClickListener:Landroid/view/View$OnClickListener;

.field private mOnClearClickListener:Landroid/view/View$OnClickListener;

.field private mOnConfirmClickListener:Landroid/view/View$OnClickListener;

.field private mTxtSearch:Lx/TextView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        click = "search"
        id = 0x7f080506
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method


# virtual methods
.method public back(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/didi/common/ui/component/SearchBar;->mOnBackClickListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_0

    .line 73
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/didi/common/ui/component/SearchBar;->mOnBackClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public clear(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/didi/common/ui/component/SearchBar;->mOnClearClickListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_0

    .line 67
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/didi/common/ui/component/SearchBar;->mOnClearClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public getInput()Lx/EditText;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/didi/common/ui/component/SearchBar;->mEditText:Lx/EditText;

    return-object v0
.end method

.method public getInputText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/didi/common/ui/component/SearchBar;->mEditText:Lx/EditText;

    invoke-virtual {v0}, Lx/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hideClear()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/didi/common/ui/component/SearchBar;->mImgClear:Lx/ImageView;

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/component/SearchBar;->hide(Landroid/view/View;)V

    .line 115
    return-void
.end method

.method protected onInit()V
    .locals 0

    .prologue
    .line 60
    invoke-super {p0}, Lcom/didi/common/base/BaseLayout;->onInit()V

    .line 61
    return-void
.end method

.method protected onInitLayoutResId()I
    .locals 1

    .prologue
    .line 55
    const v0, 0x7f0300ed

    return v0
.end method

.method public search(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/didi/common/ui/component/SearchBar;->mOnConfirmClickListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_0

    .line 79
    :goto_0
    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/didi/common/ui/component/SearchBar;->mOnConfirmClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setCountText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/didi/common/ui/component/SearchBar;->mCountText:Lx/TextView;

    invoke-virtual {v0, p1}, Lx/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    return-void
.end method

.method public setEditEnable(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 126
    iget-object v0, p0, Lcom/didi/common/ui/component/SearchBar;->mEditText:Lx/EditText;

    invoke-virtual {v0, p1}, Lx/EditText;->setEnabled(Z)V

    .line 127
    return-void
.end method

.method public setInputHint(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/didi/common/ui/component/SearchBar;->mEditText:Lx/EditText;

    invoke-virtual {v0, p1}, Lx/EditText;->setHint(I)V

    .line 99
    return-void
.end method

.method public setInputText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/didi/common/ui/component/SearchBar;->mEditText:Lx/EditText;

    invoke-virtual {v0, p1}, Lx/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 107
    return-void
.end method

.method public setOnBackClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/didi/common/ui/component/SearchBar;->mOnBackClickListener:Landroid/view/View$OnClickListener;

    .line 87
    return-void
.end method

.method public setOnClearClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 82
    iput-object p1, p0, Lcom/didi/common/ui/component/SearchBar;->mOnClearClickListener:Landroid/view/View$OnClickListener;

    .line 83
    return-void
.end method

.method public setOnConfirmClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/didi/common/ui/component/SearchBar;->mOnConfirmClickListener:Landroid/view/View$OnClickListener;

    .line 91
    return-void
.end method

.method public setSearchButtonText(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/didi/common/ui/component/SearchBar;->mTxtSearch:Lx/TextView;

    invoke-virtual {v0, p1}, Lx/TextView;->setText(I)V

    .line 95
    return-void
.end method

.method public showCount()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/didi/common/ui/component/SearchBar;->mCountText:Lx/TextView;

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/component/SearchBar;->show(Landroid/view/View;)V

    .line 119
    return-void
.end method
