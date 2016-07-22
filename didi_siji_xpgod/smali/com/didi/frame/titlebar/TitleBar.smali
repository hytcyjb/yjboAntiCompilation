.class public Lcom/didi/frame/titlebar/TitleBar;
.super Lcom/didi/common/base/BaseLayout;
.source "TitleBar.java"


# instance fields
.field private isText:Z

.field private mBackOnClickListener:Landroid/view/View$OnClickListener;

.field private mBtnLeft:Landroid/widget/Button;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        click = "left"
        id = 0x7f080300
    .end annotation
.end field

.field private mBtnRight:Landroid/widget/Button;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        click = "right"
        id = 0x7f080301
    .end annotation
.end field

.field private mCloseRightTxt:Landroid/widget/Button;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        click = "rightClose"
        id = 0x7f080302
    .end annotation
.end field

.field private mImgBtnLeft:Lx/ImageButton;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        click = "left"
        id = 0x7f0801a2
    .end annotation
.end field

.field private mImgBtnRight:Lx/ImageButton;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        click = "right"
        id = 0x7f080303
    .end annotation
.end field

.field private mImgTitle:Landroid/widget/ImageView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f0802fe
    .end annotation
.end field

.field private mIsUserInfoViewShow:Z

.field private mLeftOnClickListener:Landroid/view/View$OnClickListener;

.field private mRightCloseOnClickListener:Landroid/view/View$OnClickListener;

.field private mRightOnClickListener:Landroid/view/View$OnClickListener;

.field private mTxtSubTitle:Landroid/widget/TextView;
    .annotation runtime Lnet/tsz/afinal/annotation/view/ViewInject;
        id = 0x7f0802ff
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
    .line 68
    invoke-direct {p0, p1}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;)V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/frame/titlebar/TitleBar;->mIsUserInfoViewShow:Z

    .line 51
    new-instance v0, Lcom/didi/frame/titlebar/TitleBar$1;

    invoke-direct {v0, p0}, Lcom/didi/frame/titlebar/TitleBar$1;-><init>(Lcom/didi/frame/titlebar/TitleBar;)V

    iput-object v0, p0, Lcom/didi/frame/titlebar/TitleBar;->mBackOnClickListener:Landroid/view/View$OnClickListener;

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/frame/titlebar/TitleBar;->mIsUserInfoViewShow:Z

    .line 51
    new-instance v0, Lcom/didi/frame/titlebar/TitleBar$1;

    invoke-direct {v0, p0}, Lcom/didi/frame/titlebar/TitleBar$1;-><init>(Lcom/didi/frame/titlebar/TitleBar;)V

    iput-object v0, p0, Lcom/didi/frame/titlebar/TitleBar;->mBackOnClickListener:Landroid/view/View$OnClickListener;

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/didi/common/base/BaseLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/frame/titlebar/TitleBar;->mIsUserInfoViewShow:Z

    .line 51
    new-instance v0, Lcom/didi/frame/titlebar/TitleBar$1;

    invoke-direct {v0, p0}, Lcom/didi/frame/titlebar/TitleBar$1;-><init>(Lcom/didi/frame/titlebar/TitleBar;)V

    iput-object v0, p0, Lcom/didi/frame/titlebar/TitleBar;->mBackOnClickListener:Landroid/view/View$OnClickListener;

    .line 61
    return-void
.end method


# virtual methods
.method public getTitleImageResId()I
    .locals 1

    .prologue
    .line 278
    iget v0, p0, Lcom/didi/frame/titlebar/TitleBar;->tileImageResId:I

    return v0
.end method

.method public getTitleString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/didi/frame/titlebar/TitleBar;->mTxtTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public goneRight()V
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/didi/frame/titlebar/TitleBar;->mBtnRight:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/didi/frame/titlebar/TitleBar;->hide(Landroid/view/View;)V

    .line 243
    iget-object v0, p0, Lcom/didi/frame/titlebar/TitleBar;->mImgBtnRight:Lx/ImageButton;

    invoke-virtual {p0, v0}, Lcom/didi/frame/titlebar/TitleBar;->hide(Landroid/view/View;)V

    .line 244
    return-void
.end method

.method public hideBtnRight()V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/didi/frame/titlebar/TitleBar;->mBtnRight:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/didi/frame/titlebar/TitleBar;->invisible(Landroid/view/View;)V

    .line 248
    return-void
