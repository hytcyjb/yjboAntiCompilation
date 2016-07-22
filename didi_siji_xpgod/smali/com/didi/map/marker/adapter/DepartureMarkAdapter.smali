.class public Lcom/didi/map/marker/adapter/DepartureMarkAdapter;
.super Lcom/didi/map/marker/adapter/BaseInfoAdapter;
.source "DepartureMarkAdapter.java"


# instance fields
.field private departure_infoindow_notication:Landroid/widget/TextView;

.field private frameLayoutAddress:Landroid/view/View;

.field isShowFirstGuid:Z

.field private linearLayoutFirstNotication:Landroid/view/View;

.field private mAddress:Landroid/widget/TextView;

.field mDragTitle:Ljava/lang/String;

.field private mEstimateTime:Lcom/didi/common/richtextview/RichTextView;

.field private mTitle:Landroid/widget/TextView;

.field private mTxtEstimate:Ljava/lang/String;

.field private relativeContent:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/didi/map/marker/adapter/BaseInfoAdapter;-><init>()V

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/map/marker/adapter/DepartureMarkAdapter;->mTxtEstimate:Ljava/lang/String;

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/map/marker/adapter/DepartureMarkAdapter;->isShowFirstGuid:Z

    .line 140
    const-string v0, ""

    iput-object v0, p0, Lcom/didi/map/marker/adapter/DepartureMarkAdapter;->mDragTitle:Ljava/lang/String;

    .line 43
    const v0, 0x7f0300ca

    invoke-virtual {p0, v0}, Lcom/didi/map/marker/adapter/DepartureMarkAdapter;->setLayout(I)V

    .line 44
    return-void
.end method


# virtual methods
.method public hideFirstGuid()V
    .locals 1

    .prologue
    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/map/marker/adapter/DepartureMarkAdapter;->isShowFirstGuid:Z

    .line 148
    return-void
.end method

