.class public Lcn/sharesdk/onekeyshare/FollowList;
.super Lcn/sharesdk/framework/FakeActivity;
.source "FollowList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sharesdk/onekeyshare/FollowList$1;,
        Lcn/sharesdk/onekeyshare/FollowList$RotateImageView;,
        Lcn/sharesdk/onekeyshare/FollowList$PRTHeader;,
        Lcn/sharesdk/onekeyshare/FollowList$Following;,
        Lcn/sharesdk/onekeyshare/FollowList$FollowListItem;,
        Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;
    }
.end annotation


# instance fields
.field private adapter:Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;

.field private llTitle:Lcn/sharesdk/framework/TitleLayout;

.field private platform:Lcn/sharesdk/framework/Platform;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Lcn/sharesdk/framework/FakeActivity;-><init>()V

    .line 539
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 114
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/FollowList;->platform:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v5}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, name:Ljava/lang/String;
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/FollowList;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {v5}, Lcn/sharesdk/framework/TitleLayout;->getBtnRight()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 116
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .local v3, selected:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v5, "SinaWeibo"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 118
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/FollowList;->adapter:Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;

    invoke-virtual {v5}, Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;->getCount()I

    move-result v4

    .local v4, size:I
    :goto_0
    if-ge v0, v4, :cond_7

    .line 119
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/FollowList;->adapter:Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;

    invoke-virtual {v5, v0}, Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;->getItem(I)Lcn/sharesdk/onekeyshare/FollowList$Following;

    move-result-object v5

    iget-boolean v5, v5, Lcn/sharesdk/onekeyshare/FollowList$Following;->checked:Z

    if-eqz v5, :cond_0

    .line 120
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/FollowList;->adapter:Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;

    invoke-virtual {v5, v0}, Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;->getItem(I)Lcn/sharesdk/onekeyshare/FollowList$Following;

    move-result-object v5

    iget-object v5, v5, Lcn/sharesdk/onekeyshare/FollowList$Following;->screeName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    .end local v0           #i:I
    .end local v4           #size:I
    :cond_1
    const-string v5, "TencentWeibo"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 124
    const/4 v0, 0x0

    .restart local v0       #i:I
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/FollowList;->adapter:Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;

    invoke-virtual {v5}, Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;->getCount()I

    move-result v4

    .restart local v4       #size:I
    :goto_1
    if-ge v0, v4, :cond_7

    .line 125
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/FollowList;->adapter:Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;

    invoke-virtual {v5, v0}, Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;->getItem(I)Lcn/sharesdk/onekeyshare/FollowList$Following;

    move-result-object v5

    iget-boolean v5, v5, Lcn/sharesdk/onekeyshare/FollowList$Following;->checked:Z

    if-eqz v5, :cond_2

    .line 126
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/FollowList;->adapter:Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;

    invoke-virtual {v5, v0}, Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;->getItem(I)Lcn/sharesdk/onekeyshare/FollowList$Following;

    move-result-object v5

    iget-object v5, v5, Lcn/sharesdk/onekeyshare/FollowList$Following;->uid:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 129
    .end local v0           #i:I
    .end local v4           #size:I
    :cond_3
    const-string v5, "Facebook"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 130
    const/4 v0, 0x0

    .restart local v0       #i:I
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/FollowList;->adapter:Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;

    invoke-virtual {v5}, Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;->getCount()I

    move-result v4

    .restart local v4       #size:I
    :goto_2
    if-ge v0, v4, :cond_7

    .line 131
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/FollowList;->adapter:Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;

    invoke-virtual {v5, v0}, Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;->getItem(I)Lcn/sharesdk/onekeyshare/FollowList$Following;

    move-result-object v5

    iget-boolean v5, v5, Lcn/sharesdk/onekeyshare/FollowList$Following;->checked:Z

    if-eqz v5, :cond_4

    .line 132
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcn/sharesdk/onekeyshare/FollowList;->adapter:Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;

    invoke-virtual {v6, v0}, Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;->getItem(I)Lcn/sharesdk/onekeyshare/FollowList$Following;

    move-result-object v6

    iget-object v6, v6, Lcn/sharesdk/onekeyshare/FollowList$Following;->uid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 135
    .end local v0           #i:I
    .end local v4           #size:I
    :cond_5
    const-string v5, "Twitter"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 136
    const/4 v0, 0x0

    .restart local v0       #i:I
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/FollowList;->adapter:Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;

    invoke-virtual {v5}, Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;->getCount()I

    move-result v4

    .restart local v4       #size:I
    :goto_3
    if-ge v0, v4, :cond_7

    .line 137
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/FollowList;->adapter:Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;

    invoke-virtual {v5, v0}, Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;->getItem(I)Lcn/sharesdk/onekeyshare/FollowList$Following;

    move-result-object v5

    iget-boolean v5, v5, Lcn/sharesdk/onekeyshare/FollowList$Following;->checked:Z

    if-eqz v5, :cond_6

    .line 138
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/FollowList;->adapter:Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;

    invoke-virtual {v5, v0}, Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;->getItem(I)Lcn/sharesdk/onekeyshare/FollowList$Following;

    move-result-object v5

    iget-object v5, v5, Lcn/sharesdk/onekeyshare/FollowList$Following;->uid:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 143
    .end local v0           #i:I
    .end local v4           #size:I
    :cond_7
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 144
    .local v2, res:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "selected"

    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    invoke-virtual {p0, v2}, Lcn/sharesdk/onekeyshare/FollowList;->setResult(Ljava/util/HashMap;)V

    .line 148
    .end local v2           #res:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3           #selected:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_8
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/FollowList;->finish()V

    .line 149
    return-void
