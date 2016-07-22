.class public Lcom/didi/map/marker/adapter/DDriveWaitMarkerAdapter;
.super Lcom/didi/map/marker/adapter/BaseInfoAdapter;
.source "DDriveWaitMarkerAdapter.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/didi/map/marker/adapter/BaseInfoAdapter;-><init>()V

    .line 21
    const v0, 0x7f0300c6

    invoke-virtual {p0, v0}, Lcom/didi/map/marker/adapter/DDriveWaitMarkerAdapter;->setLayout(I)V

    .line 22
    return-void
.end method

.method private fillData(Lcom/didi/ddrive/eventbus/event/DriverWaitingFeeEvent;Landroid/view/View;)V
    .locals 15
    .parameter "valuating"
    .parameter "view"

    .prologue
    .line 35
    const v10, 0x7f080430

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/didi/common/richtextview/RichTextView;

    .line 36
    .local v4, defaultTimeTip:Lcom/didi/common/richtextview/RichTextView;
    const v10, 0x7f080431

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout;

    .line 37
    .local v6, layoutContent:Landroid/widget/RelativeLayout;
    const v10, 0x7f0b0316

    invoke-static {v10}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    move-object/from16 v0, p1

    iget-wide v13, v0, Lcom/didi/ddrive/eventbus/event/DriverWaitingFeeEvent;->waitTime:J

    long-to-float v13, v13

    invoke-static {v13}, Lcom/didi/common/util/Utils;->transferTime(F)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 39
    .local v3, defaultTime:Ljava/lang/String;
    if-eqz p1, :cond_2

    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/didi/ddrive/eventbus/event/DriverWaitingFeeEvent;->waitFee:D

    const-wide/16 v12, 0x0

    cmpl-double v10, v10, v12

    if-eqz v10, :cond_2

    .line 40
    const/16 v10, 0x8

    invoke-virtual {v4, v10}, Lcom/didi/common/richtextview/RichTextView;->setVisibility(I)V

    .line 41
    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 42
    const v10, 0x7f080432

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/didi/common/richtextview/RichTextView;

    .line 43
    .local v8, minutes:Landroid/widget/TextView;
    const v10, 0x7f080425

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 44
    .local v9, money:Landroid/widget/TextView;
    const v10, 0x7f080427

    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 45
    .local v2, decimal:Landroid/widget/TextView;
    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/didi/ddrive/eventbus/event/DriverWaitingFeeEvent;->waitFee:D

    double-to-float v10, v10

    invoke-static {v10}, Lcom/didi/common/util/TextUtil;->valueOf(F)Ljava/lang/String;

    move-result-object v7

    .line 47
    .local v7, m:Ljava/lang/String;
    invoke-static {v7}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 48
    const-string v10, "."

    invoke-virtual {v7, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 49
    const/4 v10, 0x0

    const-string v11, "."

    invoke-virtual {v7, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v7, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 50
    .local v5, intm:Ljava/lang/String;
    const-string v10, "."

    invoke-virtual {v7, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v7, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 51
    .local v1, dec:Ljava/lang/String;
    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    .end local v1           #dec:Ljava/lang/String;
    .end local v2           #decimal:Landroid/widget/TextView;
    .end local v5           #intm:Ljava/lang/String;
    .end local v7           #m:Ljava/lang/String;
    .end local v8           #minutes:Landroid/widget/TextView;
    .end local v9           #money:Landroid/widget/TextView;
    :goto_0
    return-void

    .line 54
    .restart local v2       #decimal:Landroid/widget/TextView;
    .restart local v7       #m:Ljava/lang/String;
    .restart local v8       #minutes:Landroid/widget/TextView;
    .restart local v9       #money:Landroid/widget/TextView;
    :cond_0
    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    const-string v10, "00"

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 58
    :cond_1
    const-string v10, "0"

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    const-string v10, "00"

    invoke-virtual {v2, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 63
    .end local v2           #decimal:Landroid/widget/TextView;
    .end local v7           #m:Ljava/lang/String;
    .end local v8           #minutes:Landroid/widget/TextView;
    .end local v9           #money:Landroid/widget/TextView;
    :cond_2
    const/4 v10, 0x0

    invoke-virtual {v4, v10}, Lcom/didi/common/richtextview/RichTextView;->setVisibility(I)V

    .line 64
    const/16 v10, 0x8

    invoke-virtual {v6, v10}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 65
    invoke-virtual {v4, v3}, Lcom/didi/common/richtextview/RichTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method protected setInfo(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 26
    return-void
.end method

.method public updateData(Lcom/didi/ddrive/eventbus/event/DriverWaitingFeeEvent;)V
    .locals 1
    .parameter "valuating"

    .prologue
    .line 30
    iget-object v0, p0, Lcom/didi/map/marker/adapter/DDriveWaitMarkerAdapter;->mWindow:Landroid/view/View;

    invoke-direct {p0, p1, v0}, Lcom/didi/map/marker/adapter/DDriveWaitMarkerAdapter;->fillData(Lcom/didi/ddrive/eventbus/event/DriverWaitingFeeEvent;Landroid/view/View;)V

    .line 31
    iget-object v0, p0, Lcom/didi/map/marker/adapter/DDriveWaitMarkerAdapter;->mPress:Landroid/view/View;

    invoke-direct {p0, p1, v0}, Lcom/didi/map/marker/adapter/DDriveWaitMarkerAdapter;->fillData(Lcom/didi/ddrive/eventbus/event/DriverWaitingFeeEvent;Landroid/view/View;)V

    .line 32
    return-void
.end method
