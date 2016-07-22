.class public Lcom/didi/car/ui/component/CarWxAgentDialog;
.super Lcom/didi/common/base/BaseDialog;
.source "CarWxAgentDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/car/ui/component/CarWxAgentDialog$ImgDialogListener;
    }
.end annotation


# instance fields
.field private canceListener:Landroid/view/View$OnClickListener;

.field private cancel:Lx/Button;

.field private confirm:Lx/Button;

.field private confirmListener:Landroid/view/View$OnClickListener;

.field public disListener:Landroid/view/View$OnClickListener;

.field private imageClickListener:Landroid/view/View$OnClickListener;

.field private listener:Lcom/didi/car/ui/component/CarWxAgentDialog$ImgDialogListener;

.field private mAgreementLayout:Landroid/widget/LinearLayout;

.field private mCommonArea:Landroid/widget/LinearLayout;

.field private mSubTitle:Landroid/widget/TextView;

.field private title:Landroid/widget/TextView;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 33
    const v0, 0x7f0c0032

    invoke-direct {p0, p1, v0}, Lcom/didi/common/base/BaseDialog;-><init>(Landroid/content/Context;I)V

    .line 63
    new-instance v0, Lcom/didi/car/ui/component/CarWxAgentDialog$2;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/component/CarWxAgentDialog$2;-><init>(Lcom/didi/car/ui/component/CarWxAgentDialog;)V

    iput-object v0, p0, Lcom/didi/car/ui/component/CarWxAgentDialog;->imageClickListener:Landroid/view/View$OnClickListener;

    .line 101
    new-instance v0, Lcom/didi/car/ui/component/CarWxAgentDialog$3;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/component/CarWxAgentDialog$3;-><init>(Lcom/didi/car/ui/component/CarWxAgentDialog;)V

    iput-object v0, p0, Lcom/didi/car/ui/component/CarWxAgentDialog;->disListener:Landroid/view/View$OnClickListener;

    .line 111
    new-instance v0, Lcom/didi/car/ui/component/CarWxAgentDialog$4;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/component/CarWxAgentDialog$4;-><init>(Lcom/didi/car/ui/component/CarWxAgentDialog;)V

    iput-object v0, p0, Lcom/didi/car/ui/component/CarWxAgentDialog;->canceListener:Landroid/view/View$OnClickListener;

    .line 121
    new-instance v0, Lcom/didi/car/ui/component/CarWxAgentDialog$5;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/component/CarWxAgentDialog$5;-><init>(Lcom/didi/car/ui/component/CarWxAgentDialog;)V

    iput-object v0, p0, Lcom/didi/car/ui/component/CarWxAgentDialog;->confirmListener:Landroid/view/View$OnClickListener;

    .line 34
    invoke-direct {p0}, Lcom/didi/car/ui/component/CarWxAgentDialog;->init()V

    .line 35
    return-void
.end method

