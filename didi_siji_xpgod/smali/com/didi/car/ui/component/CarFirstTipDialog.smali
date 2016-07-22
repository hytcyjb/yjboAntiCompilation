.class public Lcom/didi/car/ui/component/CarFirstTipDialog;
.super Lcom/didi/common/base/BaseDialog;
.source "CarFirstTipDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/car/ui/component/CarFirstTipDialog$CarCommonDialogListener;,
        Lcom/didi/car/ui/component/CarFirstTipDialog$ButtonType;
    }
.end annotation


# static fields
.field private static mIsLoading:Z

.field private static progressDialog:Landroid/app/ProgressDialog;


# instance fields
.field private btnOnlyTxt:Ljava/lang/String;

.field private buttonType:Lcom/didi/car/ui/component/CarFirstTipDialog$ButtonType;

.field private isShow:Z

.field private layoutFirstTipA:Lx/LinearLayout;

.field private layoutFirstTipB:Lx/LinearLayout;

.field private layoutFirstTipC:Lx/LinearLayout;

.field private layoutList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lx/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

.field private layoutOnlySubmit:Lx/LinearLayout;

.field private listener:Lcom/didi/car/ui/component/CarFirstTipDialog$CarCommonDialogListener;

.field private onClickListener:Landroid/view/View$OnClickListener;

.field private optionStrList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private submitOnlyButton:Lx/Button;

.field private textList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private title:Ljava/lang/String;

.field private titleTextView:Landroid/widget/TextView;

.field private txtFirstTipA:Landroid/widget/TextView;

.field private txtFirstTipB:Landroid/widget/TextView;

.field private txtFirstTipC:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput-boolean v0, Lcom/didi/car/ui/component/CarFirstTipDialog;->mIsLoading:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 61
    const v0, 0x7f0c0032

    invoke-direct {p0, p1, v0}, Lcom/didi/common/base/BaseDialog;-><init>(Landroid/content/Context;I)V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/car/ui/component/CarFirstTipDialog;->isShow:Z

    .line 228
    new-instance v0, Lcom/didi/car/ui/component/CarFirstTipDialog$1;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/component/CarFirstTipDialog$1;-><init>(Lcom/didi/car/ui/component/CarFirstTipDialog;)V

    iput-object v0, p0, Lcom/didi/car/ui/component/CarFirstTipDialog;->onClickListener:Landroid/view/View$OnClickListener;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/didi/car/ui/component/CarFirstTipDialog;)Lcom/didi/car/ui/component/CarFirstTipDialog$CarCommonDialogListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 26
    iget-object v0, p0, Lcom/didi/car/ui/component/CarFirstTipDialog;->listener:Lcom/didi/car/ui/component/CarFirstTipDialog$CarCommonDialogListener;

    return-object v0
.end method

