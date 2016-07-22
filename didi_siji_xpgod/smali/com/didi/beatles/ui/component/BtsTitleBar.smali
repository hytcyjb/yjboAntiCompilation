.class public Lcom/didi/beatles/ui/component/BtsTitleBar;
.super Lcom/didi/common/base/BaseLayout;
.source "BtsTitleBar.java"


# instance fields
.field private isText:Z

.field private mBackOnClickListener:Landroid/view/View$OnClickListener;

.field private mImgBtnLeft:Landroid/widget/ImageView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        click = "left"
        id = 0x7f0801a2
    .end annotation
.end field

.field private mLeftOnClickListener:Landroid/view/View$OnClickListener;

.field private mRightCloseOnClickListener:Landroid/view/View$OnClickListener;

.field private mRightOnClickListener:Landroid/view/View$OnClickListener;

.field private mTxtRight:Landroid/widget/TextView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        click = "right"
        id = 0x7f0801a4
    .end annotation
.end field

.field private mTxtTitle:Landroid/widget/TextView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f0801a3
    .end annotation
.end field

.field private tileImageResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;)V

    .line 39
    new-instance v0, Lcom/didi/beatles/ui/component/BtsTitleBar$1;

    invoke-direct {v0, p0}, Lcom/didi/beatles/ui/component/BtsTitleBar$1;-><init>(Lcom/didi/beatles/ui/component/BtsTitleBar;)V

    iput-object v0, p0, Lcom/didi/beatles/ui/component/BtsTitleBar;->mBackOnClickListener:Landroid/view/View$OnClickListener;

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    new-instance v0, Lcom/didi/beatles/ui/component/BtsTitleBar$1;

    invoke-direct {v0, p0}, Lcom/didi/beatles/ui/component/BtsTitleBar$1;-><init>(Lcom/didi/beatles/ui/component/BtsTitleBar;)V

    iput-object v0, p0, Lcom/didi/beatles/ui/component/BtsTitleBar;->mBackOnClickListener:Landroid/view/View$OnClickListener;

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    new-instance v0, Lcom/didi/beatles/ui/component/BtsTitleBar$1;

    invoke-direct {v0, p0}, Lcom/didi/beatles/ui/component/BtsTitleBar$1;-><init>(Lcom/didi/beatles/ui/component/BtsTitleBar;)V

    iput-object v0, p0, Lcom/didi/beatles/ui/component/BtsTitleBar;->mBackOnClickListener:Landroid/view/View$OnClickListener;

    .line 49
    return-void
.end method


# virtual methods
.method public getTitleImageResId()I
    .locals 1

    .prologue
    .line 184
    iget v0, p0, Lcom/didi/beatles/ui/component/BtsTitleBar;->tileImageResId:I

    return v0
.end method

.method public getTitleString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsTitleBar;->mTxtTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public goneRight()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsTitleBar;->mTxtRight:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/component/BtsTitleBar;->hide(Landroid/view/View;)V

    .line 169
    return-void
.end method

.method public hideLeft()V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsTitleBar;->mImgBtnLeft:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/component/BtsTitleBar;->invisible(Landroid/view/View;)V

    .line 173
    return-void
.end method

.method public hideRight()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsTitleBar;->mTxtRight:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/component/BtsTitleBar;->invisible(Landroid/view/View;)V

    .line 165
    return-void
.end method

.method public isText()Z
    .locals 1

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/didi/beatles/ui/component/BtsTitleBar;->isText:Z

    return v0
.end method

.method public left(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 143
    const-string v0, "left onClick"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsTitleBar;->mLeftOnClickListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_0

    .line 147
    :goto_0
    return-void

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsTitleBar;->mLeftOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected onInit()V
    .locals 0

    .prologue
    .line 66
    invoke-super {p0}, Lcom/didi/common/base/BaseLayout;->onInit()V

    .line 67
    return-void
.end method

.method protected onInitLayoutResId()I
    .locals 1

    .prologue
    .line 61
    const v0, 0x7f030044

    return v0
.end method

.method public right(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 150
    const-string v0, "right onClick"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsTitleBar;->mRightOnClickListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_0

    .line 154
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsTitleBar;->mRightOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public rightClose(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 157
    const-string v0, "right close onClick"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsTitleBar;->mRightCloseOnClickListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_0

    .line 161
    :goto_0
    return-void

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsTitleBar;->mRightCloseOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setLeftDrawable(ILandroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "resId"
    .parameter "listener"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsTitleBar;->mImgBtnLeft:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 78
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsTitleBar;->mImgBtnLeft:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/component/BtsTitleBar;->show(Landroid/view/View;)V

    .line 79
    iput-object p2, p0, Lcom/didi/beatles/ui/component/BtsTitleBar;->mLeftOnClickListener:Landroid/view/View$OnClickListener;

    .line 80
    return-void
.end method

.method public setLeftDrawableListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsTitleBar;->mImgBtnLeft:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/component/BtsTitleBar;->show(Landroid/view/View;)V

    .line 85
    iput-object p1, p0, Lcom/didi/beatles/ui/component/BtsTitleBar;->mLeftOnClickListener:Landroid/view/View$OnClickListener;

    .line 86
    return-void
.end method

.method public setLeftDrawableVisibility(I)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsTitleBar;->mImgBtnLeft:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 91
    return-void
.end method

.method public setLeftDrawableVisibility(II)V
    .locals 1
    .parameter "resId"
    .parameter "visible"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsTitleBar;->mImgBtnLeft:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 96
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsTitleBar;->mImgBtnLeft:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 97
    return-void
.end method

.method public setRightText(ILandroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "resId"
    .parameter "listener"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsTitleBar;->mTxtRight:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 114
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsTitleBar;->mTxtRight:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/component/BtsTitleBar;->show(Landroid/view/View;)V

    .line 115
    iput-object p2, p0, Lcom/didi/beatles/ui/component/BtsTitleBar;->mRightOnClickListener:Landroid/view/View$OnClickListener;

    .line 116
    return-void
.end method

.method public setRightText(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "txt"
    .parameter "listener"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsTitleBar;->mTxtRight:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsTitleBar;->mTxtRight:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/component/BtsTitleBar;->show(Landroid/view/View;)V

    .line 109
    iput-object p2, p0, Lcom/didi/beatles/ui/component/BtsTitleBar;->mRightOnClickListener:Landroid/view/View$OnClickListener;

    .line 110
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 125
    invoke-static {p1}, Lcom/didi/common/util/TextUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/component/BtsTitleBar;->setTitle(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsTitleBar;->mTxtTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/component/BtsTitleBar;->show(Landroid/view/View;)V

    .line 127
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/beatles/ui/component/BtsTitleBar;->isText:Z

    .line 128
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsTitleBar;->mTxtTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v0, p0, Lcom/didi/beatles/ui/component/BtsTitleBar;->mTxtTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/didi/beatles/ui/component/BtsTitleBar;->show(Landroid/view/View;)V

    .line 139
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/beatles/ui/component/BtsTitleBar;->isText:Z

    .line 140
    return-void
.end method

.method public showLeftBackDrawable()V
    .locals 2

    .prologue
    .line 176
    const v0, 0x7f020170

    iget-object v1, p0, Lcom/didi/beatles/ui/component/BtsTitleBar;->mBackOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0, v1}, Lcom/didi/beatles/ui/component/BtsTitleBar;->setLeftDrawable(ILandroid/view/View$OnClickListener;)V

    .line 177
    return-void
.end method