.end method

.method public hideLeft()V
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/didi/frame/titlebar/TitleBar;->mBtnLeft:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/didi/frame/titlebar/TitleBar;->invisible(Landroid/view/View;)V

    .line 252
    iget-object v0, p0, Lcom/didi/frame/titlebar/TitleBar;->mImgBtnLeft:Lx/ImageButton;

    invoke-virtual {p0, v0}, Lcom/didi/frame/titlebar/TitleBar;->invisible(Landroid/view/View;)V

    .line 253
    return-void
.end method

.method public hideRight()V
    .locals 1

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/didi/frame/titlebar/TitleBar;->mIsUserInfoViewShow:Z

    if-nez v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/didi/frame/titlebar/TitleBar;->mBtnRight:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/didi/frame/titlebar/TitleBar;->invisible(Landroid/view/View;)V

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/didi/frame/titlebar/TitleBar;->mImgBtnRight:Lx/ImageButton;

    invoke-virtual {p0, v0}, Lcom/didi/frame/titlebar/TitleBar;->invisible(Landroid/view/View;)V

    .line 239
    return-void
.end method

.method public hideRightImg()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/didi/frame/titlebar/TitleBar;->mImgBtnRight:Lx/ImageButton;

    invoke-virtual {p0, v0}, Lcom/didi/frame/titlebar/TitleBar;->invisible(Landroid/view/View;)V

    .line 160
    return-void
.end method

.method public isText()Z
    .locals 1

    .prologue
    .line 282
    iget-boolean v0, p0, Lcom/didi/frame/titlebar/TitleBar;->isText:Z

    return v0
.end method

