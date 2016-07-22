.class public Lcom/didi/frame/dialog/ImageDialog;
.super Lcom/didi/common/base/BaseDialog;
.source "ImageDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/dialog/ImageDialog$ImgDialogListener;
    }
.end annotation


# instance fields
.field private canceListener:Landroid/view/View$OnClickListener;

.field private cancel:Landroid/widget/Button;

.field private confirm:Landroid/widget/Button;

.field private confirmListener:Landroid/view/View$OnClickListener;

.field private couponArea:Landroid/widget/LinearLayout;

.field private couponImg:Landroid/widget/ImageView;

.field private couponText:Landroid/widget/TextView;

.field public disListener:Landroid/view/View$OnClickListener;

.field private dismiss:Landroid/widget/ImageView;

.field private driverImg:Landroid/widget/ImageView;

.field private driverText:Landroid/widget/TextView;

.field private flag:Lcom/didi/car/model/CarFlag;

.field private headArea:Landroid/widget/LinearLayout;

.field private headImg1:Landroid/widget/ImageView;

.field private headImg2:Landroid/widget/ImageView;

.field private headImg3:Landroid/widget/ImageView;

.field private headImgTxt1:Landroid/widget/TextView;

.field private headImgTxt2:Landroid/widget/TextView;

.field private headImgTxt3:Landroid/widget/TextView;

.field private listener:Lcom/didi/frame/dialog/ImageDialog$ImgDialogListener;

.field private priceArea:Landroid/widget/LinearLayout;

.field private priceImg:Landroid/widget/ImageView;

.field private priceText:Landroid/widget/TextView;

.field private title:Landroid/widget/TextView;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/didi/car/model/CarFlag;)V
    .locals 1
    .parameter "context"
    .parameter "flag"

    .prologue
    .line 59
    const v0, 0x7f0c0032

    invoke-direct {p0, p1, v0}, Lcom/didi/common/base/BaseDialog;-><init>(Landroid/content/Context;I)V

    .line 201
    new-instance v0, Lcom/didi/frame/dialog/ImageDialog$1;

    invoke-direct {v0, p0}, Lcom/didi/frame/dialog/ImageDialog$1;-><init>(Lcom/didi/frame/dialog/ImageDialog;)V

    iput-object v0, p0, Lcom/didi/frame/dialog/ImageDialog;->disListener:Landroid/view/View$OnClickListener;

    .line 211
    new-instance v0, Lcom/didi/frame/dialog/ImageDialog$2;

    invoke-direct {v0, p0}, Lcom/didi/frame/dialog/ImageDialog$2;-><init>(Lcom/didi/frame/dialog/ImageDialog;)V

    iput-object v0, p0, Lcom/didi/frame/dialog/ImageDialog;->canceListener:Landroid/view/View$OnClickListener;

    .line 221
    new-instance v0, Lcom/didi/frame/dialog/ImageDialog$3;

    invoke-direct {v0, p0}, Lcom/didi/frame/dialog/ImageDialog$3;-><init>(Lcom/didi/frame/dialog/ImageDialog;)V

    iput-object v0, p0, Lcom/didi/frame/dialog/ImageDialog;->confirmListener:Landroid/view/View$OnClickListener;

    .line 60
    iput-object p2, p0, Lcom/didi/frame/dialog/ImageDialog;->flag:Lcom/didi/car/model/CarFlag;

    .line 61
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/didi/frame/dialog/ImageDialog;->setCancelable(Z)V

    .line 62
    invoke-direct {p0}, Lcom/didi/frame/dialog/ImageDialog;->init()V

    .line 63
    return-void
.end method

.method static synthetic access$000(Lcom/didi/frame/dialog/ImageDialog;)Lcom/didi/frame/dialog/ImageDialog$ImgDialogListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/didi/frame/dialog/ImageDialog;->listener:Lcom/didi/frame/dialog/ImageDialog$ImgDialogListener;

    return-object v0
