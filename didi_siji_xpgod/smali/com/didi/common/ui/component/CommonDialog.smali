.class public Lcom/didi/common/ui/component/CommonDialog;
.super Lcom/didi/common/base/BaseDialog;
.source "CommonDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;,
        Lcom/didi/common/ui/component/CommonDialog$ButtonType;,
        Lcom/didi/common/ui/component/CommonDialog$IconType;
    }
.end annotation


# static fields
.field private static mIsLoading:Z

.field private static progressDialog:Landroid/app/ProgressDialog;


# instance fields
.field private btnCancelTxt:Ljava/lang/String;

.field private btnOneTxt:Ljava/lang/String;

.field private btnOnlyTxt:Ljava/lang/String;

.field private btnSubmitTxt:Ljava/lang/String;

.field private btnThreeTxt:Ljava/lang/String;

.field private btnTwoTxt:Ljava/lang/String;

.field private buttonType:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

.field private cancelButton:Lx/Button;

.field private checkedTextView:Landroid/widget/CheckedTextView;

.field private content:Ljava/lang/String;

.field private contentArray:[Ljava/lang/String;

.field private contentOnly:Ljava/lang/String;

.field private contentOnlyTextView:Landroid/widget/TextView;

.field private contentTextView:Landroid/widget/TextView;

.field private firstButton:Lx/Button;

.field private flagShowIcon:Z

.field private iconImageView:Lx/ImageView;

.field private iconType:Lcom/didi/common/ui/component/CommonDialog$IconType;

.field private imgCloseDialog:Landroid/view/View;

.field private isShow:Z

.field private isShowCloseDialog:Z

.field private layoutOnlySubmit:Landroid/widget/LinearLayout;

.field private layoutSubmitCancel:Landroid/widget/LinearLayout;

.field private layoutThreeBtn:Landroid/widget/LinearLayout;

.field private listener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

.field private mCommonArea:Landroid/widget/LinearLayout;

.field private mIconBmp:Landroid/graphics/Bitmap;

.field private onCheckedListener:Landroid/view/View$OnClickListener;

.field private onClickListener:Landroid/view/View$OnClickListener;

.field private pinkBmpDraw:Landroid/graphics/drawable/BitmapDrawable;

.field private secondButton:Lx/Button;

.field private showCheckBox:Z

.field private submitButton:Lx/Button;

.field private submitOnlyButton:Lx/Button;

.field private thirdButton:Lx/Button;

.field private title:Ljava/lang/String;

.field private titleTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    sput-boolean v0, Lcom/didi/common/ui/component/CommonDialog;->mIsLoading:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 158
    const v0, 0x7f0c0032

    invoke-direct {p0, p1, v0}, Lcom/didi/common/base/BaseDialog;-><init>(Landroid/content/Context;I)V

    .line 59
    iput-boolean v1, p0, Lcom/didi/common/ui/component/CommonDialog;->isShow:Z

    .line 60
    iput-boolean v1, p0, Lcom/didi/common/ui/component/CommonDialog;->showCheckBox:Z

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/common/ui/component/CommonDialog;->flagShowIcon:Z

    .line 63
    iput-boolean v1, p0, Lcom/didi/common/ui/component/CommonDialog;->isShowCloseDialog:Z

    .line 67
    iput-object v2, p0, Lcom/didi/common/ui/component/CommonDialog;->pinkBmpDraw:Landroid/graphics/drawable/BitmapDrawable;

    .line 68
    iput-object v2, p0, Lcom/didi/common/ui/component/CommonDialog;->mIconBmp:Landroid/graphics/Bitmap;

    .line 228
    new-instance v0, Lcom/didi/common/ui/component/CommonDialog$2;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/component/CommonDialog$2;-><init>(Lcom/didi/common/ui/component/CommonDialog;)V

    iput-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->onCheckedListener:Landroid/view/View$OnClickListener;

    .line 614
    new-instance v0, Lcom/didi/common/ui/component/CommonDialog$6;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/component/CommonDialog$6;-><init>(Lcom/didi/common/ui/component/CommonDialog;)V

    iput-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->onClickListener:Landroid/view/View$OnClickListener;

    .line 159
    return-void
.end method

.method static synthetic access$000(Lcom/didi/common/ui/component/CommonDialog;)Landroid/widget/CheckedTextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->checkedTextView:Landroid/widget/CheckedTextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/didi/common/ui/component/CommonDialog;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->pinkBmpDraw:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method static synthetic access$102(Lcom/didi/common/ui/component/CommonDialog;Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 33
    iput-object p1, p0, Lcom/didi/common/ui/component/CommonDialog;->pinkBmpDraw:Landroid/graphics/drawable/BitmapDrawable;

    return-object p1
.end method

.method static synthetic access$200(Lcom/didi/common/ui/component/CommonDialog;)Lx/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->iconImageView:Lx/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/didi/common/ui/component/CommonDialog;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->contentTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/didi/common/ui/component/CommonDialog;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->contentOnlyTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/didi/common/ui/component/CommonDialog;)Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->listener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

    return-object v0
.end method

.method private static getInstance(Landroid/content/Context;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "context"

    .prologue
    .line 608
    sget-object v0, Lcom/didi/common/ui/component/CommonDialog;->progressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 609
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/didi/common/ui/component/CommonDialog;->progressDialog:Landroid/app/ProgressDialog;

    .line 611
    :cond_0
    sget-object v0, Lcom/didi/common/ui/component/CommonDialog;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private handleTextViewGravity()V
    .locals 2

    .prologue
    .line 511
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->contentTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->contentTextView:Landroid/widget/TextView;

    new-instance v1, Lcom/didi/common/ui/component/CommonDialog$4;

    invoke-direct {v1, p0}, Lcom/didi/common/ui/component/CommonDialog$4;-><init>(Lcom/didi/common/ui/component/CommonDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 524
    :cond_0
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->contentOnlyTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 525
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->contentOnlyTextView:Landroid/widget/TextView;

    new-instance v1, Lcom/didi/common/ui/component/CommonDialog$5;

    invoke-direct {v1, p0}, Lcom/didi/common/ui/component/CommonDialog$5;-><init>(Lcom/didi/common/ui/component/CommonDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 536
    :cond_1
    return-void
.end method

.method private initLayout()V
    .locals 3

    .prologue
    const v2, 0x7f0b0276

    .line 162
    const v0, 0x7f0802f1

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/component/CommonDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->layoutOnlySubmit:Landroid/widget/LinearLayout;

    .line 163
    const v0, 0x7f0802f2

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/component/CommonDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->layoutSubmitCancel:Landroid/widget/LinearLayout;

    .line 164
    const v0, 0x7f0802f6

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/component/CommonDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->layoutThreeBtn:Landroid/widget/LinearLayout;

    .line 166
    const v0, 0x7f0802ec

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/component/CommonDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lx/ImageView;

    iput-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->iconImageView:Lx/ImageView;

    .line 167
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->iconImageView:Lx/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lx/ImageView;->setVisibility(I)V

    .line 169
    const v0, 0x7f0802fa

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/component/CommonDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->imgCloseDialog:Landroid/view/View;

    .line 171
    const v0, 0x7f08021d

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/component/CommonDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->titleTextView:Landroid/widget/TextView;

    .line 172
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->titleTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/didi/common/ui/component/CommonDialog;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    const v0, 0x7f0802ee

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/component/CommonDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->contentTextView:Landroid/widget/TextView;

    .line 175
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->contentTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/didi/common/ui/component/CommonDialog;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    const v0, 0x7f0802ef

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/component/CommonDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->contentOnlyTextView:Landroid/widget/TextView;

    .line 178
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->contentOnlyTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/didi/common/ui/component/CommonDialog;->contentOnly:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    const v0, 0x7f0802f0

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/component/CommonDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->mCommonArea:Landroid/widget/LinearLayout;

    .line 181
    invoke-direct {p0}, Lcom/didi/common/ui/component/CommonDialog;->setContentArray()V

    .line 183
    const v0, 0x7f080226

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/component/CommonDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lx/Button;

    iput-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->submitOnlyButton:Lx/Button;

    .line 184
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->submitOnlyButton:Lx/Button;

    iget-object v1, p0, Lcom/didi/common/ui/component/CommonDialog;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lx/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->btnOnlyTxt:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->btnOnlyTxt:Ljava/lang/String;

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->submitOnlyButton:Lx/Button;

    iget-object v1, p0, Lcom/didi/common/ui/component/CommonDialog;->btnOnlyTxt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lx/Button;->setText(Ljava/lang/CharSequence;)V

    .line 190
    const v0, 0x7f0802f5

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/component/CommonDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lx/Button;

    iput-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->submitButton:Lx/Button;

    .line 191
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->submitButton:Lx/Button;

    iget-object v1, p0, Lcom/didi/common/ui/component/CommonDialog;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lx/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->btnSubmitTxt:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->btnSubmitTxt:Ljava/lang/String;

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->submitButton:Lx/Button;

    iget-object v1, p0, Lcom/didi/common/ui/component/CommonDialog;->btnSubmitTxt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lx/Button;->setText(Ljava/lang/CharSequence;)V

    .line 197
    const v0, 0x7f0802f4

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/component/CommonDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lx/Button;

    iput-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->cancelButton:Lx/Button;

    .line 198
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->cancelButton:Lx/Button;

    iget-object v1, p0, Lcom/didi/common/ui/component/CommonDialog;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lx/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->btnCancelTxt:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 200
    const v0, 0x7f0b0132

    invoke-static {v0}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->btnCancelTxt:Ljava/lang/String;

    .line 202
    :cond_2
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->cancelButton:Lx/Button;

    iget-object v1, p0, Lcom/didi/common/ui/component/CommonDialog;->btnCancelTxt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lx/Button;->setText(Ljava/lang/CharSequence;)V

    .line 204
    const v0, 0x7f0802f7

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/component/CommonDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lx/Button;

    iput-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->firstButton:Lx/Button;

    .line 205
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->firstButton:Lx/Button;

    iget-object v1, p0, Lcom/didi/common/ui/component/CommonDialog;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lx/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 206
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->firstButton:Lx/Button;

    iget-object v1, p0, Lcom/didi/common/ui/component/CommonDialog;->btnOneTxt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lx/Button;->setText(Ljava/lang/CharSequence;)V

    .line 208
    const v0, 0x7f0802f8

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/component/CommonDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lx/Button;

    iput-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->secondButton:Lx/Button;

    .line 209
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->secondButton:Lx/Button;

    iget-object v1, p0, Lcom/didi/common/ui/component/CommonDialog;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lx/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->secondButton:Lx/Button;

    iget-object v1, p0, Lcom/didi/common/ui/component/CommonDialog;->btnTwoTxt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lx/Button;->setText(Ljava/lang/CharSequence;)V

    .line 212
    const v0, 0x7f0802f9

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/component/CommonDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lx/Button;

    iput-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->thirdButton:Lx/Button;

    .line 213
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->thirdButton:Lx/Button;

    iget-object v1, p0, Lcom/didi/common/ui/component/CommonDialog;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lx/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->thirdButton:Lx/Button;

    iget-object v1, p0, Lcom/didi/common/ui/component/CommonDialog;->btnThreeTxt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lx/Button;->setText(Ljava/lang/CharSequence;)V

    .line 216
    const v0, 0x7f0802f3

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/component/CommonDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    iput-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->checkedTextView:Landroid/widget/CheckedTextView;

    .line 217
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->checkedTextView:Landroid/widget/CheckedTextView;

    iget-object v1, p0, Lcom/didi/common/ui/component/CommonDialog;->onCheckedListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->imgCloseDialog:Landroid/view/View;

    new-instance v1, Lcom/didi/common/ui/component/CommonDialog$1;

    invoke-direct {v1, p0}, Lcom/didi/common/ui/component/CommonDialog$1;-><init>(Lcom/didi/common/ui/component/CommonDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    return-void
.end method

.method public static isLoading()Z
    .locals 1

    .prologue
    .line 604
    sget-boolean v0, Lcom/didi/common/ui/component/CommonDialog;->mIsLoading:Z

    return v0
.end method

.method public static loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 1
    .parameter "context"
    .parameter "content"
    .parameter "isCanCancel"
    .parameter "onCancelListener"

    .prologue
    .line 567
    if-eqz p0, :cond_0

    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/MainActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 576
    :cond_0
    :goto_0
    return-void

    .line 570
    :cond_1
    invoke-static {p0}, Lcom/didi/common/ui/component/CommonDialog;->getInstance(Landroid/content/Context;)Landroid/app/ProgressDialog;

    .line 571
    sget-object v0, Lcom/didi/common/ui/component/CommonDialog;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 572
    sget-object v0, Lcom/didi/common/ui/component/CommonDialog;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 573
    sget-object v0, Lcom/didi/common/ui/component/CommonDialog;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p3}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 574
    sget-object v0, Lcom/didi/common/ui/component/CommonDialog;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 575
    const/4 v0, 0x1

    sput-boolean v0, Lcom/didi/common/ui/component/CommonDialog;->mIsLoading:Z

    goto :goto_0
.end method

.method public static removeLoadingDialog()V
    .locals 3

    .prologue
    .line 579
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/frame/MainActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 600
    .local v1, context:Landroid/content/Context;
    :cond_0
    :goto_0
    return-void

    .line 582
    .end local v1           #context:Landroid/content/Context;
    :cond_1
    sget-object v2, Lcom/didi/common/ui/component/CommonDialog;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_3

    .line 583
    sget-object v2, Lcom/didi/common/ui/component/CommonDialog;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 585
    .restart local v1       #context:Landroid/content/Context;
    if-eqz v1, :cond_0

    .line 589
    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_2

    move-object v0, v1

    .line 590
    check-cast v0, Landroid/app/Activity;

    .line 591
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 596
    .end local v0           #activity:Landroid/app/Activity;
    :cond_2
    sget-object v2, Lcom/didi/common/ui/component/CommonDialog;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 597
    const/4 v2, 0x0

    sput-object v2, Lcom/didi/common/ui/component/CommonDialog;->progressDialog:Landroid/app/ProgressDialog;

    .line 599
    :cond_3
    const/4 v2, 0x0

    sput-boolean v2, Lcom/didi/common/ui/component/CommonDialog;->mIsLoading:Z

    goto :goto_0
.end method

.method private setButtonVisibility()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 358
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->buttonType:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    if-nez v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->layoutOnlySubmit:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 360
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->layoutSubmitCancel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 380
    :goto_0
    return-void

    .line 364
    :cond_0
    sget-object v0, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->ONE:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/component/CommonDialog;->buttonType:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v1}, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 365
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->layoutOnlySubmit:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 375
    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/didi/common/ui/component/CommonDialog;->isShowCloseDialog:Z

    if-eqz v0, :cond_4

    .line 376
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->imgCloseDialog:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 366
    :cond_2
    sget-object v0, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->TWO:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/component/CommonDialog;->buttonType:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v1}, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 367
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->layoutSubmitCancel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 368
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->layoutOnlySubmit:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 369
    :cond_3
    sget-object v0, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->THREE:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/component/CommonDialog;->buttonType:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v1}, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 370
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->layoutThreeBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 371
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->layoutOnlySubmit:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 372
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->layoutSubmitCancel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 378
    :cond_4
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->imgCloseDialog:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setContentArray()V
    .locals 7

    .prologue
    .line 383
    iget-object v5, p0, Lcom/didi/common/ui/component/CommonDialog;->contentArray:[Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/didi/common/ui/component/CommonDialog;->contentArray:[Ljava/lang/String;

    array-length v5, v5

    if-nez v5, :cond_1

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 386
    :cond_1
    iget-object v5, p0, Lcom/didi/common/ui/component/CommonDialog;->contentArray:[Ljava/lang/String;

    array-length v5, v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_2

    .line 387
    iget-object v5, p0, Lcom/didi/common/ui/component/CommonDialog;->contentArray:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    iput-object v5, p0, Lcom/didi/common/ui/component/CommonDialog;->content:Ljava/lang/String;

    goto :goto_0

    .line 391
    :cond_2
    iget-object v5, p0, Lcom/didi/common/ui/component/CommonDialog;->mCommonArea:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 392
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->contentArray:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v1, v0, v2

    .line 393
    .local v1, content:Ljava/lang/String;
    new-instance v3, Lcom/didi/car/ui/component/CarImageTextItemView;

    invoke-virtual {p0}, Lcom/didi/common/ui/component/CommonDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/didi/car/ui/component/CarImageTextItemView;-><init>(Landroid/content/Context;)V

    .line 394
    .local v3, itemView:Lcom/didi/car/ui/component/CarImageTextItemView;
    const v5, 0x7f020274

    invoke-virtual {v3, v5, v1}, Lcom/didi/car/ui/component/CarImageTextItemView;->fillData(ILjava/lang/String;)V

    .line 395
    invoke-static {v3}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 396
    iget-object v5, p0, Lcom/didi/common/ui/component/CommonDialog;->mCommonArea:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 392
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private setIconVisibility()V
    .locals 5

    .prologue
    const v4, 0x7f02018d

    const v3, 0x7f020122

    const v2, 0x7f020119

    .line 254
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->iconImageView:Lx/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lx/ImageView;->setVisibility(I)V

    .line 255
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->iconType:Lcom/didi/common/ui/component/CommonDialog$IconType;

    if-nez v0, :cond_1

    .line 256
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->iconImageView:Lx/ImageView;

    invoke-static {v3}, Lcom/didi/common/helper/ResourcesHelper;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 260
    :cond_1
    sget-object v0, Lcom/didi/common/ui/component/CommonDialog$IconType;->INFO:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/CommonDialog$IconType;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/component/CommonDialog;->iconType:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v1}, Lcom/didi/common/ui/component/CommonDialog$IconType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 261
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->iconImageView:Lx/ImageView;

    invoke-static {v3}, Lcom/didi/common/helper/ResourcesHelper;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 340
    :cond_2
    :goto_1
    iget-boolean v0, p0, Lcom/didi/common/ui/component/CommonDialog;->flagShowIcon:Z

    if-nez v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->iconImageView:Lx/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lx/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 262
    :cond_3
    sget-object v0, Lcom/didi/common/ui/component/CommonDialog$IconType;->HEART:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/CommonDialog$IconType;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/component/CommonDialog;->iconType:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v1}, Lcom/didi/common/ui/component/CommonDialog$IconType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 263
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->iconImageView:Lx/ImageView;

    const v1, 0x7f02011f

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 264
    :cond_4
    sget-object v0, Lcom/didi/common/ui/component/CommonDialog$IconType;->ADDRESS:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/CommonDialog$IconType;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/component/CommonDialog;->iconType:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v1}, Lcom/didi/common/ui/component/CommonDialog$IconType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 265
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->iconImageView:Lx/ImageView;

    const v1, 0x7f020117

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 266
    :cond_5
    sget-object v0, Lcom/didi/common/ui/component/CommonDialog$IconType;->MICRO:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/CommonDialog$IconType;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/component/CommonDialog;->iconType:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v1}, Lcom/didi/common/ui/component/CommonDialog$IconType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 267
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->iconImageView:Lx/ImageView;

    const v1, 0x7f020126

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 268
    :cond_6
    sget-object v0, Lcom/didi/common/ui/component/CommonDialog$IconType;->GPS:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/CommonDialog$IconType;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/component/CommonDialog;->iconType:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v1}, Lcom/didi/common/ui/component/CommonDialog$IconType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 269
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->iconImageView:Lx/ImageView;

    const v1, 0x7f02011e

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 270
    :cond_7
    sget-object v0, Lcom/didi/common/ui/component/CommonDialog$IconType;->PAY:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/CommonDialog$IconType;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/component/CommonDialog;->iconType:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v1}, Lcom/didi/common/ui/component/CommonDialog$IconType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 271
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->iconImageView:Lx/ImageView;

    const v1, 0x7f020127

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 272
    :cond_8
    sget-object v0, Lcom/didi/common/ui/component/CommonDialog$IconType;->GUIDE:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/CommonDialog$IconType;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/component/CommonDialog;->iconType:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v1}, Lcom/didi/common/ui/component/CommonDialog$IconType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 273
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->iconImageView:Lx/ImageView;

    const v1, 0x7f020116

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 274
    :cond_9
    sget-object v0, Lcom/didi/common/ui/component/CommonDialog$IconType;->TIME:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/CommonDialog$IconType;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/component/CommonDialog;->iconType:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v1}, Lcom/didi/common/ui/component/CommonDialog$IconType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 275
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->iconImageView:Lx/ImageView;

    const v1, 0x7f020193

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 276
    :cond_a
    sget-object v0, Lcom/didi/common/ui/component/CommonDialog$IconType;->COUPON:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/CommonDialog$IconType;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/component/CommonDialog;->iconType:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v1}, Lcom/didi/common/ui/component/CommonDialog$IconType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 277
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->pinkBmpDraw:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_b

    .line 278
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->iconImageView:Lx/ImageView;

    iget-object v1, p0, Lcom/didi/common/ui/component/CommonDialog;->pinkBmpDraw:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v1}, Lx/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 280
    :cond_b
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->iconImageView:Lx/ImageView;

    invoke-static {v4}, Lcom/didi/common/helper/ResourcesHelper;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 282
    :cond_c
    sget-object v0, Lcom/didi/common/ui/component/CommonDialog$IconType;->CRASH:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/CommonDialog$IconType;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/component/CommonDialog;->iconType:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v1}, Lcom/didi/common/ui/component/CommonDialog$IconType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 283
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->iconImageView:Lx/ImageView;

    const v1, 0x7f02011d

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 284
    :cond_d
    sget-object v0, Lcom/didi/common/ui/component/CommonDialog$IconType;->CHANNEL:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/CommonDialog$IconType;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/component/CommonDialog;->iconType:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v1}, Lcom/didi/common/ui/component/CommonDialog$IconType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 285
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->iconImageView:Lx/ImageView;

    const v1, 0x7f02011b

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 286
    :cond_e
    sget-object v0, Lcom/didi/common/ui/component/CommonDialog$IconType;->COOLPAD:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/CommonDialog$IconType;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/component/CommonDialog;->iconType:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v1}, Lcom/didi/common/ui/component/CommonDialog$IconType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 287
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->iconImageView:Lx/ImageView;

    const v1, 0x7f02011c

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 288
    :cond_f
    sget-object v0, Lcom/didi/common/ui/component/CommonDialog$IconType;->WIFI:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/CommonDialog$IconType;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/component/CommonDialog;->iconType:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v1}, Lcom/didi/common/ui/component/CommonDialog$IconType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 289
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->iconImageView:Lx/ImageView;

    const v1, 0x7f020132

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 290
    :cond_10
    sget-object v0, Lcom/didi/common/ui/component/CommonDialog$IconType;->PINK:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/CommonDialog$IconType;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/component/CommonDialog;->iconType:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v1}, Lcom/didi/common/ui/component/CommonDialog$IconType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 291
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->pinkBmpDraw:Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_11

    .line 292
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->iconImageView:Lx/ImageView;

    iget-object v1, p0, Lcom/didi/common/ui/component/CommonDialog;->pinkBmpDraw:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, v1}, Lx/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 294
    :cond_11
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->iconImageView:Lx/ImageView;

    invoke-static {v4}, Lcom/didi/common/helper/ResourcesHelper;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 296
    :cond_12
    sget-object v0, Lcom/didi/common/ui/component/CommonDialog$IconType;->HUAWEI:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/CommonDialog$IconType;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/component/CommonDialog;->iconType:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v1}, Lcom/didi/common/ui/component/CommonDialog$IconType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 297
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->iconImageView:Lx/ImageView;

    const v1, 0x7f020121

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 298
    :cond_13
    sget-object v0, Lcom/didi/common/ui/component/CommonDialog$IconType;->HUAWEI_RONGYAO:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/CommonDialog$IconType;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/component/CommonDialog;->iconType:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v1}, Lcom/didi/common/ui/component/CommonDialog$IconType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 299
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->iconImageView:Lx/ImageView;

    const v1, 0x7f020129

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 300
    :cond_14
    sget-object v0, Lcom/didi/common/ui/component/CommonDialog$IconType;->BAIDU:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/CommonDialog$IconType;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/component/CommonDialog;->iconType:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v1}, Lcom/didi/common/ui/component/CommonDialog$IconType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 301
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->iconImageView:Lx/ImageView;

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 302
    :cond_15
    sget-object v0, Lcom/didi/common/ui/component/CommonDialog$IconType;->RIGHT:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/CommonDialog$IconType;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/component/CommonDialog;->iconType:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v1}, Lcom/didi/common/ui/component/CommonDialog$IconType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 303
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->iconImageView:Lx/ImageView;

    const v1, 0x7f020194

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 304
    :cond_16
    sget-object v0, Lcom/didi/common/ui/component/CommonDialog$IconType;->YINGYONGBAO:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/CommonDialog$IconType;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/component/CommonDialog;->iconType:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v1}, Lcom/didi/common/ui/component/CommonDialog$IconType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 305
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->iconImageView:Lx/ImageView;

    const v1, 0x7f020133

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 306
    :cond_17
    sget-object v0, Lcom/didi/common/ui/component/CommonDialog$IconType;->JINLI_YIYONGHUI:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/CommonDialog$IconType;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/component/CommonDialog;->iconType:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v1}, Lcom/didi/common/ui/component/CommonDialog$IconType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 307
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->iconImageView:Lx/ImageView;

    const v1, 0x7f020123

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 308
    :cond_18
    sget-object v0, Lcom/didi/common/ui/component/CommonDialog$IconType;->MEIZU:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/CommonDialog$IconType;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/component/CommonDialog;->iconType:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v1}, Lcom/didi/common/ui/component/CommonDialog$IconType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 309
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->iconImageView:Lx/ImageView;

    const v1, 0x7f020125

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 310
    :cond_19
    sget-object v0, Lcom/didi/common/ui/component/CommonDialog$IconType;->ANZHI:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/CommonDialog$IconType;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/component/CommonDialog;->iconType:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v1}, Lcom/didi/common/ui/component/CommonDialog$IconType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 311
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->iconImageView:Lx/ImageView;

    const v1, 0x7f020118

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 312
    :cond_1a
    sget-object v0, Lcom/didi/common/ui/component/CommonDialog$IconType;->SAMSUNG:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/CommonDialog$IconType;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/component/CommonDialog;->iconType:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v1}, Lcom/didi/common/ui/component/CommonDialog$IconType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 313
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->iconImageView:Lx/ImageView;

    const v1, 0x7f02012b

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 314
    :cond_1b
    sget-object v0, Lcom/didi/common/ui/component/CommonDialog$IconType;->TIANYU:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/CommonDialog$IconType;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/component/CommonDialog;->iconType:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v1}, Lcom/didi/common/ui/component/CommonDialog$IconType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 315
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->iconImageView:Lx/ImageView;

    const v1, 0x7f02012e

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 316
    :cond_1c
    sget-object v0, Lcom/didi/common/ui/component/CommonDialog$IconType;->TUXING:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/CommonDialog$IconType;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/component/CommonDialog;->iconType:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v1}, Lcom/didi/common/ui/component/CommonDialog$IconType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 317
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->iconImageView:Lx/ImageView;

    const v1, 0x7f02012f

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 318
    :cond_1d
    sget-object v0, Lcom/didi/common/ui/component/CommonDialog$IconType;->WANDOUJIA:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/CommonDialog$IconType;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/component/CommonDialog;->iconType:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v1}, Lcom/didi/common/ui/component/CommonDialog$IconType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 319
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->iconImageView:Lx/ImageView;

    const v1, 0x7f020131

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 320
    :cond_1e
    sget-object v0, Lcom/didi/common/ui/component/CommonDialog$IconType;->TXSHOUJIGUANJIA:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/CommonDialog$IconType;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/component/CommonDialog;->iconType:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v1}, Lcom/didi/common/ui/component/CommonDialog$IconType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 321
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->iconImageView:Lx/ImageView;

    const v1, 0x7f020130

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 322
    :cond_1f
    sget-object v0, Lcom/didi/common/ui/component/CommonDialog$IconType;->SMARTISAN:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/CommonDialog$IconType;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/component/CommonDialog;->iconType:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v1}, Lcom/didi/common/ui/component/CommonDialog$IconType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 323
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->iconImageView:Lx/ImageView;

    const v1, 0x7f02012d

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 324
    :cond_20
    sget-object v0, Lcom/didi/common/ui/component/CommonDialog$IconType;->LENOVO:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/CommonDialog$IconType;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/component/CommonDialog;->iconType:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v1}, Lcom/didi/common/ui/component/CommonDialog$IconType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 325
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->iconImageView:Lx/ImageView;

    const v1, 0x7f020124

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 326
    :cond_21
    sget-object v0, Lcom/didi/common/ui/component/CommonDialog$IconType;->BAIDU:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/CommonDialog$IconType;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/component/CommonDialog;->iconType:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v1}, Lcom/didi/common/ui/component/CommonDialog$IconType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 327
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->iconImageView:Lx/ImageView;

    invoke-static {v2}, Lcom/didi/common/helper/ResourcesHelper;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 328
    :cond_22
    sget-object v0, Lcom/didi/common/ui/component/CommonDialog$IconType;->HONGBAO:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/CommonDialog$IconType;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/component/CommonDialog;->iconType:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v1}, Lcom/didi/common/ui/component/CommonDialog$IconType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 329
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->iconImageView:Lx/ImageView;

    const v1, 0x7f020120

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 330
    :cond_23
    sget-object v0, Lcom/didi/common/ui/component/CommonDialog$IconType;->SAMSUNG_S6:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/CommonDialog$IconType;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/component/CommonDialog;->iconType:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v1}, Lcom/didi/common/ui/component/CommonDialog$IconType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 331
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->iconImageView:Lx/ImageView;

    const v1, 0x7f02012c

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 332
    :cond_24
    sget-object v0, Lcom/didi/common/ui/component/CommonDialog$IconType;->DYNAPRIC:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0}, Lcom/didi/common/ui/component/CommonDialog$IconType;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/component/CommonDialog;->iconType:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v1}, Lcom/didi/common/ui/component/CommonDialog$IconType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 333
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->mIconBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_25

    .line 334
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->iconImageView:Lx/ImageView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/didi/common/ui/component/CommonDialog;->mIconBmp:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lx/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 336
    :cond_25
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->iconImageView:Lx/ImageView;

    const v1, 0x7f020128

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lx/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1
.end method