.end method

.method public onCreate()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, -0x2

    const/4 v10, -0x1

    .line 55
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/FollowList;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v3, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 56
    .local v3, llPage:Landroid/widget/LinearLayout;
    const v8, -0xa0a0b

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 57
    invoke-virtual {v3, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 58
    iget-object v8, p0, Lcn/sharesdk/onekeyshare/FollowList;->activity:Landroid/app/Activity;

    invoke-virtual {v8, v3}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 61
    new-instance v8, Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/FollowList;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Lcn/sharesdk/framework/TitleLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcn/sharesdk/onekeyshare/FollowList;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    .line 62
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/FollowList;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "title_back"

    invoke-static {v8, v9}, Lcn/sharesdk/framework/utils/R;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    .line 63
    .local v7, resId:I
    if-lez v7, :cond_0

    .line 64
    iget-object v8, p0, Lcn/sharesdk/onekeyshare/FollowList;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {v8, v7}, Lcn/sharesdk/framework/TitleLayout;->setBackgroundResource(I)V

    .line 66
    :cond_0
    iget-object v8, p0, Lcn/sharesdk/onekeyshare/FollowList;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {v8}, Lcn/sharesdk/framework/TitleLayout;->getBtnBack()Landroid/widget/ImageView;

    move-result-object v8

    invoke-virtual {v8, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/FollowList;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "multi_share"

    invoke-static {v8, v9}, Lcn/sharesdk/framework/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    .line 68
    if-lez v7, :cond_1

    .line 69
    iget-object v8, p0, Lcn/sharesdk/onekeyshare/FollowList;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {v8}, Lcn/sharesdk/framework/TitleLayout;->getTvTitle()Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(I)V

    .line 71
    :cond_1
    iget-object v8, p0, Lcn/sharesdk/onekeyshare/FollowList;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {v8}, Lcn/sharesdk/framework/TitleLayout;->getBtnRight()Landroid/widget/TextView;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 72
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/FollowList;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "finish"

    invoke-static {v8, v9}, Lcn/sharesdk/framework/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    .line 73
    if-lez v7, :cond_2

    .line 74
    iget-object v8, p0, Lcn/sharesdk/onekeyshare/FollowList;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {v8}, Lcn/sharesdk/framework/TitleLayout;->getBtnRight()Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(I)V

    .line 76
    :cond_2
    iget-object v8, p0, Lcn/sharesdk/onekeyshare/FollowList;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {v8}, Lcn/sharesdk/framework/TitleLayout;->getBtnRight()Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v8, p0, Lcn/sharesdk/onekeyshare/FollowList;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9}, Lcn/sharesdk/framework/TitleLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    iget-object v8, p0, Lcn/sharesdk/onekeyshare/FollowList;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 81
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/FollowList;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v0, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 82
    .local v0, flPage:Landroid/widget/FrameLayout;
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 84
    .local v4, lpFl:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v8, 0x3f80

    iput v8, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 85
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 89
    new-instance v1, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/FollowList;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v1, v8}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;-><init>(Landroid/content/Context;)V

    .line 90
    .local v1, followList:Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 92
    .local v5, lpLv:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v1, v5}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 94
    new-instance v8, Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;

    invoke-direct {v8, v1}, Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;-><init>(Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;)V

    iput-object v8, p0, Lcn/sharesdk/onekeyshare/FollowList;->adapter:Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;

    .line 95
    iget-object v8, p0, Lcn/sharesdk/onekeyshare/FollowList;->adapter:Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;

    iget-object v9, p0, Lcn/sharesdk/onekeyshare/FollowList;->platform:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v8, v9}, Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;->setPlatform(Lcn/sharesdk/framework/Platform;)V

    .line 96
    iget-object v8, p0, Lcn/sharesdk/onekeyshare/FollowList;->adapter:Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;

    invoke-virtual {v1, v8}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->setAdapter(Lm/framework/ui/widget/pulltorefresh/PullToRefreshAdatper;)V

    .line 97
    iget-object v8, p0, Lcn/sharesdk/onekeyshare/FollowList;->adapter:Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;

    invoke-virtual {v8}, Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;->getListView()Landroid/widget/ListView;

    move-result-object v8

    invoke-virtual {v8, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 99
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/FollowList;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v2, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 100
    .local v2, ivShadow:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/FollowList;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "title_shadow"

    invoke-static {v8, v9}, Lcn/sharesdk/framework/utils/R;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    .line 101
    if-lez v7, :cond_3

    .line 102
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 104
    :cond_3
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 106
    .local v6, lpSd:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 110
    invoke-virtual {v1, v12}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->performPulling(Z)V

    .line 111
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/FollowList;->adapter:Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;

    invoke-virtual {v1, p3}, Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;->getItem(I)Lcn/sharesdk/onekeyshare/FollowList$Following;

    move-result-object v0

    .line 153
    .local v0, following:Lcn/sharesdk/onekeyshare/FollowList$Following;
    iget-boolean v1, v0, Lcn/sharesdk/onekeyshare/FollowList$Following;->checked:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v0, Lcn/sharesdk/onekeyshare/FollowList$Following;->checked:Z

    .line 154
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/FollowList;->adapter:Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;

    invoke-virtual {v1}, Lcn/sharesdk/onekeyshare/FollowList$FollowAdapter;->notifyDataSetChanged()V

    .line 155
    return-void

    .line 153
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setPlatform(Lcn/sharesdk/framework/Platform;)V
    .locals 0
    .parameter "platform"

    .prologue
    .line 51
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/FollowList;->platform:Lcn/sharesdk/framework/Platform;

    .line 52
    return-void
.end method