.method private static getInstance(Landroid/content/Context;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "context"

    .prologue
    .line 222
    sget-object v0, Lcom/didi/car/ui/component/CarFirstTipDialog;->progressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 223
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/didi/car/ui/component/CarFirstTipDialog;->progressDialog:Landroid/app/ProgressDialog;

    .line 225
    :cond_0
    sget-object v0, Lcom/didi/car/ui/component/CarFirstTipDialog;->progressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method private initLayout()V
    .locals 3

    .prologue
    .line 65
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/didi/car/ui/component/CarFirstTipDialog;->layoutList:Ljava/util/List;

    .line 66
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/didi/car/ui/component/CarFirstTipDialog;->textList:Ljava/util/List;

    .line 68
    const v1, 0x7f080225

    invoke-virtual {p0, v1}, Lcom/didi/car/ui/component/CarFirstTipDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lx/LinearLayout;

    iput-object v1, p0, Lcom/didi/car/ui/component/CarFirstTipDialog;->layoutOnlySubmit:Lx/LinearLayout;

    .line 69
    const v1, 0x7f08021f

    invoke-virtual {p0, v1}, Lcom/didi/car/ui/component/CarFirstTipDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lx/LinearLayout;

    iput-object v1, p0, Lcom/didi/car/ui/component/CarFirstTipDialog;->layoutFirstTipA:Lx/LinearLayout;

    .line 70
    const v1, 0x7f080221

    invoke-virtual {p0, v1}, Lcom/didi/car/ui/component/CarFirstTipDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lx/LinearLayout;

    iput-object v1, p0, Lcom/didi/car/ui/component/CarFirstTipDialog;->layoutFirstTipB:Lx/LinearLayout;

    .line 71
    const v1, 0x7f080223

    invoke-virtual {p0, v1}, Lcom/didi/car/ui/component/CarFirstTipDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lx/LinearLayout;

    iput-object v1, p0, Lcom/didi/car/ui/component/CarFirstTipDialog;->layoutFirstTipC:Lx/LinearLayout;

    .line 72
    iget-object v1, p0, Lcom/didi/car/ui/component/CarFirstTipDialog;->layoutList:Ljava/util/List;

    iget-object v2, p0, Lcom/didi/car/ui/component/CarFirstTipDialog;->layoutFirstTipA:Lx/LinearLayout;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v1, p0, Lcom/didi/car/ui/component/CarFirstTipDialog;->layoutList:Ljava/util/List;

    iget-object v2, p0, Lcom/didi/car/ui/component/CarFirstTipDialog;->layoutFirstTipB:Lx/LinearLayout;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v1, p0, Lcom/didi/car/ui/component/CarFirstTipDialog;->layoutList:Ljava/util/List;

    iget-object v2, p0, Lcom/didi/car/ui/component/CarFirstTipDialog;->layoutFirstTipC:Lx/LinearLayout;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    const v1, 0x7f08021d

    invoke-virtual {p0, v1}, Lcom/didi/car/ui/component/CarFirstTipDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/didi/car/ui/component/CarFirstTipDialog;->titleTextView:Landroid/widget/TextView;

    .line 77
    iget-object v1, p0, Lcom/didi/car/ui/component/CarFirstTipDialog;->titleTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/didi/car/ui/component/CarFirstTipDialog;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    const v1, 0x7f080220

    invoke-virtual {p0, v1}, Lcom/didi/car/ui/component/CarFirstTipDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/didi/car/ui/component/CarFirstTipDialog;->txtFirstTipA:Landroid/widget/TextView;

    .line 80
    const v1, 0x7f080222

    invoke-virtual {p0, v1}, Lcom/didi/car/ui/component/CarFirstTipDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/didi/car/ui/component/CarFirstTipDialog;->txtFirstTipB:Landroid/widget/TextView;

    .line 81
    const v1, 0x7f080224

    invoke-virtual {p0, v1}, Lcom/didi/car/ui/component/CarFirstTipDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/didi/car/ui/component/CarFirstTipDialog;->txtFirstTipC:Landroid/widget/TextView;

    .line 82
    iget-object v1, p0, Lcom/didi/car/ui/component/CarFirstTipDialog;->textList:Ljava/util/List;

    iget-object v2, p0, Lcom/didi/car/ui/component/CarFirstTipDialog;->txtFirstTipA:Landroid/widget/TextView;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v1, p0, Lcom/didi/car/ui/component/CarFirstTipDialog;->textList:Ljava/util/List;

    iget-object v2, p0, Lcom/didi/car/ui/component/CarFirstTipDialog;->txtFirstTipB:Landroid/widget/TextView;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v1, p0, Lcom/didi/car/ui/component/CarFirstTipDialog;->textList:Ljava/util/List;

    iget-object v2, p0, Lcom/didi/car/ui/component/CarFirstTipDialog;->txtFirstTipC:Landroid/widget/TextView;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    const v1, 0x7f080226

    invoke-virtual {p0, v1}, Lcom/didi/car/ui/component/CarFirstTipDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lx/Button;

    iput-object v1, p0, Lcom/didi/car/ui/component/CarFirstTipDialog;->submitOnlyButton:Lx/Button;

    .line 87
    iget-object v1, p0, Lcom/didi/car/ui/component/CarFirstTipDialog;->submitOnlyButton:Lx/Button;

    iget-object v2, p0, Lcom/didi/car/ui/component/CarFirstTipDialog;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lx/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v1, p0, Lcom/didi/car/ui/component/CarFirstTipDialog;->btnOnlyTxt:Ljava/lang/String;

    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    const v1, 0x7f0b0276

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/car/ui/component/CarFirstTipDialog;->btnOnlyTxt:Ljava/lang/String;

    .line 92
    :cond_0
    iget-object v1, p0, Lcom/didi/car/ui/component/CarFirstTipDialog;->submitOnlyButton:Lx/Button;

    iget-object v2, p0, Lcom/didi/car/ui/component/CarFirstTipDialog;->btnOnlyTxt:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lx/Button;->setText(Ljava/lang/CharSequence;)V

    .line 94
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    iget-object v1, p0, Lcom/didi/car/ui/component/CarFirstTipDialog;->optionStrList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 95
    iget-object v1, p0, Lcom/didi/car/ui/component/CarFirstTipDialog;->layoutList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lx/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lx/LinearLayout;->setVisibility(I)V

    .line 96
    iget-object v1, p0, Lcom/didi/car/ui/component/CarFirstTipDialog;->textList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/didi/car/ui/component/CarFirstTipDialog;->optionStrList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    :cond_1
    return-void
.end method

.method public static isLoading()Z
    .locals 1

    .prologue
    .line 218
    sget-boolean v0, Lcom/didi/car/ui/component/CarFirstTipDialog;->mIsLoading:Z

    return v0
.end method

.method public static loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 1
    .parameter "context"
    .parameter "content"
    .parameter "isCanCancel"
    .parameter "onCancelListener"

    .prologue
    .line 181
    if-eqz p0, :cond_0

    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/MainActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    invoke-static {p0}, Lcom/didi/car/ui/component/CarFirstTipDialog;->getInstance(Landroid/content/Context;)Landroid/app/ProgressDialog;

    .line 185
    sget-object v0, Lcom/didi/car/ui/component/CarFirstTipDialog;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 186
    sget-object v0, Lcom/didi/car/ui/component/CarFirstTipDialog;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 187
    sget-object v0, Lcom/didi/car/ui/component/CarFirstTipDialog;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p3}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 188
    sget-object v0, Lcom/didi/car/ui/component/CarFirstTipDialog;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 189
    const/4 v0, 0x1

    sput-boolean v0, Lcom/didi/car/ui/component/CarFirstTipDialog;->mIsLoading:Z

    goto :goto_0
