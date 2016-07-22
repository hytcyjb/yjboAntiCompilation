.class public Lcom/didi/beatles/map/BtsMapUserMarkerAdapter;
.super Lcom/didi/beatles/map/BtsBaseInfoAdapter;
.source "BtsMapUserMarkerAdapter.java"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private isShowOp:Z

.field private photo:Lcom/didi/frame/driverinfo/DriverCirclePhoto;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/didi/beatles/map/BtsBaseInfoAdapter;-><init>()V

    .line 26
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->getAppContext()Lcom/didi/common/base/BaseApplication;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030027

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/beatles/map/BtsMapUserMarkerAdapter;->mWindow:Landroid/view/View;

    .line 27
    return-void
.end method

.method private setDriverUi(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 6
    .parameter "uicon"
    .parameter "content"
    .parameter "switchTxt"

    .prologue
    .line 93
    const v5, 0x7f02008b

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 94
    invoke-static {}, Lcom/didi/beatles/model/role/BtsRoleInfo;->getInstance()Lcom/didi/beatles/model/role/BtsRoleInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/beatles/model/role/BtsRoleInfo;->getDriverInfo()Lcom/didi/beatles/model/role/BtsRoleInfoDriver;

    move-result-object v5

    iget-object v4, v5, Lcom/didi/beatles/model/role/BtsRoleInfoDriver;->opversion:Ljava/lang/String;

    .line 95
    .local v4, version:Ljava/lang/String;
    invoke-static {}, Lcom/didi/beatles/model/role/BtsRoleInfo;->getInstance()Lcom/didi/beatles/model/role/BtsRoleInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/beatles/model/role/BtsRoleInfo;->getDriverInfo()Lcom/didi/beatles/model/role/BtsRoleInfoDriver;

    move-result-object v5

    iget-object v3, v5, Lcom/didi/beatles/model/role/BtsRoleInfoDriver;->op_content:Ljava/lang/String;

    .line 96
    .local v3, opc:Ljava/lang/String;
    invoke-static {}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->getInstance()Lcom/didi/beatles/helper/BtsSharedPrefsMgr;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->getDriverOpVersion()Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, curversion:Ljava/lang/String;
    const-string v5, "\u5207\u6362\u4e3a\u4e58\u5ba2"

    invoke-virtual {p3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 99
    :cond_0
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/didi/beatles/map/BtsMapUserMarkerAdapter;->isShowOp:Z

    .line 100
    invoke-static {}, Lcom/didi/beatles/model/role/BtsRoleInfo;->getInstance()Lcom/didi/beatles/model/role/BtsRoleInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/beatles/model/role/BtsRoleInfo;->getDriverInfo()Lcom/didi/beatles/model/role/BtsRoleInfoDriver;

    move-result-object v5

    iget-object v2, v5, Lcom/didi/beatles/model/role/BtsRoleInfoDriver;->order_num:Ljava/lang/String;

    .line 101
    .local v2, num:Ljava/lang/String;
    invoke-static {}, Lcom/didi/beatles/model/role/BtsRoleInfo;->getInstance()Lcom/didi/beatles/model/role/BtsRoleInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/beatles/model/role/BtsRoleInfo;->getDriverInfo()Lcom/didi/beatles/model/role/BtsRoleInfoDriver;

    move-result-object v5

    iget-object v0, v5, Lcom/didi/beatles/model/role/BtsRoleInfoDriver;->order_content:Ljava/lang/String;

    .line 102
    .local v0, con:Ljava/lang/String;
    const-string v5, "0"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 103
    :cond_1
    const v5, 0x7f0b0074

    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 111
    .end local v0           #con:Ljava/lang/String;
    .end local v2           #num:Ljava/lang/String;
    :goto_0
    return-void

    .line 105
    .restart local v0       #con:Ljava/lang/String;
    .restart local v2       #num:Ljava/lang/String;
    :cond_2
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 108
    .end local v0           #con:Ljava/lang/String;
    .end local v2           #num:Ljava/lang/String;
    :cond_3
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/didi/beatles/map/BtsMapUserMarkerAdapter;->isShowOp:Z

    .line 109
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setPasngerUi(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 7
    .parameter "uicon"
    .parameter "content"
    .parameter "switchTxt"

    .prologue
    .line 67
    const-string v5, "\u5207\u6362\u4e3a\u8f66\u4e3b"

    invoke-virtual {p3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    const v5, 0x7f02008c

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 69
    invoke-static {}, Lcom/didi/beatles/model/role/BtsRoleInfo;->getInstance()Lcom/didi/beatles/model/role/BtsRoleInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/beatles/model/role/BtsRoleInfo;->getPassangerInfo()Lcom/didi/beatles/model/role/BtsRoleInfoPassanger;

    move-result-object v5

    iget-object v4, v5, Lcom/didi/beatles/model/role/BtsRoleInfoPassanger;->opversion:Ljava/lang/String;

    .line 70
    .local v4, version:Ljava/lang/String;
    invoke-static {}, Lcom/didi/beatles/model/role/BtsRoleInfo;->getInstance()Lcom/didi/beatles/model/role/BtsRoleInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/beatles/model/role/BtsRoleInfo;->getPassangerInfo()Lcom/didi/beatles/model/role/BtsRoleInfoPassanger;

    move-result-object v5

    iget-object v3, v5, Lcom/didi/beatles/model/role/BtsRoleInfoPassanger;->op_content:Ljava/lang/String;

    .line 71
    .local v3, opc:Ljava/lang/String;
    invoke-static {}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->getInstance()Lcom/didi/beatles/helper/BtsSharedPrefsMgr;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->getPassengerOpVersion()Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, curversion:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "orderContent="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 74
    :cond_0
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/didi/beatles/map/BtsMapUserMarkerAdapter;->isShowOp:Z

    .line 75
    invoke-static {}, Lcom/didi/beatles/model/role/BtsRoleInfo;->getInstance()Lcom/didi/beatles/model/role/BtsRoleInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/beatles/model/role/BtsRoleInfo;->getPassangerInfo()Lcom/didi/beatles/model/role/BtsRoleInfoPassanger;

    move-result-object v5

    iget-object v2, v5, Lcom/didi/beatles/model/role/BtsRoleInfoPassanger;->order_num:Ljava/lang/String;

    .line 76
    .local v2, num:Ljava/lang/String;
    invoke-static {}, Lcom/didi/beatles/model/role/BtsRoleInfo;->getInstance()Lcom/didi/beatles/model/role/BtsRoleInfo;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/beatles/model/role/BtsRoleInfo;->getPassangerInfo()Lcom/didi/beatles/model/role/BtsRoleInfoPassanger;

    move-result-object v5

    iget-object v0, v5, Lcom/didi/beatles/model/role/BtsRoleInfoPassanger;->order_content:Ljava/lang/String;

    .line 77
    .local v0, con:Ljava/lang/String;
    const-string v5, "0"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 78
    :cond_1
    const v5, 0x7f0b0074

    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 82
    :goto_0
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v5

    invoke-virtual {v5}, Lcom/didi/common/config/Preferences;->getToken()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 83
    const v5, 0x7f0b0073

    invoke-virtual {p2, v5}, Landroid/widget/TextView;->setText(I)V

    .line 90
    .end local v0           #con:Ljava/lang/String;
    .end local v2           #num:Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 80
    .restart local v0       #con:Ljava/lang/String;
    .restart local v2       #num:Ljava/lang/String;
    :cond_3
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 87
    .end local v0           #con:Ljava/lang/String;
    .end local v2           #num:Ljava/lang/String;
    :cond_4
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/didi/beatles/map/BtsMapUserMarkerAdapter;->isShowOp:Z

    .line 88
    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method public isShowOp()Z
    .locals 1

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/didi/beatles/map/BtsMapUserMarkerAdapter;->isShowOp:Z

    return v0
.end method

.method protected setInfo(Landroid/view/View;)V
    .locals 9
    .parameter "view"

    .prologue
    .line 31
    iget-object v7, p0, Lcom/didi/beatles/map/BtsMapUserMarkerAdapter;->photo:Lcom/didi/frame/driverinfo/DriverCirclePhoto;

    if-nez v7, :cond_0

    .line 32
    const v7, 0x7f08012d

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/didi/frame/driverinfo/DriverCirclePhoto;

    iput-object v7, p0, Lcom/didi/beatles/map/BtsMapUserMarkerAdapter;->photo:Lcom/didi/frame/driverinfo/DriverCirclePhoto;

    .line 33
    :cond_0
    iget-object v7, p0, Lcom/didi/beatles/map/BtsMapUserMarkerAdapter;->bitmap:Landroid/graphics/Bitmap;

    if-nez v7, :cond_3

    .line 34
    iget-object v7, p0, Lcom/didi/beatles/map/BtsMapUserMarkerAdapter;->photo:Lcom/didi/frame/driverinfo/DriverCirclePhoto;

    const v8, 0x7f020071

    invoke-static {v8}, Lcom/didi/common/helper/ResourcesHelper;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/didi/frame/driverinfo/DriverCirclePhoto;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 38
    :goto_0
    const v7, 0x7f080133

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 39
    .local v4, switchName:Landroid/widget/TextView;
    const v7, 0x7f08012e

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 40
    .local v1, name:Landroid/widget/TextView;
    invoke-static {}, Lcom/didi/beatles/model/role/BtsRoleInfo;->getInstance()Lcom/didi/beatles/model/role/BtsRoleInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/didi/beatles/model/role/BtsRoleInfo;->getCommonInfo()Lcom/didi/beatles/model/role/BtsRoleInfoCommon;

    move-result-object v7

    iget-object v2, v7, Lcom/didi/beatles/model/role/BtsRoleInfoCommon;->nick_name:Ljava/lang/String;

    .line 41
    .local v2, nick:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 42
    const v7, 0x7f0b011b

    invoke-static {v7}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 43
    :cond_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    const v7, 0x7f08012f

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 45
    .local v5, uicon:Landroid/widget/ImageView;
    const v7, 0x7f080136

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 46
    .local v0, content:Landroid/widget/TextView;
    invoke-static {}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->getInstance()Lcom/didi/beatles/helper/BtsSharedPrefsMgr;

    move-result-object v7

    invoke-virtual {v7}, Lcom/didi/beatles/helper/BtsSharedPrefsMgr;->getUserRoleType()I

    move-result v3

    .line 47
    .local v3, role:I
    if-nez v3, :cond_4

    .line 48
    invoke-direct {p0, v5, v0, v4}, Lcom/didi/beatles/map/BtsMapUserMarkerAdapter;->setPasngerUi(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 52
    :goto_1
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v7

    invoke-virtual {v7}, Lcom/didi/common/config/Preferences;->getToken()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 53
    const v7, 0x7f0b0073

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(I)V

    .line 56
    :cond_2
    invoke-static {}, Lcom/didi/beatles/model/role/BtsRoleInfo;->getInstance()Lcom/didi/beatles/model/role/BtsRoleInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/didi/beatles/model/role/BtsRoleInfo;->getCommonInfo()Lcom/didi/beatles/model/role/BtsRoleInfoCommon;

    move-result-object v7

    iget-object v6, v7, Lcom/didi/beatles/model/role/BtsRoleInfoCommon;->head_img_url:Ljava/lang/String;

    .line 57
    .local v6, url:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "UserUrl="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 59
    invoke-super {p0, p1}, Lcom/didi/beatles/map/BtsBaseInfoAdapter;->setInfo(Landroid/view/View;)V

    .line 60
    return-void

    .line 36
    .end local v0           #content:Landroid/widget/TextView;
    .end local v1           #name:Landroid/widget/TextView;
    .end local v2           #nick:Ljava/lang/String;
    .end local v3           #role:I
    .end local v4           #switchName:Landroid/widget/TextView;
    .end local v5           #uicon:Landroid/widget/ImageView;
    .end local v6           #url:Ljava/lang/String;
    :cond_3
    iget-object v7, p0, Lcom/didi/beatles/map/BtsMapUserMarkerAdapter;->photo:Lcom/didi/frame/driverinfo/DriverCirclePhoto;

    iget-object v8, p0, Lcom/didi/beatles/map/BtsMapUserMarkerAdapter;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v8}, Lcom/didi/frame/driverinfo/DriverCirclePhoto;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 50
    .restart local v0       #content:Landroid/widget/TextView;
    .restart local v1       #name:Landroid/widget/TextView;
    .restart local v2       #nick:Ljava/lang/String;
    .restart local v3       #role:I
    .restart local v4       #switchName:Landroid/widget/TextView;
    .restart local v5       #uicon:Landroid/widget/ImageView;
    :cond_4
    invoke-direct {p0, v5, v0, v4}, Lcom/didi/beatles/map/BtsMapUserMarkerAdapter;->setDriverUi(Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    goto :goto_1
.end method

.method public setPhoto(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "bit"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/didi/beatles/map/BtsMapUserMarkerAdapter;->bitmap:Landroid/graphics/Bitmap;

    .line 64
    return-void
.end method
