.class public Lcom/didi/common/ui/fragment/CommonAddrFragment;
.super Lcom/didi/common/ui/fragment/SlideFragment;
.source "CommonAddrFragment.java"


# instance fields
.field private addr_home_full:Landroid/widget/TextView;

.field private addr_home_part:Landroid/widget/TextView;

.field private address_company_full:Landroid/widget/TextView;

.field private address_company_part:Landroid/widget/TextView;

.field private mBackListener:Landroid/view/View$OnClickListener;

.field private mBtnCompany:Landroid/view/View;

.field private mBtnHome:Landroid/view/View;

.field private mCompany:Lcom/didi/common/model/Address;

.field private mCompanyAddr:Landroid/view/View;

.field private mCompanyTips:Landroid/view/View;

.field private mFrom:I

.field private mHome:Lcom/didi/common/model/Address;

.field private mHomeAddr:Landroid/view/View;

.field private mHomeCompanyClickListener:Landroid/view/View$OnClickListener;

.field private mHomeTips:Landroid/view/View;

.field private mIcCompany:Lx/ImageView;

.field private mIcHome:Lx/ImageView;

.field private mItem:I

.field private mSetHome:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/SlideFragment;-><init>()V

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/common/ui/fragment/CommonAddrFragment;->mSetHome:Z

    .line 80
    const/4 v0, -0x1

    iput v0, p0, Lcom/didi/common/ui/fragment/CommonAddrFragment;->mFrom:I

    .line 262
    new-instance v0, Lcom/didi/common/ui/fragment/CommonAddrFragment$3;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/fragment/CommonAddrFragment$3;-><init>(Lcom/didi/common/ui/fragment/CommonAddrFragment;)V

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonAddrFragment;->mBackListener:Landroid/view/View$OnClickListener;

    .line 277
    new-instance v0, Lcom/didi/common/ui/fragment/CommonAddrFragment$4;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/fragment/CommonAddrFragment$4;-><init>(Lcom/didi/common/ui/fragment/CommonAddrFragment;)V

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonAddrFragment;->mHomeCompanyClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/didi/common/ui/fragment/CommonAddrFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/CommonAddrFragment;->updateAddr()V

    return-void
.end method