.method private setTitleVisibility()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 346
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->title:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 348
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->contentTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 349
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->contentOnlyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 355
    :goto_0
    return-void

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->titleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 352
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->contentTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 353
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->contentOnlyTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 540
    invoke-super {p0}, Lcom/didi/common/base/BaseDialog;->dismiss()V

    .line 541
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/common/ui/component/CommonDialog;->isShow:Z

    .line 542
    return-void
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->checkedTextView:Landroid/widget/CheckedTextView;

    if-nez v0, :cond_0

    .line 245
    const/4 v0, 0x0

    .line 246
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->checkedTextView:Landroid/widget/CheckedTextView;

    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v0

    goto :goto_0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 545
    iget-boolean v0, p0, Lcom/didi/common/ui/component/CommonDialog;->isShow:Z

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 152
    invoke-super {p0, p1}, Lcom/didi/common/base/BaseDialog;->onCreate(Landroid/os/Bundle;)V

    .line 153
    const v0, 0x7f03007a

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/component/CommonDialog;->setContentView(I)V

    .line 154
    invoke-direct {p0}, Lcom/didi/common/ui/component/CommonDialog;->initLayout()V

    .line 155
    return-void
.end method

.method public setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V
    .locals 0
    .parameter "buttonType"

    .prologue
    .line 448
    iput-object p1, p0, Lcom/didi/common/ui/component/CommonDialog;->buttonType:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    .line 450
    return-void