.method static synthetic access$000(Lcom/didi/car/ui/component/CarWxAgentDialog;)Lcom/didi/car/ui/component/CarWxAgentDialog$ImgDialogListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 21
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWxAgentDialog;->listener:Lcom/didi/car/ui/component/CarWxAgentDialog$ImgDialogListener;

    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 44
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030110

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/car/ui/component/CarWxAgentDialog;->view:Landroid/view/View;

    .line 45
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWxAgentDialog;->view:Landroid/view/View;

    const v1, 0x7f0803ea

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lx/Button;

    iput-object v0, p0, Lcom/didi/car/ui/component/CarWxAgentDialog;->cancel:Lx/Button;

    .line 46
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWxAgentDialog;->view:Landroid/view/View;

    const v1, 0x7f080323

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lx/Button;

    iput-object v0, p0, Lcom/didi/car/ui/component/CarWxAgentDialog;->confirm:Lx/Button;

    .line 47
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWxAgentDialog;->view:Landroid/view/View;

    const v1, 0x7f0803d7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/car/ui/component/CarWxAgentDialog;->title:Landroid/widget/TextView;

    .line 48
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWxAgentDialog;->view:Landroid/view/View;

    const v1, 0x7f080617

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/car/ui/component/CarWxAgentDialog;->mSubTitle:Landroid/widget/TextView;

    .line 49
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWxAgentDialog;->view:Landroid/view/View;

    const v1, 0x7f080058

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/didi/car/ui/component/CarWxAgentDialog;->mAgreementLayout:Landroid/widget/LinearLayout;

    .line 50
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWxAgentDialog;->mAgreementLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/didi/car/ui/component/CarWxAgentDialog$1;

    invoke-direct {v1, p0}, Lcom/didi/car/ui/component/CarWxAgentDialog$1;-><init>(Lcom/didi/car/ui/component/CarWxAgentDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWxAgentDialog;->view:Landroid/view/View;

    const v1, 0x7f0803e0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/didi/car/ui/component/CarWxAgentDialog;->mCommonArea:Landroid/widget/LinearLayout;

    .line 58
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWxAgentDialog;->cancel:Lx/Button;

    iget-object v1, p0, Lcom/didi/car/ui/component/CarWxAgentDialog;->canceListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lx/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWxAgentDialog;->confirm:Lx/Button;

    iget-object v1, p0, Lcom/didi/car/ui/component/CarWxAgentDialog;->confirmListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lx/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    return-void
.end method

.method private setCommonArea(Ljava/lang/String;)V
    .locals 7
    .parameter "strings"

    .prologue
    .line 86
    const-string v6, "&"

    invoke-virtual {p1, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, contents:[Ljava/lang/String;
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v1, v0, v3

    .line 88
    .local v1, content:Ljava/lang/String;
    new-instance v4, Lcom/didi/car/ui/component/CarImageTextItemView;

    invoke-virtual {p0}, Lcom/didi/car/ui/component/CarWxAgentDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v4, v6}, Lcom/didi/car/ui/component/CarImageTextItemView;-><init>(Landroid/content/Context;)V

    .line 89
    .local v4, itemView:Lcom/didi/car/ui/component/CarImageTextItemView;
    const v6, 0x7f020274

    invoke-virtual {v4, v6, v1}, Lcom/didi/car/ui/component/CarImageTextItemView;->fillData(ILjava/lang/String;)V

    .line 91
    iget-object v6, p0, Lcom/didi/car/ui/component/CarWxAgentDialog;->mCommonArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 87
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 94
    .end local v1           #content:Ljava/lang/String;
    .end local v4           #itemView:Lcom/didi/car/ui/component/CarImageTextItemView;
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/didi/common/base/BaseDialog;->onCreate(Landroid/os/Bundle;)V

    .line 40
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWxAgentDialog;->view:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/didi/car/ui/component/CarWxAgentDialog;->setContentView(Landroid/view/View;)V

    .line 41
    return-void
.end method

.method public setDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "titleLabel"
    .parameter "subTitle"
    .parameter "leftBtnLabel"
    .parameter "rightBtnLabel"
    .parameter "strings"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWxAgentDialog;->title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWxAgentDialog;->mSubTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWxAgentDialog;->cancel:Lx/Button;

    invoke-virtual {v0, p3}, Lx/Button;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWxAgentDialog;->confirm:Lx/Button;

    invoke-virtual {v0, p4}, Lx/Button;->setText(Ljava/lang/CharSequence;)V

    .line 79
    invoke-direct {p0, p5}, Lcom/didi/car/ui/component/CarWxAgentDialog;->setCommonArea(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p0}, Lcom/didi/car/ui/component/CarWxAgentDialog;->show()V

    .line 82
    return-void
.end method

.method public setListener(Lcom/didi/car/ui/component/CarWxAgentDialog$ImgDialogListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/didi/car/ui/component/CarWxAgentDialog;->listener:Lcom/didi/car/ui/component/CarWxAgentDialog$ImgDialogListener;

    .line 99
    return-void
.end method