.method public left(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 214
    const-string v0, "left onClick"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/didi/frame/titlebar/TitleBar;->mLeftOnClickListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_0

    .line 218
    :goto_0
    return-void

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/didi/frame/titlebar/TitleBar;->mLeftOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected onInit()V
    .locals 0

    .prologue
    .line 78
    invoke-super {p0}, Lcom/didi/common/base/BaseLayout;->onInit()V

    .line 79
    return-void
.end method

.method protected onInitLayoutResId()I
    .locals 1

    .prologue
    .line 73
    const v0, 0x7f03007c

    return v0
.end method

.method public right(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 221
    const-string v0, "right onClick"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/didi/frame/titlebar/TitleBar;->mRightOnClickListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_0

    .line 225
    :goto_0
    return-void

    .line 224
    :cond_0
    iget-object v0, p0, Lcom/didi/frame/titlebar/TitleBar;->mRightOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public rightClose(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 228
    const-string v0, "right close onClick"

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/didi/frame/titlebar/TitleBar;->mRightCloseOnClickListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_0

    .line 232
    :goto_0
    return-void

    .line 231
    :cond_0
    iget-object v0, p0, Lcom/didi/frame/titlebar/TitleBar;->mRightCloseOnClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setLeftDrawable(ILandroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "resId"
    .parameter "listener"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/didi/frame/titlebar/TitleBar;->mImgBtnLeft:Lx/ImageButton;

    invoke-virtual {v0, p1}, Lx/ImageButton;->setImageResource(I)V

    .line 99
    iget-object v0, p0, Lcom/didi/frame/titlebar/TitleBar;->mBtnLeft:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/didi/frame/titlebar/TitleBar;->invisible(Landroid/view/View;)V

    .line 100
    iget-object v0, p0, Lcom/didi/frame/titlebar/TitleBar;->mImgBtnLeft:Lx/ImageButton;

    invoke-virtual {p0, v0}, Lcom/didi/frame/titlebar/TitleBar;->show(Landroid/view/View;)V

    .line 101
    iput-object p2, p0, Lcom/didi/frame/titlebar/TitleBar;->mLeftOnClickListener:Landroid/view/View$OnClickListener;

    .line 102
    return-void
.end method

.method public setLeftDrawableVisibility(I)V
    .locals 1
    .parameter "visible"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/didi/frame/titlebar/TitleBar;->mImgBtnLeft:Lx/ImageButton;

    invoke-virtual {v0, p1}, Lx/ImageButton;->setVisibility(I)V

    .line 107
    return-void
.end method

.method public setLeftDrawableVisibility(II)V
    .locals 1
    .parameter "resId"
    .parameter "visible"

    .prologue
    .line 111
    iget-object v0, p0, Lcom/didi/frame/titlebar/TitleBar;->mImgBtnLeft:Lx/ImageButton;

    invoke-virtual {v0, p1}, Lx/ImageButton;->setImageResource(I)V

    .line 112
    iget-object v0, p0, Lcom/didi/frame/titlebar/TitleBar;->mBtnLeft:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/didi/frame/titlebar/TitleBar;->invisible(Landroid/view/View;)V

    .line 113
    iget-object v0, p0, Lcom/didi/frame/titlebar/TitleBar;->mImgBtnLeft:Lx/ImageButton;

    invoke-virtual {v0, p2}, Lx/ImageButton;->setVisibility(I)V

    .line 114
    return-void
.end method

.method public setLeftText(ILandroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "resId"
    .parameter "listener"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/didi/frame/titlebar/TitleBar;->mBtnLeft:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 125
    iget-object v0, p0, Lcom/didi/frame/titlebar/TitleBar;->mImgBtnLeft:Lx/ImageButton;

    invoke-virtual {p0, v0}, Lcom/didi/frame/titlebar/TitleBar;->invisible(Landroid/view/View;)V

    .line 126
    iget-object v0, p0, Lcom/didi/frame/titlebar/TitleBar;->mBtnLeft:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/didi/frame/titlebar/TitleBar;->show(Landroid/view/View;)V

    .line 127
    iput-object p2, p0, Lcom/didi/frame/titlebar/TitleBar;->mLeftOnClickListener:Landroid/view/View$OnClickListener;

    .line 128
    return-void
.end method

.method public setRightCloseText(ILandroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "resId"
    .parameter "listener"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/didi/frame/titlebar/TitleBar;->mCloseRightTxt:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 180
    iget-object v0, p0, Lcom/didi/frame/titlebar/TitleBar;->mBtnRight:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/didi/frame/titlebar/TitleBar;->show(Landroid/view/View;)V

    .line 181
    iget-object v0, p0, Lcom/didi/frame/titlebar/TitleBar;->mCloseRightTxt:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/didi/frame/titlebar/TitleBar;->show(Landroid/view/View;)V

    .line 182
    iput-object p2, p0, Lcom/didi/frame/titlebar/TitleBar;->mRightCloseOnClickListener:Landroid/view/View$OnClickListener;

    .line 183
    return-void
.end method

.method public setRightDrawable(ILandroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "resId"
    .parameter "listener"

    .prologue
    .line 138
    iget-object v0, p0, Lcom/didi/frame/titlebar/TitleBar;->mImgBtnRight:Lx/ImageButton;

    invoke-virtual {v0, p1}, Lx/ImageButton;->setImageResource(I)V

    .line 139
    iget-object v0, p0, Lcom/didi/frame/titlebar/TitleBar;->mBtnRight:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/didi/frame/titlebar/TitleBar;->invisible(Landroid/view/View;)V

    .line 140
    iget-object v0, p0, Lcom/didi/frame/titlebar/TitleBar;->mImgBtnRight:Lx/ImageButton;

    invoke-virtual {p0, v0}, Lcom/didi/frame/titlebar/TitleBar;->show(Landroid/view/View;)V

    .line 141
    iput-object p2, p0, Lcom/didi/frame/titlebar/TitleBar;->mRightOnClickListener:Landroid/view/View$OnClickListener;

    .line 142
    return-void
.end method

.method public setRightText(ILandroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "resId"
    .parameter "listener"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/didi/frame/titlebar/TitleBar;->mBtnRight:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 153
    iget-object v0, p0, Lcom/didi/frame/titlebar/TitleBar;->mImgBtnRight:Lx/ImageButton;

    invoke-virtual {p0, v0}, Lcom/didi/frame/titlebar/TitleBar;->invisible(Landroid/view/View;)V

    .line 154
    iget-object v0, p0, Lcom/didi/frame/titlebar/TitleBar;->mBtnRight:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Lcom/didi/frame/titlebar/TitleBar;->show(Landroid/view/View;)V

    .line 155
    iput-object p2, p0, Lcom/didi/frame/titlebar/TitleBar;->mRightOnClickListener:Landroid/view/View$OnClickListener;

    .line 156
    return-void
.end method

.method public setRightTextColor(I)V
    .locals 1
    .parameter "color"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/didi/frame/titlebar/TitleBar;->mBtnRight:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(I)V

    .line 169
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 192
    invoke-static {p1}, Lcom/didi/common/util/TextUtil;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/didi/frame/titlebar/TitleBar;->setTitle(Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/didi/frame/titlebar/TitleBar;->mImgTitle:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/didi/frame/titlebar/TitleBar;->hide(Landroid/view/View;)V

    .line 194
    iget-object v0, p0, Lcom/didi/frame/titlebar/TitleBar;->mTxtSubTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/didi/frame/titlebar/TitleBar;->hide(Landroid/view/View;)V

    .line 195
    iget-object v0, p0, Lcom/didi/frame/titlebar/TitleBar;->mTxtTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/didi/frame/titlebar/TitleBar;->show(Landroid/view/View;)V

    .line 196
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/frame/titlebar/TitleBar;->isText:Z

    .line 197
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 206
    iget-object v0, p0, Lcom/didi/frame/titlebar/TitleBar;->mTxtTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-object v0, p0, Lcom/didi/frame/titlebar/TitleBar;->mImgTitle:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/didi/frame/titlebar/TitleBar;->hide(Landroid/view/View;)V

    .line 208
    iget-object v0, p0, Lcom/didi/frame/titlebar/TitleBar;->mTxtTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/didi/frame/titlebar/TitleBar;->show(Landroid/view/View;)V

    .line 209
    iget-object v0, p0, Lcom/didi/frame/titlebar/TitleBar;->mTxtSubTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/didi/frame/titlebar/TitleBar;->hide(Landroid/view/View;)V

    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/frame/titlebar/TitleBar;->isText:Z

    .line 211
    return-void
.end method

.method public setmIsUserInfoViewShow(Z)V
    .locals 0
    .parameter "mIsUserInfoViewShow"

    .prologue
    .line 286
    iput-boolean p1, p0, Lcom/didi/frame/titlebar/TitleBar;->mIsUserInfoViewShow:Z

    .line 287
    return-void
.end method

.method public showDefaultTitleIcon()V
    .locals 1

    .prologue
    .line 256
    const v0, 0x7f020175

    invoke-virtual {p0, v0}, Lcom/didi/frame/titlebar/TitleBar;->showTitleIcon(I)V

    .line 257
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/frame/titlebar/TitleBar;->isText:Z

    .line 258
    return-void
.end method

.method public showLeftBackDrawable()V
    .locals 2

    .prologue
    .line 270
    const v0, 0x7f020170

    iget-object v1, p0, Lcom/didi/frame/titlebar/TitleBar;->mBackOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v0, v1}, Lcom/didi/frame/titlebar/TitleBar;->setLeftDrawable(ILandroid/view/View$OnClickListener;)V

    .line 271
    return-void
.end method

.method public showLeftBackDrawable(Landroid/view/View$OnClickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 87
    const v0, 0x7f020170

    invoke-virtual {p0, v0, p1}, Lcom/didi/frame/titlebar/TitleBar;->setLeftDrawable(ILandroid/view/View$OnClickListener;)V

    .line 88
    return-void
.end method

.method public showTitleIcon(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 261
    iput p1, p0, Lcom/didi/frame/titlebar/TitleBar;->tileImageResId:I

    .line 262
    iget-object v0, p0, Lcom/didi/frame/titlebar/TitleBar;->mImgTitle:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 263
    iget-object v0, p0, Lcom/didi/frame/titlebar/TitleBar;->mImgTitle:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/didi/frame/titlebar/TitleBar;->show(Landroid/view/View;)V

    .line 264
    iget-object v0, p0, Lcom/didi/frame/titlebar/TitleBar;->mTxtTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/didi/frame/titlebar/TitleBar;->hide(Landroid/view/View;)V

    .line 265
    iget-object v0, p0, Lcom/didi/frame/titlebar/TitleBar;->mTxtSubTitle:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/didi/frame/titlebar/TitleBar;->hide(Landroid/view/View;)V

    .line 266
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/frame/titlebar/TitleBar;->isText:Z

    .line 267
    return-void
.end method
