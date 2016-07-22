.class public Lcom/didi/car/ui/component/CarWxAgentCheckDialog;
.super Lcom/didi/common/base/BaseDialog;
.source "CarWxAgentCheckDialog.java"


# instance fields
.field private btnCancel:Lx/Button;

.field private btnConfirm:Lx/Button;

.field private canceListener:Landroid/view/View$OnClickListener;

.field private confirmListener:Landroid/view/View$OnClickListener;

.field private imgCheckbox:Lx/ImageView;

.field private listener:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

.field private mAgreementLayout:Lx/LinearLayout;

.field private mReason:Lcom/didi/car/model/CarWxAgentFailReason;

.field private txtCheckTip:Landroid/widget/TextView;

.field private txtContent:Landroid/widget/TextView;

.field private txtTitle:Landroid/widget/TextView;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 32
    const v0, 0x7f0c0032

    invoke-direct {p0, p1, v0}, Lcom/didi/common/base/BaseDialog;-><init>(Landroid/content/Context;I)V

    .line 106
    new-instance v0, Lcom/didi/car/ui/component/CarWxAgentCheckDialog$3;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/component/CarWxAgentCheckDialog$3;-><init>(Lcom/didi/car/ui/component/CarWxAgentCheckDialog;)V

    iput-object v0, p0, Lcom/didi/car/ui/component/CarWxAgentCheckDialog;->canceListener:Landroid/view/View$OnClickListener;

    .line 116
    new-instance v0, Lcom/didi/car/ui/component/CarWxAgentCheckDialog$4;

    invoke-direct {v0, p0}, Lcom/didi/car/ui/component/CarWxAgentCheckDialog$4;-><init>(Lcom/didi/car/ui/component/CarWxAgentCheckDialog;)V

    iput-object v0, p0, Lcom/didi/car/ui/component/CarWxAgentCheckDialog;->confirmListener:Landroid/view/View$OnClickListener;

    .line 33
    invoke-direct {p0}, Lcom/didi/car/ui/component/CarWxAgentCheckDialog;->init()V

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/didi/car/ui/component/CarWxAgentCheckDialog;)Lcom/didi/car/model/CarWxAgentFailReason;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWxAgentCheckDialog;->mReason:Lcom/didi/car/model/CarWxAgentFailReason;

    return-object v0
.end method

.method static synthetic access$100(Lcom/didi/car/ui/component/CarWxAgentCheckDialog;)Lx/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWxAgentCheckDialog;->imgCheckbox:Lx/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/didi/car/ui/component/CarWxAgentCheckDialog;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWxAgentCheckDialog;->txtCheckTip:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/didi/car/ui/component/CarWxAgentCheckDialog;)Lcom/didi/common/helper/DialogHelper$DialogHelperListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWxAgentCheckDialog;->listener:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 43
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03010f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/car/ui/component/CarWxAgentCheckDialog;->view:Landroid/view/View;

    .line 44
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWxAgentCheckDialog;->view:Landroid/view/View;

    const v1, 0x7f08054b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lx/Button;

    iput-object v0, p0, Lcom/didi/car/ui/component/CarWxAgentCheckDialog;->btnCancel:Lx/Button;

    .line 45
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWxAgentCheckDialog;->view:Landroid/view/View;

    const v1, 0x7f080611

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lx/Button;

    iput-object v0, p0, Lcom/didi/car/ui/component/CarWxAgentCheckDialog;->btnConfirm:Lx/Button;

    .line 46
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWxAgentCheckDialog;->view:Landroid/view/View;

    const v1, 0x7f080612

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/car/ui/component/CarWxAgentCheckDialog;->txtTitle:Landroid/widget/TextView;

    .line 47
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWxAgentCheckDialog;->view:Landroid/view/View;

    const v1, 0x7f0801d1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/car/ui/component/CarWxAgentCheckDialog;->txtContent:Landroid/widget/TextView;

    .line 48
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWxAgentCheckDialog;->view:Landroid/view/View;

    const v1, 0x7f080613

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lx/LinearLayout;

    iput-object v0, p0, Lcom/didi/car/ui/component/CarWxAgentCheckDialog;->mAgreementLayout:Lx/LinearLayout;

    .line 49
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWxAgentCheckDialog;->mAgreementLayout:Lx/LinearLayout;

    new-instance v1, Lcom/didi/car/ui/component/CarWxAgentCheckDialog$1;

    invoke-direct {v1, p0}, Lcom/didi/car/ui/component/CarWxAgentCheckDialog$1;-><init>(Lcom/didi/car/ui/component/CarWxAgentCheckDialog;)V

    invoke-virtual {v0, v1}, Lx/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWxAgentCheckDialog;->view:Landroid/view/View;

    const v1, 0x7f080614

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lx/ImageView;

    iput-object v0, p0, Lcom/didi/car/ui/component/CarWxAgentCheckDialog;->imgCheckbox:Lx/ImageView;

    .line 62
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWxAgentCheckDialog;->view:Landroid/view/View;

    const v1, 0x7f08005a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/car/ui/component/CarWxAgentCheckDialog;->txtCheckTip:Landroid/widget/TextView;

    .line 64
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWxAgentCheckDialog;->btnCancel:Lx/Button;

    iget-object v1, p0, Lcom/didi/car/ui/component/CarWxAgentCheckDialog;->canceListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lx/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWxAgentCheckDialog;->btnConfirm:Lx/Button;

    iget-object v1, p0, Lcom/didi/car/ui/component/CarWxAgentCheckDialog;->confirmListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lx/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/didi/common/base/BaseDialog;->onCreate(Landroid/os/Bundle;)V

    .line 39
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWxAgentCheckDialog;->view:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/didi/car/ui/component/CarWxAgentCheckDialog;->setContentView(Landroid/view/View;)V

    .line 40
    return-void
