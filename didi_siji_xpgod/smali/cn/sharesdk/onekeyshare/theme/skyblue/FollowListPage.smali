.class public Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;
.super Lcn/sharesdk/onekeyshare/FollowerListFakeActivity;
.source "FollowListPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$1;,
        Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$RotateImageView;,
        Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$PRTHeader;,
        Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowListItem;,
        Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;
    }
.end annotation


# instance fields
.field private adapter:Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;

.field private lastPosition:I

.field private llTitle:Lcn/sharesdk/framework/TitleLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity;-><init>()V

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->lastPosition:I

    .line 439
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 115
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {v3}, Lcn/sharesdk/framework/TitleLayout;->getBtnRight()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 116
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .local v1, selected:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->adapter:Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;

    invoke-virtual {v3}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;->getCount()I

    move-result v2

    .local v2, size:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 118
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->adapter:Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;

    invoke-virtual {v3, v0}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;->getItem(I)Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;

    move-result-object v3

    iget-boolean v3, v3, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;->checked:Z

    if-eqz v3, :cond_0

    .line 119
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->adapter:Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;

    invoke-virtual {v3, v0}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;->getItem(I)Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;

    move-result-object v3

    iget-object v3, v3, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;->atName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    :cond_1
    invoke-virtual {p0, v1}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->setResultForChecked(Ljava/util/ArrayList;)V

    .line 126
    .end local v0           #i:I
    .end local v1           #selected:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #size:I
    :cond_2
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->finish()V

    .line 127
    return-void
.end method

.method public onCreate()V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, -0x2

    const/4 v10, -0x1

    .line 56
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v3, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 57
    .local v3, llPage:Landroid/widget/LinearLayout;
    const v8, -0xa0a0b

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 58
    invoke-virtual {v3, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 59
    iget-object v8, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->activity:Landroid/app/Activity;

    invoke-virtual {v8, v3}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 62
    new-instance v8, Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Lcn/sharesdk/framework/TitleLayout;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    .line 63
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "title_back"

    invoke-static {v8, v9}, Lcn/sharesdk/framework/utils/R;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    .line 64
    .local v7, resId:I
    if-lez v7, :cond_0

    .line 65
    iget-object v8, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {v8, v7}, Lcn/sharesdk/framework/TitleLayout;->setBackgroundResource(I)V

    .line 67
    :cond_0
    iget-object v8, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {v8}, Lcn/sharesdk/framework/TitleLayout;->getBtnBack()Landroid/widget/ImageView;

    move-result-object v8

    invoke-virtual {v8, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "multi_share"

    invoke-static {v8, v9}, Lcn/sharesdk/framework/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    .line 69
    if-lez v7, :cond_1

    .line 70
    iget-object v8, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {v8}, Lcn/sharesdk/framework/TitleLayout;->getTvTitle()Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(I)V

    .line 72
    :cond_1
    iget-object v8, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {v8}, Lcn/sharesdk/framework/TitleLayout;->getBtnRight()Landroid/widget/TextView;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 73
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "finish"

    invoke-static {v8, v9}, Lcn/sharesdk/framework/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    .line 74
    if-lez v7, :cond_2

    .line 75
    iget-object v8, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {v8}, Lcn/sharesdk/framework/TitleLayout;->getBtnRight()Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(I)V

    .line 77
    :cond_2
    iget-object v8, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {v8}, Lcn/sharesdk/framework/TitleLayout;->getBtnRight()Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v8, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v8, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v9}, Lcn/sharesdk/framework/TitleLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    iget-object v8, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->llTitle:Lcn/sharesdk/framework/TitleLayout;

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 82
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v0, v8}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 83
    .local v0, flPage:Landroid/widget/FrameLayout;
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 85
    .local v4, lpFl:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v8, 0x3f80

    iput v8, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 86
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 90
    new-instance v1, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v1, v8}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;-><init>(Landroid/content/Context;)V

    .line 91
    .local v1, followList:Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 93
    .local v5, lpLv:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v1, v5}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 95
    new-instance v8, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;

    invoke-direct {v8, v1}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;-><init>(Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;)V

    iput-object v8, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->adapter:Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;

    .line 96
    iget-object v8, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->adapter:Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;

    iget-object v9, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->platform:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v8, v9}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;->setPlatform(Lcn/sharesdk/framework/Platform;)V

    .line 97
    iget-object v8, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->adapter:Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;

    invoke-virtual {v1, v8}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->setAdapter(Lm/framework/ui/widget/pulltorefresh/PullToRefreshAdatper;)V

    .line 98
    iget-object v8, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->adapter:Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;

    invoke-virtual {v8}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;->getListView()Landroid/widget/ListView;

    move-result-object v8

    invoke-virtual {v8, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 100
    new-instance v2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v2, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 101
    .local v2, ivShadow:Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "title_shadow"

    invoke-static {v8, v9}, Lcn/sharesdk/framework/utils/R;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v7

    .line 102
    if-lez v7, :cond_3

    .line 103
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 105
    :cond_3
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v10, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 107
    .local v6, lpSd:Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 111
    invoke-virtual {v1, v12}, Lm/framework/ui/widget/pulltorefresh/PullToRefreshView;->performPulling(Z)V

    .line 112
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x0

    .line 130
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->platform:Lcn/sharesdk/framework/Platform;

    invoke-virtual {v4}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, name:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->isRadioMode(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 132
    iget v4, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->lastPosition:I

    if-ltz v4, :cond_0

    .line 133
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->adapter:Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;

    iget v5, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->lastPosition:I

    invoke-virtual {v4, v5}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;->getItem(I)Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;

    move-result-object v1

    .line 134
    .local v1, lastFollwing:Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;
    iput-boolean v3, v1, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;->checked:Z

    .line 136
    .end local v1           #lastFollwing:Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;
    :cond_0
    iput p3, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->lastPosition:I

    .line 138
    :cond_1
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->adapter:Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;

    invoke-virtual {v4, p3}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;->getItem(I)Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;

    move-result-object v0

    .line 139
    .local v0, following:Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;
    iget-boolean v4, v0, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;->checked:Z

    if-nez v4, :cond_2

    const/4 v3, 0x1

    :cond_2
    iput-boolean v3, v0, Lcn/sharesdk/onekeyshare/FollowerListFakeActivity$Following;->checked:Z

    .line 140
    iget-object v3, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage;->adapter:Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;

    invoke-virtual {v3}, Lcn/sharesdk/onekeyshare/theme/skyblue/FollowListPage$FollowAdapter;->notifyDataSetChanged()V

    .line 141
    return-void
.end method
