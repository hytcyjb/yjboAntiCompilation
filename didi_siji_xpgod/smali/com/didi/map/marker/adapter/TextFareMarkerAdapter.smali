.class public Lcom/didi/map/marker/adapter/TextFareMarkerAdapter;
.super Lcom/didi/map/marker/adapter/BaseInfoAdapter;
.source "TextFareMarkerAdapter.java"


# instance fields
.field private mFare:Lcom/didi/common/model/MarkerFare;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/didi/map/marker/adapter/BaseInfoAdapter;-><init>()V

    .line 36
    const v0, 0x7f0300cc

    invoke-virtual {p0, v0}, Lcom/didi/map/marker/adapter/TextFareMarkerAdapter;->setLayout(I)V

    .line 37
    return-void
.end method


# virtual methods
.method public getInfoWindow(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)Landroid/view/View;
    .locals 2
    .parameter "arg0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/didi/map/marker/adapter/TextFareMarkerAdapter;->mWindow:Landroid/view/View;

    const v1, 0x7f020249

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 42
    invoke-super {p0, p1}, Lcom/didi/map/marker/adapter/BaseInfoAdapter;->getInfoWindow(Lcom/tencent/tencentmap/mapsdk/maps/model/Marker;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public hideArrow()V
    .locals 5

    .prologue
    const v4, 0x7f080452

    const/4 v3, 0x4

    .line 202
    iget-object v2, p0, Lcom/didi/map/marker/adapter/TextFareMarkerAdapter;->mWindow:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 203
    .local v0, fare:Landroid/widget/ImageView;
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 204
    iget-object v2, p0, Lcom/didi/map/marker/adapter/TextFareMarkerAdapter;->mPress:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 205
    .local v1, farep:Landroid/widget/ImageView;
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 206
    return-void
.end method

.method public setInfo(Landroid/view/View;)V
    .locals 39
    .parameter "view"

    .prologue
    .line 48
    const v36, 0x7f080446

    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v23

    check-cast v23, Landroid/widget/LinearLayout;

    .line 49
    .local v23, mapLayout:Landroid/widget/LinearLayout;
    const v36, 0x7f080451

    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v34

    check-cast v34, Landroid/widget/TextView;

    .line 51
    .local v34, txtViewTips:Landroid/widget/TextView;
    const v36, 0x7f080443

    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 52
    .local v11, from:Landroid/widget/TextView;
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v36

    if-eqz v36, :cond_0

    .line 53
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getStartPlace()Lcom/didi/common/model/Address;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v26

    .line 54
    .local v26, start:Ljava/lang/String;
    move-object/from16 v0, v26

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    .end local v26           #start:Ljava/lang/String;
    :cond_0
    const v36, 0x7f080445

    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/TextView;

    .line 57
    .local v30, to:Landroid/widget/TextView;
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getEndPlace()Lcom/didi/common/model/Address;

    move-result-object v36

    if-eqz v36, :cond_1

    .line 58
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getEndPlace()Lcom/didi/common/model/Address;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    .line 59
    .local v6, end:Ljava/lang/String;
    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    .end local v6           #end:Ljava/lang/String;
    :cond_1
    const v36, 0x7f080449

    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    .line 65
    .local v20, lineView:Landroid/view/View;
    const v36, 0x7f08044b

    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    .line 66
    .local v15, layoutFare:Landroid/widget/LinearLayout;
    const v36, 0x7f08044c

    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/TextView;

    .line 67
    .local v32, txtFare:Landroid/widget/TextView;
    const v36, 0x7f08044d

    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .line 68
    .local v19, lineVerticalView:Landroid/view/View;
    const v36, 0x7f08044e

    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/TextView;

    .line 70
    .local v33, txtTime:Landroid/widget/TextView;
    const v36, 0x7f08044a

    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 73
    .local v10, fareTipView:Landroid/widget/TextView;
    const v36, 0x7f08044f

    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/LinearLayout;

    .line 74
    .local v16, layoutTag:Landroid/widget/LinearLayout;
    const v36, 0x7f080450

    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    .line 76
    .local v17, layoutTagContent:Landroid/widget/LinearLayout;
    sget-object v36, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v37

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/didi/common/database/CityListHelper;->isCarAvailable()Z

    move-result v36

    if-eqz v36, :cond_3

    :cond_2
    sget-object v36, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v37

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    if-ne v0, v1, :cond_6

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/didi/common/config/Preferences;->isFlierAbility()Z

    move-result v36

    if-nez v36, :cond_6

    .line 78
    :cond_3
    const/16 v36, 0x8

    move-object/from16 v0, v23

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 79
    const/16 v36, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 80
    sget-object v36, Lcom/didi/frame/business/Business;->Car:Lcom/didi/frame/business/Business;

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v37

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    if-ne v0, v1, :cond_5

    .line 81
    const v36, 0x7f0b0233

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 199
    :cond_4
    :goto_0
    return-void

    .line 82
    :cond_5
    sget-object v36, Lcom/didi/frame/business/Business;->Flier:Lcom/didi/frame/business/Business;

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v37

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    if-ne v0, v1, :cond_4

    .line 83
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Lcom/didi/common/config/Preferences;->getFlierMsg()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 86
    :cond_6
    sget-object v36, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v37

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    if-ne v0, v1, :cond_7

    .line 87
    const/16 v36, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 88
    const/16 v36, 0x8

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 89
    const/16 v36, 0x8

    move-object/from16 v0, v20

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 90
    const/16 v36, 0x8

    move/from16 v0, v36

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 91
    const/16 v36, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 92
    const/16 v36, 0x8

    move/from16 v0, v36

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 95
    :cond_7
    const/16 v36, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 96
    const/16 v36, 0x8

    move-object/from16 v0, v34

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 97
    const/16 v36, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 100
    invoke-virtual/range {v17 .. v17}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/map/marker/adapter/TextFareMarkerAdapter;->mFare:Lcom/didi/common/model/MarkerFare;

    move-object/from16 v36, v0

    if-eqz v36, :cond_15

    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/map/marker/adapter/TextFareMarkerAdapter;->mFare:Lcom/didi/common/model/MarkerFare;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/didi/common/model/MarkerFare;->estimateDefault:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v36

    if-nez v36, :cond_8

    .line 103
    const/16 v36, 0x0

    move/from16 v0, v36

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 104
    const/16 v36, 0x8

    move/from16 v0, v36

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 105
    const/16 v36, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/map/marker/adapter/TextFareMarkerAdapter;->mFare:Lcom/didi/common/model/MarkerFare;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/didi/common/model/MarkerFare;->estimateDefault:Ljava/lang/String;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 108
    :cond_8
    const/16 v36, 0x8

    move/from16 v0, v36

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 109
    const/16 v36, 0x0

    move/from16 v0, v36

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 110
    const/16 v36, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/map/marker/adapter/TextFareMarkerAdapter;->mFare:Lcom/didi/common/model/MarkerFare;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/didi/common/model/MarkerFare;->estimateTagList:Ljava/util/List;

    move-object/from16 v36, v0

    if-eqz v36, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/map/marker/adapter/TextFareMarkerAdapter;->mFare:Lcom/didi/common/model/MarkerFare;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/didi/common/model/MarkerFare;->estimateTagList:Ljava/util/List;

    move-object/from16 v36, v0

    invoke-interface/range {v36 .. v36}, Ljava/util/List;->size()I

    move-result v36

    if-lez v36, :cond_e

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/map/marker/adapter/TextFareMarkerAdapter;->mFare:Lcom/didi/common/model/MarkerFare;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/didi/common/model/MarkerFare;->estimateTagList:Ljava/util/List;

    move-object/from16 v36, v0

    invoke-interface/range {v36 .. v36}, Ljava/util/List;->size()I

    move-result v25

    .line 114
    .local v25, size:I
    const/16 v36, 0x1

    move/from16 v0, v25

    move/from16 v1, v36

    if-ne v0, v1, :cond_a

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/map/marker/adapter/TextFareMarkerAdapter;->mWindow:Landroid/view/View;

    move-object/from16 v36, v0

    const v37, 0x7f02024a

    invoke-virtual/range {v36 .. v37}, Landroid/view/View;->setBackgroundResource(I)V

    .line 124
    :cond_9
    :goto_1
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v36

    if-eqz v36, :cond_f

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/map/marker/adapter/TextFareMarkerAdapter;->mFare:Lcom/didi/common/model/MarkerFare;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/didi/common/model/MarkerFare;->estimateTagList:Ljava/util/List;

    move-object/from16 v36, v0

    invoke-interface/range {v36 .. v36}, Ljava/util/List;->size()I

    move-result v18

    .line 126
    .local v18, length:I
    new-instance v24, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v36, -0x2

    const/16 v37, -0x2

    move-object/from16 v0, v24

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 127
    .local v24, params:Landroid/widget/LinearLayout$LayoutParams;
    const/16 v36, 0x4

    move/from16 v0, v36

    move-object/from16 v1, v24

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 128
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v14

    .line 129
    .local v14, inflater:Landroid/view/LayoutInflater;
    const/4 v13, 0x0

    .local v13, index:I
    :goto_2
    move/from16 v0, v18

    if-ge v13, v0, :cond_f

    .line 130
    const v36, 0x7f0300c7

    const/16 v37, 0x0

    move/from16 v0, v36

    move-object/from16 v1, v37

    invoke-virtual {v14, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v29

    .line 131
    .local v29, tagView:Landroid/view/View;
    const v36, 0x7f080433

    move-object/from16 v0, v29

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 132
    .local v12, imgTips:Landroid/widget/ImageView;
    const v36, 0x7f080434

    move-object/from16 v0, v29

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v31

    check-cast v31, Lcom/didi/common/richtextview/RichTextView;

    .line 133
    .local v31, txtDesc:Lcom/didi/common/richtextview/RichTextView;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/map/marker/adapter/TextFareMarkerAdapter;->mFare:Lcom/didi/common/model/MarkerFare;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/didi/common/model/MarkerFare;->estimateTagList:Ljava/util/List;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/didi/common/model/MarkerFareTag;

    move-object/from16 v0, v36

    iget v0, v0, Lcom/didi/common/model/MarkerFareTag;->priceTagId:I

    move/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lcom/didi/car/helper/CarDynamicPriceHelper;->getResIdByTagId(I)I

    move-result v36

    move/from16 v0, v36

    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/map/marker/adapter/TextFareMarkerAdapter;->mFare:Lcom/didi/common/model/MarkerFare;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/didi/common/model/MarkerFare;->estimateTagList:Ljava/util/List;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/didi/common/model/MarkerFareTag;

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/didi/common/model/MarkerFareTag;->priceTagDesc:Ljava/lang/String;

    move-object/from16 v36, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/didi/common/richtextview/RichTextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    const v36, 0x7f080435

    move-object/from16 v0, v29

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v35

    .line 136
    .local v35, viewQues:Landroid/view/View;
    const/16 v37, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/map/marker/adapter/TextFareMarkerAdapter;->mFare:Lcom/didi/common/model/MarkerFare;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/didi/common/model/MarkerFare;->estimateTagList:Ljava/util/List;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/didi/common/model/MarkerFareTag;

    move-object/from16 v0, v36

    iget v0, v0, Lcom/didi/common/model/MarkerFareTag;->priceTagId:I

    move/from16 v36, v0

    move/from16 v0, v37

    move/from16 v1, v36

    if-ne v0, v1, :cond_d

    .line 137
    const/16 v36, 0x0

    invoke-virtual/range {v35 .. v36}, Landroid/view/View;->setVisibility(I)V

    .line 141
    :goto_3
    move-object/from16 v0, v17

    move-object/from16 v1, v29

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 116
    .end local v12           #imgTips:Landroid/widget/ImageView;
    .end local v13           #index:I
    .end local v14           #inflater:Landroid/view/LayoutInflater;
    .end local v18           #length:I
    .end local v24           #params:Landroid/widget/LinearLayout$LayoutParams;
    .end local v29           #tagView:Landroid/view/View;
    .end local v31           #txtDesc:Lcom/didi/common/richtextview/RichTextView;
    .end local v35           #viewQues:Landroid/view/View;
    :cond_a
    const/16 v36, 0x2

    move/from16 v0, v25

    move/from16 v1, v36

    if-ne v0, v1, :cond_b

    .line 117
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/map/marker/adapter/TextFareMarkerAdapter;->mWindow:Landroid/view/View;

    move-object/from16 v36, v0

    const v37, 0x7f02024b

    invoke-virtual/range {v36 .. v37}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 118
    :cond_b
    const/16 v36, 0x3

    move/from16 v0, v25

    move/from16 v1, v36

    if-ne v0, v1, :cond_c

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/map/marker/adapter/TextFareMarkerAdapter;->mWindow:Landroid/view/View;

    move-object/from16 v36, v0

    const v37, 0x7f02024c

    invoke-virtual/range {v36 .. v37}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 120
    :cond_c
    const/16 v36, 0x4

    move/from16 v0, v25

    move/from16 v1, v36

    if-ne v0, v1, :cond_9

    .line 121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/map/marker/adapter/TextFareMarkerAdapter;->mWindow:Landroid/view/View;

    move-object/from16 v36, v0

    const v37, 0x7f02024d

    invoke-virtual/range {v36 .. v37}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 139
    .restart local v12       #imgTips:Landroid/widget/ImageView;
    .restart local v13       #index:I
    .restart local v14       #inflater:Landroid/view/LayoutInflater;
    .restart local v18       #length:I
    .restart local v24       #params:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v29       #tagView:Landroid/view/View;
    .restart local v31       #txtDesc:Lcom/didi/common/richtextview/RichTextView;
    .restart local v35       #viewQues:Landroid/view/View;
    :cond_d
    const/16 v36, 0x8

    invoke-virtual/range {v35 .. v36}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 145
    .end local v12           #imgTips:Landroid/widget/ImageView;
    .end local v13           #index:I
    .end local v14           #inflater:Landroid/view/LayoutInflater;
    .end local v18           #length:I
    .end local v24           #params:Landroid/widget/LinearLayout$LayoutParams;
    .end local v25           #size:I
    .end local v29           #tagView:Landroid/view/View;
    .end local v31           #txtDesc:Lcom/didi/common/richtextview/RichTextView;
    .end local v35           #viewQues:Landroid/view/View;
    :cond_e
    const/16 v36, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 148
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/map/marker/adapter/TextFareMarkerAdapter;->mFare:Lcom/didi/common/model/MarkerFare;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/didi/common/model/MarkerFare;->estimateFare:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lutil/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v36

    if-nez v36, :cond_11

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/map/marker/adapter/TextFareMarkerAdapter;->mFare:Lcom/didi/common/model/MarkerFare;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/didi/common/model/MarkerFare;->estimateFare:Ljava/lang/String;

    move-object/from16 v36, v0

    const-string v37, "{"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v27

    .line 150
    .local v27, startFare:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/map/marker/adapter/TextFareMarkerAdapter;->mFare:Lcom/didi/common/model/MarkerFare;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/didi/common/model/MarkerFare;->estimateFare:Ljava/lang/String;

    move-object/from16 v36, v0

    const-string v37, "}"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v36

    add-int/lit8 v7, v36, -0x1

    .line 151
    .local v7, endFare:I
    move/from16 v0, v27

    if-ge v0, v7, :cond_10

    const/16 v36, -0x1

    move/from16 v0, v27

    move/from16 v1, v36

    if-eq v0, v1, :cond_10

    const/16 v36, -0x2

    move/from16 v0, v36

    if-eq v7, v0, :cond_10

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/map/marker/adapter/TextFareMarkerAdapter;->mFare:Lcom/didi/common/model/MarkerFare;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/didi/common/model/MarkerFare;->estimateFare:Ljava/lang/String;

    move-object/from16 v36, v0

    const-string v37, "\\{"

    const-string v38, ""

    invoke-virtual/range {v36 .. v38}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 153
    .local v4, dataA:Ljava/lang/String;
    const-string v36, "\\}"

    const-string v37, ""

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 154
    .local v5, dataB:Ljava/lang/String;
    new-instance v21, Landroid/text/SpannableString;

    move-object/from16 v0, v21

    invoke-direct {v0, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 155
    .local v21, mEstimateFare:Landroid/text/SpannableString;
    new-instance v36, Landroid/text/style/RelativeSizeSpan;

    const/high16 v37, 0x3fc0

    invoke-direct/range {v36 .. v37}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    const/16 v37, 0x21

    move-object/from16 v0, v21

    move-object/from16 v1, v36

    move/from16 v2, v27

    move/from16 v3, v37

    invoke-virtual {v0, v1, v2, v7, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 156
    move-object/from16 v0, v32

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    .end local v4           #dataA:Ljava/lang/String;
    .end local v5           #dataB:Ljava/lang/String;
    .end local v7           #endFare:I
    .end local v21           #mEstimateFare:Landroid/text/SpannableString;
    .end local v27           #startFare:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/map/marker/adapter/TextFareMarkerAdapter;->mFare:Lcom/didi/common/model/MarkerFare;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/didi/common/model/MarkerFare;->estimateTime:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-static/range {v36 .. v36}, Lutil/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v36

    if-nez v36, :cond_13

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/map/marker/adapter/TextFareMarkerAdapter;->mFare:Lcom/didi/common/model/MarkerFare;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/didi/common/model/MarkerFare;->estimateTime:Ljava/lang/String;

    move-object/from16 v36, v0

    const-string v37, "{"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v28

    .line 167
    .local v28, startTime:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/map/marker/adapter/TextFareMarkerAdapter;->mFare:Lcom/didi/common/model/MarkerFare;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/didi/common/model/MarkerFare;->estimateTime:Ljava/lang/String;

    move-object/from16 v36, v0

    const-string v37, "}"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v36

    add-int/lit8 v8, v36, -0x1

    .line 168
    .local v8, endTime:I
    move/from16 v0, v28

    if-ge v0, v8, :cond_12

    const/16 v36, -0x1

    move/from16 v0, v28

    move/from16 v1, v36

    if-eq v0, v1, :cond_12

    const/16 v36, -0x2

    move/from16 v0, v36

    if-eq v8, v0, :cond_12

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/map/marker/adapter/TextFareMarkerAdapter;->mFare:Lcom/didi/common/model/MarkerFare;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/didi/common/model/MarkerFare;->estimateTime:Ljava/lang/String;

    move-object/from16 v36, v0

    const-string v37, "\\{"

    const-string v38, ""

    invoke-virtual/range {v36 .. v38}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 170
    .restart local v4       #dataA:Ljava/lang/String;
    const-string v36, "\\}"

    const-string v37, ""

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 171
    .restart local v5       #dataB:Ljava/lang/String;
    new-instance v22, Landroid/text/SpannableString;

    move-object/from16 v0, v22

    invoke-direct {v0, v5}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 172
    .local v22, mEstimateTime:Landroid/text/SpannableString;
    new-instance v36, Landroid/text/style/RelativeSizeSpan;

    const v37, 0x3fe66666

    invoke-direct/range {v36 .. v37}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    const/16 v37, 0x21

    move-object/from16 v0, v22

    move-object/from16 v1, v36

    move/from16 v2, v28

    move/from16 v3, v37

    invoke-virtual {v0, v1, v2, v8, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 173
    new-instance v36, Landroid/text/style/ForegroundColorSpan;

    const v37, 0x7f070028

    invoke-static/range {v37 .. v37}, Lcom/didi/common/helper/ResourcesHelper;->getColor(I)I

    move-result v37

    invoke-direct/range {v36 .. v37}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v37, 0x21

    move-object/from16 v0, v22

    move-object/from16 v1, v36

    move/from16 v2, v28

    move/from16 v3, v37

    invoke-virtual {v0, v1, v2, v8, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 174
    move-object/from16 v0, v33

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    .end local v4           #dataA:Ljava/lang/String;
    .end local v5           #dataB:Ljava/lang/String;
    .end local v22           #mEstimateTime:Landroid/text/SpannableString;
    :goto_5
    const/16 v36, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 179
    const/16 v36, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 184
    .end local v8           #endTime:I
    .end local v28           #startTime:I
    :goto_6
    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 185
    .local v9, fareParams:Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/map/marker/adapter/TextFareMarkerAdapter;->mFare:Lcom/didi/common/model/MarkerFare;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/didi/common/model/MarkerFare;->estimateTagList:Ljava/util/List;

    move-object/from16 v36, v0

    if-eqz v36, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/map/marker/adapter/TextFareMarkerAdapter;->mFare:Lcom/didi/common/model/MarkerFare;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/didi/common/model/MarkerFare;->estimateTagList:Ljava/util/List;

    move-object/from16 v36, v0

    invoke-interface/range {v36 .. v36}, Ljava/util/List;->size()I

    move-result v36

    if-lez v36, :cond_14

    .line 186
    const/16 v36, 0x0

    move/from16 v0, v36

    iput v0, v9, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 190
    :goto_7
    invoke-virtual {v15, v9}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 158
    .end local v9           #fareParams:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v7       #endFare:I
    .restart local v27       #startFare:I
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/map/marker/adapter/TextFareMarkerAdapter;->mFare:Lcom/didi/common/model/MarkerFare;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/didi/common/model/MarkerFare;->estimateFare:Ljava/lang/String;

    move-object/from16 v36, v0

    move-object/from16 v0, v32

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 161
    .end local v7           #endFare:I
    .end local v27           #startFare:I
    :cond_11
    const/16 v36, 0x8

    move/from16 v0, v36

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 162
    const/16 v36, 0x0

    move/from16 v0, v36

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 163
    const v36, 0x7f0b032b

    invoke-static/range {v36 .. v36}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_4

    .line 176
    .restart local v8       #endTime:I
    .restart local v28       #startTime:I
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/map/marker/adapter/TextFareMarkerAdapter;->mFare:Lcom/didi/common/model/MarkerFare;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/didi/common/model/MarkerFare;->estimateTime:Ljava/lang/String;

    move-object/from16 v36, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 181
    .end local v8           #endTime:I
    .end local v28           #startTime:I
    :cond_13
    const/16 v36, 0x8

    move-object/from16 v0, v19

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 182
    const/16 v36, 0x8

    move-object/from16 v0, v33

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_6

    .line 188
    .restart local v9       #fareParams:Landroid/widget/LinearLayout$LayoutParams;
    :cond_14
    const/16 v36, 0xa

    move/from16 v0, v36

    iput v0, v9, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    goto :goto_7

    .line 193
    .end local v9           #fareParams:Landroid/widget/LinearLayout$LayoutParams;
    :cond_15
    const/16 v36, 0x0

    move/from16 v0, v36

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 194
    const/16 v36, 0x8

    move/from16 v0, v36

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 195
    const/16 v36, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 196
    const v36, 0x7f0b032b

    invoke-static/range {v36 .. v36}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v10, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public showArrow()V
    .locals 5

    .prologue
    const v4, 0x7f080452

    const/4 v3, 0x0

    .line 209
    iget-object v2, p0, Lcom/didi/map/marker/adapter/TextFareMarkerAdapter;->mWindow:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 210
    .local v0, fare:Landroid/widget/ImageView;
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 211
    iget-object v2, p0, Lcom/didi/map/marker/adapter/TextFareMarkerAdapter;->mPress:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 212
    .local v1, farep:Landroid/widget/ImageView;
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 213
    return-void
.end method

.method public updateFare(Lcom/didi/common/model/MarkerFare;)V
    .locals 0
    .parameter "markerFare"

    .prologue
    .line 216
    iput-object p1, p0, Lcom/didi/map/marker/adapter/TextFareMarkerAdapter;->mFare:Lcom/didi/common/model/MarkerFare;

    .line 217
    return-void
.end method