.method protected setInfo(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 48
    const-string v3, "setInfo"

    invoke-static {v3}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 49
    const v3, 0x7f08043a

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/didi/map/marker/adapter/DepartureMarkAdapter;->mTitle:Landroid/widget/TextView;

    .line 50
    const v3, 0x7f08043d

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/didi/map/marker/adapter/DepartureMarkAdapter;->mAddress:Landroid/widget/TextView;

    .line 51
    const v3, 0x7f08043e

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/didi/common/richtextview/RichTextView;

    iput-object v3, p0, Lcom/didi/map/marker/adapter/DepartureMarkAdapter;->mEstimateTime:Lcom/didi/common/richtextview/RichTextView;

    .line 52
    const v3, 0x7f080441

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/didi/map/marker/adapter/DepartureMarkAdapter;->departure_infoindow_notication:Landroid/widget/TextView;

    .line 53
    const v3, 0x7f080438

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/didi/map/marker/adapter/DepartureMarkAdapter;->relativeContent:Landroid/view/View;

    .line 54
    const v3, 0x7f08043f

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/didi/map/marker/adapter/DepartureMarkAdapter;->linearLayoutFirstNotication:Landroid/view/View;

    .line 55
    const v3, 0x7f08043c

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/didi/map/marker/adapter/DepartureMarkAdapter;->frameLayoutAddress:Landroid/view/View;

    .line 60
    const v3, 0x7f08043b

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 61
    .local v2, target:Landroid/widget/TextView;
    const v3, 0x7f0801b0

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 62
    .local v1, imageviewArrow:Landroid/widget/ImageView;
    const v3, 0x7f080439

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 64
    .local v0, fromLabel:Landroid/widget/TextView;
    iget-object v3, p0, Lcom/didi/map/marker/adapter/DepartureMarkAdapter;->mAddress:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 65
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 66
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 69
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v3

    sget-object v4, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    if-ne v3, v4, :cond_0

    invoke-static {}, Lcom/didi/common/database/CityListHelper;->isCarAvailable()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v3

    sget-object v4, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    if-ne v3, v4, :cond_4

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/didi/common/config/Preferences;->isFlierAbility()Z

    move-result v3

    if-nez v3, :cond_4

    .line 71
    :cond_1
    iget-object v3, p0, Lcom/didi/map/marker/adapter/DepartureMarkAdapter;->mTitle:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    sget-object v3, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v4

    if-ne v3, v4, :cond_3

    .line 73
    iget-object v3, p0, Lcom/didi/map/marker/adapter/DepartureMarkAdapter;->mTitle:Landroid/widget/TextView;

    const v4, 0x7f0b0233

    invoke-static {v4}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/didi/map/marker/adapter/DepartureMarkAdapter;->mAddress:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 78
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 79
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 80
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 81
    iget-object v3, p0, Lcom/didi/map/marker/adapter/DepartureMarkAdapter;->mEstimateTime:Lcom/didi/common/richtextview/RichTextView;

    invoke-virtual {v3, v5}, Lcom/didi/common/richtextview/RichTextView;->setVisibility(I)V

    .line 82
    iget-object v3, p0, Lcom/didi/map/marker/adapter/DepartureMarkAdapter;->linearLayoutFirstNotication:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 137
    :goto_1
    return-void

    .line 74
    :cond_3
    sget-object v3, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v4

    if-ne v3, v4, :cond_2

    .line 75
    iget-object v3, p0, Lcom/didi/map/marker/adapter/DepartureMarkAdapter;->mTitle:Landroid/widget/TextView;

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v4

    invoke-virtual {v4}, Lcom/didi/common/config/Preferences;->getFlierMsg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 86
    :cond_4
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v3

    sget-object v4, Lcom/didi/frame/business/Business;->DDrive:Lcom/didi/frame/business/Business;

    if-ne v3, v4, :cond_7

    .line 87
    const v3, 0x7f0b0159

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 91
    :goto_2
    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getDepartName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 92
    iget-object v3, p0, Lcom/didi/map/marker/adapter/DepartureMarkAdapter;->mTitle:Landroid/widget/TextView;

    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getDepartName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    :cond_5
    iget-boolean v3, p0, Lcom/didi/map/marker/adapter/DepartureMarkAdapter;->isShowFirstGuid:Z

    if-eqz v3, :cond_8

    .line 106
    iget-object v3, p0, Lcom/didi/map/marker/adapter/DepartureMarkAdapter;->linearLayoutFirstNotication:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 107
    iget-object v3, p0, Lcom/didi/map/marker/adapter/DepartureMarkAdapter;->departure_infoindow_notication:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 109
    iget-object v3, p0, Lcom/didi/map/marker/adapter/DepartureMarkAdapter;->departure_infoindow_notication:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/didi/map/marker/adapter/DepartureMarkAdapter;->mDragTitle:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    :goto_3
    iget-object v3, p0, Lcom/didi/map/marker/adapter/DepartureMarkAdapter;->mAddress:Landroid/widget/TextView;

    invoke-static {}, Lcom/didi/frame/departure/DepartureHelper;->getDepartAddressDetail()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v3

    sget-object v4, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    if-eq v3, v4, :cond_6

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v3

    sget-object v4, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    if-ne v3, v4, :cond_a

    .line 117
    :cond_6
    iget-object v3, p0, Lcom/didi/map/marker/adapter/DepartureMarkAdapter;->mAddress:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 118
    iget-object v3, p0, Lcom/didi/map/marker/adapter/DepartureMarkAdapter;->mEstimateTime:Lcom/didi/common/richtextview/RichTextView;

    invoke-virtual {v3, v6}, Lcom/didi/common/richtextview/RichTextView;->setVisibility(I)V

    .line 119
    iget-object v3, p0, Lcom/didi/map/marker/adapter/DepartureMarkAdapter;->mTxtEstimate:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 120
    iget-object v3, p0, Lcom/didi/map/marker/adapter/DepartureMarkAdapter;->mEstimateTime:Lcom/didi/common/richtextview/RichTextView;

    iget-object v4, p0, Lcom/didi/map/marker/adapter/DepartureMarkAdapter;->mTxtEstimate:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/didi/common/richtextview/RichTextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v3, p0, Lcom/didi/map/marker/adapter/DepartureMarkAdapter;->frameLayoutAddress:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 89
    :cond_7
    const v3, 0x7f0b02b8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 111
    :cond_8
    iget-object v3, p0, Lcom/didi/map/marker/adapter/DepartureMarkAdapter;->linearLayoutFirstNotication:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 123
    :cond_9
    iget-object v3, p0, Lcom/didi/map/marker/adapter/DepartureMarkAdapter;->mEstimateTime:Lcom/didi/common/richtextview/RichTextView;

    invoke-virtual {v3, v5}, Lcom/didi/common/richtextview/RichTextView;->setVisibility(I)V

    .line 124
    iget-object v3, p0, Lcom/didi/map/marker/adapter/DepartureMarkAdapter;->frameLayoutAddress:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 127
    :cond_a
    iget-object v3, p0, Lcom/didi/map/marker/adapter/DepartureMarkAdapter;->mEstimateTime:Lcom/didi/common/richtextview/RichTextView;

    invoke-virtual {v3, v5}, Lcom/didi/common/richtextview/RichTextView;->setVisibility(I)V

    .line 128
    iget-object v3, p0, Lcom/didi/map/marker/adapter/DepartureMarkAdapter;->mAddress:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 129
    iget-object v3, p0, Lcom/didi/map/marker/adapter/DepartureMarkAdapter;->mAddress:Landroid/widget/TextView;

    const-string v4, "\u6682\u65e0"

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v3, p0, Lcom/didi/map/marker/adapter/DepartureMarkAdapter;->mAddress:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 131
    iget-object v3, p0, Lcom/didi/map/marker/adapter/DepartureMarkAdapter;->frameLayoutAddress:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 133
    :cond_b
    iget-object v3, p0, Lcom/didi/map/marker/adapter/DepartureMarkAdapter;->frameLayoutAddress:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method public showFirstGuid(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/map/marker/adapter/DepartureMarkAdapter;->isShowFirstGuid:Z

    .line 143
    iput-object p1, p0, Lcom/didi/map/marker/adapter/DepartureMarkAdapter;->mDragTitle:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public updateEstimateTime(Ljava/lang/String;)V
    .locals 0
    .parameter "time"

    .prologue
    .line 151
    iput-object p1, p0, Lcom/didi/map/marker/adapter/DepartureMarkAdapter;->mTxtEstimate:Ljava/lang/String;

    .line 152
    return-void
.end method