.end method

.method public static removeLoadingDialog()V
    .locals 3

    .prologue
    .line 193
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/frame/MainActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 214
    .local v1, context:Landroid/content/Context;
    :cond_0
    :goto_0
    return-void

    .line 196
    .end local v1           #context:Landroid/content/Context;
    :cond_1
    sget-object v2, Lcom/didi/car/ui/component/CarFirstTipDialog;->progressDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_3

    .line 197
    sget-object v2, Lcom/didi/car/ui/component/CarFirstTipDialog;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 199
    .restart local v1       #context:Landroid/content/Context;
    if-eqz v1, :cond_0

    .line 203
    instance-of v2, v1, Landroid/app/Activity;

    if-eqz v2, :cond_2

    move-object v0, v1

    .line 204
    check-cast v0, Landroid/app/Activity;

    .line 205
    .local v0, activity:Landroid/app/Activity;
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 210
    .end local v0           #activity:Landroid/app/Activity;
    :cond_2
    sget-object v2, Lcom/didi/car/ui/component/CarFirstTipDialog;->progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 211
    const/4 v2, 0x0

    sput-object v2, Lcom/didi/car/ui/component/CarFirstTipDialog;->progressDialog:Landroid/app/ProgressDialog;

    .line 213
    :cond_3
    const/4 v2, 0x0

    sput-boolean v2, Lcom/didi/car/ui/component/CarFirstTipDialog;->mIsLoading:Z

    goto :goto_0
