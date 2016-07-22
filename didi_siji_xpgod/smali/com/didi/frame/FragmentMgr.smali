.class public Lcom/didi/frame/FragmentMgr;
.super Ljava/lang/Object;
.source "FragmentMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/frame/FragmentMgr$UserInfoFrom;
    }
.end annotation


# static fields
.field public static final FROM_ASYNC_WAIT_DRIVER:I = 0x2

.field public static final FROM_COMMON_ADDR:Ljava/lang/String; = "from_common_addr"

.field public static final FROM_EVALUATE:I = 0x0

.field public static final FROM_HISTORY:I = 0x7

.field public static final FROM_MYORDER:I = 0x3

.field public static final FROM_PAY:I = 0x4

.field public static final FROM_RECOVERY:I = 0x8

.field public static final FROM_SET_UP:I = 0x4

.field public static final FROM_SYNC_CALL:I = 0x5

.field public static final FROM_SYNC_WAIT_DRIVER:I = 0x1

.field public static final ITEM_GO_HOME:I = 0x6

.field public static final ITEM_GO_WORK:I = 0x7

.field public static final KEY_CITY:Ljava/lang/String; = "order_city"

.field public static final KEY_CONTENT:Ljava/lang/String; = "cpn_content"

.field public static final KEY_DID:Ljava/lang/String; = "did"

.field public static final KEY_FROM:Ljava/lang/String; = "from"

.field public static final KEY_FROM_LAT:Ljava/lang/String; = "from_lat"

.field public static final KEY_FROM_LNG:Ljava/lang/String; = "from_lng"

.field public static final KEY_ITEM:Ljava/lang/String; = "item"

.field public static final KEY_OID:Ljava/lang/String; = "order_id"

.field public static final KEY_ORDER:Ljava/lang/String; = "order"

.field public static final KEY_ORDER_START_TIME:Ljava/lang/String; = "order_start_time"

.field public static final KEY_REMARK:Ljava/lang/String; = "remark"

.field public static final KEY_SOURCE_TITLE:Ljava/lang/String; = "source_title"

.field public static final KEY_TIP:Ljava/lang/String; = "order_tip"

.field public static final KEY_TO_LAT:Ljava/lang/String; = "to_lat"

.field public static final KEY_TO_LNG:Ljava/lang/String; = "to_lng"

.field public static final KEY_TYPE:Ljava/lang/String; = "order_type"

.field public static final TYPE_ASYNC_CALL:I = 0x1

.field public static final TYPE_SYNC_CALL:I

.field private static instance:Lcom/didi/frame/FragmentMgr;


