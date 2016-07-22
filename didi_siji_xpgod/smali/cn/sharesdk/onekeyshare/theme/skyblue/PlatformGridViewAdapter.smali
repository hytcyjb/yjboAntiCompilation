.class public Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "PlatformGridViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private checkedPositionList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private directOnlyPosition:I

.field private logos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->logos:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->checkedPositionList:Ljava/util/List;

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->directOnlyPosition:I

    .line 49
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->context:Landroid/content/Context;

    .line 50
    return-void
.end method

.method private getIcon(Lcn/sharesdk/framework/Platform;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "plat"
    .parameter "subfix"

    .prologue
    .line 191
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "skyblue_logo_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 192
    .local v1, resName:Ljava/lang/String;
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->context:Landroid/content/Context;

    invoke-static {v2, v1}, Lcn/sharesdk/framework/utils/R;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 193
    .local v0, resId:I
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method private getName(Lcn/sharesdk/framework/Platform;)Ljava/lang/String;
    .locals 4
    .parameter "plat"

    .prologue
    .line 197
    if-nez p1, :cond_0

    .line 198
    const-string v2, ""

    .line 210
    :goto_0
    return-object v2

    .line 201
    :cond_0
    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, name:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 203
    const-string v2, ""

    goto :goto_0

    .line 206
    :cond_1
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/sharesdk/framework/utils/R;->getStringRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 207
    .local v1, resId:I
    if-lez v1, :cond_2

    .line 208
    iget-object v2, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 210
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getCheckedItems()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .local v2, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget v4, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->directOnlyPosition:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 178
    iget v4, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->directOnlyPosition:I

    invoke-virtual {p0, v4}, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_0
    return-object v2

    .line 183
    :cond_1
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->checkedPositionList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 184
    .local v3, position:Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 185
    .local v1, item:Ljava/lang/Object;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->logos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "i"

    .prologue
    .line 59
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->logos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "i"

    .prologue
    .line 64
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11
    .parameter "position"
    .parameter "view"
    .parameter "viewGroup"

    .prologue
    .line 70
    if-nez p2, :cond_0

    .line 71
    iget-object v8, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->context:Landroid/content/Context;

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    iget-object v9, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->context:Landroid/content/Context;

    const-string v10, "skyblue_share_platform_list_item"

    invoke-static {v9, v10}, Lcn/sharesdk/framework/utils/R;->getLayoutRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 72
    new-instance v7, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter$ViewHolder;

    invoke-direct {v7}, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter$ViewHolder;-><init>()V

    .line 73
    .local v7, viewHolder:Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter$ViewHolder;
    iget-object v8, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->context:Landroid/content/Context;

    const-string v9, "checkedImageView"

    invoke-static {v8, v9}, Lcn/sharesdk/framework/utils/R;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, v7, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter$ViewHolder;->checkedImageView:Landroid/widget/ImageView;

    .line 74
    iget-object v8, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->context:Landroid/content/Context;

    const-string v9, "logoImageView"

    invoke-static {v8, v9}, Lcn/sharesdk/framework/utils/R;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, v7, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter$ViewHolder;->logoImageView:Landroid/widget/ImageView;

    .line 75
    iget-object v8, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->context:Landroid/content/Context;

    const-string v9, "nameTextView"

    invoke-static {v8, v9}, Lcn/sharesdk/framework/utils/R;->getIdRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v8

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, v7, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter$ViewHolder;->nameTextView:Landroid/widget/TextView;

    .line 76
    invoke-virtual {p2, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 83
    :goto_0
    invoke-virtual {p0, p1}, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    .line 85
    .local v4, item:Ljava/lang/Object;
    instance-of v8, v4, Lcn/sharesdk/framework/Platform;

    if-eqz v8, :cond_1

    move-object v8, v4

    check-cast v8, Lcn/sharesdk/framework/Platform;

    invoke-static {v8}, Lcn/sharesdk/onekeyshare/ShareCore;->isDirectShare(Lcn/sharesdk/framework/Platform;)Z

    move-result v3

    .line 86
    .local v3, isDirectShare:Z
    :goto_1
    iget v8, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->directOnlyPosition:I

    const/4 v9, -0x1

    if-ne v8, v9, :cond_3

    .line 87
    iget-object v8, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->checkedPositionList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_2

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    .line 92
    .local v2, disabled:Z
    :goto_2
    instance-of v8, v4, Lcn/sharesdk/framework/Platform;

    if-eqz v8, :cond_6

    move-object v8, v4

    .line 93
    check-cast v8, Lcn/sharesdk/framework/Platform;

    if-eqz v2, :cond_5

    const-string v9, ""

    :goto_3
    invoke-direct {p0, v8, v9}, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->getIcon(Lcn/sharesdk/framework/Platform;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 94
    .local v6, logo:Landroid/graphics/Bitmap;
    check-cast v4, Lcn/sharesdk/framework/Platform;

    .end local v4           #item:Ljava/lang/Object;
    invoke-direct {p0, v4}, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->getName(Lcn/sharesdk/framework/Platform;)Ljava/lang/String;

    move-result-object v5

    .line 95
    .local v5, label:Ljava/lang/String;
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    :goto_4
    iget v8, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->directOnlyPosition:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_8

    iget v8, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->directOnlyPosition:I

    if-eq v8, p1, :cond_8

    const-string v0, "skyblue_platform_checked_disabled"

    .line 105
    .local v0, checkedResName:Ljava/lang/String;
    :goto_5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iput-object v8, v7, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter$ViewHolder;->position:Ljava/lang/Integer;

    .line 106
    iget-object v8, v7, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter$ViewHolder;->checkedImageView:Landroid/widget/ImageView;

    iget-object v9, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget-object v10, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->context:Landroid/content/Context;

    invoke-static {v10, v0}, Lcn/sharesdk/framework/utils/R;->getBitmapRes(Landroid/content/Context;Ljava/lang/String;)I

    move-result v10

    invoke-static {v9, v10}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 107
    iget-object v9, v7, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter$ViewHolder;->checkedImageView:Landroid/widget/ImageView;

    iget-object v8, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->checkedPositionList:Ljava/util/List;

    iget-object v10, v7, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter$ViewHolder;->position:Ljava/lang/Integer;

    invoke-interface {v8, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    const/4 v8, 0x0

    :goto_6
    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 108
    iget-object v8, v7, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter$ViewHolder;->nameTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v8, v7, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter$ViewHolder;->logoImageView:Landroid/widget/ImageView;

    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 111
    return-object p2

    .line 78
    .end local v0           #checkedResName:Ljava/lang/String;
    .end local v2           #disabled:Z
    .end local v3           #isDirectShare:Z
    .end local v5           #label:Ljava/lang/String;
    .end local v6           #logo:Landroid/graphics/Bitmap;
    .end local v7           #viewHolder:Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter$ViewHolder;

    .restart local v7       #viewHolder:Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter$ViewHolder;
    goto :goto_0

    .line 85
    .restart local v4       #item:Ljava/lang/Object;
    :cond_1
    const/4 v3, 0x1

    goto :goto_1

    .line 87
    .restart local v3       #isDirectShare:Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 89
    :cond_3
    iget v8, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->directOnlyPosition:I

    if-eq p1, v8, :cond_4

    const/4 v2, 0x1

    .restart local v2       #disabled:Z
    :goto_7
    goto :goto_2

    .end local v2           #disabled:Z
    :cond_4
    const/4 v2, 0x0

    goto :goto_7

    .line 93
    .restart local v2       #disabled:Z
    :cond_5
    const-string v9, "_checked"

    goto :goto_3

    :cond_6
    move-object v1, v4

    .line 97
    check-cast v1, Lcn/sharesdk/onekeyshare/CustomerLogo;

    .line 98
    .local v1, customerLogo:Lcn/sharesdk/onekeyshare/CustomerLogo;
    if-eqz v2, :cond_7

    iget-object v6, v1, Lcn/sharesdk/onekeyshare/CustomerLogo;->disableLogo:Landroid/graphics/Bitmap;

    .line 99
    .restart local v6       #logo:Landroid/graphics/Bitmap;
    :goto_8
    iget-object v5, v1, Lcn/sharesdk/onekeyshare/CustomerLogo;->label:Ljava/lang/String;

    .line 100
    .restart local v5       #label:Ljava/lang/String;
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    .line 98
    .end local v5           #label:Ljava/lang/String;
    .end local v6           #logo:Landroid/graphics/Bitmap;
    :cond_7
    iget-object v6, v1, Lcn/sharesdk/onekeyshare/CustomerLogo;->enableLogo:Landroid/graphics/Bitmap;

    goto :goto_8

    .line 104
    .end local v1           #customerLogo:Lcn/sharesdk/onekeyshare/CustomerLogo;
    .end local v4           #item:Ljava/lang/Object;
    .restart local v5       #label:Ljava/lang/String;
    .restart local v6       #logo:Landroid/graphics/Bitmap;
    :cond_8
    const-string v0, "skyblue_platform_checked"

    goto :goto_5

    .line 107
    .restart local v0       #checkedResName:Ljava/lang/String;
    :cond_9
    const/16 v8, 0x8

    goto :goto_6
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    const/4 v6, -0x1

    .line 116
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter$ViewHolder;

    .line 117
    .local v3, viewHolder:Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter$ViewHolder;
    iget-object v2, v3, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter$ViewHolder;->position:Ljava/lang/Integer;

    .line 119
    .local v2, position:Ljava/lang/Integer;
    iget v4, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->directOnlyPosition:I

    if-eq v4, v6, :cond_1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget v5, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->directOnlyPosition:I

    if-eq v4, v5, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {p0, v4}, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    .line 123
    .local v1, item:Ljava/lang/Object;
    const/4 v0, 0x0

    .line 125
    .local v0, direct:Z
    instance-of v4, v1, Lcn/sharesdk/framework/Platform;

    if-eqz v4, :cond_4

    .line 126
    check-cast v1, Lcn/sharesdk/framework/Platform;

    .end local v1           #item:Ljava/lang/Object;
    invoke-static {v1}, Lcn/sharesdk/onekeyshare/ShareCore;->isDirectShare(Lcn/sharesdk/framework/Platform;)Z

    move-result v0

    .line 132
    :goto_1
    if-eqz v0, :cond_2

    iget v4, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->directOnlyPosition:I

    if-ne v4, v6, :cond_2

    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->checkedPositionList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 135
    :cond_2
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->checkedPositionList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 136
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->checkedPositionList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 137
    if-eqz v0, :cond_3

    .line 138
    iput v6, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->directOnlyPosition:I

    .line 145
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 129
    .restart local v1       #item:Ljava/lang/Object;
    :cond_4
    const/4 v0, 0x1

    goto :goto_1

    .line 140
    .end local v1           #item:Ljava/lang/Object;
    :cond_5
    iget-object v4, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->checkedPositionList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    if-eqz v0, :cond_3

    .line 142
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->directOnlyPosition:I

    goto :goto_2
.end method

.method public setCustomerLogos(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/sharesdk/onekeyshare/CustomerLogo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 169
    .local p1, customers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcn/sharesdk/onekeyshare/CustomerLogo;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 171
    :cond_1
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->logos:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public setData([Lcn/sharesdk/framework/Platform;Ljava/util/HashMap;)V
    .locals 7
    .parameter "platforms"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcn/sharesdk/framework/Platform;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 149
    .local p2, hiddenPlatforms:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 166
    :goto_0
    return-void

    .line 151
    :cond_0
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 152
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .local v4, ps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcn/sharesdk/framework/Platform;>;"
    move-object v0, p1

    .local v0, arr$:[Lcn/sharesdk/framework/Platform;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 154
    .local v3, p:Lcn/sharesdk/framework/Platform;
    invoke-virtual {v3}, Lcn/sharesdk/framework/Platform;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 153
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 157
    :cond_1
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 160
    .end local v3           #p:Lcn/sharesdk/framework/Platform;
    :cond_2
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->logos:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 164
    .end local v0           #arr$:[Lcn/sharesdk/framework/Platform;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v4           #ps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcn/sharesdk/framework/Platform;>;"
    :goto_3
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->checkedPositionList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 165
    invoke-virtual {p0}, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 162
    :cond_3
    iget-object v5, p0, Lcn/sharesdk/onekeyshare/theme/skyblue/PlatformGridViewAdapter;->logos:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_3
.end method