.end method

.method private setButtonVisibility()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/didi/car/ui/component/CarFirstTipDialog;->layoutOnlySubmit:Lx/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lx/LinearLayout;->setVisibility(I)V

    .line 112
    return-void
.end method

.method private setTitleVisibility()V
    .locals 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/didi/car/ui/component/CarFirstTipDialog;->title:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/didi/car/ui/component/CarFirstTipDialog;->titleTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/didi/car/ui/component/CarFirstTipDialog;->titleTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lcom/didi/car/ui/component/CarFirstTipDialog;->titleTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/didi/car/ui/component/CarFirstTipDialog;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 162
    invoke-super {p0}, Lcom/didi/common/base/BaseDialog;->dismiss()V

    .line 163
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/car/ui/component/CarFirstTipDialog;->isShow:Z

    .line 164
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 167
    iget-boolean v0, p0, Lcom/didi/car/ui/component/CarFirstTipDialog;->isShow:Z

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/didi/common/base/BaseDialog;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const v0, 0x7f03005c

    invoke-virtual {p0, v0}, Lcom/didi/car/ui/component/CarFirstTipDialog;->setContentView(I)V

    .line 57
    invoke-direct {p0}, Lcom/didi/car/ui/component/CarFirstTipDialog;->initLayout()V

    .line 58
    return-void
.end method

.method public setButtonType(Lcom/didi/car/ui/component/CarFirstTipDialog$ButtonType;)V
    .locals 0
    .parameter "buttonType"

    .prologue
    .line 131
    iput-object p1, p0, Lcom/didi/car/ui/component/CarFirstTipDialog;->buttonType:Lcom/didi/car/ui/component/CarFirstTipDialog$ButtonType;

    .line 133
    return-void
.end method

.method public setCancelable(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 149
    invoke-super {p0, p1}, Lcom/didi/common/base/BaseDialog;->setCancelable(Z)V

    .line 150
    return-void
.end method

.method public setListener(Lcom/didi/car/ui/component/CarFirstTipDialog$CarCommonDialogListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 137
    iput-object p1, p0, Lcom/didi/car/ui/component/CarFirstTipDialog;->listener:Lcom/didi/car/ui/component/CarFirstTipDialog$CarCommonDialogListener;

    .line 138
    return-void
.end method

.method public setSubmitBtnText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 142
    invoke-static {p1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    iput-object p1, p0, Lcom/didi/car/ui/component/CarFirstTipDialog;->btnOnlyTxt:Ljava/lang/String;

    .line 145
    :cond_0
    return-void
.end method

.method public setTitleContent(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .parameter "title"
    .parameter "contentArray"

    .prologue
    .line 116
    invoke-static {p1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    const-string v1, ""

    iput-object v1, p0, Lcom/didi/car/ui/component/CarFirstTipDialog;->title:Ljava/lang/String;

    .line 119
    :cond_0
    iput-object p1, p0, Lcom/didi/car/ui/component/CarFirstTipDialog;->title:Ljava/lang/String;

    .line 120
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/didi/car/ui/component/CarFirstTipDialog;->optionStrList:Ljava/util/List;

    .line 121
    if-eqz p2, :cond_1

    .line 122
    const/4 v0, 0x0

    .local v0, index:I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 123
    iget-object v1, p0, Lcom/didi/car/ui/component/CarFirstTipDialog;->optionStrList:Ljava/util/List;

    aget-object v2, p2, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    .end local v0           #index:I
    :cond_1
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 154
    invoke-super {p0}, Lcom/didi/common/base/BaseDialog;->show()V

    .line 155
    invoke-direct {p0}, Lcom/didi/car/ui/component/CarFirstTipDialog;->setButtonVisibility()V

    .line 156
    invoke-direct {p0}, Lcom/didi/car/ui/component/CarFirstTipDialog;->setTitleVisibility()V

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/car/ui/component/CarFirstTipDialog;->isShow:Z

    .line 158
    return-void
.end method