.end method

.method public setDialog(Ljava/lang/String;Lcom/didi/car/model/CarWxAgentFailReason;)V
    .locals 2
    .parameter "title"
    .parameter "reason"

    .prologue
    .line 71
    iput-object p2, p0, Lcom/didi/car/ui/component/CarWxAgentCheckDialog;->mReason:Lcom/didi/car/model/CarWxAgentFailReason;

    .line 72
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWxAgentCheckDialog;->txtTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWxAgentCheckDialog;->txtContent:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/didi/car/model/CarWxAgentFailReason;->failMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWxAgentCheckDialog;->btnCancel:Lx/Button;

    iget-object v1, p2, Lcom/didi/car/model/CarWxAgentFailReason;->btnCloseTip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lx/Button;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWxAgentCheckDialog;->btnConfirm:Lx/Button;

    iget-object v1, p2, Lcom/didi/car/model/CarWxAgentFailReason;->btnPayTip:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lx/Button;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-boolean v0, p2, Lcom/didi/car/model/CarWxAgentFailReason;->checkboxShow:Z

    if-eqz v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWxAgentCheckDialog;->mAgreementLayout:Lx/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lx/LinearLayout;->setVisibility(I)V

    .line 78
    iget-boolean v0, p2, Lcom/didi/car/model/CarWxAgentFailReason;->checkboxSelected:Z

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWxAgentCheckDialog;->imgCheckbox:Lx/ImageView;

    const v1, 0x7f02016d

    invoke-virtual {v0, v1}, Lx/ImageView;->setImageResource(I)V

    .line 83
    :goto_0
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWxAgentCheckDialog;->txtCheckTip:Landroid/widget/TextView;

    iget-object v1, p2, Lcom/didi/car/model/CarWxAgentFailReason;->checkContent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWxAgentCheckDialog;->txtCheckTip:Landroid/widget/TextView;

    new-instance v1, Lcom/didi/car/ui/component/CarWxAgentCheckDialog$2;

    invoke-direct {v1, p0}, Lcom/didi/car/ui/component/CarWxAgentCheckDialog$2;-><init>(Lcom/didi/car/ui/component/CarWxAgentCheckDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    .line 98
    :goto_1
    invoke-virtual {p0}, Lcom/didi/car/ui/component/CarWxAgentCheckDialog;->show()V

    .line 99
    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWxAgentCheckDialog;->imgCheckbox:Lx/ImageView;

    const v1, 0x7f02016c

    invoke-virtual {v0, v1}, Lx/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/didi/car/ui/component/CarWxAgentCheckDialog;->mAgreementLayout:Lx/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lx/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method public setListener(Lcom/didi/common/helper/DialogHelper$DialogHelperListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 103
    iput-object p1, p0, Lcom/didi/car/ui/component/CarWxAgentCheckDialog;->listener:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    .line 104
    return-void
.end method