.end method

.method public setCancelBtnText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 467
    invoke-static {p1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 468
    iput-object p1, p0, Lcom/didi/common/ui/component/CommonDialog;->btnCancelTxt:Ljava/lang/String;

    .line 470
    :cond_0
    return-void
.end method

.method public setCancelable(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 485
    invoke-super {p0, p1}, Lcom/didi/common/base/BaseDialog;->setCancelable(Z)V

    .line 486
    return-void
.end method

.method public setCheckboxVisibility(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 239
    iput-boolean p1, p0, Lcom/didi/common/ui/component/CommonDialog;->showCheckBox:Z

    .line 241
    return-void
.end method

.method public setCloseDialogVisiblity(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 250
    iput-boolean p1, p0, Lcom/didi/common/ui/component/CommonDialog;->isShowCloseDialog:Z

    .line 251
    return-void
.end method

.method public setIconType(Lcom/didi/common/ui/component/CommonDialog$IconType;)V
    .locals 0
    .parameter "iconType"

    .prologue
    .line 425
    iput-object p1, p0, Lcom/didi/common/ui/component/CommonDialog;->iconType:Lcom/didi/common/ui/component/CommonDialog$IconType;

    .line 426
    return-void
.end method

.method public setIconVisible(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 480
    iput-boolean p1, p0, Lcom/didi/common/ui/component/CommonDialog;->flagShowIcon:Z

    .line 481
    return-void
.end method

.method public setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 454
    iput-object p1, p0, Lcom/didi/common/ui/component/CommonDialog;->listener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

    .line 455
    return-void
.end method

.method public setSubmitBtnText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 459
    invoke-static {p1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 460
    iput-object p1, p0, Lcom/didi/common/ui/component/CommonDialog;->btnOnlyTxt:Ljava/lang/String;

    .line 461
    iput-object p1, p0, Lcom/didi/common/ui/component/CommonDialog;->btnSubmitTxt:Ljava/lang/String;

    .line 463
    :cond_0
    return-void
.end method

.method public setThreeBtnText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "bntText1"
    .parameter "bntText2"
    .parameter "btnText3"

    .prologue
    .line 474
    iput-object p1, p0, Lcom/didi/common/ui/component/CommonDialog;->btnOneTxt:Ljava/lang/String;

    .line 475
    iput-object p2, p0, Lcom/didi/common/ui/component/CommonDialog;->btnTwoTxt:Ljava/lang/String;

    .line 476
    iput-object p3, p0, Lcom/didi/common/ui/component/CommonDialog;->btnThreeTxt:Ljava/lang/String;

    .line 477
    return-void
.end method

.method public setTitleContent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "title"
    .parameter "content"

    .prologue
    .line 402
    iput-object p1, p0, Lcom/didi/common/ui/component/CommonDialog;->title:Ljava/lang/String;

    .line 403
    iput-object p2, p0, Lcom/didi/common/ui/component/CommonDialog;->content:Ljava/lang/String;

    .line 404
    iput-object p2, p0, Lcom/didi/common/ui/component/CommonDialog;->contentOnly:Ljava/lang/String;

    .line 405
    return-void
.end method

.method public setTitleContent(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .parameter "title"
    .parameter "contents"

    .prologue
    const/4 v2, 0x0

    .line 409
    iput-object p1, p0, Lcom/didi/common/ui/component/CommonDialog;->title:Ljava/lang/String;

    .line 411
    if-eqz p2, :cond_0

    array-length v0, p2

    if-nez v0, :cond_1

    .line 421
    :cond_0
    :goto_0
    return-void

    .line 414
    :cond_1
    array-length v0, p2

    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    .line 415
    aget-object v0, p2, v2

    iput-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->content:Ljava/lang/String;

    .line 416
    aget-object v0, p2, v2

    iput-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->contentOnly:Ljava/lang/String;

    goto :goto_0

    .line 420
    :cond_2
    iput-object p2, p0, Lcom/didi/common/ui/component/CommonDialog;->contentArray:[Ljava/lang/String;

    goto :goto_0
.end method

.method public show()V
    .locals 2

    .prologue
    .line 490
    invoke-super {p0}, Lcom/didi/common/base/BaseDialog;->show()V

    .line 491
    invoke-direct {p0}, Lcom/didi/common/ui/component/CommonDialog;->setIconVisibility()V

    .line 492
    invoke-direct {p0}, Lcom/didi/common/ui/component/CommonDialog;->setButtonVisibility()V

    .line 493
    invoke-direct {p0}, Lcom/didi/common/ui/component/CommonDialog;->setTitleVisibility()V

    .line 494
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/common/ui/component/CommonDialog;->isShow:Z

    .line 495
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showCheckBox :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/didi/common/ui/component/CommonDialog;->showCheckBox:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 496
    iget-boolean v0, p0, Lcom/didi/common/ui/component/CommonDialog;->showCheckBox:Z

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->checkedTextView:Landroid/widget/CheckedTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    .line 502
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lcom/didi/common/ui/component/CommonDialog;->handleTextViewGravity()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 506
    :goto_1
    return-void

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/didi/common/ui/component/CommonDialog;->checkedTextView:Landroid/widget/CheckedTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    goto :goto_0

    .line 503
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public updatePinkIconShow(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 430
    invoke-static {p1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 431
    new-instance v0, Lcom/didi/common/ui/component/CommonDialog$3;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/component/CommonDialog$3;-><init>(Lcom/didi/common/ui/component/CommonDialog;)V

    invoke-static {p1, v0}, Lcom/didi/common/helper/ImageFetcher;->fetch(Ljava/lang/String;Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;)V

    .line 444
    :cond_0
    return-void
.end method
