.class public Lcom/didi/map/marker/adapter/VoiceFareMarkerAdapter;
.super Lcom/didi/map/marker/adapter/BaseInfoAdapter;
.source "VoiceFareMarkerAdapter.java"


# instance fields
.field private mFare:Lcom/didi/common/model/MarkerFare;

.field private mPlay:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/didi/map/marker/adapter/BaseInfoAdapter;-><init>()V

    .line 41
    const v0, 0x7f0300cf

    invoke-virtual {p0, v0}, Lcom/didi/map/marker/adapter/VoiceFareMarkerAdapter;->setLayout(I)V

    .line 42
    return-void
.end method


# virtual methods
.method public getInfoWindowPressState(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)Landroid/view/View;
    .locals 1
    .parameter "arg0"

    .prologue
    .line 175
    const/4 v0, 0x0

    return-object v0
.end method

.method public hideArrow()V
    .locals 0

    .prologue
    .line 165
    return-void
.end method

.method protected setDefaultInfo()V
    .locals 29

    .prologue
    .line 46
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/map/marker/adapter/VoiceFareMarkerAdapter;->mWindow:Landroid/view/View;

    move-object/from16 v26, v0

    const v27, 0x7f080459

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/ImageView;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/didi/map/marker/adapter/VoiceFareMarkerAdapter;->mPlay:Landroid/widget/ImageView;

    .line 48
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/map/marker/adapter/VoiceFareMarkerAdapter;->mWindow:Landroid/view/View;

    move-object/from16 v26, v0

    const v27, 0x7f080458

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    .line 49
    .local v14, layoutVoice:Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/map/marker/adapter/VoiceFareMarkerAdapter;->mWindow:Landroid/view/View;

    move-object/from16 v26, v0

    const v27, 0x7f080449

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 51
    .local v16, lineViewOne:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/map/marker/adapter/VoiceFareMarkerAdapter;->mWindow:Landroid/view/View;

    move-object/from16 v26, v0

    const v27, 0x7f08044a

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 52
    .local v8, fareTipView:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/map/marker/adapter/VoiceFareMarkerAdapter;->mWindow:Landroid/view/View;

    move-object/from16 v26, v0

    const v27, 0x7f08044b

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    .line 53
    .local v12, layoutFare:Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/map/marker/adapter/VoiceFareMarkerAdapter;->mWindow:Landroid/view/View;

    move-object/from16 v26, v0

    const v27, 0x7f08044c

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    check-cast v24, Landroid/widget/TextView;

    .line 54
    .local v24, txtFare:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/map/marker/adapter/VoiceFareMarkerAdapter;->mWindow:Landroid/view/View;

    move-object/from16 v26, v0

    const v27, 0x7f08044e

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    check-cast v25, Landroid/widget/TextView;

    .line 55
    .local v25, txtTime:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/map/marker/adapter/VoiceFareMarkerAdapter;->mWindow:Landroid/view/View;

    move-object/from16 v26, v0

    const v27, 0x7f08045a

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    .line 56
    .local v17, lineViewTwo:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/map/marker/adapter/VoiceFareMarkerAdapter;->mWindow:Landroid/view/View;

    move-object/from16 v26, v0

    const v27, 0x7f08044f

    invoke-virtual/range {v26 .. v27}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    .line 58
    .local v13, layoutTag:Landroid/widget/LinearLayout;
    sget-object v26, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/didi/common/database/CityListHelper;->isCarAvailable()Z

    move-result v26

    if-eqz v26, :cond_1

    :cond_0
    sget-object v26, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_4

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/didi/common/config/Preferences;->isFlierAbility()Z

    move-result v26

    if-nez v26, :cond_4

    .line 60
    :cond_1
    const/16 v26, 0x8

    move/from16 v0, v26

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 61
    const/16 v26, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 62
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 63
    const/16 v26, 0x8

    move/from16 v0, v26

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 64
    const/16 v26, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 65
    const/16 v26, 0x8

    move/from16 v0, v26

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 66
    sget-object v26, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_3

    .line 67
    const v26, 0x7f0b0233

    move/from16 v0, v26

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(I)V

    .line 160
    :cond_2
    :goto_0
    return-void

    .line 68
    :cond_3
    sget-object v26, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_2

    .line 69
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Lcom/didi/common/config/Preferences;->getFlierMsg()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 72
    :cond_4
    sget-object v26, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_5

    .line 73
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 74
    const/16 v26, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 75
    const/16 v26, 0x8

    move/from16 v0, v26

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 76
    const/16 v26, 0x8

    move/from16 v0, v26

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 77
    const/16 v26, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 78
    const/16 v26, 0x8

    move/from16 v0, v26

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 81
    :cond_5
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 82
    const/16 v26, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 85
    invoke-virtual {v13}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 87
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/map/marker/adapter/VoiceFareMarkerAdapter;->mFare:Lcom/didi/common/model/MarkerFare;

    move-object/from16 v26, v0

    if-eqz v26, :cond_c

    .line 88
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/map/marker/adapter/VoiceFareMarkerAdapter;->mFare:Lcom/didi/common/model/MarkerFare;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/didi/common/model/MarkerFare;->estimateDefault:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v26

    if-nez v26, :cond_6

    .line 89
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    const/16 v26, 0x8

    move/from16 v0, v26

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 91
    const/16 v26, 0x8

    move/from16 v0, v26

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 92
    const/16 v26, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 93
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/map/marker/adapter/VoiceFareMarkerAdapter;->mFare:Lcom/didi/common/model/MarkerFare;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/didi/common/model/MarkerFare;->estimateDefault:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 95
    :cond_6
    const/16 v26, 0x8

    move/from16 v0, v26

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 97
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 98
    const/16 v26, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/map/marker/adapter/VoiceFareMarkerAdapter;->mFare:Lcom/didi/common/model/MarkerFare;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/didi/common/model/MarkerFare;->estimateFare:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lutil/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_8

    .line 101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/map/marker/adapter/VoiceFareMarkerAdapter;->mFare:Lcom/didi/common/model/MarkerFare;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/didi/common/model/MarkerFare;->estimateFare:Ljava/lang/String;

    move-object/from16 v26, v0

    const-string v27, "{"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v20

    .line 102
    .local v20, startFare:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/map/marker/adapter/VoiceFareMarkerAdapter;->mFare:Lcom/didi/common/model/MarkerFare;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/didi/common/model/MarkerFare;->estimateFare:Ljava/lang/String;

    move-object/from16 v26, v0

    const-string v27, "}"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v26

    add-int/lit8 v6, v26, -0x1

    .line 103
    .local v6, endFare:I
    move/from16 v0, v20

    if-ge v0, v6, :cond_7

    const/16 v26, -0x1

    move/from16 v0, v20

    move/from16 v1, v26

    if-eq v0, v1, :cond_7

    const/16 v26, -0x2

    move/from16 v0, v26

    if-eq v6, v0, :cond_7

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/map/marker/adapter/VoiceFareMarkerAdapter;->mFare:Lcom/didi/common/model/MarkerFare;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/didi/common/model/MarkerFare;->estimateFare:Ljava/lang/String;

    move-object/from16 v26, v0

    const-string v27, "\\{"

    const-string v28, ""

    invoke-virtual/range {v26 .. v28}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 105
    .local v4, dataA:Ljava/lang/String;
    const-string v26, "\\}"

    const-string v27, ""

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 106
    .local v5, dataB:Ljava/lang/String;
    new-instance v18, Landroid/text/SpannableString;

    move-object/from16 v0, v18

    invoke-direct {v0, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 107
    .local v18, mEstimateFare:Landroid/text/SpannableString;
    new-instance v26, Landroid/text/style/RelativeSizeSpan;

    const v27, 0x3fa66666

    invoke-direct/range {v26 .. v27}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    const/16 v27, 0x21

    move-object/from16 v0, v18

    move-object/from16 v1, v26

    move/from16 v2, v20

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v6, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 108
    move-object/from16 v0, v24

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    .end local v4           #dataA:Ljava/lang/String;
    .end local v5           #dataB:Ljava/lang/String;
    .end local v6           #endFare:I
    .end local v18           #mEstimateFare:Landroid/text/SpannableString;
    .end local v20           #startFare:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/map/marker/adapter/VoiceFareMarkerAdapter;->mFare:Lcom/didi/common/model/MarkerFare;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/didi/common/model/MarkerFare;->estimateTime:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lutil/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_a

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/map/marker/adapter/VoiceFareMarkerAdapter;->mFare:Lcom/didi/common/model/MarkerFare;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/didi/common/model/MarkerFare;->estimateTime:Ljava/lang/String;

    move-object/from16 v26, v0

    const-string v27, "{"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v21

    .line 120
    .local v21, startTime:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/map/marker/adapter/VoiceFareMarkerAdapter;->mFare:Lcom/didi/common/model/MarkerFare;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/didi/common/model/MarkerFare;->estimateTime:Ljava/lang/String;

    move-object/from16 v26, v0

    const-string v27, "}"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v26

    add-int/lit8 v7, v26, -0x1

    .line 121
    .local v7, endTime:I
    move/from16 v0, v21

    if-ge v0, v7, :cond_9

    const/16 v26, -0x1

    move/from16 v0, v21

    move/from16 v1, v26

    if-eq v0, v1, :cond_9

    const/16 v26, -0x2

    move/from16 v0, v26

    if-eq v7, v0, :cond_9

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/map/marker/adapter/VoiceFareMarkerAdapter;->mFare:Lcom/didi/common/model/MarkerFare;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/didi/common/model/MarkerFare;->estimateTime:Ljava/lang/String;

    move-object/from16 v26, v0

    const-string v27, "\\{"

    const-string v28, ""

    invoke-virtual/range {v26 .. v28}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 123
    .restart local v4       #dataA:Ljava/lang/String;
    const-string v26, "\\}"

    const-string v27, ""

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 124
    .restart local v5       #dataB:Ljava/lang/String;
    new-instance v19, Landroid/text/SpannableString;

    move-object/from16 v0, v19

    invoke-direct {v0, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 125
    .local v19, mEstimateTime:Landroid/text/SpannableString;
    new-instance v26, Landroid/text/style/RelativeSizeSpan;

    const v27, 0x3fa66666

    invoke-direct/range {v26 .. v27}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    const/16 v27, 0x21

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    move/from16 v2, v21

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v7, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 126
    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    .end local v4           #dataA:Ljava/lang/String;
    .end local v5           #dataB:Ljava/lang/String;
    .end local v7           #endTime:I
    .end local v19           #mEstimateTime:Landroid/text/SpannableString;
    .end local v21           #startTime:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/map/marker/adapter/VoiceFareMarkerAdapter;->mFare:Lcom/didi/common/model/MarkerFare;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/didi/common/model/MarkerFare;->estimateTagList:Ljava/util/List;

    move-object/from16 v26, v0

    if-eqz v26, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/map/marker/adapter/VoiceFareMarkerAdapter;->mFare:Lcom/didi/common/model/MarkerFare;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/didi/common/model/MarkerFare;->estimateTagList:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v26

    if-lez v26, :cond_b

    .line 137
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v26

    if-eqz v26, :cond_2

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/map/marker/adapter/VoiceFareMarkerAdapter;->mFare:Lcom/didi/common/model/MarkerFare;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/didi/common/model/MarkerFare;->estimateTagList:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v15

    .line 139
    .local v15, length:I
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v26

    invoke-static/range {v26 .. v26}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v11

    .line 140
    .local v11, inflater:Landroid/view/LayoutInflater;
    const/4 v10, 0x0

    .local v10, index:I
    :goto_3
    if-ge v10, v15, :cond_2

    .line 141
    const v26, 0x7f0300c7

    const/16 v27, 0x0

    move/from16 v0, v26

    move-object/from16 v1, v27

    invoke-virtual {v11, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v22

    .line 142
    .local v22, tagView:Landroid/view/View;
    const v26, 0x7f080433

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 143
    .local v9, imgTips:Landroid/widget/ImageView;
    const v26, 0x7f080434

    move-object/from16 v0, v22

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Lcom/didi/common/richtextview/RichTextView;

    .line 144
    .local v23, txtDesc:Lcom/didi/common/richtextview/RichTextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/map/marker/adapter/VoiceFareMarkerAdapter;->mFare:Lcom/didi/common/model/MarkerFare;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/didi/common/model/MarkerFare;->estimateTagList:Ljava/util/List;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/didi/common/model/MarkerFareTag;

    move-object/from16 v0, v26

    iget v0, v0, Lcom/didi/common/model/MarkerFareTag;->priceTagId:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/didi/car/helper/CarDynamicPriceHelper;->getResIdByTagId(I)I

    move-result v26

    move/from16 v0, v26

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/map/marker/adapter/VoiceFareMarkerAdapter;->mFare:Lcom/didi/common/model/MarkerFare;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/didi/common/model/MarkerFare;->estimateTagList:Ljava/util/List;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/didi/common/model/MarkerFareTag;

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/didi/common/model/MarkerFareTag;->priceTagDesc:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/didi/common/richtextview/RichTextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 140
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 110
    .end local v9           #imgTips:Landroid/widget/ImageView;
    .end local v10           #index:I
    .end local v11           #inflater:Landroid/view/LayoutInflater;
    .end local v15           #length:I
    .end local v22           #tagView:Landroid/view/View;
    .end local v23           #txtDesc:Lcom/didi/common/richtextview/RichTextView;
    .restart local v6       #endFare:I
    .restart local v20       #startFare:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/map/marker/adapter/VoiceFareMarkerAdapter;->mFare:Lcom/didi/common/model/MarkerFare;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/didi/common/model/MarkerFare;->estimateFare:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 113
    .end local v6           #endFare:I
    .end local v20           #startFare:I
    :cond_8
    const/16 v26, 0x8

    move/from16 v0, v26

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 114
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 115
    const v26, 0x7f0b032b

    invoke-static/range {v26 .. v26}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 128
    .restart local v7       #endTime:I
    .restart local v21       #startTime:I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/map/marker/adapter/VoiceFareMarkerAdapter;->mFare:Lcom/didi/common/model/MarkerFare;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/didi/common/model/MarkerFare;->estimateTime:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 131
    .end local v7           #endTime:I
    .end local v21           #startTime:I
    :cond_a
    const/16 v26, 0x8

    move/from16 v0, v26

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 132
    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 133
    const v26, 0x7f0b032b

    invoke-static/range {v26 .. v26}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 150
    :cond_b
    const/16 v26, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 151
    const/16 v26, 0x8

    move/from16 v0, v26

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 155
    :cond_c
    const v26, 0x7f0b032b

    invoke-static/range {v26 .. v26}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    const/16 v26, 0x8

    move/from16 v0, v26

    invoke-virtual {v12, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 157
    const/16 v26, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 158
    const/16 v26, 0x8

    move/from16 v0, v26

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public setPlayImage(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/didi/map/marker/adapter/VoiceFareMarkerAdapter;->mPlay:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/didi/map/marker/adapter/VoiceFareMarkerAdapter;->mWindow:Landroid/view/View;

    const v1, 0x7f080459

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/didi/map/marker/adapter/VoiceFareMarkerAdapter;->mPlay:Landroid/widget/ImageView;

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/didi/map/marker/adapter/VoiceFareMarkerAdapter;->mPlay:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 184
    return-void
.end method

.method public showArrow()V
    .locals 0

    .prologue
    .line 170
    return-void
.end method

.method public updateFare(Lcom/didi/common/model/MarkerFare;)V
    .locals 0
    .parameter "fareTxt"

    .prologue
    .line 187
    iput-object p1, p0, Lcom/didi/map/marker/adapter/VoiceFareMarkerAdapter;->mFare:Lcom/didi/common/model/MarkerFare;

    .line 188
    return-void
.end method