# instance fields
.field private fragmentSlideAnimArray:[I

.field private fragmentSlideAnimArrayBackward:[I

.field private mCurrentFragment:Lcom/didi/common/ui/fragment/SlideFragment;

.field private mFragMgr:Landroid/support/v4/app/FragmentManager;

.field private mMapFragment:Lcom/didi/frame/MapFragment;

.field public mMenuFragment:Lcom/didi/common/ui/fragment/MenuFragment;

.field private mSwitcherFragment:Lcom/didi/frame/switcher/SwitcherFragment;

.field private mUserInfoFrom:Lcom/didi/frame/FragmentMgr$UserInfoFrom;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    sget-object v1, Lcom/didi/frame/FragmentMgr$UserInfoFrom;->MENU:Lcom/didi/frame/FragmentMgr$UserInfoFrom;

    iput-object v1, p0, Lcom/didi/frame/FragmentMgr;->mUserInfoFrom:Lcom/didi/frame/FragmentMgr$UserInfoFrom;

    .line 163
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v0

    .line 164
    .local v0, a:Lcom/didi/frame/MainActivity;
    if-nez v0, :cond_0

    .line 168
    :goto_0
    return-void

    .line 166
    :cond_0
    invoke-virtual {v0}, Lcom/didi/frame/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iput-object v1, p0, Lcom/didi/frame/FragmentMgr;->mFragMgr:Landroid/support/v4/app/FragmentManager;

    .line 167
    invoke-direct {p0}, Lcom/didi/frame/FragmentMgr;->initAnimArray()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/didi/frame/FragmentMgr;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/didi/frame/FragmentMgr;->fragmentSlideAnimArray:[I

    return-object v0
.end method

.method static synthetic access$100(Lcom/didi/frame/FragmentMgr;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 74
    iget-object v0, p0, Lcom/didi/frame/FragmentMgr;->fragmentSlideAnimArrayBackward:[I

    return-object v0
.end method

.method private createFragment(Ljava/lang/Class;)Landroid/support/v4/app/Fragment;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/support/v4/app/Fragment;",
            ">;)",
            "Landroid/support/v4/app/Fragment;"
        }
    .end annotation

    .prologue
    .line 505
    .local p1, fragmentClass:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/support/v4/app/Fragment;>;"
    invoke-direct {p0, p1}, Lcom/didi/frame/FragmentMgr;->getFragmentTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    .line 506
    .local v4, fragmentTag:Ljava/lang/String;
    iget-object v5, p0, Lcom/didi/frame/FragmentMgr;->mFragMgr:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v5, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 507
    .local v2, fragment:Landroid/support/v4/app/Fragment;
    if-eqz p1, :cond_1

    .line 508
    if-eqz v2, :cond_0

    move-object v3, v2

    .line 519
    .end local v2           #fragment:Landroid/support/v4/app/Fragment;
    .local v3, fragment:Landroid/support/v4/app/Fragment;
    :goto_0
    return-object v3

    .line 511
    .end local v3           #fragment:Landroid/support/v4/app/Fragment;
    .restart local v2       #fragment:Landroid/support/v4/app/Fragment;
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/support/v4/app/Fragment;

    move-object v2, v0

    .line 512
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v2, v5}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :goto_1
    move-object v3, v2

    .line 519
    .end local v2           #fragment:Landroid/support/v4/app/Fragment;
    .restart local v3       #fragment:Landroid/support/v4/app/Fragment;
    goto :goto_0

    .line 513
    .end local v3           #fragment:Landroid/support/v4/app/Fragment;
    .restart local v2       #fragment:Landroid/support/v4/app/Fragment;
    :catch_0
    move-exception v1

    .line 514
    .local v1, e:Ljava/lang/InstantiationException;
    invoke-virtual {v1}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_1

    .line 515
    .end local v1           #e:Ljava/lang/InstantiationException;
    :catch_1
    move-exception v1

    .line 516
    .local v1, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1
.end method

.method public static destory()V
    .locals 1

    .prologue
    .line 1062
    const/4 v0, 0x0

    sput-object v0, Lcom/didi/frame/FragmentMgr;->instance:Lcom/didi/frame/FragmentMgr;

    .line 1063
    return-void
.end method

.method public static detach(Lcom/didi/common/ui/fragment/SlideFragment;)V
    .locals 1
    .parameter "slideFragment"

    .prologue
    .line 1115
    sget-object v0, Lcom/didi/frame/FragmentMgr;->instance:Lcom/didi/frame/FragmentMgr;

    invoke-direct {v0, p0}, Lcom/didi/frame/FragmentMgr;->detachFragment(Lcom/didi/common/ui/fragment/SlideFragment;)V

    .line 1116
    return-void
.end method

.method private detachFragment(Lcom/didi/common/ui/fragment/SlideFragment;)V
    .locals 2
    .parameter "slideFragment"

    .prologue
    .line 1120
    :try_start_0
    iget-object v1, p0, Lcom/didi/frame/FragmentMgr;->mFragMgr:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 1121
    .local v0, ft:Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentTransaction;->detach(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 1122
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1126
    .end local v0           #ft:Landroid/support/v4/app/FragmentTransaction;
    :goto_0
    return-void

    .line 1123
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getFragmentTag(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/support/v4/app/Fragment;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 595
    .local p1, fragmentClass:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/support/v4/app/Fragment;>;"
    if-nez p1, :cond_0

    .line 596
    const/4 v0, 0x0

    .line 598
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getInstance()Lcom/didi/frame/FragmentMgr;
    .locals 1

    .prologue
    .line 1056
    sget-object v0, Lcom/didi/frame/FragmentMgr;->instance:Lcom/didi/frame/FragmentMgr;

    if-nez v0, :cond_0

    .line 1057
    new-instance v0, Lcom/didi/frame/FragmentMgr;

    invoke-direct {v0}, Lcom/didi/frame/FragmentMgr;-><init>()V

    sput-object v0, Lcom/didi/frame/FragmentMgr;->instance:Lcom/didi/frame/FragmentMgr;

    .line 1058
    :cond_0
    sget-object v0, Lcom/didi/frame/FragmentMgr;->instance:Lcom/didi/frame/FragmentMgr;

    return-object v0
.end method

.method private getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    const-class v0, Lcom/didi/frame/FragmentMgr;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private hasFragmentExistsInStack(Ljava/lang/Class;)Z
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Landroid/support/v4/app/Fragment;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 486
    .local p1, fragmentClass:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/support/v4/app/Fragment;>;"
    iget-object v4, p0, Lcom/didi/frame/FragmentMgr;->mFragMgr:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    .line 487
    .local v0, count:I
    invoke-direct {p0, p1}, Lcom/didi/frame/FragmentMgr;->getFragmentTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    .line 488
    .local v2, fragmentTag:Ljava/lang/String;
    const/4 v1, 0x0

    .line 489
    .local v1, entry:Landroid/support/v4/app/FragmentManager$BackStackEntry;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_1

    .line 490
    iget-object v4, p0, Lcom/didi/frame/FragmentMgr;->mFragMgr:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v4, v3}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryAt(I)Landroid/support/v4/app/FragmentManager$BackStackEntry;

    move-result-object v1

    .line 491
    invoke-interface {v1}, Landroid/support/v4/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 492
    const/4 v4, 0x1

    .line 495
    :goto_1
    return v4

    .line 489
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 495
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private initAnimArray()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const v3, 0x7f04001a

    const v2, 0x7f040019

    .line 174
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/didi/frame/FragmentMgr;->fragmentSlideAnimArray:[I

    .line 175
    iget-object v0, p0, Lcom/didi/frame/FragmentMgr;->fragmentSlideAnimArray:[I

    const v1, 0x7f04001b

    aput v1, v0, v4

    .line 176
    iget-object v0, p0, Lcom/didi/frame/FragmentMgr;->fragmentSlideAnimArray:[I

    const v1, 0x7f04001c

    aput v1, v0, v5

    .line 177
    iget-object v0, p0, Lcom/didi/frame/FragmentMgr;->fragmentSlideAnimArray:[I

    aput v2, v0, v6

    .line 178
    iget-object v0, p0, Lcom/didi/frame/FragmentMgr;->fragmentSlideAnimArray:[I

    const/4 v1, 0x3

    aput v3, v0, v1

    .line 179
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/didi/frame/FragmentMgr;->fragmentSlideAnimArrayBackward:[I

    .line 180
    iget-object v0, p0, Lcom/didi/frame/FragmentMgr;->fragmentSlideAnimArrayBackward:[I

    aput v2, v0, v4

    .line 181
    iget-object v0, p0, Lcom/didi/frame/FragmentMgr;->fragmentSlideAnimArrayBackward:[I

    aput v3, v0, v5

    .line 182
    iget-object v0, p0, Lcom/didi/frame/FragmentMgr;->fragmentSlideAnimArrayBackward:[I

    aput v2, v0, v6

    .line 183
    iget-object v0, p0, Lcom/didi/frame/FragmentMgr;->fragmentSlideAnimArrayBackward:[I

    const/4 v1, 0x3

    aput v3, v0, v1

    .line 184
    return-void
.end method

.method private isBackStackEmpty()Z
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/didi/frame/FragmentMgr;->mFragMgr:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTaxiOrCarOrder()Z
    .locals 2

    .prologue
    .line 1283
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    .line 1284
    .local v0, mgr:Lcom/didi/frame/FragmentMgr;
    if-eqz v0, :cond_1

    .line 1285
    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->isWaitForResponseFragment()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->isConfirmFragment()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->isResendFragment()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->isWaitForArrivalFragment()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1286
    :cond_0
    const/4 v1, 0x1

    .line 1290
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static leftIn(Ljava/lang/Class;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/didi/common/ui/fragment/SlideFragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1260
    .local p0, fragmentClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/didi/common/ui/fragment/SlideFragment;>;"
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/didi/frame/FragmentMgr;->backTo(Ljava/lang/Class;)V

    .line 1261
    return-void
.end method

.method private onShow(ILandroid/support/v4/app/Fragment;Z)V
    .locals 1
    .parameter "id"
    .parameter "fragment"
    .parameter "fragmentExistsInStack"

    .prologue
    .line 575
    const v0, 0x7f080051

    if-eq p1, v0, :cond_0

    .line 578
    .end local p2
    :goto_0
    return-void

    .line 577
    .restart local p2
    :cond_0
    check-cast p2, Lcom/didi/common/ui/fragment/SlideFragment;

    .end local p2
    iput-object p2, p0, Lcom/didi/frame/FragmentMgr;->mCurrentFragment:Lcom/didi/common/ui/fragment/SlideFragment;

    goto :goto_0
.end method

.method public static print()V
    .locals 1

    .prologue
    .line 302
    sget-object v0, Lcom/didi/frame/FragmentMgr;->instance:Lcom/didi/frame/FragmentMgr;

    invoke-direct {v0}, Lcom/didi/frame/FragmentMgr;->printStack()V

    .line 303
    return-void
.end method

.method private printStack()V
    .locals 1

    .prologue
    .line 306
    const-string v0, "print"

    invoke-direct {p0, v0}, Lcom/didi/frame/FragmentMgr;->printStack(Ljava/lang/String;)V

    .line 307
    return-void
.end method

.method private printStack(Ljava/lang/String;)V
    .locals 5
    .parameter "tag"

    .prologue
    .line 310
    iget-object v3, p0, Lcom/didi/frame/FragmentMgr;->mFragMgr:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    .line 311
    .local v0, count:I
    const/4 v1, 0x0

    .line 312
    .local v1, entry:Landroid/support/v4/app/FragmentManager$BackStackEntry;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 313
    iget-object v3, p0, Lcom/didi/frame/FragmentMgr;->mFragMgr:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v3, v2}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryAt(I)Landroid/support/v4/app/FragmentManager$BackStackEntry;

    move-result-object v1

    .line 314
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " name : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Landroid/support/v4/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Landroid/support/v4/app/FragmentManager$BackStackEntry;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 312
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 316
    :cond_0
    return-void
.end method

.method public static remove(Lcom/didi/common/ui/fragment/SlideFragment;)V
    .locals 1
    .parameter "slideFragment"

    .prologue
    .line 1096
    sget-object v0, Lcom/didi/frame/FragmentMgr;->instance:Lcom/didi/frame/FragmentMgr;

    invoke-direct {v0, p0}, Lcom/didi/frame/FragmentMgr;->removeFragment(Lcom/didi/common/ui/fragment/SlideFragment;)V

    .line 1097
    return-void
.end method

.method private removeFragment(Lcom/didi/common/ui/fragment/SlideFragment;)V
    .locals 2
    .parameter "slideFragment"

    .prologue
    .line 1106
    :try_start_0
    iget-object v1, p0, Lcom/didi/frame/FragmentMgr;->mFragMgr:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 1107
    .local v0, ft:Landroid/support/v4/app/FragmentTransaction;
    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 1108
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1112
    .end local v0           #ft:Landroid/support/v4/app/FragmentTransaction;
    :goto_0
    return-void

    .line 1109
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static reset()V
    .locals 0

    .prologue
    .line 1066
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->destory()V

    .line 1067
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    .line 1068
    return-void
.end method

.method public static rightIn(Ljava/lang/Class;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/didi/common/ui/fragment/SlideFragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1251
    .local p0, fragmentClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/didi/common/ui/fragment/SlideFragment;>;"
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/didi/frame/FragmentMgr;->redirect(Ljava/lang/Class;)V

    .line 1252
    return-void
.end method

.method private shouldAddToBackStack(ILandroid/support/v4/app/Fragment;)Z
    .locals 1
    .parameter "id"
    .parameter "fragment"

    .prologue
    .line 564
    const v0, 0x7f080051

    if-ne p1, v0, :cond_0

    check-cast p2, Lcom/didi/common/ui/fragment/SlideFragment;

    .end local p2
    invoke-virtual {p2}, Lcom/didi/common/ui/fragment/SlideFragment;->shouldBeAddedToBackStack()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showNewFragment(I[ILjava/lang/String;Landroid/support/v4/app/Fragment;)V
    .locals 7
    .parameter "id"
    .parameter "fragmentRedirectAnimArray"
    .parameter "fragmentTag"
    .parameter "fragment"

    .prologue
    .line 535
    iget-object v3, p0, Lcom/didi/frame/FragmentMgr;->mFragMgr:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    .line 536
    .local v1, ft:Landroid/support/v4/app/FragmentTransaction;
    invoke-static {p2}, Lcom/didi/common/util/CollectionUtil;->isEmpty([I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 537
    const/4 v3, 0x0

    aget v3, p2, v3

    const/4 v4, 0x1

    aget v4, p2, v4

    const/4 v5, 0x2

    aget v5, p2, v5

    const/4 v6, 0x3

    aget v6, p2, v6

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/support/v4/app/FragmentTransaction;->setCustomAnimations(IIII)Landroid/support/v4/app/FragmentTransaction;

    .line 539
    :cond_0
    invoke-virtual {v1, p1, p4, p3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 540
    invoke-direct {p0, p1, p4}, Lcom/didi/frame/FragmentMgr;->shouldAddToBackStack(ILandroid/support/v4/app/Fragment;)Z

    move-result v2

    .line 541
    .local v2, shouldAdd:Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FragmentMshouldAdd="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 542
    if-eqz v2, :cond_1

    .line 543
    invoke-virtual {v1, p3}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 546
    :cond_1
    :try_start_0
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 551
    :goto_0
    return-void

    .line 547
    :catch_0
    move-exception v0

    .line 548
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 549
    invoke-static {}, Lcom/didi/common/helper/ExitHelper;->doExit()V

    goto :goto_0
.end method


# virtual methods
.method public backTo(Ljava/lang/Class;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/didi/common/ui/fragment/SlideFragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 347
    .local p1, fragmentClazz:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/didi/common/ui/fragment/SlideFragment;>;"
    const v0, 0x7f080051

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/didi/frame/FragmentMgr;->backToFragment(ILjava/lang/Class;Landroid/os/Bundle;)V

    .line 348
    return-void
.end method

.method public backToFragment(ILjava/lang/Class;Landroid/os/Bundle;)V
    .locals 3
    .parameter "id"
    .parameter
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<+",
            "Lcom/didi/common/ui/fragment/SlideFragment;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 399
    .local p2, fragmentClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/didi/common/ui/fragment/SlideFragment;>;"
    new-instance v0, Lcom/didi/frame/FragmentMgr$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/didi/frame/FragmentMgr$2;-><init>(Lcom/didi/frame/FragmentMgr;ILjava/lang/Class;Landroid/os/Bundle;)V

    const-wide/16 v1, 0x1e

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 406
    return-void
.end method

.method public backToPreFragment()V
    .locals 1

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/didi/frame/FragmentMgr;->peekPreFragment()Lcom/didi/common/ui/fragment/SlideFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/frame/FragmentMgr;->mCurrentFragment:Lcom/didi/common/ui/fragment/SlideFragment;

    .line 288
    invoke-direct {p0}, Lcom/didi/frame/FragmentMgr;->isBackStackEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 291
    :cond_1
    invoke-static {}, Lcom/didi/frame/MainActivity;->hasCalledSaveInstance()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/didi/frame/MainActivity;->isStopped()Z

    move-result v0

    if-nez v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/didi/frame/FragmentMgr;->mFragMgr:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->popBackStack()V

    goto :goto_0
.end method

.method public backToSyncCallFragment(Z)V
    .locals 2
    .parameter "relocate"

    .prologue
    .line 325
    iget-object v1, p0, Lcom/didi/frame/FragmentMgr;->mFragMgr:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    .line 326
    .local v0, cnt:I
    if-lez v0, :cond_0

    .line 327
    if-eqz p1, :cond_0

    .line 328
    invoke-static {}, Lcom/didi/frame/business/redirector/RedirectEngine;->home()V

    .line 330
    :cond_0
    return-void
.end method

.method public detachSplashFragment()V
    .locals 1

    .prologue
    .line 256
    const-class v0, Lcom/didi/common/ui/fragment/SplashFragment;

    invoke-virtual {p0, v0}, Lcom/didi/frame/FragmentMgr;->getFragment(Ljava/lang/Class;)Lcom/didi/common/ui/fragment/SlideFragment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/didi/frame/FragmentMgr;->detachFragment(Lcom/didi/common/ui/fragment/SlideFragment;)V

    .line 257
    return-void
.end method

.method public dump()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 584
    invoke-static {}, Lcom/didi/common/base/BaseApplication;->isDebugMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/didi/frame/FragmentMgr;->mFragMgr:Landroid/support/v4/app/FragmentManager;

    const-string v1, "FragmentManager.dump  "

    new-instance v2, Ljava/io/PrintWriter;

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V

    invoke-virtual {v0, v1, v5, v2, v5}, Landroid/support/v4/app/FragmentManager;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 586
    :cond_0
    return-void
.end method

.method public getConfirmFragment()Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;
    .locals 1

    .prologue
    .line 603
    const-class v0, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;

    invoke-virtual {p0, v0}, Lcom/didi/frame/FragmentMgr;->getFragment(Ljava/lang/Class;)Lcom/didi/common/ui/fragment/SlideFragment;

    move-result-object v0

    check-cast v0, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;

    return-object v0
.end method

.method public getCurrentFragment()Lcom/didi/common/ui/fragment/SlideFragment;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/didi/frame/FragmentMgr;->mCurrentFragment:Lcom/didi/common/ui/fragment/SlideFragment;

    return-object v0
.end method

.method public getFragment(Ljava/lang/Class;)Lcom/didi/common/ui/fragment/SlideFragment;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/didi/common/ui/fragment/SlideFragment;",
            ">;)",
            "Lcom/didi/common/ui/fragment/SlideFragment;"
        }
    .end annotation

    .prologue
    .line 613
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/didi/common/ui/fragment/SlideFragment;>;"
    iget-object v1, p0, Lcom/didi/frame/FragmentMgr;->mFragMgr:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 614
    .local v0, fragment:Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/didi/common/ui/fragment/SlideFragment;

    if-nez v1, :cond_1

    .line 615
    :cond_0
    const/4 v0, 0x0

    .line 616
    .end local v0           #fragment:Landroid/support/v4/app/Fragment;
    :goto_0
    return-object v0

    .restart local v0       #fragment:Landroid/support/v4/app/Fragment;
    :cond_1
    check-cast v0, Lcom/didi/common/ui/fragment/SlideFragment;

    goto :goto_0
.end method

.method public getSwitcherFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/didi/frame/FragmentMgr;->mSwitcherFragment:Lcom/didi/frame/switcher/SwitcherFragment;

    return-object v0
.end method

.method public getTitleBarFragment()Landroid/support/v4/app/Fragment;
    .locals 1

    .prologue
    .line 1202
    const-class v0, Lcom/didi/frame/titlebar/TitleBarFragment;

    invoke-virtual {p0, v0}, Lcom/didi/frame/FragmentMgr;->getFragment(Ljava/lang/Class;)Lcom/didi/common/ui/fragment/SlideFragment;

    move-result-object v0

    return-object v0
.end method

.method public getUserInfoFrom()Lcom/didi/frame/FragmentMgr$UserInfoFrom;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/didi/frame/FragmentMgr;->mUserInfoFrom:Lcom/didi/frame/FragmentMgr$UserInfoFrom;

    return-object v0
.end method

.method public hideSwitcherFragment()V
    .locals 2

    .prologue
    .line 274
    iget-object v1, p0, Lcom/didi/frame/FragmentMgr;->mSwitcherFragment:Lcom/didi/frame/switcher/SwitcherFragment;

    if-nez v1, :cond_0

    .line 283
    :goto_0
    return-void

    .line 277
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/didi/frame/FragmentMgr;->mFragMgr:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 278
    .local v0, ft:Landroid/support/v4/app/FragmentTransaction;
    iget-object v1, p0, Lcom/didi/frame/FragmentMgr;->mSwitcherFragment:Lcom/didi/frame/switcher/SwitcherFragment;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 279
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 280
    .end local v0           #ft:Landroid/support/v4/app/FragmentTransaction;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public isActivityRealtimeFragment()Z
    .locals 2

    .prologue
    .line 888
    iget-object v0, p0, Lcom/didi/frame/FragmentMgr;->mCurrentFragment:Lcom/didi/common/ui/fragment/SlideFragment;

    if-nez v0, :cond_0

    .line 889
    const/4 v0, 0x0

    .line 890
    :goto_0
    return v0

    :cond_0
    const-class v0, Lcom/didi/activity/ui/fragment/ActivityRealtimeFragment;

    iget-object v1, p0, Lcom/didi/frame/FragmentMgr;->mCurrentFragment:Lcom/didi/common/ui/fragment/SlideFragment;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public isBookingFragment()Z
    .locals 1

    .prologue
    .line 1019
    invoke-virtual {p0}, Lcom/didi/frame/FragmentMgr;->isTaxiBookingFragment()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/didi/frame/FragmentMgr;->isCarBookingFragment()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/didi/frame/FragmentMgr;->isFlierBookingFragment()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1020
    :cond_0
    const/4 v0, 0x1

    .line 1021
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isBtsRealtimeFragment()Z
    .locals 2

    .prologue
    .line 928
    iget-object v0, p0, Lcom/didi/frame/FragmentMgr;->mCurrentFragment:Lcom/didi/common/ui/fragment/SlideFragment;

    if-nez v0, :cond_0

    .line 929
    const/4 v0, 0x0

    .line 930
    :goto_0
    return v0

    :cond_0
    const-class v0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;

    iget-object v1, p0, Lcom/didi/frame/FragmentMgr;->mCurrentFragment:Lcom/didi/common/ui/fragment/SlideFragment;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public isCallingWizard()Z
    .locals 1

    .prologue
    .line 1270
    :try_start_0
    invoke-virtual {p0}, Lcom/didi/frame/FragmentMgr;->isResendFragment()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/didi/frame/FragmentMgr;->isConfirmFragment()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/didi/frame/FragmentMgr;->isWaitForArrivalFragment()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/didi/frame/FragmentMgr;->isWaitForResponseFragment()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/didi/frame/FragmentMgr;->isBookingFragment()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    .line 1272
    :cond_0
    const/4 v0, 0x1

    .line 1278
    :goto_0
    return v0

    .line 1275
    :catch_0
    move-exception v0

    .line 1278
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCarBookingFragment()Z
    .locals 2

    .prologue
    .line 968
    iget-object v0, p0, Lcom/didi/frame/FragmentMgr;->mCurrentFragment:Lcom/didi/common/ui/fragment/SlideFragment;

    if-nez v0, :cond_0

    .line 969
    const/4 v0, 0x0

    .line 970
    :goto_0
    return v0

    :cond_0
    const-class v0, Lcom/didi/car/ui/fragment/CarBookingFragment;

    iget-object v1, p0, Lcom/didi/frame/FragmentMgr;->mCurrentFragment:Lcom/didi/common/ui/fragment/SlideFragment;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public isCarConfirmFragment()Z
    .locals 2

    .prologue
    .line 1031
    iget-object v0, p0, Lcom/didi/frame/FragmentMgr;->mCurrentFragment:Lcom/didi/common/ui/fragment/SlideFragment;

    if-nez v0, :cond_0

    .line 1032
    const/4 v0, 0x0

    .line 1033
    :goto_0
    return v0

    :cond_0
    const-class v0, Lcom/didi/car/ui/fragment/CarConfirmFragment;

    iget-object v1, p0, Lcom/didi/frame/FragmentMgr;->mCurrentFragment:Lcom/didi/common/ui/fragment/SlideFragment;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public isCarRealtimeFragment()Z
    .locals 2

    .prologue
    .line 940
    iget-object v0, p0, Lcom/didi/frame/FragmentMgr;->mCurrentFragment:Lcom/didi/common/ui/fragment/SlideFragment;

    if-nez v0, :cond_0

    .line 941
    const/4 v0, 0x0

    .line 942
    :goto_0
    return v0

    :cond_0
    const-class v0, Lcom/didi/car/ui/fragment/CarRealtimeFragment;

    iget-object v1, p0, Lcom/didi/frame/FragmentMgr;->mCurrentFragment:Lcom/didi/common/ui/fragment/SlideFragment;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public isCarWaitForArrivalFragment()Z
    .locals 2

    .prologue
    .line 974
    iget-object v0, p0, Lcom/didi/frame/FragmentMgr;->mCurrentFragment:Lcom/didi/common/ui/fragment/SlideFragment;

    if-nez v0, :cond_0

    .line 975
    const/4 v0, 0x0

    .line 977
    :goto_0
    return v0

    :cond_0
    const-class v0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    iget-object v1, p0, Lcom/didi/frame/FragmentMgr;->mCurrentFragment:Lcom/didi/common/ui/fragment/SlideFragment;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public isConfirmFragment()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1217
    iget-object v1, p0, Lcom/didi/frame/FragmentMgr;->mCurrentFragment:Lcom/didi/common/ui/fragment/SlideFragment;

    if-nez v1, :cond_1

    .line 1223
    :cond_0
    :goto_0
    return v0

    .line 1219
    :cond_1
    const-class v1, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;

    iget-object v2, p0, Lcom/didi/frame/FragmentMgr;->mCurrentFragment:Lcom/didi/common/ui/fragment/SlideFragment;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-class v1, Lcom/didi/car/ui/fragment/CarConfirmFragment;

    iget-object v2, p0, Lcom/didi/frame/FragmentMgr;->mCurrentFragment:Lcom/didi/common/ui/fragment/SlideFragment;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-class v1, Lcom/didi/flier/ui/fragment/FlierConfirmFragment;

    iget-object v2, p0, Lcom/didi/frame/FragmentMgr;->mCurrentFragment:Lcom/didi/common/ui/fragment/SlideFragment;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1222
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isDDriveRealtimeFragment()Z
    .locals 2

    .prologue
    .line 910
    iget-object v0, p0, Lcom/didi/frame/FragmentMgr;->mCurrentFragment:Lcom/didi/common/ui/fragment/SlideFragment;

    if-nez v0, :cond_0

    .line 911
    const/4 v0, 0x0

    .line 912
    :goto_0
    return v0

    :cond_0
    const-class v0, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;

    iget-object v1, p0, Lcom/didi/frame/FragmentMgr;->mCurrentFragment:Lcom/didi/common/ui/fragment/SlideFragment;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public isDDriveWaitForArrivalFragment()Z
    .locals 2

    .prologue
    .line 981
    iget-object v0, p0, Lcom/didi/frame/FragmentMgr;->mCurrentFragment:Lcom/didi/common/ui/fragment/SlideFragment;

    if-nez v0, :cond_0

    .line 982
    const/4 v0, 0x0

    .line 984
    :goto_0
    return v0

    :cond_0
    const-class v0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;

    iget-object v1, p0, Lcom/didi/frame/FragmentMgr;->mCurrentFragment:Lcom/didi/common/ui/fragment/SlideFragment;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public isDDriveWaitForResponseFragment()Z
    .locals 2

    .prologue
    .line 988
    iget-object v0, p0, Lcom/didi/frame/FragmentMgr;->mCurrentFragment:Lcom/didi/common/ui/fragment/SlideFragment;

    if-nez v0, :cond_0

    .line 989
    const/4 v0, 0x0

    .line 991
    :goto_0
    return v0

    :cond_0
    const-class v0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;

    iget-object v1, p0, Lcom/didi/frame/FragmentMgr;->mCurrentFragment:Lcom/didi/common/ui/fragment/SlideFragment;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public isDriveRealtimeFragment()Z
    .locals 2

    .prologue
    .line 922
    iget-object v0, p0, Lcom/didi/frame/FragmentMgr;->mCurrentFragment:Lcom/didi/common/ui/fragment/SlideFragment;

    if-nez v0, :cond_0

    .line 923
    const/4 v0, 0x0

    .line 924
    :goto_0
    return v0

    :cond_0
    const-class v0, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;

    iget-object v1, p0, Lcom/didi/frame/FragmentMgr;->mCurrentFragment:Lcom/didi/common/ui/fragment/SlideFragment;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public isFlierBookingFragment()Z
    .locals 2

    .prologue
    .line 957
    iget-object v0, p0, Lcom/didi/frame/FragmentMgr;->mCurrentFragment:Lcom/didi/common/ui/fragment/SlideFragment;

    if-nez v0, :cond_0

    .line 958
    const/4 v0, 0x0

    .line 959
    :goto_0
    return v0

    :cond_0
    const-class v0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;

    iget-object v1, p0, Lcom/didi/frame/FragmentMgr;->mCurrentFragment:Lcom/didi/common/ui/fragment/SlideFragment;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public isFlierRealtimeFragment()Z
    .locals 2

    .prologue
    .line 899
    iget-object v0, p0, Lcom/didi/frame/FragmentMgr;->mCurrentFragment:Lcom/didi/common/ui/fragment/SlideFragment;

    if-nez v0, :cond_0

    .line 900
    const/4 v0, 0x0

    .line 901
    :goto_0
    return v0

    :cond_0
    const-class v0, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;

    iget-object v1, p0, Lcom/didi/frame/FragmentMgr;->mCurrentFragment:Lcom/didi/common/ui/fragment/SlideFragment;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public isRealtimeFragment()Z
    .locals 1

    .prologue
    .line 1007
    invoke-virtual {p0}, Lcom/didi/frame/FragmentMgr;->isTaxiRealtimeFragment()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/didi/frame/FragmentMgr;->isCarRealtimeFragment()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/didi/frame/FragmentMgr;->isFlierRealtimeFragment()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/didi/frame/FragmentMgr;->isBtsRealtimeFragment()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/didi/frame/FragmentMgr;->isDriveRealtimeFragment()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/didi/frame/FragmentMgr;->isTopicRealtimeFragment()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1009
    :cond_0
    const/4 v0, 0x1

    .line 1010
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isResendFragment()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1227
    iget-object v1, p0, Lcom/didi/frame/FragmentMgr;->mCurrentFragment:Lcom/didi/common/ui/fragment/SlideFragment;

    if-nez v1, :cond_1

    .line 1233
    :cond_0
    :goto_0
    return v0

    .line 1229
    :cond_1
    const-class v1, Lcom/didi/taxi/ui/fragment/TaxiResendFragment;

    iget-object v2, p0, Lcom/didi/frame/FragmentMgr;->mCurrentFragment:Lcom/didi/common/ui/fragment/SlideFragment;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-class v1, Lcom/didi/car/ui/fragment/CarResendFragment;

    iget-object v2, p0, Lcom/didi/frame/FragmentMgr;->mCurrentFragment:Lcom/didi/common/ui/fragment/SlideFragment;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-class v1, Lcom/didi/flier/ui/fragment/FlierResendFragment;

    iget-object v2, p0, Lcom/didi/frame/FragmentMgr;->mCurrentFragment:Lcom/didi/common/ui/fragment/SlideFragment;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1232
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isTaxiBookingFragment()Z
    .locals 2

    .prologue
    .line 951
    iget-object v0, p0, Lcom/didi/frame/FragmentMgr;->mCurrentFragment:Lcom/didi/common/ui/fragment/SlideFragment;

    if-nez v0, :cond_0

    .line 952
    const/4 v0, 0x0

    .line 953
    :goto_0
    return v0

    :cond_0
    const-class v0, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;

    iget-object v1, p0, Lcom/didi/frame/FragmentMgr;->mCurrentFragment:Lcom/didi/common/ui/fragment/SlideFragment;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public isTaxiConfirmFragment()Z
    .locals 2

    .prologue
    .line 1025
    iget-object v0, p0, Lcom/didi/frame/FragmentMgr;->mCurrentFragment:Lcom/didi/common/ui/fragment/SlideFragment;

    if-nez v0, :cond_0

    .line 1026
    const/4 v0, 0x0

    .line 1027
    :goto_0
    return v0

    :cond_0
    const-class v0, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;

    iget-object v1, p0, Lcom/didi/frame/FragmentMgr;->mCurrentFragment:Lcom/didi/common/ui/fragment/SlideFragment;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public isTaxiRealtimeFragment()Z
    .locals 2

    .prologue
    .line 877
    iget-object v0, p0, Lcom/didi/frame/FragmentMgr;->mCurrentFragment:Lcom/didi/common/ui/fragment/SlideFragment;

    if-nez v0, :cond_0

    .line 878
    const/4 v0, 0x0

    .line 879
    :goto_0
    return v0

    :cond_0
    const-class v0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;

    iget-object v1, p0, Lcom/didi/frame/FragmentMgr;->mCurrentFragment:Lcom/didi/common/ui/fragment/SlideFragment;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public isTaxiWaitForArrivalFragment()Z
    .locals 2

    .prologue
    .line 995
    iget-object v0, p0, Lcom/didi/frame/FragmentMgr;->mCurrentFragment:Lcom/didi/common/ui/fragment/SlideFragment;

    if-nez v0, :cond_0

    .line 996
    const/4 v0, 0x0

    .line 998
    :goto_0
    return v0

    :cond_0
    const-class v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;

    iget-object v1, p0, Lcom/didi/frame/FragmentMgr;->mCurrentFragment:Lcom/didi/common/ui/fragment/SlideFragment;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public isTopicRealtimeFragment()Z
    .locals 2

    .prologue
    .line 916
    iget-object v0, p0, Lcom/didi/frame/FragmentMgr;->mCurrentFragment:Lcom/didi/common/ui/fragment/SlideFragment;

    if-nez v0, :cond_0

    .line 917
    const/4 v0, 0x0

    .line 918
    :goto_0
    return v0

    :cond_0
    const-class v0, Lcom/didi/topic/ui/fragment/TopicRealtimeFragment;

    iget-object v1, p0, Lcom/didi/frame/FragmentMgr;->mCurrentFragment:Lcom/didi/common/ui/fragment/SlideFragment;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public isWaitForArrivalFragment()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1237
    iget-object v1, p0, Lcom/didi/frame/FragmentMgr;->mCurrentFragment:Lcom/didi/common/ui/fragment/SlideFragment;

    if-nez v1, :cond_1

    .line 1242
    :cond_0
    :goto_0
    return v0

    .line 1239
    :cond_1
    const-class v1, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;

    iget-object v2, p0, Lcom/didi/frame/FragmentMgr;->mCurrentFragment:Lcom/didi/common/ui/fragment/SlideFragment;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-class v1, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    iget-object v2, p0, Lcom/didi/frame/FragmentMgr;->mCurrentFragment:Lcom/didi/common/ui/fragment/SlideFragment;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1241
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isWaitForResponseFragment()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 1207
    iget-object v1, p0, Lcom/didi/frame/FragmentMgr;->mCurrentFragment:Lcom/didi/common/ui/fragment/SlideFragment;

    if-nez v1, :cond_1

    .line 1213
    :cond_0
    :goto_0
    return v0

    .line 1209
    :cond_1
    const-class v1, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    iget-object v2, p0, Lcom/didi/frame/FragmentMgr;->mCurrentFragment:Lcom/didi/common/ui/fragment/SlideFragment;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-class v1, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;

    iget-object v2, p0, Lcom/didi/frame/FragmentMgr;->mCurrentFragment:Lcom/didi/common/ui/fragment/SlideFragment;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-class v1, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;

    iget-object v2, p0, Lcom/didi/frame/FragmentMgr;->mCurrentFragment:Lcom/didi/common/ui/fragment/SlideFragment;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1212
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public modifyAddress()V
    .locals 1

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/didi/frame/FragmentMgr;->mMapFragment:Lcom/didi/frame/MapFragment;

    invoke-virtual {v0}, Lcom/didi/frame/MapFragment;->modifyAddress()V

    .line 1038
    return-void
.end method

.method public modifyStart()V
    .locals 3

    .prologue
    .line 1042
    invoke-virtual {p0}, Lcom/didi/frame/FragmentMgr;->isTaxiConfirmFragment()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1043
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getOrderType()Lcom/didi/frame/business/OrderType;

    move-result-object v1

    sget-object v2, Lcom/didi/frame/business/OrderType;->Booking:Lcom/didi/frame/business/OrderType;

    if-ne v1, v2, :cond_0

    .line 1044
    iget-object v0, p0, Lcom/didi/frame/FragmentMgr;->mCurrentFragment:Lcom/didi/common/ui/fragment/SlideFragment;

    check-cast v0, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;

    .line 1045
    .local v0, confirm:Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;->redirectToSearch(Z)V

    .line 1053
    .end local v0           #confirm:Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;
    :goto_0
    return-void

    .line 1047
    :cond_0
    invoke-virtual {p0}, Lcom/didi/frame/FragmentMgr;->modifyAddress()V

    goto :goto_0

    .line 1050
    :cond_1
    invoke-virtual {p0}, Lcom/didi/frame/FragmentMgr;->modifyAddress()V

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 2

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/didi/frame/FragmentMgr;->getCurrentFragment()Lcom/didi/common/ui/fragment/SlideFragment;

    move-result-object v0

    .line 189
    .local v0, fragment:Lcom/didi/common/ui/fragment/SlideFragment;
    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {v0}, Lcom/didi/common/ui/fragment/SlideFragment;->onBackPressed()Z

    move-result v1

    .line 192
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 865
    invoke-virtual {p0}, Lcom/didi/frame/FragmentMgr;->getCurrentFragment()Lcom/didi/common/ui/fragment/SlideFragment;

    move-result-object v0

    .line 866
    .local v0, fragment:Lcom/didi/common/ui/fragment/SlideFragment;
    if-eqz v0, :cond_0

    .line 867
    invoke-virtual {v0, p1, p2}, Lcom/didi/common/ui/fragment/SlideFragment;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 868
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onShareFragmentResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 853
    invoke-virtual {p0}, Lcom/didi/frame/FragmentMgr;->getCurrentFragment()Lcom/didi/common/ui/fragment/SlideFragment;

    move-result-object v0

    .line 854
    .local v0, activeFragment:Lcom/didi/common/ui/fragment/SlideFragment;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 855
    .local v2, set:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Class<+Lcom/didi/common/ui/fragment/SlideFragment;>;>;"
    const-class v3, Lcom/didi/common/ui/fragment/ShareFragment;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 856
    const-class v3, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 857
    const-class v3, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 858
    const-class v3, Lcom/didi/common/ui/fragment/CommonBindFragment;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 859
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/didi/common/util/CollectionUtil;->inCollection(Ljava/lang/Object;Ljava/util/Set;)Z

    move-result v1

    .line 860
    .local v1, inCollection:Z
    if-eqz v1, :cond_0

    .line 861
    invoke-virtual {v0, p1, p2, p3}, Lcom/didi/common/ui/fragment/SlideFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 862
    :cond_0
    return-void
.end method

.method public peek()Lcom/didi/common/ui/fragment/SlideFragment;
    .locals 1

    .prologue
    .line 230
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/didi/frame/FragmentMgr;->peekFragment(I)Lcom/didi/common/ui/fragment/SlideFragment;

    move-result-object v0

    return-object v0
.end method

.method public peekFragment(I)Lcom/didi/common/ui/fragment/SlideFragment;
    .locals 7
    .parameter "index"

    .prologue
    const/4 v4, 0x0

    .line 234
    const/4 v2, 0x0

    .line 235
    .local v2, fragment:Landroid/support/v4/app/Fragment;
    iget-object v5, p0, Lcom/didi/frame/FragmentMgr;->mFragMgr:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    .line 236
    .local v0, count:I
    if-gt v0, p1, :cond_1

    .line 247
    :cond_0
    :goto_0
    return-object v4

    .line 238
    :cond_1
    iget-object v5, p0, Lcom/didi/frame/FragmentMgr;->mFragMgr:Landroid/support/v4/app/FragmentManager;

    add-int/lit8 v6, v0, -0x1

    sub-int/2addr v6, p1

    invoke-virtual {v5, v6}, Landroid/support/v4/app/FragmentManager;->getBackStackEntryAt(I)Landroid/support/v4/app/FragmentManager$BackStackEntry;

    move-result-object v1

    .line 239
    .local v1, entry:Landroid/support/v4/app/FragmentManager$BackStackEntry;
    if-eqz v1, :cond_0

    .line 241
    invoke-interface {v1}, Landroid/support/v4/app/FragmentManager$BackStackEntry;->getName()Ljava/lang/String;

    move-result-object v3

    .line 242
    .local v3, name:Ljava/lang/String;
    invoke-static {v3}, Lcom/didi/common/util/Utils;->isTextEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 244
    iget-object v5, p0, Lcom/didi/frame/FragmentMgr;->mFragMgr:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v5, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 245
    if-eqz v2, :cond_0

    instance-of v5, v2, Lcom/didi/common/ui/fragment/SlideFragment;

    if-eqz v5, :cond_0

    move-object v4, v2

    .line 247
    check-cast v4, Lcom/didi/common/ui/fragment/SlideFragment;

    goto :goto_0
.end method

.method public peekPreFragment()Lcom/didi/common/ui/fragment/SlideFragment;
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/didi/frame/FragmentMgr;->peekFragment(I)Lcom/didi/common/ui/fragment/SlideFragment;

    move-result-object v0

    return-object v0
.end method

.method public redirect(ILjava/lang/Class;)V
    .locals 1
    .parameter "id"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<+",
            "Lcom/didi/common/ui/fragment/SlideFragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 367
    .local p2, fragmentClazz:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/didi/common/ui/fragment/SlideFragment;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/didi/frame/FragmentMgr;->redirectToFragment(ILjava/lang/Class;Landroid/os/Bundle;)V

    .line 368
    return-void
.end method

.method public redirect(Ljava/lang/Class;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/didi/common/ui/fragment/SlideFragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 338
    .local p1, fragmentClazz:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/didi/common/ui/fragment/SlideFragment;>;"
    const v0, 0x7f080051

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/didi/frame/FragmentMgr;->redirectToFragment(ILjava/lang/Class;Landroid/os/Bundle;)V

    .line 339
    return-void
.end method

.method public redirect(Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/didi/common/ui/fragment/SlideFragment;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 357
    .local p1, fragmentClazz:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/didi/common/ui/fragment/SlideFragment;>;"
    const v0, 0x7f080051

    invoke-virtual {p0, v0, p1, p2}, Lcom/didi/frame/FragmentMgr;->redirectToFragment(ILjava/lang/Class;Landroid/os/Bundle;)V

    .line 358
    return-void
.end method

.method public redirectToFragment(ILjava/lang/Class;Landroid/os/Bundle;)V
    .locals 3
    .parameter "id"
    .parameter
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<+",
            "Lcom/didi/common/ui/fragment/SlideFragment;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 378
    .local p2, fragmentClass:Ljava/lang/Class;,"Ljava/lang/Class<+Lcom/didi/common/ui/fragment/SlideFragment;>;"
    if-nez p2, :cond_0

    .line 389
    :goto_0
    return-void

    .line 382
    :cond_0
    new-instance v0, Lcom/didi/frame/FragmentMgr$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/didi/frame/FragmentMgr$1;-><init>(Lcom/didi/frame/FragmentMgr;ILjava/lang/Class;Landroid/os/Bundle;)V

    const-wide/16 v1, 0x1e

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public resetMap()V
    .locals 1

    .prologue
    .line 1295
    iget-object v0, p0, Lcom/didi/frame/FragmentMgr;->mMapFragment:Lcom/didi/frame/MapFragment;

    if-nez v0, :cond_0

    .line 1299
    :goto_0
    return-void

    .line 1297
    :cond_0
    iget-object v0, p0, Lcom/didi/frame/FragmentMgr;->mMapFragment:Lcom/didi/frame/MapFragment;

    invoke-virtual {v0}, Lcom/didi/frame/MapFragment;->setMap()V

    goto :goto_0
.end method

.method public showAboutFragment()V
    .locals 1

    .prologue
    .line 834
    const-class v0, Lcom/didi/common/ui/fragment/CommonAboutFragment;

    invoke-virtual {p0, v0}, Lcom/didi/frame/FragmentMgr;->redirect(Ljava/lang/Class;)V

    .line 835
    return-void
.end method

.method public showBindFragment()V
    .locals 1

    .prologue
    .line 795
    const-class v0, Lcom/didi/common/ui/fragment/CommonBindFragment;

    invoke-virtual {p0, v0}, Lcom/didi/frame/FragmentMgr;->redirect(Ljava/lang/Class;)V

    .line 796
    return-void
.end method

.method public showBtsRealtimeFragment()V
    .locals 1

    .prologue
    .line 1155
    const-class v0, Lcom/didi/beatles/ui/fragment/BtsRealtimeFragment;

    invoke-virtual {p0, v0}, Lcom/didi/frame/FragmentMgr;->redirect(Ljava/lang/Class;)V

    .line 1156
    return-void
.end method

.method public showCarBookingFragment()V
    .locals 1

    .prologue
    .line 757
    const-class v0, Lcom/didi/car/ui/fragment/CarBookingFragment;

    invoke-virtual {p0, v0}, Lcom/didi/frame/FragmentMgr;->redirect(Ljava/lang/Class;)V

    .line 758
    return-void
.end method

.method public showCarConfirmFragment()V
    .locals 1

    .prologue
    .line 630
    const-class v0, Lcom/didi/car/ui/fragment/CarConfirmFragment;

    invoke-virtual {p0, v0}, Lcom/didi/frame/FragmentMgr;->redirect(Ljava/lang/Class;)V

    .line 631
    return-void
.end method

.method public showCarConfirmFragment(I)V
    .locals 2
    .parameter "from"

    .prologue
    .line 634
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 635
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "from"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 636
    const-class v1, Lcom/didi/car/ui/fragment/CarConfirmFragment;

    invoke-virtual {p0, v1, v0}, Lcom/didi/frame/FragmentMgr;->redirect(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 637
    return-void
.end method

.method public showCarRealtimeFragment()V
    .locals 1

    .prologue
    .line 1140
    const-class v0, Lcom/didi/car/ui/fragment/CarRealtimeFragment;

    invoke-virtual {p0, v0}, Lcom/didi/frame/FragmentMgr;->redirect(Ljava/lang/Class;)V

    .line 1141
    return-void
.end method

.method public showCarResendFragment()V
    .locals 1

    .prologue
    .line 693
    const-class v0, Lcom/didi/car/ui/fragment/CarResendFragment;

    invoke-virtual {p0, v0}, Lcom/didi/frame/FragmentMgr;->redirect(Ljava/lang/Class;)V

    .line 694
    return-void
.end method

.method public showCarWaitForArrivalFragment()V
    .locals 1

    .prologue
    .line 1167
    const-class v0, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    invoke-virtual {p0, v0}, Lcom/didi/frame/FragmentMgr;->redirect(Ljava/lang/Class;)V

    .line 1168
    return-void
.end method

.method public showCarWaitForArrivalFragment(I)V
    .locals 1
    .parameter "serviceType"

    .prologue
    .line 1194
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/didi/frame/FragmentMgr;->showCarWaitForArrivalFragment(II)V

    .line 1195
    return-void
.end method

.method public showCarWaitForArrivalFragment(II)V
    .locals 2
    .parameter "serviceType"
    .parameter "from"

    .prologue
    .line 1187
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1188
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "service_type"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1189
    const-string v1, "from"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1190
    const-class v1, Lcom/didi/car/ui/fragment/CarWaitForArrivalFragment;

    invoke-virtual {p0, v1, v0}, Lcom/didi/frame/FragmentMgr;->redirect(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 1191
    return-void
.end method

.method public showCarWaitForResponseFragment()V
    .locals 1

    .prologue
    .line 656
    const-class v0, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;

    invoke-virtual {p0, v0}, Lcom/didi/frame/FragmentMgr;->redirect(Ljava/lang/Class;)V

    .line 657
    return-void
.end method

.method public showCarWaitForResponseFragment(I)V
    .locals 2
    .parameter "from"

    .prologue
    .line 660
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 661
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "from"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 662
    const-class v1, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;

    invoke-virtual {p0, v1, v0}, Lcom/didi/frame/FragmentMgr;->redirect(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 663
    return-void
.end method

.method public showCarWaitForResponseFragment(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .parameter "type"
    .parameter "oid"
    .parameter "city"
    .parameter "tipRank"
    .parameter "orderStartTime"

    .prologue
    .line 735
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 736
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "order_type"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 737
    const-string v1, "order_id"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 738
    const-string v1, "order_tip"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 739
    const-string v1, "order_start_time"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 741
    const-string v1, "order_city"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    :cond_0
    const-class v1, Lcom/didi/car/ui/fragment/CarWaitForResponseFragment;

    invoke-virtual {p0, v1, v0}, Lcom/didi/frame/FragmentMgr;->redirect(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 744
    return-void
.end method

.method public showCarWxAgentFragment()V
    .locals 1

    .prologue
    .line 802
    const-class v0, Lcom/didi/car/ui/fragment/CarPayWxAgentFragment;

    invoke-virtual {p0, v0}, Lcom/didi/frame/FragmentMgr;->redirect(Ljava/lang/Class;)V

    .line 803
    return-void
.end method

.method public showCommonAddrFragment(II)V
    .locals 2
    .parameter "from"
    .parameter "item"

    .prologue
    .line 771
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 772
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "from"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 773
    const-string v1, "item"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 774
    const-class v1, Lcom/didi/common/ui/fragment/CommonAddrFragment;

    invoke-virtual {p0, v1, v0}, Lcom/didi/frame/FragmentMgr;->redirect(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 775
    return-void
.end method

.method public showDDriveRealtimeFragment()V
    .locals 1

    .prologue
    .line 1163
    const-class v0, Lcom/didi/ddrive/ui/fragment/DDriveRealtimeFragment;

    invoke-virtual {p0, v0}, Lcom/didi/frame/FragmentMgr;->redirect(Ljava/lang/Class;)V

    .line 1164
    return-void
.end method

.method public showDDriveResendFragment()V
    .locals 1

    .prologue
    .line 707
    const-class v0, Lcom/didi/ddrive/ui/fragment/DDriveResendFragment;

    invoke-virtual {p0, v0}, Lcom/didi/frame/FragmentMgr;->redirect(Ljava/lang/Class;)V

    .line 708
    return-void
.end method

.method public showDDriveWaitForArrivalFragment()V
    .locals 1

    .prologue
    .line 1175
    const-class v0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;

    invoke-virtual {p0, v0}, Lcom/didi/frame/FragmentMgr;->redirect(Ljava/lang/Class;)V

    .line 1176
    return-void
.end method

.method public showDDriveWaitForArrivalFragment(I)V
    .locals 2
    .parameter "from"

    .prologue
    .line 1180
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1181
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "from"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1182
    const-class v1, Lcom/didi/ddrive/ui/fragment/DDriveWaitForArrivalFragment;

    invoke-virtual {p0, v1, v0}, Lcom/didi/frame/FragmentMgr;->redirect(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 1183
    return-void
.end method

.method public showDDriveWaitForResponseFragment()V
    .locals 1

    .prologue
    .line 1171
    const-class v0, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;

    invoke-virtual {p0, v0}, Lcom/didi/frame/FragmentMgr;->redirect(Ljava/lang/Class;)V

    .line 1172
    return-void
.end method

.method public showDDriveWaitForResponseFragment(I)V
    .locals 2
    .parameter "from"

    .prologue
    .line 676
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 677
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "from"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 678
    const-class v1, Lcom/didi/ddrive/ui/fragment/DDriveWaitForResponseFragment;

    invoke-virtual {p0, v1, v0}, Lcom/didi/frame/FragmentMgr;->redirect(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 679
    return-void
.end method

.method public showFeedbackFragment()V
    .locals 1

    .prologue
    .line 827
    const-class v0, Lcom/didi/common/ui/fragment/CommonFeedBackFragment;

    invoke-virtual {p0, v0}, Lcom/didi/frame/FragmentMgr;->redirect(Ljava/lang/Class;)V

    .line 828
    return-void
.end method

.method public showFlierBookingFragment()V
    .locals 1

    .prologue
    .line 764
    const-class v0, Lcom/didi/flier/ui/fragment/FlierBookingFragment;

    invoke-virtual {p0, v0}, Lcom/didi/frame/FragmentMgr;->redirect(Ljava/lang/Class;)V

    .line 765
    return-void
.end method

.method public showFlierRealtimeFragment()V
    .locals 1

    .prologue
    .line 1159
    const-class v0, Lcom/didi/flier/ui/fragment/FlierRealtimeFragment;

    invoke-virtual {p0, v0}, Lcom/didi/frame/FragmentMgr;->redirect(Ljava/lang/Class;)V

    .line 1160
    return-void
.end method

.method public showFlierResendFragment()V
    .locals 1

    .prologue
    .line 700
    const-class v0, Lcom/didi/flier/ui/fragment/FlierResendFragment;

    invoke-virtual {p0, v0}, Lcom/didi/frame/FragmentMgr;->redirect(Ljava/lang/Class;)V

    .line 701
    return-void
.end method

.method public showFlierWaitForResponseFragment()V
    .locals 1

    .prologue
    .line 666
    const-class v0, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;

    invoke-virtual {p0, v0}, Lcom/didi/frame/FragmentMgr;->redirect(Ljava/lang/Class;)V

    .line 667
    return-void
.end method

.method public showFlierWaitForResponseFragment(I)V
    .locals 2
    .parameter "from"

    .prologue
    .line 670
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 671
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "from"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 672
    const-class v1, Lcom/didi/flier/ui/fragment/FlierWaitForResponseFragment;

    invoke-virtual {p0, v1, v0}, Lcom/didi/frame/FragmentMgr;->redirect(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 673
    return-void
.end method

.method public showFragment(ILjava/lang/Class;)Landroid/support/v4/app/Fragment;
    .locals 1
    .parameter "id"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<+",
            "Landroid/support/v4/app/Fragment;",
            ">;)",
            "Landroid/support/v4/app/Fragment;"
        }
    .end annotation

    .prologue
    .local p2, fragmentClass:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/support/v4/app/Fragment;>;"
    const/4 v0, 0x0

    .line 417
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/didi/frame/FragmentMgr;->showFragment(ILjava/lang/Class;Landroid/os/Bundle;[I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public showFragment(ILjava/lang/Class;Landroid/os/Bundle;[I)Landroid/support/v4/app/Fragment;
    .locals 8
    .parameter "id"
    .parameter
    .parameter "args"
    .parameter "fragmentRedirectAnimArray"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class",
            "<+",
            "Landroid/support/v4/app/Fragment;",
            ">;",
            "Landroid/os/Bundle;",
            "[I)",
            "Landroid/support/v4/app/Fragment;"
        }
    .end annotation

    .prologue
    .line 434
    .local p2, fragmentClass:Ljava/lang/Class;,"Ljava/lang/Class<+Landroid/support/v4/app/Fragment;>;"
    invoke-static {}, Lcom/didi/frame/MainActivity;->isInvalid()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 438
    const/4 v2, 0x0

    .line 482
    :goto_0
    return-object v2

    .line 441
    :cond_0
    invoke-direct {p0, p2}, Lcom/didi/frame/FragmentMgr;->createFragment(Ljava/lang/Class;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    .line 442
    .local v2, fragment:Landroid/support/v4/app/Fragment;
    invoke-direct {p0, p2}, Lcom/didi/frame/FragmentMgr;->hasFragmentExistsInStack(Ljava/lang/Class;)Z

    move-result v3

    .line 444
    .local v3, fragmentExistsInStack:Z
    invoke-direct {p0, p2}, Lcom/didi/frame/FragmentMgr;->getFragmentTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    .line 445
    .local v4, fragmentTag:Ljava/lang/String;
    if-eqz p2, :cond_2

    if-eqz v4, :cond_2

    .line 446
    invoke-static {p3}, Lcom/didi/common/util/CollectionUtil;->isEmpty(Landroid/os/Bundle;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 447
    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v6, p3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 448
    :cond_1
    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 481
    :cond_2
    :goto_1
    invoke-direct {p0, p1, v2, v3}, Lcom/didi/frame/FragmentMgr;->onShow(ILandroid/support/v4/app/Fragment;Z)V

    goto :goto_0

    .line 451
    :cond_3
    if-eqz v3, :cond_4

    .line 452
    const-string v6, "FragmentMPushOut"

    invoke-static {v6}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 455
    :try_start_0
    iget-object v6, p0, Lcom/didi/frame/FragmentMgr;->mFragMgr:Landroid/support/v4/app/FragmentManager;

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7}, Landroid/support/v4/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 456
    :catch_0
    move-exception v1

    .line 457
    .local v1, exception:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 459
    :try_start_1
    iget-object v6, p0, Lcom/didi/frame/FragmentMgr;->mFragMgr:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "mStateSaved"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 460
    .local v5, mStateSaved:Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 461
    iget-object v6, p0, Lcom/didi/frame/FragmentMgr;->mFragMgr:Landroid/support/v4/app/FragmentManager;

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 462
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/didi/frame/FragmentMgr;->mFragMgr:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v5, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 463
    iget-object v6, p0, Lcom/didi/frame/FragmentMgr;->mFragMgr:Landroid/support/v4/app/FragmentManager;

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7}, Landroid/support/v4/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    .line 464
    .end local v5           #mStateSaved:Ljava/lang/reflect/Field;
    :catch_1
    move-exception v0

    .line 466
    .local v0, e:Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_1

    .line 467
    .end local v0           #e:Ljava/lang/NoSuchFieldException;
    :catch_2
    move-exception v0

    .line 469
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 470
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v0

    .line 472
    .local v0, e:Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1

    .line 476
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    .end local v1           #exception:Ljava/lang/Exception;
    :cond_4
    const-string v6, "FragmentMNew"

    invoke-static {v6}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 478
    invoke-direct {p0, p1, p4, v4, v2}, Lcom/didi/frame/FragmentMgr;->showNewFragment(I[ILjava/lang/String;Landroid/support/v4/app/Fragment;)V

    goto :goto_1
.end method

.method public showLoginFragment()V
    .locals 1

    .prologue
    .line 816
    const-class v0, Lcom/didi/common/ui/fragment/CommonLoginFragment;

    invoke-virtual {p0, v0}, Lcom/didi/frame/FragmentMgr;->redirect(Ljava/lang/Class;)V

    .line 817
    return-void
.end method

.method public showLoginFragment(Landroid/os/Bundle;)V
    .locals 1
    .parameter "bundle"

    .prologue
    .line 820
    const-class v0, Lcom/didi/common/ui/fragment/CommonLoginFragment;

    invoke-virtual {p0, v0, p1}, Lcom/didi/frame/FragmentMgr;->redirect(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 821
    return-void
.end method

.method public showMapFragment()V
    .locals 2

    .prologue
    .line 261
    const v0, 0x7f08004c

    const-class v1, Lcom/didi/frame/MapFragment;

    invoke-virtual {p0, v0, v1}, Lcom/didi/frame/FragmentMgr;->showFragment(ILjava/lang/Class;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/didi/frame/MapFragment;

    iput-object v0, p0, Lcom/didi/frame/FragmentMgr;->mMapFragment:Lcom/didi/frame/MapFragment;

    .line 262
    return-void
.end method

.method public showMenuFragment()V
    .locals 2

    .prologue
    .line 809
    const v0, 0x7f080481

    const-class v1, Lcom/didi/common/ui/fragment/MenuFragment;

    invoke-virtual {p0, v0, v1}, Lcom/didi/frame/FragmentMgr;->showFragment(ILjava/lang/Class;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/didi/common/ui/fragment/MenuFragment;

    iput-object v0, p0, Lcom/didi/frame/FragmentMgr;->mMenuFragment:Lcom/didi/common/ui/fragment/MenuFragment;

    .line 810
    return-void
.end method

.method public showMyAccountFragment()V
    .locals 1

    .prologue
    .line 788
    const-class v0, Lcom/didi/common/ui/fragment/CommonMyAccountFragment;

    invoke-virtual {p0, v0}, Lcom/didi/frame/FragmentMgr;->redirect(Ljava/lang/Class;)V

    .line 789
    return-void
.end method

.method public showMyOrdersFragment()V
    .locals 1

    .prologue
    .line 848
    const-class v0, Lcom/didi/common/ui/fragment/CommonHistoryOrdersFragment;

    invoke-virtual {p0, v0}, Lcom/didi/frame/FragmentMgr;->redirect(Ljava/lang/Class;)V

    .line 849
    return-void
.end method

.method public showPayIntroFragment(Lcom/didi/common/ui/fragment/SlideFragment;)V
    .locals 3
    .parameter "f"

    .prologue
    .line 1085
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1086
    .local v0, b:Landroid/os/Bundle;
    const-string v1, "from"

    instance-of v2, p1, Lcom/didi/common/ui/fragment/SplashFragment;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1087
    const-class v1, Lcom/didi/common/ui/fragment/VersionIntroFragment;

    invoke-virtual {p0, v1, v0}, Lcom/didi/frame/FragmentMgr;->redirect(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 1088
    return-void
.end method

.method public showSetupFragment()V
    .locals 1

    .prologue
    .line 1080
    const-class v0, Lcom/didi/common/ui/fragment/SetupFragment;

    invoke-virtual {p0, v0}, Lcom/didi/frame/FragmentMgr;->redirect(Ljava/lang/Class;)V

    .line 1081
    return-void
.end method

.method public showShareFragment()V
    .locals 1

    .prologue
    .line 781
    const-class v0, Lcom/didi/common/ui/fragment/ShareFragment;

    invoke-virtual {p0, v0}, Lcom/didi/frame/FragmentMgr;->redirect(Ljava/lang/Class;)V

    .line 782
    return-void
.end method

.method public showSplashFragment()V
    .locals 2

    .prologue
    .line 252
    const v0, 0x7f080051

    const-class v1, Lcom/didi/common/ui/fragment/SplashFragment;

    invoke-virtual {p0, v0, v1}, Lcom/didi/frame/FragmentMgr;->showFragment(ILjava/lang/Class;)Landroid/support/v4/app/Fragment;

    .line 253
    return-void
.end method

.method public showSwitcherFragment()V
    .locals 2

    .prologue
    .line 266
    const v0, 0x7f08004e

    const-class v1, Lcom/didi/frame/switcher/SwitcherFragment;

    invoke-virtual {p0, v0, v1}, Lcom/didi/frame/FragmentMgr;->showFragment(ILjava/lang/Class;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/didi/frame/switcher/SwitcherFragment;

    iput-object v0, p0, Lcom/didi/frame/FragmentMgr;->mSwitcherFragment:Lcom/didi/frame/switcher/SwitcherFragment;

    .line 267
    return-void
.end method

.method public showTaxiBookingFragment()V
    .locals 1

    .prologue
    .line 750
    const-class v0, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;

    invoke-virtual {p0, v0}, Lcom/didi/frame/FragmentMgr;->redirect(Ljava/lang/Class;)V

    .line 751
    return-void
.end method

.method public showTaxiConfirmFragment()V
    .locals 1

    .prologue
    .line 623
    const-class v0, Lcom/didi/taxi/ui/fragment/TaxiConfirmFragment;

    invoke-virtual {p0, v0}, Lcom/didi/frame/FragmentMgr;->redirect(Ljava/lang/Class;)V

    .line 624
    return-void
.end method

.method public showTaxiRealtimeFragment()V
    .locals 1

    .prologue
    .line 1144
    const-class v0, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;

    invoke-virtual {p0, v0}, Lcom/didi/frame/FragmentMgr;->redirect(Ljava/lang/Class;)V

    .line 1145
    return-void
.end method

.method public showTaxiRealtimeFragmentFromAddr(I)V
    .locals 3
    .parameter "type"

    .prologue
    .line 1148
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1149
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "from_common_addr"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1150
    const-string v1, "item"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1151
    const v1, 0x7f080051

    const-class v2, Lcom/didi/taxi/ui/fragment/TaxiRealtimeFragment;

    invoke-virtual {p0, v1, v2, v0}, Lcom/didi/frame/FragmentMgr;->redirectToFragment(ILjava/lang/Class;Landroid/os/Bundle;)V

    .line 1152
    return-void
.end method

.method public showTaxiResendFragment()V
    .locals 1

    .prologue
    .line 686
    const-class v0, Lcom/didi/taxi/ui/fragment/TaxiResendFragment;

    invoke-virtual {p0, v0}, Lcom/didi/frame/FragmentMgr;->redirect(Ljava/lang/Class;)V

    .line 687
    return-void
.end method

.method public showTaxiWaitForArrivalFragment()V
    .locals 1

    .prologue
    .line 1129
    const-class v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;

    invoke-virtual {p0, v0}, Lcom/didi/frame/FragmentMgr;->redirect(Ljava/lang/Class;)V

    .line 1130
    return-void
.end method

.method public showTaxiWaitForArrivalFragment(II)V
    .locals 2
    .parameter "serviceType"
    .parameter "from"

    .prologue
    .line 1133
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1134
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "service_type"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1135
    const-string v1, "from"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1136
    const-class v1, Lcom/didi/taxi/ui/fragment/TaxiWaitForArrivalFragment;

    invoke-virtual {p0, v1, v0}, Lcom/didi/frame/FragmentMgr;->redirect(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 1137
    return-void
.end method

.method public showTaxiWaitForResponseFragment()V
    .locals 1

    .prologue
    .line 643
    const-class v0, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    invoke-virtual {p0, v0}, Lcom/didi/frame/FragmentMgr;->redirect(Ljava/lang/Class;)V

    .line 644
    return-void
.end method

.method public showTaxiWaitForResponseFragment(I)V
    .locals 2
    .parameter "from"

    .prologue
    .line 647
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 648
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "from"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 649
    const-class v1, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    invoke-virtual {p0, v1, v0}, Lcom/didi/frame/FragmentMgr;->redirect(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 650
    return-void
.end method

.method public showTitleBarFragment()V
    .locals 2

    .prologue
    .line 1198
    const v0, 0x7f080050

    const-class v1, Lcom/didi/frame/titlebar/TitleBarFragment;

    invoke-virtual {p0, v0, v1}, Lcom/didi/frame/FragmentMgr;->showFragment(ILjava/lang/Class;)Landroid/support/v4/app/Fragment;

    .line 1199
    return-void
.end method

.method public showUserAgreeFragment()V
    .locals 1

    .prologue
    .line 841
    const-class v0, Lcom/didi/common/ui/fragment/CommonUserAgreeFragment;

    invoke-virtual {p0, v0}, Lcom/didi/frame/FragmentMgr;->redirect(Ljava/lang/Class;)V

    .line 842
    return-void
.end method

.method public showUserInfoFragment(Lcom/didi/frame/FragmentMgr$UserInfoFrom;)V
    .locals 1
    .parameter "userInfoFrom"

    .prologue
    .line 1072
    iput-object p1, p0, Lcom/didi/frame/FragmentMgr;->mUserInfoFrom:Lcom/didi/frame/FragmentMgr$UserInfoFrom;

    .line 1073
    const-class v0, Lcom/didi/common/ui/userinfo/UserInfoFragment;

    invoke-virtual {p0, v0}, Lcom/didi/frame/FragmentMgr;->redirect(Ljava/lang/Class;)V

    .line 1074
    return-void
.end method

.method public showWaitAnswerFragment(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .parameter "type"
    .parameter "oid"
    .parameter "city"
    .parameter "tipRank"
    .parameter "orderStartTime"

    .prologue
    .line 723
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 724
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "order_type"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 725
    const-string v1, "order_id"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 726
    const-string v1, "order_tip"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 727
    const-string v1, "order_start_time"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 728
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 729
    const-string v1, "order_city"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    :cond_0
    const-class v1, Lcom/didi/taxi/ui/fragment/TaxiWaitForResponseFragment;

    invoke-virtual {p0, v1, v0}, Lcom/didi/frame/FragmentMgr;->redirect(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 732
    return-void
.end method