.end method

.method private buildHead()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 126
    iget-object v0, p0, Lcom/didi/frame/dialog/ImageDialog;->view:Landroid/view/View;

    const v1, 0x7f0803d9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/didi/frame/dialog/ImageDialog;->headImg1:Landroid/widget/ImageView;

    .line 127
    iget-object v0, p0, Lcom/didi/frame/dialog/ImageDialog;->view:Landroid/view/View;

    const v1, 0x7f0803db

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/didi/frame/dialog/ImageDialog;->headImg2:Landroid/widget/ImageView;

    .line 128
    iget-object v0, p0, Lcom/didi/frame/dialog/ImageDialog;->view:Landroid/view/View;

    const v1, 0x7f0803dd

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/didi/frame/dialog/ImageDialog;->headImg3:Landroid/widget/ImageView;

    .line 130
    iget-object v0, p0, Lcom/didi/frame/dialog/ImageDialog;->view:Landroid/view/View;

    const v1, 0x7f0803da

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/frame/dialog/ImageDialog;->headImgTxt1:Landroid/widget/TextView;

    .line 131
    iget-object v0, p0, Lcom/didi/frame/dialog/ImageDialog;->view:Landroid/view/View;

    const v1, 0x7f0803dc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/frame/dialog/ImageDialog;->headImgTxt2:Landroid/widget/TextView;

    .line 132
    iget-object v0, p0, Lcom/didi/frame/dialog/ImageDialog;->view:Landroid/view/View;

    const v1, 0x7f0803de

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/frame/dialog/ImageDialog;->headImgTxt3:Landroid/widget/TextView;

    .line 134
    iget-object v0, p0, Lcom/didi/frame/dialog/ImageDialog;->view:Landroid/view/View;

    const v1, 0x7f0803d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/didi/frame/dialog/ImageDialog;->headArea:Landroid/widget/LinearLayout;

    .line 136
    iget-object v0, p0, Lcom/didi/frame/dialog/ImageDialog;->flag:Lcom/didi/car/model/CarFlag;

    iget-object v0, v0, Lcom/didi/car/model/CarFlag;->headImg1:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/didi/frame/dialog/ImageDialog;->flag:Lcom/didi/car/model/CarFlag;

    iget-object v0, v0, Lcom/didi/car/model/CarFlag;->headImg2:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/didi/frame/dialog/ImageDialog;->flag:Lcom/didi/car/model/CarFlag;

    iget-object v0, v0, Lcom/didi/car/model/CarFlag;->headImg3:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/didi/frame/dialog/ImageDialog;->headImg1:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lcom/didi/frame/dialog/ImageDialog;->headImg2:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcom/didi/frame/dialog/ImageDialog;->headImg3:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcom/didi/frame/dialog/ImageDialog;->headArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 151
    :goto_0
    iget-object v0, p0, Lcom/didi/frame/dialog/ImageDialog;->flag:Lcom/didi/car/model/CarFlag;

    iget-object v0, v0, Lcom/didi/car/model/CarFlag;->headImgTxt1:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/didi/frame/dialog/ImageDialog;->flag:Lcom/didi/car/model/CarFlag;

    iget-object v0, v0, Lcom/didi/car/model/CarFlag;->headImgTxt2:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/didi/frame/dialog/ImageDialog;->flag:Lcom/didi/car/model/CarFlag;

    iget-object v0, v0, Lcom/didi/car/model/CarFlag;->headImgTxt3:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/didi/frame/dialog/ImageDialog;->headImgTxt1:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcom/didi/frame/dialog/ImageDialog;->headImgTxt2:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 154
    iget-object v0, p0, Lcom/didi/frame/dialog/ImageDialog;->headImgTxt3:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 163
    :goto_1
    return-void

    .line 142
    :cond_2
    iget-object v0, p0, Lcom/didi/frame/dialog/ImageDialog;->headImg1:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lcom/didi/frame/dialog/ImageDialog;->headImg2:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcom/didi/frame/dialog/ImageDialog;->headImg3:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/didi/frame/dialog/ImageDialog;->headArea:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lcom/didi/frame/dialog/ImageDialog;->flag:Lcom/didi/car/model/CarFlag;

    iget-object v0, v0, Lcom/didi/car/model/CarFlag;->headImg1:Ljava/lang/String;

    iget-object v1, p0, Lcom/didi/frame/dialog/ImageDialog;->headImg1:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/didi/common/helper/ImageFetcher;->fetch(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 147
    iget-object v0, p0, Lcom/didi/frame/dialog/ImageDialog;->flag:Lcom/didi/car/model/CarFlag;

    iget-object v0, v0, Lcom/didi/car/model/CarFlag;->headImg2:Ljava/lang/String;

    iget-object v1, p0, Lcom/didi/frame/dialog/ImageDialog;->headImg2:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/didi/common/helper/ImageFetcher;->fetch(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 148
    iget-object v0, p0, Lcom/didi/frame/dialog/ImageDialog;->flag:Lcom/didi/car/model/CarFlag;

    iget-object v0, v0, Lcom/didi/car/model/CarFlag;->headImg3:Ljava/lang/String;

    iget-object v1, p0, Lcom/didi/frame/dialog/ImageDialog;->headImg3:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/didi/common/helper/ImageFetcher;->fetch(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_0

    .line 156
    :cond_3
    iget-object v0, p0, Lcom/didi/frame/dialog/ImageDialog;->headImgTxt1:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 157
    iget-object v0, p0, Lcom/didi/frame/dialog/ImageDialog;->headImgTxt2:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 158
    iget-object v0, p0, Lcom/didi/frame/dialog/ImageDialog;->headImgTxt3:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcom/didi/frame/dialog/ImageDialog;->headImgTxt1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/didi/frame/dialog/ImageDialog;->flag:Lcom/didi/car/model/CarFlag;

    iget-object v1, v1, Lcom/didi/car/model/CarFlag;->headImgTxt1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v0, p0, Lcom/didi/frame/dialog/ImageDialog;->headImgTxt2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/didi/frame/dialog/ImageDialog;->flag:Lcom/didi/car/model/CarFlag;

    iget-object v1, v1, Lcom/didi/car/model/CarFlag;->headImgTxt2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v0, p0, Lcom/didi/frame/dialog/ImageDialog;->headImgTxt3:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/didi/frame/dialog/ImageDialog;->flag:Lcom/didi/car/model/CarFlag;

    iget-object v1, v1, Lcom/didi/car/model/CarFlag;->headImgTxt3:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private init()V
    .locals 3

    .prologue
    .line 74
    iget-object v1, p0, Lcom/didi/frame/dialog/ImageDialog;->flag:Lcom/didi/car/model/CarFlag;

    iget v1, v1, Lcom/didi/car/model/CarFlag;->guideTo:I

    if-nez v1, :cond_0

    .line 75
    const v0, 0x7f0300bb

    .line 80
    .local v0, layoutId:I
    :goto_0
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/frame/dialog/ImageDialog;->view:Landroid/view/View;

    .line 81
    iget-object v1, p0, Lcom/didi/frame/dialog/ImageDialog;->view:Landroid/view/View;

    const v2, 0x7f0803ea

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/didi/frame/dialog/ImageDialog;->cancel:Landroid/widget/Button;

    .line 82
    iget-object v1, p0, Lcom/didi/frame/dialog/ImageDialog;->view:Landroid/view/View;

    const v2, 0x7f080323

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/didi/frame/dialog/ImageDialog;->confirm:Landroid/widget/Button;

    .line 83
    iget-object v1, p0, Lcom/didi/frame/dialog/ImageDialog;->view:Landroid/view/View;

    const v2, 0x7f0803df

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/didi/frame/dialog/ImageDialog;->dismiss:Landroid/widget/ImageView;

    .line 84
    iget-object v1, p0, Lcom/didi/frame/dialog/ImageDialog;->view:Landroid/view/View;

    const v2, 0x7f0803d7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/didi/frame/dialog/ImageDialog;->title:Landroid/widget/TextView;

    .line 86
    iget-object v1, p0, Lcom/didi/frame/dialog/ImageDialog;->view:Landroid/view/View;

    const v2, 0x7f0803e4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/didi/frame/dialog/ImageDialog;->couponArea:Landroid/widget/LinearLayout;

    .line 87
    iget-object v1, p0, Lcom/didi/frame/dialog/ImageDialog;->view:Landroid/view/View;

    const v2, 0x7f0803e6

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/didi/frame/dialog/ImageDialog;->couponText:Landroid/widget/TextView;

    .line 88
    iget-object v1, p0, Lcom/didi/frame/dialog/ImageDialog;->view:Landroid/view/View;

    const v2, 0x7f0803e5

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/didi/frame/dialog/ImageDialog;->couponImg:Landroid/widget/ImageView;

    .line 90
    iget-object v1, p0, Lcom/didi/frame/dialog/ImageDialog;->view:Landroid/view/View;

    const v2, 0x7f0803e1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/didi/frame/dialog/ImageDialog;->priceArea:Landroid/widget/LinearLayout;

    .line 91
    iget-object v1, p0, Lcom/didi/frame/dialog/ImageDialog;->view:Landroid/view/View;

    const v2, 0x7f0803e3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/didi/frame/dialog/ImageDialog;->priceText:Landroid/widget/TextView;

    .line 92
    iget-object v1, p0, Lcom/didi/frame/dialog/ImageDialog;->view:Landroid/view/View;

    const v2, 0x7f0803e2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/didi/frame/dialog/ImageDialog;->priceImg:Landroid/widget/ImageView;

    .line 94
    iget-object v1, p0, Lcom/didi/frame/dialog/ImageDialog;->view:Landroid/view/View;

    const v2, 0x7f0803e9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/didi/frame/dialog/ImageDialog;->driverText:Landroid/widget/TextView;

    .line 95
    iget-object v1, p0, Lcom/didi/frame/dialog/ImageDialog;->view:Landroid/view/View;

    const v2, 0x7f0803e8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/didi/frame/dialog/ImageDialog;->driverImg:Landroid/widget/ImageView;

    .line 97
    iget-object v1, p0, Lcom/didi/frame/dialog/ImageDialog;->cancel:Landroid/widget/Button;

    iget-object v2, p0, Lcom/didi/frame/dialog/ImageDialog;->canceListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v1, p0, Lcom/didi/frame/dialog/ImageDialog;->confirm:Landroid/widget/Button;

    iget-object v2, p0, Lcom/didi/frame/dialog/ImageDialog;->confirmListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    invoke-direct {p0}, Lcom/didi/frame/dialog/ImageDialog;->setDialog()V

    .line 101
    return-void

    .line 77
    .end local v0           #layoutId:I
    :cond_0
    const v0, 0x7f0300b9

    .restart local v0       #layoutId:I
    goto/16 :goto_0
.end method

.method private processText(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 11
    .parameter "source"

    .prologue
    const/16 v10, 0x21

    .line 240
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 241
    new-instance v6, Landroid/text/SpannableStringBuilder;

    const-string v7, ""

    invoke-direct {v6, v7}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 271
    :cond_0
    return-object v6

    .line 244
    :cond_1
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 246
    .local v6, span:Landroid/text/SpannableStringBuilder;
    const-string v7, "(\\u007B)(.*?)(\\u007D)"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 247
    .local v0, big:Ljava/util/regex/Pattern;
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 248
    .local v1, bigMatcher:Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 249
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    .line 250
    .local v3, match:Ljava/lang/String;
    const-string v7, "{"

    const-string v8, ""

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "}"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 251
    const-string v7, "(\\u007B)(.*?)(\\u007D)"

    invoke-virtual {p1, v7, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 252
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 253
    .local v2, index:I
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v7

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v8

    invoke-virtual {v6, v7, v8, v3}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 254
    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 255
    new-instance v7, Landroid/text/style/RelativeSizeSpan;

    const v8, 0x3fb33333

    invoke-direct {v7, v8}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v2

    invoke-virtual {v6, v7, v2, v8, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 256
    new-instance v7, Landroid/text/style/ForegroundColorSpan;

    const-string v8, "#FFFF8903"

    invoke-static {v8}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-direct {v7, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v2

    invoke-virtual {v6, v7, v2, v8, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 259
    .end local v2           #index:I
    .end local v3           #match:Ljava/lang/String;
    :cond_2
    const-string v7, "(\\u005B)(.*?)(\\u005D)"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 260
    .local v4, middle:Ljava/util/regex/Pattern;
    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 261
    .local v5, middleMatcher:Ljava/util/regex/Matcher;
    :goto_1
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 262
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v3

    .line 263
    .restart local v3       #match:Ljava/lang/String;
    const-string v7, "["

    const-string v8, ""

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "]"

    const-string v9, ""

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 264
    const-string v7, "(\\u005B)(.*?)(\\u005D)"

    invoke-virtual {p1, v7, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 265
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 266
    .restart local v2       #index:I
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->start()I

    move-result v7

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->end()I

    move-result v8

    invoke-virtual {v6, v7, v8, v3}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 267
    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 268
    new-instance v7, Landroid/text/style/RelativeSizeSpan;

    const v8, 0x3f733333

    invoke-direct {v7, v8}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v2

    invoke-virtual {v6, v7, v2, v8, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 269
    new-instance v7, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v7}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v2

    invoke-virtual {v6, v7, v2, v8, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1
.end method

.method private setDialog()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/didi/frame/dialog/ImageDialog;->flag:Lcom/didi/car/model/CarFlag;

    iget v0, v0, Lcom/didi/car/model/CarFlag;->guideTo:I

    if-eqz v0, :cond_0

    .line 109
    invoke-direct {p0}, Lcom/didi/frame/dialog/ImageDialog;->buildHead()V

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/didi/frame/dialog/ImageDialog;->flag:Lcom/didi/car/model/CarFlag;

    invoke-direct {p0, v0}, Lcom/didi/frame/dialog/ImageDialog;->setUpCoupon(Lcom/didi/car/model/CarFlag;)V

    .line 112
    iget-object v0, p0, Lcom/didi/frame/dialog/ImageDialog;->flag:Lcom/didi/car/model/CarFlag;

    invoke-direct {p0, v0}, Lcom/didi/frame/dialog/ImageDialog;->setUpDrivers(Lcom/didi/car/model/CarFlag;)V

    .line 113
    iget-object v0, p0, Lcom/didi/frame/dialog/ImageDialog;->flag:Lcom/didi/car/model/CarFlag;

    invoke-direct {p0, v0}, Lcom/didi/frame/dialog/ImageDialog;->setUpPrice(Lcom/didi/car/model/CarFlag;)V

    .line 114
    iget-object v0, p0, Lcom/didi/frame/dialog/ImageDialog;->title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/didi/frame/dialog/ImageDialog;->flag:Lcom/didi/car/model/CarFlag;

    iget-object v1, v1, Lcom/didi/car/model/CarFlag;->guideTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    iget-object v0, p0, Lcom/didi/frame/dialog/ImageDialog;->cancel:Landroid/widget/Button;

    iget-object v1, p0, Lcom/didi/frame/dialog/ImageDialog;->flag:Lcom/didi/car/model/CarFlag;

    iget-object v1, v1, Lcom/didi/car/model/CarFlag;->leftButton:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v0, p0, Lcom/didi/frame/dialog/ImageDialog;->confirm:Landroid/widget/Button;

    iget-object v1, p0, Lcom/didi/frame/dialog/ImageDialog;->flag:Lcom/didi/car/model/CarFlag;

    iget-object v1, v1, Lcom/didi/car/model/CarFlag;->rightButton:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 117
    iget-object v0, p0, Lcom/didi/frame/dialog/ImageDialog;->flag:Lcom/didi/car/model/CarFlag;

    iget-boolean v0, v0, Lcom/didi/car/model/CarFlag;->showIds:Z

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lcom/didi/frame/dialog/ImageDialog;->dismiss:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcom/didi/frame/dialog/ImageDialog;->dismiss:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/didi/frame/dialog/ImageDialog;->disListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    :goto_0
    invoke-virtual {p0}, Lcom/didi/frame/dialog/ImageDialog;->show()V

    .line 123
    return-void

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/didi/frame/dialog/ImageDialog;->dismiss:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setUpCoupon(Lcom/didi/car/model/CarFlag;)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 166
    iget-object v0, p1, Lcom/didi/car/model/CarFlag;->coupon:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/didi/car/model/CarFlag;->couponUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/didi/frame/dialog/ImageDialog;->couponArea:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/didi/frame/dialog/ImageDialog;->couponText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    :goto_0
    return-void

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/didi/frame/dialog/ImageDialog;->couponArea:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/didi/frame/dialog/ImageDialog;->couponText:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/didi/car/model/CarFlag;->coupon:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/didi/frame/dialog/ImageDialog;->processText(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v0, p1, Lcom/didi/car/model/CarFlag;->couponUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/didi/frame/dialog/ImageDialog;->couponImg:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/didi/common/helper/ImageFetcher;->fetch(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_0
.end method

.method private setUpDrivers(Lcom/didi/car/model/CarFlag;)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 179
    iget-object v0, p0, Lcom/didi/frame/dialog/ImageDialog;->driverText:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/didi/car/model/CarFlag;->driver:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/didi/frame/dialog/ImageDialog;->processText(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v0, p1, Lcom/didi/car/model/CarFlag;->driverUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/didi/frame/dialog/ImageDialog;->driverImg:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/didi/common/helper/ImageFetcher;->fetch(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 181
    return-void
.end method

.method private setUpPrice(Lcom/didi/car/model/CarFlag;)V
    .locals 2
    .parameter "flag"

    .prologue
    .line 184
    iget-object v0, p1, Lcom/didi/car/model/CarFlag;->price:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/didi/car/model/CarFlag;->priceUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/didi/frame/dialog/ImageDialog;->priceArea:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 186
    iget-object v0, p0, Lcom/didi/frame/dialog/ImageDialog;->priceText:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    :goto_0
    return-void

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/didi/frame/dialog/ImageDialog;->priceArea:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/didi/frame/dialog/ImageDialog;->priceText:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/didi/car/model/CarFlag;->price:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/didi/frame/dialog/ImageDialog;->processText(Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    iget-object v0, p1, Lcom/didi/car/model/CarFlag;->priceUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/didi/frame/dialog/ImageDialog;->priceImg:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/didi/common/helper/ImageFetcher;->fetch(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/didi/common/base/BaseDialog;->onCreate(Landroid/os/Bundle;)V

    .line 68
    iget-object v0, p0, Lcom/didi/frame/dialog/ImageDialog;->view:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/didi/frame/dialog/ImageDialog;->setContentView(Landroid/view/View;)V

    .line 69
    return-void
.end method

.method public setListener(Lcom/didi/frame/dialog/ImageDialog$ImgDialogListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 198
    iput-object p1, p0, Lcom/didi/frame/dialog/ImageDialog;->listener:Lcom/didi/frame/dialog/ImageDialog$ImgDialogListener;

    .line 199
    return-void
.end method