.method static synthetic access$100(Lcom/didi/common/ui/fragment/CommonAddrFragment;Lcom/didi/common/model/AddressList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/didi/common/ui/fragment/CommonAddrFragment;->onGetAddressList(Lcom/didi/common/model/AddressList;)V

    return-void
.end method

.method static synthetic access$200(Lcom/didi/common/ui/fragment/CommonAddrFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/didi/common/ui/fragment/CommonAddrFragment;->mFrom:I

    return v0
.end method

.method static synthetic access$302(Lcom/didi/common/ui/fragment/CommonAddrFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/didi/common/ui/fragment/CommonAddrFragment;->mSetHome:Z

    return p1
.end method

.method static synthetic access$400(Lcom/didi/common/ui/fragment/CommonAddrFragment;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/didi/common/ui/fragment/CommonAddrFragment;->redirectToSearch(Z)V

    return-void
.end method

.method private commitAddr(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 9
    .parameter "name"
    .parameter "displayName"
    .parameter "cityId"
    .parameter "uid"
    .parameter "addr"
    .parameter "lng"
    .parameter "lat"
    .parameter "cotype"

    .prologue
    .line 220
    const/4 v8, 0x0

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    invoke-static/range {v0 .. v8}, Lcom/didi/common/net/CommonRequest;->editCommenAddress(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/didi/common/net/ResponseListener;)V

    .line 222
    return-void
.end method

.method private getDataFromIntent()V
    .locals 2

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/didi/common/ui/fragment/CommonAddrFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 98
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "from"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/didi/common/ui/fragment/CommonAddrFragment;->mFrom:I

    .line 99
    const-string v1, "item"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/didi/common/ui/fragment/CommonAddrFragment;->mItem:I

    .line 100
    return-void
.end method

.method private initViews(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 122
    const v0, 0x7f0802d9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/ui/component/UiHelper;->shieldTouchEvent(Landroid/view/View;)V

    .line 123
    const v0, 0x7f0802db

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonAddrFragment;->mBtnHome:Landroid/view/View;

    .line 124
    const v0, 0x7f0802dc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lx/ImageView;

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonAddrFragment;->mIcHome:Lx/ImageView;

    .line 125
    const v0, 0x7f0802dd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonAddrFragment;->mHomeTips:Landroid/view/View;

    .line 126
    const v0, 0x7f0802de

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonAddrFragment;->mHomeAddr:Landroid/view/View;

    .line 127
    const v0, 0x7f0802df

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonAddrFragment;->addr_home_part:Landroid/widget/TextView;

    .line 128
    const v0, 0x7f0802e0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonAddrFragment;->addr_home_full:Landroid/widget/TextView;

    .line 130
    const v0, 0x7f0802e1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonAddrFragment;->mBtnCompany:Landroid/view/View;

    .line 131
    const v0, 0x7f0802e2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lx/ImageView;

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonAddrFragment;->mIcCompany:Lx/ImageView;

    .line 132
    const v0, 0x7f0802e3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonAddrFragment;->mCompanyTips:Landroid/view/View;

    .line 133
    const v0, 0x7f0802e4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonAddrFragment;->mCompanyAddr:Landroid/view/View;

    .line 134
    const v0, 0x7f0802e5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonAddrFragment;->address_company_part:Landroid/widget/TextView;

    .line 135
    const v0, 0x7f0802e6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonAddrFragment;->address_company_full:Landroid/widget/TextView;

    .line 136
    return-void
.end method

.method private onCompanyAddressSelected()V
    .locals 12

    .prologue
    .line 345
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCompanyAddress()Lcom/didi/common/model/Address;

    move-result-object v11

    .line 346
    .local v11, companyAddress:Lcom/didi/common/model/Address;
    iget-object v4, v11, Lcom/didi/common/model/Address;->uid:Ljava/lang/String;

    .line 347
    .local v4, uid:Ljava/lang/String;
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentCity()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/Utils;->getSimpleCityName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 348
    .local v9, city:Ljava/lang/String;
    invoke-static {v9}, Lcom/didi/common/util/Utils;->getCityId(Ljava/lang/String;)I

    move-result v3

    .line 349
    .local v3, cityid:I
    const/4 v0, -0x1

    if-ne v3, v0, :cond_0

    .line 350
    sget-object v0, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {v0, v9}, Lcom/didi/common/database/CityListHelper;->getCityByName(Lcom/didi/frame/business/Business;Ljava/lang/String;)Lcom/didi/common/model/City;

    move-result-object v10

    .line 351
    .local v10, cityObj:Lcom/didi/common/model/City;
    if-eqz v10, :cond_0

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "---------------city id db:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v10, Lcom/didi/common/model/City;->cityID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " city:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v10, Lcom/didi/common/model/City;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 353
    iget v3, v10, Lcom/didi/common/model/City;->cityID:I

    .line 356
    .end local v10           #cityObj:Lcom/didi/common/model/City;
    :cond_0
    iput-object v11, p0, Lcom/didi/common/ui/fragment/CommonAddrFragment;->mCompany:Lcom/didi/common/model/Address;

    .line 357
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonAddrFragment;->mCompany:Lcom/didi/common/model/Address;

    invoke-virtual {v0, v9}, Lcom/didi/common/model/Address;->setCity(Ljava/lang/String;)V

    .line 358
    invoke-virtual {v11}, Lcom/didi/common/model/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v11}, Lcom/didi/common/model/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 359
    invoke-virtual {v11}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11}, Lcom/didi/common/model/Address;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/didi/common/ui/fragment/CommonAddrFragment;->setCompanyAddr(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    :goto_0
    const v0, 0x7f0b01d4

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/fragment/CommonAddrFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->getCompanyName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->getCompanyAddr()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v11, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    iget-object v7, v11, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    iget v8, v11, Lcom/didi/common/model/Address;->cotype:I

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/didi/common/ui/fragment/CommonAddrFragment;->commitAddr(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 365
    iget v0, p0, Lcom/didi/common/ui/fragment/CommonAddrFragment;->mFrom:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 366
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/didi/frame/FragmentMgr;->showTaxiRealtimeFragmentFromAddr(I)V

    .line 367
    :cond_1
    return-void

    .line 361
    :cond_2
    invoke-virtual {v11}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/didi/common/ui/fragment/CommonAddrFragment;->setCompanyAddr(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onGetAddressList(Lcom/didi/common/model/AddressList;)V
    .locals 5
    .parameter "list"

    .prologue
    .line 191
    invoke-static {p1}, Lcom/didi/common/net/HttpHelper;->validate(Lcom/didi/common/model/BaseObject;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 209
    :cond_0
    return-void

    .line 193
    :cond_1
    invoke-virtual {p1}, Lcom/didi/common/model/AddressList;->getList()Ljava/util/ArrayList;

    move-result-object v1

    .line 195
    .local v1, alist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/common/model/Address;>;"
    invoke-static {v1}, Lcom/didi/common/util/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 196
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/common/model/Address;

    .line 197
    .local v0, address:Lcom/didi/common/model/Address;
    invoke-virtual {v0}, Lcom/didi/common/model/Address;->isHome()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 198
    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 199
    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/didi/common/ui/fragment/CommonAddrFragment;->setHomeAddr(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 202
    :cond_3
    invoke-virtual {v0}, Lcom/didi/common/model/Address;->isCompany()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 203
    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 204
    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/didi/common/ui/fragment/CommonAddrFragment;->setCompanyAddr(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onHomeAddressSelected()V
    .locals 12

    .prologue
    .line 320
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getHomeAddress()Lcom/didi/common/model/Address;

    move-result-object v11

    .line 321
    .local v11, homeAddress:Lcom/didi/common/model/Address;
    invoke-static {}, Lcom/didi/common/helper/LocationHelper;->getCurrentCity()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/Utils;->getSimpleCityName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 322
    .local v9, city:Ljava/lang/String;
    iget-object v4, v11, Lcom/didi/common/model/Address;->uid:Ljava/lang/String;

    .line 323
    .local v4, uid:Ljava/lang/String;
    invoke-static {v9}, Lcom/didi/common/util/Utils;->getCityId(Ljava/lang/String;)I

    move-result v3

    .line 324
    .local v3, cityid:I
    const/4 v0, -0x1

    if-ne v3, v0, :cond_0

    .line 325
    sget-object v0, Lcom/didi/frame/business/Business;->Taxi:Lcom/didi/frame/business/Business;

    invoke-static {v0, v9}, Lcom/didi/common/database/CityListHelper;->getCityByName(Lcom/didi/frame/business/Business;Ljava/lang/String;)Lcom/didi/common/model/City;

    move-result-object v10

    .line 326
    .local v10, cityObj:Lcom/didi/common/model/City;
    if-eqz v10, :cond_0

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "---------------city id db:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v10, Lcom/didi/common/model/City;->cityID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " city:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v10, Lcom/didi/common/model/City;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 328
    iget v3, v10, Lcom/didi/common/model/City;->cityID:I

    .line 331
    .end local v10           #cityObj:Lcom/didi/common/model/City;
    :cond_0
    iput-object v11, p0, Lcom/didi/common/ui/fragment/CommonAddrFragment;->mHome:Lcom/didi/common/model/Address;

    .line 332
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonAddrFragment;->mHome:Lcom/didi/common/model/Address;

    invoke-virtual {v0, v9}, Lcom/didi/common/model/Address;->setCity(Ljava/lang/String;)V

    .line 333
    invoke-virtual {v11}, Lcom/didi/common/model/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v11}, Lcom/didi/common/model/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 334
    invoke-virtual {v11}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11}, Lcom/didi/common/model/Address;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/didi/common/ui/fragment/CommonAddrFragment;->setHomeAddr(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    :goto_0
    const v0, 0x7f0b01d6

    invoke-virtual {p0, v0}, Lcom/didi/common/ui/fragment/CommonAddrFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->getHomeName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->getHomeAddr()Ljava/lang/String;

    move-result-object v5

    iget-object v6, v11, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    iget-object v7, v11, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    iget v8, v11, Lcom/didi/common/model/Address;->cotype:I

    move-object v0, p0

    invoke-direct/range {v0 .. v8}, Lcom/didi/common/ui/fragment/CommonAddrFragment;->commitAddr(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 340
    iget v0, p0, Lcom/didi/common/ui/fragment/CommonAddrFragment;->mFrom:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 341
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/didi/frame/FragmentMgr;->showTaxiRealtimeFragmentFromAddr(I)V

    .line 342
    :cond_1
    return-void

    .line 336
    :cond_2
    invoke-virtual {v11}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/didi/common/ui/fragment/CommonAddrFragment;->setHomeAddr(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private redirectToSearch(Z)V
    .locals 5
    .parameter "isHome"

    .prologue
    const/4 v3, 0x5

    const/4 v1, 0x4

    .line 297
    if-eqz p1, :cond_0

    move v2, v1

    .line 298
    .local v2, type:I
    :goto_0
    if-eqz p1, :cond_1

    .line 299
    .local v1, requestCode:I
    :goto_1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/didi/common/ui/fragment/CommonAddrFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/didi/common/search/SearchActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 300
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "search_extra_type"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 301
    invoke-virtual {p0}, Lcom/didi/common/ui/fragment/CommonAddrFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3, p0, v0, v1}, Landroid/support/v4/app/FragmentActivity;->startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V

    .line 302
    return-void

    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #requestCode:I
    .end local v2           #type:I
    :cond_0
    move v2, v3

    .line 297
    goto :goto_0

    .restart local v2       #type:I
    :cond_1
    move v1, v3

    .line 298
    goto :goto_1
.end method

.method private setCompanyAddr(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "name"
    .parameter "address"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 248
    invoke-static {p1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonAddrFragment;->address_company_part:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonAddrFragment;->mCompanyTips:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 251
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonAddrFragment;->mCompanyAddr:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 254
    :cond_0
    invoke-static {p1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonAddrFragment;->address_company_full:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonAddrFragment;->address_company_full:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 260
    :goto_0
    return-void

    .line 258
    :cond_1
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonAddrFragment;->address_company_full:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setHomeAddr(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "name"
    .parameter "address"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 232
    invoke-static {p1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonAddrFragment;->addr_home_part:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonAddrFragment;->mHomeTips:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonAddrFragment;->mHomeAddr:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 238
    :cond_0
    invoke-static {p1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonAddrFragment;->addr_home_full:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 240
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonAddrFragment;->addr_home_full:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    :goto_0
    return-void

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonAddrFragment;->addr_home_full:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setHomeAndCompanyAddress()Z
    .locals 4

    .prologue
    .line 103
    const/4 v0, 0x0

    .line 104
    .local v0, hasCfg:Z
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    .line 105
    .local v1, pref:Lcom/didi/common/config/Preferences;
    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->getHomeName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 106
    const/4 v0, 0x1

    .line 107
    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->getHomeAddr()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 108
    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->getHomeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->getHomeAddr()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/didi/common/ui/fragment/CommonAddrFragment;->setHomeAddr(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    :cond_0
    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->getCompanyName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 112
    const/4 v0, 0x1

    .line 113
    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->getHomeAddr()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 114
    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->getCompanyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->getCompanyAddr()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/didi/common/ui/fragment/CommonAddrFragment;->setCompanyAddr(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    :cond_1
    return v0
.end method

.method private setTitleBar()V
    .locals 3

    .prologue
    .line 139
    invoke-static {}, Lcom/didi/frame/titlebar/TitleBarHelper;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v0

    .line 140
    .local v0, titleBar:Lcom/didi/frame/titlebar/TitleBar;
    const v1, 0x7f020170

    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonAddrFragment;->mBackListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/didi/frame/titlebar/TitleBar;->setLeftDrawable(ILandroid/view/View$OnClickListener;)V

    .line 141
    const v1, 0x7f0b025d

    invoke-virtual {v0, v1}, Lcom/didi/frame/titlebar/TitleBar;->setTitle(I)V

    .line 142
    invoke-virtual {v0}, Lcom/didi/frame/titlebar/TitleBar;->hideRight()V

    .line 143
    invoke-static {}, Lcom/didi/frame/titlebar/TitleBarHelper;->showTitleBar()V

    .line 144
    return-void
.end method

.method private setupListeners()V
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonAddrFragment;->mBtnHome:Landroid/view/View;

    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonAddrFragment;->mHomeCompanyClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonAddrFragment;->mBtnCompany:Landroid/view/View;

    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonAddrFragment;->mHomeCompanyClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    return-void
.end method

.method private updateAddr()V
    .locals 1

    .prologue
    .line 176
    new-instance v0, Lcom/didi/common/ui/fragment/CommonAddrFragment$2;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/fragment/CommonAddrFragment$2;-><init>(Lcom/didi/common/ui/fragment/CommonAddrFragment;)V

    invoke-static {v0}, Lcom/didi/common/net/CommonRequest;->getAddrLists(Lcom/didi/common/net/ResponseListener;)V

    .line 188
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 306
    invoke-super {p0, p1, p2, p3}, Lcom/didi/common/ui/fragment/SlideFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 307
    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 317
    :goto_0
    return-void

    .line 309
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 311
    :pswitch_0
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/CommonAddrFragment;->onHomeAddressSelected()V

    goto :goto_0

    .line 314
    :pswitch_1
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/CommonAddrFragment;->onCompanyAddressSelected()V

    goto :goto_0

    .line 309
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onBackPressed()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 166
    iget v0, p0, Lcom/didi/common/ui/fragment/CommonAddrFragment;->mFrom:I

    if-nez v0, :cond_0

    .line 167
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/didi/frame/FragmentMgr;->backToSyncCallFragment(Z)V

    .line 171
    :goto_0
    return v1

    .line 169
    :cond_0
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->backToPreFragment()V

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 84
    const v2, 0x7f030077

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 85
    .local v1, view:Landroid/view/View;
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/CommonAddrFragment;->setTitleBar()V

    .line 86
    invoke-direct {p0, v1}, Lcom/didi/common/ui/fragment/CommonAddrFragment;->initViews(Landroid/view/View;)V

    .line 87
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/CommonAddrFragment;->setupListeners()V

    .line 88
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/CommonAddrFragment;->setHomeAndCompanyAddress()Z

    move-result v0

    .line 89
    .local v0, hasCfg:Z
    if-nez v0, :cond_0

    .line 90
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/CommonAddrFragment;->updateAddr()V

    .line 92
    :cond_0
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/CommonAddrFragment;->getDataFromIntent()V

    .line 93
    return-object v1
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 148
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onStart()V

    .line 149
    new-instance v0, Lcom/didi/common/ui/fragment/CommonAddrFragment$1;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/fragment/CommonAddrFragment$1;-><init>(Lcom/didi/common/ui/fragment/CommonAddrFragment;)V

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 157
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 161
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onStop()V

    .line 162
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 371
    invoke-super {p0, p1, p2}, Lcom/didi/common/ui/fragment/SlideFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 372
    invoke-static {p1}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 373
    return-void
.end method
