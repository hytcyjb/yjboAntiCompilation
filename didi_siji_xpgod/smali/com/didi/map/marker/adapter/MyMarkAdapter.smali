.class public Lcom/didi/map/marker/adapter/MyMarkAdapter;
.super Lcom/didi/map/marker/adapter/BaseInfoAdapter;
.source "MyMarkAdapter.java"


# instance fields
.field private last_target:I

.field private mAddress:Landroid/widget/TextView;

.field private mEstimateTime:Lcom/didi/common/richtextview/RichTextView;

.field private mTitle:Landroid/widget/TextView;

.field private mTxtEstimate:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/didi/map/marker/adapter/BaseInfoAdapter;-><init>()V

    .line 29
    const v0, 0x7f0b02b8

    iput v0, p0, Lcom/didi/map/marker/adapter/MyMarkAdapter;->last_target:I

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/map/marker/adapter/MyMarkAdapter;->mTxtEstimate:Ljava/lang/String;

    .line 36
    const v0, 0x7f0300ca

    invoke-virtual {p0, v0}, Lcom/didi/map/marker/adapter/MyMarkAdapter;->setLayout(I)V

    .line 37
    return-void
.end method


# virtual methods
.method public getInfoWindow(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)Landroid/view/View;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/didi/map/marker/adapter/BaseInfoAdapter;->getInfoWindow(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method protected setInfo(Landroid/view/View;)V
    .locals 8
    .parameter "view"

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 46
    const-string v4, "setInfo"

    invoke-static {v4}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 47
    const v4, 0x7f08043a

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/didi/map/marker/adapter/MyMarkAdapter;->mTitle:Landroid/widget/TextView;

    .line 48
    const v4, 0x7f08043d

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/didi/map/marker/adapter/MyMarkAdapter;->mAddress:Landroid/widget/TextView;

    .line 49
    const v4, 0x7f08043e

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/didi/common/richtextview/RichTextView;

    iput-object v4, p0, Lcom/didi/map/marker/adapter/MyMarkAdapter;->mEstimateTime:Lcom/didi/common/richtextview/RichTextView;

    .line 57
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v4

    sget-object v5, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    if-ne v4, v5, :cond_3

    .line 58
    const v4, 0x7f0b0159

    iput v4, p0, Lcom/didi/map/marker/adapter/MyMarkAdapter;->last_target:I

    .line 62
    :goto_0
    const v4, 0x7f08043b

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 63
    .local v2, target:Landroid/widget/TextView;
    iget v4, p0, Lcom/didi/map/marker/adapter/MyMarkAdapter;->last_target:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 64
    const v4, 0x7f080439

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 65
    .local v0, fromLabel:Landroid/widget/TextView;
    const v4, 0x7f0801b0

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 67
    .local v1, imageviewArrow:Landroid/widget/ImageView;
    iget-object v4, p0, Lcom/didi/map/marker/adapter/MyMarkAdapter;->mAddress:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 68
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 69
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 70
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 72
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v4

    sget-object v5, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    if-ne v4, v5, :cond_0

    invoke-static {}, Lcom/didi/common/database/CityListHelper;->isCarAvailable()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v4

    sget-object v5, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    if-ne v4, v5, :cond_5

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/common/config/Preferences;->isFlierAbility()Z

    move-result v4

    if-nez v4, :cond_5

    .line 74
    :cond_1
    iget-object v4, p0, Lcom/didi/map/marker/adapter/MyMarkAdapter;->mTitle:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    sget-object v4, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v5

    if-ne v4, v5, :cond_4

    .line 76
    iget-object v4, p0, Lcom/didi/map/marker/adapter/MyMarkAdapter;->mTitle:Landroid/widget/TextView;

    const v5, 0x7f0b0233

    invoke-static {v5}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/didi/map/marker/adapter/MyMarkAdapter;->mAddress:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 81
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 82
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 83
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 84
    iget-object v4, p0, Lcom/didi/map/marker/adapter/MyMarkAdapter;->mEstimateTime:Lcom/didi/common/richtextview/RichTextView;

    invoke-virtual {v4, v6}, Lcom/didi/common/richtextview/RichTextView;->setVisibility(I)V

    .line 105
    :goto_2
    return-void

    .line 60
    .end local v0           #fromLabel:Landroid/widget/TextView;
    .end local v1           #imageviewArrow:Landroid/widget/ImageView;
    .end local v2           #target:Landroid/widget/TextView;
    :cond_3
    const v4, 0x7f0b02b8

    iput v4, p0, Lcom/didi/map/marker/adapter/MyMarkAdapter;->last_target:I

    goto/16 :goto_0

    .line 77
    .restart local v0       #fromLabel:Landroid/widget/TextView;
    .restart local v1       #imageviewArrow:Landroid/widget/ImageView;
    .restart local v2       #target:Landroid/widget/TextView;
    :cond_4
    sget-object v4, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v5

    if-ne v4, v5, :cond_2

    .line 78
    iget-object v4, p0, Lcom/didi/map/marker/adapter/MyMarkAdapter;->mTitle:Landroid/widget/TextView;

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/common/config/Preferences;->getFlierMsg()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 87
    :cond_5
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentAddressTitle()Ljava/lang/String;

    move-result-object v3

    .line 88
    .local v3, title:Ljava/lang/String;
    invoke-static {v3}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 89
    const v4, 0x7f0b0405

    invoke-static {v4}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 91
    :cond_6
    iget-object v4, p0, Lcom/didi/map/marker/adapter/MyMarkAdapter;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v4, p0, Lcom/didi/map/marker/adapter/MyMarkAdapter;->mAddress:Landroid/widget/TextView;

    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentAddressDetail()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v4

    sget-object v5, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    if-eq v4, v5, :cond_7

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v4

    sget-object v5, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    if-ne v4, v5, :cond_9

    .line 95
    :cond_7
    iget-object v4, p0, Lcom/didi/map/marker/adapter/MyMarkAdapter;->mAddress:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    iget-object v4, p0, Lcom/didi/map/marker/adapter/MyMarkAdapter;->mEstimateTime:Lcom/didi/common/richtextview/RichTextView;

    invoke-virtual {v4, v7}, Lcom/didi/common/richtextview/RichTextView;->setVisibility(I)V

    .line 97
    iget-object v4, p0, Lcom/didi/map/marker/adapter/MyMarkAdapter;->mTxtEstimate:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 98
    iget-object v4, p0, Lcom/didi/map/marker/adapter/MyMarkAdapter;->mEstimateTime:Lcom/didi/common/richtextview/RichTextView;

    iget-object v5, p0, Lcom/didi/map/marker/adapter/MyMarkAdapter;->mTxtEstimate:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/didi/common/richtextview/RichTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 100
    :cond_8
    iget-object v4, p0, Lcom/didi/map/marker/adapter/MyMarkAdapter;->mEstimateTime:Lcom/didi/common/richtextview/RichTextView;

    invoke-virtual {v4, v6}, Lcom/didi/common/richtextview/RichTextView;->setVisibility(I)V

    goto :goto_2

    .line 103
    :cond_9
    iget-object v4, p0, Lcom/didi/map/marker/adapter/MyMarkAdapter;->mEstimateTime:Lcom/didi/common/richtextview/RichTextView;

    invoke-virtual {v4, v6}, Lcom/didi/common/richtextview/RichTextView;->setVisibility(I)V

    goto :goto_2
.end method

.method public updateEstimateTime(Ljava/lang/String;)V
    .locals 0
    .parameter "time"

    .prologue
    .line 108
    iput-object p1, p0, Lcom/didi/map/marker/adapter/MyMarkAdapter;->mTxtEstimate:Ljava/lang/String;

    .line 109
    return-void
.end method
