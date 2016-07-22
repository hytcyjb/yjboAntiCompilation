.class public Lcom/didi/common/ui/userinfo/UserInfoFragment;
.super Lcom/didi/common/ui/fragment/SlideFragment;
.source "UserInfoFragment.java"

# interfaces
.implements Lcom/didi/common/ui/userinfo/UserInfoHelper$UserInfoListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/common/ui/userinfo/UserInfoFragment$UpdateFinishCallBack;
    }
.end annotation


# static fields
.field public static final REQUEST_CODE_CAPTURE_PIC:I = 0x3ee

.field public static final REQUEST_CODE_CROP_PIC:I = 0x3ef

.field public static final REQUEST_CODE_MODIFY_JOB:I = 0x3ec

.field public static final REQUEST_CODE_MODIFY_NICKNAME:I = 0x3e9

.field public static final REQUEST_CODE_MODIFY_SIGN:I = 0x3ea

.field public static final REQUEST_CODE_MODIFY_TRAD:I = 0x3eb

.field public static final REQUEST_CODE_SELECT_PIC:I = 0x3ed

.field public static final REQUSET_CODE_AUTH_STATE:I = 0x3f0


# instance fields
.field private backListener:Landroid/view/View$OnClickListener;

.field private mAgeList:Lcom/didi/common/ui/userinfo/AgeList;

.field private mAgePicker:Lcom/didi/common/ui/userinfo/ListPickerWindow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/didi/common/ui/userinfo/ListPickerWindow",
            "<",
            "Lcom/didi/common/ui/userinfo/UserInfo$Age;",
            ">;"
        }
    .end annotation
.end field

.field private mAvatarMenu:Lcom/didi/common/ui/userinfo/BottomListMenu;

.field private mAvatarOriginFile:Ljava/io/File;

.field private mCertificationItem:Lcom/didi/common/ui/userinfo/UserInfoItemView;

.field private mCropFile:Ljava/io/File;

.field private mFirstBlockContainer:Lcom/didi/common/ui/component/VerticalViewContainer;

.field private mIsInfoChanged:Z

.field private mOnItemClickListener:Lcom/didi/common/ui/component/VerticalViewContainer$OnSonItemClickListener;

.field private mRootView:Landroid/view/View;

.field private mSecondBlockContainer:Lcom/didi/common/ui/component/VerticalViewContainer;

.field private mSexPicker:Lcom/didi/common/ui/userinfo/ListPickerWindow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/didi/common/ui/userinfo/ListPickerWindow",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mThirdBlockContainer:Lcom/didi/common/ui/component/VerticalViewContainer;

.field private mUserInfo:Lcom/didi/common/ui/userinfo/UserInfo;

.field private needUpdateUserInfo:Z

.field private persionListener:Landroid/view/View$OnClickListener;

.field positionTag:I

.field private titleBar:Lcom/didi/frame/titlebar/TitleBar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/SlideFragment;-><init>()V

    .line 92
    iput-boolean v0, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mIsInfoChanged:Z

    .line 97
    iput-boolean v0, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->needUpdateUserInfo:Z

    .line 142
    iput v0, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->positionTag:I

    .line 258
    new-instance v0, Lcom/didi/common/ui/userinfo/UserInfoFragment$1;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/userinfo/UserInfoFragment$1;-><init>(Lcom/didi/common/ui/userinfo/UserInfoFragment;)V

    iput-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->backListener:Landroid/view/View$OnClickListener;

    .line 266
    new-instance v0, Lcom/didi/common/ui/userinfo/UserInfoFragment$2;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/userinfo/UserInfoFragment$2;-><init>(Lcom/didi/common/ui/userinfo/UserInfoFragment;)V

    iput-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->persionListener:Landroid/view/View$OnClickListener;

    .line 300
    new-instance v0, Lcom/didi/common/ui/userinfo/UserInfoFragment$4;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/userinfo/UserInfoFragment$4;-><init>(Lcom/didi/common/ui/userinfo/UserInfoFragment;)V

    iput-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mOnItemClickListener:Lcom/didi/common/ui/component/VerticalViewContainer$OnSonItemClickListener;

    .line 759
    return-void
.end method

.method static synthetic access$000(Lcom/didi/common/ui/userinfo/UserInfoFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->back()V

    return-void
.end method

.method static synthetic access$100(Lcom/didi/common/ui/userinfo/UserInfoFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->editAvatar()V

    return-void
.end method

.method static synthetic access$1000(Lcom/didi/common/ui/userinfo/UserInfoFragment;)Ljava/io/File;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mAvatarOriginFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/didi/common/ui/userinfo/UserInfoFragment;)Ljava/io/File;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mCropFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/didi/common/ui/userinfo/UserInfoFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mIsInfoChanged:Z

    return p1
.end method

.method static synthetic access$200(Lcom/didi/common/ui/userinfo/UserInfoFragment;)Lcom/didi/common/ui/userinfo/UserInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mUserInfo:Lcom/didi/common/ui/userinfo/UserInfo;

    return-object v0
.end method

.method static synthetic access$300(Lcom/didi/common/ui/userinfo/UserInfoFragment;IILandroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->toContainerActivityForResult(IILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$400(Lcom/didi/common/ui/userinfo/UserInfoFragment;Lcom/didi/common/ui/userinfo/UserInfoItemView;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->selectSex(Lcom/didi/common/ui/userinfo/UserInfoItemView;)V

    return-void
.end method

.method static synthetic access$500(Lcom/didi/common/ui/userinfo/UserInfoFragment;Lcom/didi/common/ui/userinfo/UserInfoItemView;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->selectAge(Lcom/didi/common/ui/userinfo/UserInfoItemView;)V

    return-void
.end method

.method static synthetic access$600(Lcom/didi/common/ui/userinfo/UserInfoFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->openUserLevelWeb()V

    return-void
.end method

.method static synthetic access$700(Lcom/didi/common/ui/userinfo/UserInfoFragment;Lcom/didi/common/ui/userinfo/UserInfoFragment$UpdateFinishCallBack;[Lorg/apache/http/NameValuePair;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->updateInfoToServer(Lcom/didi/common/ui/userinfo/UserInfoFragment$UpdateFinishCallBack;[Lorg/apache/http/NameValuePair;)V

    return-void
.end method

.method static synthetic access$802(Lcom/didi/common/ui/userinfo/UserInfoFragment;Lcom/didi/common/ui/userinfo/AgeList;)Lcom/didi/common/ui/userinfo/AgeList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mAgeList:Lcom/didi/common/ui/userinfo/AgeList;

    return-object p1
.end method

.method static synthetic access$900(Lcom/didi/common/ui/userinfo/UserInfoFragment;Lcom/didi/common/ui/userinfo/UserInfoItemView;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->showSelectWindow(Lcom/didi/common/ui/userinfo/UserInfoItemView;)V

    return-void
.end method

.method private back()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 282
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->titleBar:Lcom/didi/frame/titlebar/TitleBar;

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->titleBar:Lcom/didi/frame/titlebar/TitleBar;

    invoke-virtual {v0, v2}, Lcom/didi/frame/titlebar/TitleBar;->setmIsUserInfoViewShow(Z)V

    .line 285
    :cond_0
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/frame/FragmentMgr;->getUserInfoFrom()Lcom/didi/frame/FragmentMgr$UserInfoFrom;

    move-result-object v0

    sget-object v1, Lcom/didi/frame/FragmentMgr$UserInfoFrom;->MAP:Lcom/didi/frame/FragmentMgr$UserInfoFrom;

    invoke-virtual {v0, v1}, Lcom/didi/frame/FragmentMgr$UserInfoFrom;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 286
    invoke-static {}, Lcom/didi/frame/MainActivity;->getActivity()Lcom/didi/frame/MainActivity;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/didi/frame/MainActivity;->switchLeftView(I)V

    .line 288
    :cond_1
    iget-boolean v0, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mIsInfoChanged:Z

    if-eqz v0, :cond_2

    .line 289
    invoke-static {}, Lcom/didi/common/ui/userinfo/UserInfoHelper;->notifyUserInfChange()V

    .line 291
    :cond_2
    new-instance v0, Lcom/didi/common/ui/userinfo/UserInfoFragment$3;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/userinfo/UserInfoFragment$3;-><init>(Lcom/didi/common/ui/userinfo/UserInfoFragment;)V

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lcom/didi/common/handler/UiThreadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 298
    return-void
.end method

.method private clipStringContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "content"

    .prologue
    .line 234
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 235
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0xb

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 240
    :goto_0
    return-object v0

    .line 238
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 240
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method private editAvatar()V
    .locals 4

    .prologue
    .line 452
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mAvatarMenu:Lcom/didi/common/ui/userinfo/BottomListMenu;

    if-nez v0, :cond_0

    .line 453
    new-instance v0, Lcom/didi/common/ui/userinfo/BottomListMenu;

    invoke-virtual {p0}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f060001

    invoke-static {v3}, Lcom/didi/common/util/TextUtil;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/common/ui/userinfo/BottomListMenu;-><init>(Landroid/app/Activity;Landroid/view/View;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mAvatarMenu:Lcom/didi/common/ui/userinfo/BottomListMenu;

    .line 454
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mAvatarMenu:Lcom/didi/common/ui/userinfo/BottomListMenu;

    new-instance v1, Lcom/didi/common/ui/userinfo/UserInfoFragment$8;

    invoke-direct {v1, p0}, Lcom/didi/common/ui/userinfo/UserInfoFragment$8;-><init>(Lcom/didi/common/ui/userinfo/UserInfoFragment;)V

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/userinfo/BottomListMenu;->setListMenuListener(Lcom/didi/common/ui/userinfo/BottomListMenu$ListMenuListener;)V

    .line 470
    :cond_0
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mAvatarMenu:Lcom/didi/common/ui/userinfo/BottomListMenu;

    invoke-virtual {v0}, Lcom/didi/common/ui/userinfo/BottomListMenu;->showDialog()V

    .line 471
    return-void
.end method

.method private getFilledLevelUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 487
    iget-object v1, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mUserInfo:Lcom/didi/common/ui/userinfo/UserInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mUserInfo:Lcom/didi/common/ui/userinfo/UserInfo;

    invoke-virtual {v1}, Lcom/didi/common/ui/userinfo/UserInfo;->getLevel()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mUserInfo:Lcom/didi/common/ui/userinfo/UserInfo;

    invoke-virtual {v1}, Lcom/didi/common/ui/userinfo/UserInfo;->getLevelUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 488
    :cond_0
    const/4 v1, 0x0

    .line 501
    :goto_0
    return-object v1

    .line 490
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mUserInfo:Lcom/didi/common/ui/userinfo/UserInfo;

    invoke-virtual {v1}, Lcom/didi/common/ui/userinfo/UserInfo;->getLevelUrl()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 491
    .local v0, urlBuilder:Ljava/lang/StringBuilder;
    const-string v1, "?token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/common/config/Preferences;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 492
    const-string v1, "&phone="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/common/config/Preferences;->getPhone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    const-string v1, "&lat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/soso/location/LocationController;->getLatString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 494
    const-string v1, "&lng="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/soso/location/LocationController;->getLngString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 495
    const-string v1, "&maptype="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "soso"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 496
    const-string v1, "&appversion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/didi/common/util/Utils;->getCurrentVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    const-string v1, "&datatype=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    const-string v1, "&channel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/didi/common/util/MarketChannelHelper;->getChannelID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    const-string v1, "&systemName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/didi/common/util/Utils;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    const-string v1, "&systemVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method private judgeCertificationTextColor(Ljava/lang/String;)V
    .locals 4
    .parameter "authState"

    .prologue
    const v3, 0x7f070022

    .line 222
    invoke-direct {p0, p1}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->clipStringContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, clipAuthState:Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 224
    :cond_0
    iget-object v1, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mCertificationItem:Lcom/didi/common/ui/userinfo/UserInfoItemView;

    invoke-virtual {p0}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/didi/common/ui/userinfo/UserInfoItemView;->setHitColor(I)V

    .line 225
    iget-object v1, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mCertificationItem:Lcom/didi/common/ui/userinfo/UserInfoItemView;

    invoke-virtual {p0}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/didi/common/ui/userinfo/UserInfoItemView;->setTextColor(I)V

    .line 231
    :goto_0
    return-void

    .line 226
    :cond_1
    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 227
    iget-object v1, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mCertificationItem:Lcom/didi/common/ui/userinfo/UserInfoItemView;

    invoke-virtual {p0}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/didi/common/ui/userinfo/UserInfoItemView;->setTextColor(I)V

    goto :goto_0

    .line 229
    :cond_2
    iget-object v1, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mCertificationItem:Lcom/didi/common/ui/userinfo/UserInfoItemView;

    invoke-virtual {p0}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070021

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/didi/common/ui/userinfo/UserInfoItemView;->setTextColor(I)V

    goto :goto_0
.end method

.method private openUserLevelWeb()V
    .locals 5

    .prologue
    .line 474
    invoke-direct {p0}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->getFilledLevelUrl()Ljava/lang/String;

    move-result-object v1

    .line 475
    .local v1, url:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 476
    new-instance v2, Lcom/didi/common/ui/webview/WebViewModel;

    invoke-direct {v2}, Lcom/didi/common/ui/webview/WebViewModel;-><init>()V

    .line 477
    .local v2, webViewModel:Lcom/didi/common/ui/webview/WebViewModel;
    iget-object v3, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mUserInfo:Lcom/didi/common/ui/userinfo/UserInfo;

    invoke-virtual {v3}, Lcom/didi/common/ui/userinfo/UserInfo;->getLevelName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/didi/common/ui/webview/WebViewModel;->title:Ljava/lang/String;

    .line 478
    iput-object v1, v2, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    .line 479
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/didi/common/ui/webview/WebActivity;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 480
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "data_model"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 481
    invoke-virtual {p0, v0}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->startActivity(Landroid/content/Intent;)V

    .line 483
    .end local v0           #intent:Landroid/content/Intent;
    .end local v2           #webViewModel:Lcom/didi/common/ui/webview/WebViewModel;
    :cond_0
    return-void
.end method

.method private selectAge(Lcom/didi/common/ui/userinfo/UserInfoItemView;)V
    .locals 1
    .parameter "ageItemView"

    .prologue
    .line 399
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mAgeList:Lcom/didi/common/ui/userinfo/AgeList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mAgeList:Lcom/didi/common/ui/userinfo/AgeList;

    invoke-virtual {v0}, Lcom/didi/common/ui/userinfo/AgeList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 400
    :cond_0
    new-instance v0, Lcom/didi/common/ui/userinfo/UserInfoFragment$6;

    invoke-direct {v0, p0, p1}, Lcom/didi/common/ui/userinfo/UserInfoFragment$6;-><init>(Lcom/didi/common/ui/userinfo/UserInfoFragment;Lcom/didi/common/ui/userinfo/UserInfoItemView;)V

    invoke-static {v0}, Lcom/didi/common/net/CommonRequest;->getAgeList(Lcom/didi/common/net/ResponseListener;)V

    .line 417
    :goto_0
    return-void

    .line 415
    :cond_1
    invoke-direct {p0, p1}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->showSelectWindow(Lcom/didi/common/ui/userinfo/UserInfoItemView;)V

    goto :goto_0
.end method

.method private selectSex(Lcom/didi/common/ui/userinfo/UserInfoItemView;)V
    .locals 4
    .parameter "sexItemView"

    .prologue
    .line 369
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mSexPicker:Lcom/didi/common/ui/userinfo/ListPickerWindow;

    if-nez v0, :cond_0

    .line 370
    new-instance v0, Lcom/didi/common/ui/userinfo/ListPickerWindow;

    invoke-virtual {p0}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mRootView:Landroid/view/View;

    const v3, 0x7f060005

    invoke-static {v3}, Lcom/didi/common/util/TextUtil;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/common/ui/userinfo/ListPickerWindow;-><init>(Landroid/content/Context;Landroid/view/View;[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mSexPicker:Lcom/didi/common/ui/userinfo/ListPickerWindow;

    .line 371
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mSexPicker:Lcom/didi/common/ui/userinfo/ListPickerWindow;

    new-instance v1, Lcom/didi/common/ui/userinfo/UserInfoFragment$5;

    invoke-direct {v1, p0, p1}, Lcom/didi/common/ui/userinfo/UserInfoFragment$5;-><init>(Lcom/didi/common/ui/userinfo/UserInfoFragment;Lcom/didi/common/ui/userinfo/UserInfoItemView;)V

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/userinfo/ListPickerWindow;->setListPickerListener(Lcom/didi/common/ui/userinfo/ListPickerWindow$ListPickerListener;)V

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mSexPicker:Lcom/didi/common/ui/userinfo/ListPickerWindow;

    invoke-virtual {p1}, Lcom/didi/common/ui/userinfo/UserInfoItemView;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/userinfo/ListPickerWindow;->setSelectedItem(Ljava/lang/Object;)V

    .line 393
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mSexPicker:Lcom/didi/common/ui/userinfo/ListPickerWindow;

    invoke-virtual {v0}, Lcom/didi/common/ui/userinfo/ListPickerWindow;->showDialog()V

    .line 394
    return-void
.end method

.method private setTitlebar()V
    .locals 3

    .prologue
    .line 128
    invoke-static {}, Lcom/didi/frame/titlebar/TitleBarHelper;->showTitleBar()V

    .line 129
    invoke-static {}, Lcom/didi/frame/titlebar/TitleBarHelper;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->titleBar:Lcom/didi/frame/titlebar/TitleBar;

    .line 130
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->titleBar:Lcom/didi/frame/titlebar/TitleBar;

    if-eqz v0, :cond_1

    .line 131
    invoke-static {}, Lcom/didi/frame/business/OrderHelper;->getBusiness()Lcom/didi/frame/business/Business;

    move-result-object v0

    sget-object v1, Lcom/didi/frame/business/Business;->Beatles:Lcom/didi/frame/business/Business;

    if-ne v0, v1, :cond_0

    .line 132
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->titleBar:Lcom/didi/frame/titlebar/TitleBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/didi/frame/titlebar/TitleBar;->setmIsUserInfoViewShow(Z)V

    .line 133
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->titleBar:Lcom/didi/frame/titlebar/TitleBar;

    const v1, 0x7f0b0478

    iget-object v2, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->persionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/didi/frame/titlebar/TitleBar;->setRightText(ILandroid/view/View$OnClickListener;)V

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->titleBar:Lcom/didi/frame/titlebar/TitleBar;

    const v1, 0x7f020170

    iget-object v2, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->backListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/didi/frame/titlebar/TitleBar;->setLeftDrawable(ILandroid/view/View$OnClickListener;)V

    .line 136
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->titleBar:Lcom/didi/frame/titlebar/TitleBar;

    const v1, 0x7f0b0558

    invoke-virtual {v0, v1}, Lcom/didi/frame/titlebar/TitleBar;->setTitle(I)V

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->titleBar:Lcom/didi/frame/titlebar/TitleBar;

    invoke-virtual {v0}, Lcom/didi/frame/titlebar/TitleBar;->hideRight()V

    .line 140
    return-void
.end method

.method private setupViews(Landroid/view/View;)V
    .locals 24
    .parameter "view"

    .prologue
    .line 146
    const v21, 0x7f0803a4

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Lcom/didi/common/ui/component/VerticalViewContainer;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mFirstBlockContainer:Lcom/didi/common/ui/component/VerticalViewContainer;

    .line 149
    new-instance v6, Lcom/didi/common/ui/userinfo/UserInfoItemView;

    invoke-virtual/range {p0 .. p0}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v6, v0}, Lcom/didi/common/ui/userinfo/UserInfoItemView;-><init>(Landroid/content/Context;)V

    .line 150
    .local v6, avatarItem:Lcom/didi/common/ui/userinfo/UserInfoItemView;
    const v21, 0x7f0b01ea

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mUserInfo:Lcom/didi/common/ui/userinfo/UserInfo;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/didi/common/ui/userinfo/UserInfo;->getAvatar()Ljava/lang/String;

    move-result-object v22

    const v23, 0x7f02025e

    move/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v6, v0, v1, v2}, Lcom/didi/common/ui/userinfo/UserInfoItemView;->fillImageInfo(ILjava/lang/String;I)V

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mFirstBlockContainer:Lcom/didi/common/ui/component/VerticalViewContainer;

    move-object/from16 v21, v0

    const v22, 0x7f0b01ea

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v6, v1}, Lcom/didi/common/ui/component/VerticalViewContainer;->appendView(Landroid/view/View;I)V

    .line 153
    new-instance v16, Lcom/didi/common/ui/userinfo/UserInfoItemView;

    invoke-virtual/range {p0 .. p0}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/didi/common/ui/userinfo/UserInfoItemView;-><init>(Landroid/content/Context;)V

    .line 154
    .local v16, screenNameItem:Lcom/didi/common/ui/userinfo/UserInfoItemView;
    const v21, 0x7f0b0489

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/userinfo/UserInfoItemView;->setContentHint(I)V

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mUserInfo:Lcom/didi/common/ui/userinfo/UserInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/didi/common/ui/userinfo/UserInfo;->getUserNickname()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/didi/common/util/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 156
    const v21, 0x7f0b0419

    const-string v22, ""

    move-object/from16 v0, v16

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/ui/userinfo/UserInfoItemView;->fillInfo(ILjava/lang/String;)V

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mUserInfo:Lcom/didi/common/ui/userinfo/UserInfo;

    move-object/from16 v21, v0

    const-string v22, ""

    invoke-virtual/range {v21 .. v22}, Lcom/didi/common/ui/userinfo/UserInfo;->setNickname(Ljava/lang/String;)V

    .line 161
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mFirstBlockContainer:Lcom/didi/common/ui/component/VerticalViewContainer;

    move-object/from16 v21, v0

    const v22, 0x7f0b0419

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/ui/component/VerticalViewContainer;->appendView(Landroid/view/View;I)V

    .line 163
    new-instance v17, Lcom/didi/common/ui/userinfo/UserInfoItemView;

    invoke-virtual/range {p0 .. p0}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v21

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/didi/common/ui/userinfo/UserInfoItemView;-><init>(Landroid/content/Context;)V

    .line 164
    .local v17, sexItem:Lcom/didi/common/ui/userinfo/UserInfoItemView;
    const v21, 0x7f0b048a

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/userinfo/UserInfoItemView;->setContentHint(I)V

    .line 165
    const v21, 0x7f0b04f4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mUserInfo:Lcom/didi/common/ui/userinfo/UserInfo;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/didi/common/ui/userinfo/UserInfo;->getGenderStr()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v17

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/ui/userinfo/UserInfoItemView;->fillInfo(ILjava/lang/String;)V

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mFirstBlockContainer:Lcom/didi/common/ui/component/VerticalViewContainer;

    move-object/from16 v21, v0

    const v22, 0x7f0b04f4

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/ui/component/VerticalViewContainer;->appendView(Landroid/view/View;I)V

    .line 168
    new-instance v5, Lcom/didi/common/ui/userinfo/UserInfoItemView;

    invoke-virtual/range {p0 .. p0}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v5, v0}, Lcom/didi/common/ui/userinfo/UserInfoItemView;-><init>(Landroid/content/Context;)V

    .line 169
    .local v5, ageItem:Lcom/didi/common/ui/userinfo/UserInfoItemView;
    const v21, 0x7f0b048a

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Lcom/didi/common/ui/userinfo/UserInfoItemView;->setContentHint(I)V

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mUserInfo:Lcom/didi/common/ui/userinfo/UserInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/didi/common/ui/userinfo/UserInfo;->getAge()Lcom/didi/common/ui/userinfo/UserInfo$Age;

    move-result-object v3

    .line 171
    .local v3, age:Lcom/didi/common/ui/userinfo/UserInfo$Age;
    if-eqz v3, :cond_1

    iget-object v4, v3, Lcom/didi/common/ui/userinfo/UserInfo$Age;->ageContent:Ljava/lang/String;

    .line 172
    .local v4, ageContent:Ljava/lang/String;
    :goto_1
    const v21, 0x7f0b01d8

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->clipStringContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Lcom/didi/common/ui/userinfo/UserInfoItemView;->fillInfo(ILjava/lang/String;)V

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mFirstBlockContainer:Lcom/didi/common/ui/component/VerticalViewContainer;

    move-object/from16 v21, v0

    const v22, 0x7f0b01d8

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v5, v1}, Lcom/didi/common/ui/component/VerticalViewContainer;->appendView(Landroid/view/View;I)V

    .line 175
    new-instance v15, Lcom/didi/common/ui/userinfo/UserInfoItemView;

    invoke-virtual/range {p0 .. p0}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v15, v0}, Lcom/didi/common/ui/userinfo/UserInfoItemView;-><init>(Landroid/content/Context;)V

    .line 176
    .local v15, mobileItem:Lcom/didi/common/ui/userinfo/UserInfoItemView;
    invoke-virtual {v15}, Lcom/didi/common/ui/userinfo/UserInfoItemView;->hideArrow()V

    .line 177
    const v21, 0x7f0b0403

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mUserInfo:Lcom/didi/common/ui/userinfo/UserInfo;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/didi/common/ui/userinfo/UserInfo;->getPhone()Ljava/lang/String;

    move-result-object v22

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Lcom/didi/common/ui/userinfo/UserInfoItemView;->fillInfo(ILjava/lang/String;)V

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mFirstBlockContainer:Lcom/didi/common/ui/component/VerticalViewContainer;

    move-object/from16 v21, v0

    const v22, 0x7f0b0403

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v15, v1}, Lcom/didi/common/ui/component/VerticalViewContainer;->appendView(Landroid/view/View;I)V

    .line 180
    new-instance v12, Lcom/didi/common/ui/userinfo/UserInfoItemView;

    invoke-virtual/range {p0 .. p0}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v12, v0}, Lcom/didi/common/ui/userinfo/UserInfoItemView;-><init>(Landroid/content/Context;)V

    .line 181
    .local v12, desItem:Lcom/didi/common/ui/userinfo/UserInfoItemView;
    const v21, 0x7f0b0489

    move/from16 v0, v21

    invoke-virtual {v12, v0}, Lcom/didi/common/ui/userinfo/UserInfoItemView;->setContentHint(I)V

    .line 182
    const v21, 0x7f0b0409

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mUserInfo:Lcom/didi/common/ui/userinfo/UserInfo;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/didi/common/ui/userinfo/UserInfo;->getSign()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->clipStringContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v12, v0, v1}, Lcom/didi/common/ui/userinfo/UserInfoItemView;->fillInfo(ILjava/lang/String;)V

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mFirstBlockContainer:Lcom/didi/common/ui/component/VerticalViewContainer;

    move-object/from16 v21, v0

    const v22, 0x7f0b0409

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v12, v1}, Lcom/didi/common/ui/component/VerticalViewContainer;->appendView(Landroid/view/View;I)V

    .line 185
    new-instance v14, Lcom/didi/common/ui/userinfo/UserInfoItemView;

    invoke-virtual/range {p0 .. p0}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v14, v0}, Lcom/didi/common/ui/userinfo/UserInfoItemView;-><init>(Landroid/content/Context;)V

    .line 186
    .local v14, levelItem:Lcom/didi/common/ui/userinfo/UserInfoItemView;
    const v21, 0x7f0b03d9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mUserInfo:Lcom/didi/common/ui/userinfo/UserInfo;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/didi/common/ui/userinfo/UserInfo;->getLevelName()Ljava/lang/String;

    move-result-object v22

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Lcom/didi/common/ui/userinfo/UserInfoItemView;->fillInfo(ILjava/lang/String;)V

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mFirstBlockContainer:Lcom/didi/common/ui/component/VerticalViewContainer;

    move-object/from16 v21, v0

    const v22, 0x7f0b03d9

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v14, v1}, Lcom/didi/common/ui/component/VerticalViewContainer;->appendView(Landroid/view/View;I)V

    .line 189
    const v21, 0x7f0803a5

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Lcom/didi/common/ui/component/VerticalViewContainer;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mSecondBlockContainer:Lcom/didi/common/ui/component/VerticalViewContainer;

    .line 190
    new-instance v19, Lcom/didi/common/ui/userinfo/UserInfoItemView;

    invoke-virtual/range {p0 .. p0}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/didi/common/ui/userinfo/UserInfoItemView;-><init>(Landroid/content/Context;)V

    .line 191
    .local v19, tradeItem:Lcom/didi/common/ui/userinfo/UserInfoItemView;
    const v21, 0x7f0b048a

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/userinfo/UserInfoItemView;->setContentHint(I)V

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mUserInfo:Lcom/didi/common/ui/userinfo/UserInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/didi/common/ui/userinfo/UserInfo;->getTrade()Lcom/didi/common/ui/userinfo/UserInfo$Trade;

    move-result-object v18

    .line 193
    .local v18, trade:Lcom/didi/common/ui/userinfo/UserInfo$Trade;
    if-eqz v18, :cond_2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/didi/common/ui/userinfo/UserInfo$Trade;->tradeName:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 194
    .local v20, tradeName:Ljava/lang/String;
    :goto_2
    const v21, 0x7f0b0203

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->clipStringContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/ui/userinfo/UserInfoItemView;->fillInfo(ILjava/lang/String;)V

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mSecondBlockContainer:Lcom/didi/common/ui/component/VerticalViewContainer;

    move-object/from16 v21, v0

    const v22, 0x7f0b0203

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/ui/component/VerticalViewContainer;->appendView(Landroid/view/View;I)V

    .line 197
    new-instance v9, Lcom/didi/common/ui/userinfo/UserInfoItemView;

    invoke-virtual/range {p0 .. p0}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v9, v0}, Lcom/didi/common/ui/userinfo/UserInfoItemView;-><init>(Landroid/content/Context;)V

    .line 198
    .local v9, companyItem:Lcom/didi/common/ui/userinfo/UserInfoItemView;
    const v21, 0x7f0b0489

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Lcom/didi/common/ui/userinfo/UserInfoItemView;->setContentHint(I)V

    .line 199
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const v22, 0x7f0b0265

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "-"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const v22, 0x7f0b03cb

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->getString(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 200
    .local v8, companyAndJob:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mUserInfo:Lcom/didi/common/ui/userinfo/UserInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/didi/common/ui/userinfo/UserInfo;->getCrop()Ljava/lang/String;

    move-result-object v10

    .line 201
    .local v10, corp:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mUserInfo:Lcom/didi/common/ui/userinfo/UserInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/didi/common/ui/userinfo/UserInfo;->getEmploy()Ljava/lang/String;

    move-result-object v13

    .line 202
    .local v13, employ:Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->clipStringContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "   "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->clipStringContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 203
    .local v11, corpAndEmployContent:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->clipStringContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v9, v8, v0}, Lcom/didi/common/ui/userinfo/UserInfoItemView;->fillInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mSecondBlockContainer:Lcom/didi/common/ui/component/VerticalViewContainer;

    move-object/from16 v21, v0

    const v22, 0x7f0b0265

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v9, v1}, Lcom/didi/common/ui/component/VerticalViewContainer;->appendView(Landroid/view/View;I)V

    .line 206
    const v21, 0x7f0803a6

    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Lcom/didi/common/ui/component/VerticalViewContainer;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mThirdBlockContainer:Lcom/didi/common/ui/component/VerticalViewContainer;

    .line 207
    new-instance v21, Lcom/didi/common/ui/userinfo/UserInfoItemView;

    invoke-virtual/range {p0 .. p0}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Lcom/didi/common/ui/userinfo/UserInfoItemView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mCertificationItem:Lcom/didi/common/ui/userinfo/UserInfoItemView;

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mCertificationItem:Lcom/didi/common/ui/userinfo/UserInfoItemView;

    move-object/from16 v21, v0

    const v22, 0x7f0b0487

    invoke-virtual/range {v21 .. v22}, Lcom/didi/common/ui/userinfo/UserInfoItemView;->setContentHint(I)V

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mUserInfo:Lcom/didi/common/ui/userinfo/UserInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/didi/common/ui/userinfo/UserInfo;->getAuthState()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->judgeCertificationTextColor(Ljava/lang/String;)V

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mCertificationItem:Lcom/didi/common/ui/userinfo/UserInfoItemView;

    move-object/from16 v21, v0

    const v22, 0x7f0b023f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mUserInfo:Lcom/didi/common/ui/userinfo/UserInfo;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/didi/common/ui/userinfo/UserInfo;->getAuth_desc()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->clipStringContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Lcom/didi/common/ui/userinfo/UserInfoItemView;->fillInfo(ILjava/lang/String;)V

    .line 211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mThirdBlockContainer:Lcom/didi/common/ui/component/VerticalViewContainer;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mCertificationItem:Lcom/didi/common/ui/userinfo/UserInfoItemView;

    move-object/from16 v22, v0

    const v23, 0x7f0b023f

    invoke-virtual/range {v21 .. v23}, Lcom/didi/common/ui/component/VerticalViewContainer;->appendView(Landroid/view/View;I)V

    .line 213
    new-instance v7, Lcom/didi/common/ui/userinfo/UserInfoItemView;

    invoke-virtual/range {p0 .. p0}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v7, v0}, Lcom/didi/common/ui/userinfo/UserInfoItemView;-><init>(Landroid/content/Context;)V

    .line 214
    .local v7, carInfoItem:Lcom/didi/common/ui/userinfo/UserInfoItemView;
    const v21, 0x7f0b022d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mUserInfo:Lcom/didi/common/ui/userinfo/UserInfo;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/didi/common/ui/userinfo/UserInfo;->getCarInfo()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->clipStringContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v7, v0, v1}, Lcom/didi/common/ui/userinfo/UserInfoItemView;->fillInfo(ILjava/lang/String;)V

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mThirdBlockContainer:Lcom/didi/common/ui/component/VerticalViewContainer;

    move-object/from16 v21, v0

    const v22, 0x7f0b022d

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v7, v1}, Lcom/didi/common/ui/component/VerticalViewContainer;->appendView(Landroid/view/View;I)V

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mFirstBlockContainer:Lcom/didi/common/ui/component/VerticalViewContainer;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mOnItemClickListener:Lcom/didi/common/ui/component/VerticalViewContainer$OnSonItemClickListener;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/didi/common/ui/component/VerticalViewContainer;->setOnSonItemClickListener(Lcom/didi/common/ui/component/VerticalViewContainer$OnSonItemClickListener;)V

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mSecondBlockContainer:Lcom/didi/common/ui/component/VerticalViewContainer;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mOnItemClickListener:Lcom/didi/common/ui/component/VerticalViewContainer$OnSonItemClickListener;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/didi/common/ui/component/VerticalViewContainer;->setOnSonItemClickListener(Lcom/didi/common/ui/component/VerticalViewContainer$OnSonItemClickListener;)V

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mThirdBlockContainer:Lcom/didi/common/ui/component/VerticalViewContainer;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mOnItemClickListener:Lcom/didi/common/ui/component/VerticalViewContainer$OnSonItemClickListener;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/didi/common/ui/component/VerticalViewContainer;->setOnSonItemClickListener(Lcom/didi/common/ui/component/VerticalViewContainer$OnSonItemClickListener;)V

    .line 220
    return-void

    .line 159
    .end local v3           #age:Lcom/didi/common/ui/userinfo/UserInfo$Age;
    .end local v4           #ageContent:Ljava/lang/String;
    .end local v5           #ageItem:Lcom/didi/common/ui/userinfo/UserInfoItemView;
    .end local v7           #carInfoItem:Lcom/didi/common/ui/userinfo/UserInfoItemView;
    .end local v8           #companyAndJob:Ljava/lang/String;
    .end local v9           #companyItem:Lcom/didi/common/ui/userinfo/UserInfoItemView;
    .end local v10           #corp:Ljava/lang/String;
    .end local v11           #corpAndEmployContent:Ljava/lang/String;
    .end local v12           #desItem:Lcom/didi/common/ui/userinfo/UserInfoItemView;
    .end local v13           #employ:Ljava/lang/String;
    .end local v14           #levelItem:Lcom/didi/common/ui/userinfo/UserInfoItemView;
    .end local v15           #mobileItem:Lcom/didi/common/ui/userinfo/UserInfoItemView;
    .end local v17           #sexItem:Lcom/didi/common/ui/userinfo/UserInfoItemView;
    .end local v18           #trade:Lcom/didi/common/ui/userinfo/UserInfo$Trade;
    .end local v19           #tradeItem:Lcom/didi/common/ui/userinfo/UserInfoItemView;
    .end local v20           #tradeName:Ljava/lang/String;
    :cond_0
    const v21, 0x7f0b0419

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mUserInfo:Lcom/didi/common/ui/userinfo/UserInfo;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/didi/common/ui/userinfo/UserInfo;->getNickname()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->clipStringContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v16

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/ui/userinfo/UserInfoItemView;->fillInfo(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 171
    .restart local v3       #age:Lcom/didi/common/ui/userinfo/UserInfo$Age;
    .restart local v5       #ageItem:Lcom/didi/common/ui/userinfo/UserInfoItemView;
    .restart local v17       #sexItem:Lcom/didi/common/ui/userinfo/UserInfoItemView;
    :cond_1
    const-string v4, ""

    goto/16 :goto_1

    .line 193
    .restart local v4       #ageContent:Ljava/lang/String;
    .restart local v12       #desItem:Lcom/didi/common/ui/userinfo/UserInfoItemView;
    .restart local v14       #levelItem:Lcom/didi/common/ui/userinfo/UserInfoItemView;
    .restart local v15       #mobileItem:Lcom/didi/common/ui/userinfo/UserInfoItemView;
    .restart local v18       #trade:Lcom/didi/common/ui/userinfo/UserInfo$Trade;
    .restart local v19       #tradeItem:Lcom/didi/common/ui/userinfo/UserInfoItemView;
    :cond_2
    const-string v20, ""

    goto/16 :goto_2
.end method

.method private showSelectWindow(Lcom/didi/common/ui/userinfo/UserInfoItemView;)V
    .locals 4
    .parameter "ageItemView"

    .prologue
    .line 422
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mAgePicker:Lcom/didi/common/ui/userinfo/ListPickerWindow;

    if-nez v0, :cond_0

    .line 423
    new-instance v0, Lcom/didi/common/ui/userinfo/ListPickerWindow;

    invoke-virtual {p0}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mRootView:Landroid/view/View;

    iget-object v3, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mAgeList:Lcom/didi/common/ui/userinfo/AgeList;

    invoke-virtual {v3}, Lcom/didi/common/ui/userinfo/AgeList;->getAgeList()Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/didi/common/ui/userinfo/ListPickerWindow;-><init>(Landroid/content/Context;Landroid/view/View;Ljava/util/List;)V

    iput-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mAgePicker:Lcom/didi/common/ui/userinfo/ListPickerWindow;

    .line 424
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mAgePicker:Lcom/didi/common/ui/userinfo/ListPickerWindow;

    new-instance v1, Lcom/didi/common/ui/userinfo/UserInfoFragment$7;

    invoke-direct {v1, p0, p1}, Lcom/didi/common/ui/userinfo/UserInfoFragment$7;-><init>(Lcom/didi/common/ui/userinfo/UserInfoFragment;Lcom/didi/common/ui/userinfo/UserInfoItemView;)V

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/userinfo/ListPickerWindow;->setListPickerListener(Lcom/didi/common/ui/userinfo/ListPickerWindow$ListPickerListener;)V

    .line 445
    :cond_0
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mAgePicker:Lcom/didi/common/ui/userinfo/ListPickerWindow;

    iget-object v1, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mUserInfo:Lcom/didi/common/ui/userinfo/UserInfo;

    invoke-virtual {v1}, Lcom/didi/common/ui/userinfo/UserInfo;->getAge()Lcom/didi/common/ui/userinfo/UserInfo$Age;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/userinfo/ListPickerWindow;->setSelectedItem(Ljava/lang/Object;)V

    .line 446
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mAgePicker:Lcom/didi/common/ui/userinfo/ListPickerWindow;

    invoke-virtual {v0}, Lcom/didi/common/ui/userinfo/ListPickerWindow;->showDialog()V

    .line 447
    return-void
.end method

.method private startCropIntent(Landroid/net/Uri;)V
    .locals 8
    .parameter "uri"

    .prologue
    const/16 v7, 0x12c

    const/4 v6, 0x1

    .line 577
    move-object v2, p1

    .line 578
    .local v2, targetUri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v4, "com.android.camera.action.CROP"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 579
    .local v0, intent:Landroid/content/Intent;
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v4, v5, :cond_0

    .line 580
    invoke-virtual {p0}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/didi/common/util/FileUtil;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 581
    .local v3, url:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 582
    const-string v4, "image/*"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 586
    .end local v3           #url:Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/didi/common/config/DidiFileConfig;->getPhotoOutputFile()Ljava/io/File;

    move-result-object v4

    iput-object v4, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mCropFile:Ljava/io/File;

    .line 587
    iget-object v4, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mCropFile:Ljava/io/File;

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 588
    .local v1, saveUri:Landroid/net/Uri;
    const-string v4, "crop"

    const-string v5, "true"

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 589
    const-string v4, "aspectX"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 590
    const-string v4, "aspectY"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 591
    const-string v4, "outputX"

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 592
    const-string v4, "outputY"

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 593
    const-string v4, "scale"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 594
    const-string v4, "return-data"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 595
    const-string v4, "output"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 596
    const-string v4, "noFaceDetection"

    invoke-virtual {v0, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 597
    const/16 v4, 0x3ef

    invoke-virtual {p0, v0, v4}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 598
    return-void

    .line 584
    .end local v1           #saveUri:Landroid/net/Uri;
    :cond_0
    const-string v4, "image/*"

    invoke-virtual {v0, p1, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private toContainerActivityForResult(IILandroid/os/Bundle;)V
    .locals 3
    .parameter "requestCode"
    .parameter "fragmentType"
    .parameter "extras"

    .prologue
    .line 721
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/didi/frame/CommonContainerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 722
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "which_fragment"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 723
    if-eqz p3, :cond_0

    .line 724
    invoke-virtual {v0, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 726
    :cond_0
    invoke-virtual {p0, v0, p1}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 727
    return-void
.end method

.method private updateAvatar(Ljava/lang/String;)V
    .locals 6
    .parameter "filePath"

    .prologue
    .line 602
    iget-object v2, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mFirstBlockContainer:Lcom/didi/common/ui/component/VerticalViewContainer;

    const v3, 0x7f0b01ea

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/didi/common/ui/component/VerticalViewContainer;->getChildByTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/common/ui/userinfo/UserInfoItemView;

    .line 603
    .local v0, avatarItem:Lcom/didi/common/ui/userinfo/UserInfoItemView;
    invoke-virtual {v0}, Lcom/didi/common/ui/userinfo/UserInfoItemView;->getImageViewSize()I

    move-result v2

    invoke-static {p1, v2}, Lcom/didi/common/util/ImageUtil;->createBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 604
    .local v1, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v0, v1}, Lcom/didi/common/ui/userinfo/UserInfoItemView;->updateImage(Landroid/graphics/Bitmap;)V

    .line 605
    invoke-virtual {p0}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0b01eb

    invoke-virtual {p0, v3}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v2, v3, v4, v5}, Lcom/didi/common/helper/DialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 606
    iget-object v2, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mCropFile:Ljava/io/File;

    new-instance v3, Lcom/didi/common/ui/userinfo/UserInfoFragment$9;

    invoke-direct {v3, p0, v0}, Lcom/didi/common/ui/userinfo/UserInfoFragment$9;-><init>(Lcom/didi/common/ui/userinfo/UserInfoFragment;Lcom/didi/common/ui/userinfo/UserInfoItemView;)V

    invoke-static {v2, v3}, Lcom/didi/common/net/CommonRequest;->uploadUserAvatar(Ljava/io/File;Lcom/didi/common/net/ResponseListener;)V

    .line 637
    return-void
.end method

.method private varargs updateInfoToServer(Lcom/didi/common/ui/userinfo/UserInfoFragment$UpdateFinishCallBack;[Lorg/apache/http/NameValuePair;)V
    .locals 9
    .parameter "callback"
    .parameter "nvPairs"

    .prologue
    .line 730
    invoke-virtual {p0}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const v6, 0x7f0b0559

    invoke-virtual {p0, v6}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Lcom/didi/common/helper/DialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 731
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 732
    .local v4, nvpList:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    move-object v0, p2

    .local v0, arr$:[Lorg/apache/http/NameValuePair;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 733
    .local v3, nvp:Lorg/apache/http/NameValuePair;
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 732
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 735
    .end local v3           #nvp:Lorg/apache/http/NameValuePair;
    :cond_0
    new-instance v5, Lcom/didi/common/ui/userinfo/UserInfoFragment$14;

    invoke-direct {v5, p0, p1}, Lcom/didi/common/ui/userinfo/UserInfoFragment$14;-><init>(Lcom/didi/common/ui/userinfo/UserInfoFragment;Lcom/didi/common/ui/userinfo/UserInfoFragment$UpdateFinishCallBack;)V

    invoke-static {v4, v5}, Lcom/didi/common/net/CommonRequest;->updateUserInfo(Ljava/util/List;Lcom/didi/common/net/ResponseListener;)V

    .line 757
    return-void
.end method

.method private updateNickName(Ljava/lang/String;)V
    .locals 6
    .parameter "nickName"

    .prologue
    .line 641
    iget-object v1, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mFirstBlockContainer:Lcom/didi/common/ui/component/VerticalViewContainer;

    const v2, 0x7f0b0419

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/didi/common/ui/component/VerticalViewContainer;->getChildByTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/common/ui/userinfo/UserInfoItemView;

    .line 642
    .local v0, nickNameItem:Lcom/didi/common/ui/userinfo/UserInfoItemView;
    invoke-direct {p0, p1}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->clipStringContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/userinfo/UserInfoItemView;->updateContent(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 661
    :goto_0
    return-void

    .line 645
    :cond_0
    new-instance v1, Lcom/didi/common/ui/userinfo/UserInfoFragment$10;

    invoke-direct {v1, p0, p1, v0}, Lcom/didi/common/ui/userinfo/UserInfoFragment$10;-><init>(Lcom/didi/common/ui/userinfo/UserInfoFragment;Ljava/lang/String;Lcom/didi/common/ui/userinfo/UserInfoItemView;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/apache/http/NameValuePair;

    const/4 v3, 0x0

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "nick"

    invoke-direct {v4, v5, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->updateInfoToServer(Lcom/didi/common/ui/userinfo/UserInfoFragment$UpdateFinishCallBack;[Lorg/apache/http/NameValuePair;)V

    goto :goto_0
.end method

.method private updateUserSign(Ljava/lang/String;)V
    .locals 6
    .parameter "userSign"

    .prologue
    .line 665
    iget-object v1, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mFirstBlockContainer:Lcom/didi/common/ui/component/VerticalViewContainer;

    const v2, 0x7f0b0409

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/didi/common/ui/component/VerticalViewContainer;->getChildByTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/common/ui/userinfo/UserInfoItemView;

    .line 666
    .local v0, signItem:Lcom/didi/common/ui/userinfo/UserInfoItemView;
    invoke-direct {p0, p1}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->clipStringContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/userinfo/UserInfoItemView;->updateContent(Ljava/lang/String;)Z

    .line 667
    new-instance v1, Lcom/didi/common/ui/userinfo/UserInfoFragment$11;

    invoke-direct {v1, p0, p1, v0}, Lcom/didi/common/ui/userinfo/UserInfoFragment$11;-><init>(Lcom/didi/common/ui/userinfo/UserInfoFragment;Ljava/lang/String;Lcom/didi/common/ui/userinfo/UserInfoItemView;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/apache/http/NameValuePair;

    const/4 v3, 0x0

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "sign"

    invoke-direct {v4, v5, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->updateInfoToServer(Lcom/didi/common/ui/userinfo/UserInfoFragment$UpdateFinishCallBack;[Lorg/apache/http/NameValuePair;)V

    .line 679
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 117
    invoke-super {p0, p1}, Lcom/didi/common/ui/fragment/SlideFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 118
    invoke-static {p0}, Lcom/didi/common/ui/userinfo/UserInfoHelper;->addListener(Lcom/didi/common/ui/userinfo/UserInfoHelper$UserInfoListener;)V

    .line 119
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 12
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v11, 0x1

    .line 520
    invoke-super {p0, p1, p2, p3}, Lcom/didi/common/ui/fragment/SlideFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 521
    const/4 v9, -0x1

    if-ne p2, v9, :cond_0

    .line 522
    packed-switch p1, :pswitch_data_0

    .line 573
    :cond_0
    :goto_0
    return-void

    .line 524
    :pswitch_0
    const-string v9, "nickname"

    invoke-virtual {p3, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 525
    .local v4, nickName:Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->updateNickName(Ljava/lang/String;)V

    goto :goto_0

    .line 528
    .end local v4           #nickName:Ljava/lang/String;
    :pswitch_1
    if-eqz p3, :cond_0

    const-string v9, "isModify"

    invoke-virtual {p3, v9, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 529
    const-string v9, "usersign"

    invoke-virtual {p3, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 530
    .local v8, userSign:Ljava/lang/String;
    invoke-direct {p0, v8}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->updateUserSign(Ljava/lang/String;)V

    goto :goto_0

    .line 534
    .end local v8           #userSign:Ljava/lang/String;
    :pswitch_2
    const-string v9, "trade"

    invoke-virtual {p3, v9}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Lcom/didi/common/ui/userinfo/UserInfo$Trade;

    .line 535
    .local v7, trade:Lcom/didi/common/ui/userinfo/UserInfo$Trade;
    invoke-virtual {p0, v7}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->updateTrade(Lcom/didi/common/ui/userinfo/UserInfo$Trade;)V

    goto :goto_0

    .line 538
    .end local v7           #trade:Lcom/didi/common/ui/userinfo/UserInfo$Trade;
    :pswitch_3
    if-eqz p3, :cond_0

    const-string v9, "isModify"

    invoke-virtual {p3, v9, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 539
    const-string v9, "company"

    invoke-virtual {p3, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 540
    .local v1, company:Ljava/lang/String;
    const-string v9, "job"

    invoke-virtual {p3, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 541
    .local v3, job:Ljava/lang/String;
    invoke-virtual {p0, v1, v3}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->updateJobInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 545
    .end local v1           #company:Ljava/lang/String;
    .end local v3           #job:Ljava/lang/String;
    :pswitch_4
    invoke-virtual {p0}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 546
    .local v6, resolver:Landroid/content/ContentResolver;
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 547
    .local v5, originalUri:Landroid/net/Uri;
    const/4 v0, 0x0

    .line 549
    .local v0, bitmap:Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {v6, v5}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 553
    :goto_1
    if-eqz v0, :cond_0

    .line 554
    iget-object v9, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mAvatarOriginFile:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    const/16 v10, 0x5a

    invoke-static {v0, v9, v10, v11}, Lcom/didi/common/util/ImageUtil;->writeToFile(Landroid/graphics/Bitmap;Ljava/lang/String;IZ)Ljava/lang/String;

    .line 555
    iget-object v9, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mAvatarOriginFile:Ljava/io/File;

    invoke-static {v9}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->startCropIntent(Landroid/net/Uri;)V

    goto :goto_0

    .line 550
    :catch_0
    move-exception v2

    .line 551
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 559
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #e:Ljava/io/IOException;
    .end local v5           #originalUri:Landroid/net/Uri;
    .end local v6           #resolver:Landroid/content/ContentResolver;
    :pswitch_5
    iget-object v9, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mAvatarOriginFile:Ljava/io/File;

    if-eqz v9, :cond_0

    .line 560
    iget-object v9, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mAvatarOriginFile:Ljava/io/File;

    invoke-static {v9}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->startCropIntent(Landroid/net/Uri;)V

    goto :goto_0

    .line 564
    :pswitch_6
    iget-object v9, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mCropFile:Ljava/io/File;

    if-eqz v9, :cond_0

    .line 565
    iget-object v9, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mCropFile:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->updateAvatar(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 570
    :pswitch_7
    const-string v9, "need_update_user_info"

    const/4 v10, 0x0

    invoke-virtual {p3, v9, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    iput-boolean v9, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->needUpdateUserInfo:Z

    goto/16 :goto_0

    .line 522
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 277
    invoke-direct {p0}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->back()V

    .line 278
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 101
    invoke-super {p0, p1}, Lcom/didi/common/ui/fragment/SlideFragment;->onCreate(Landroid/os/Bundle;)V

    .line 102
    invoke-static {}, Lcom/didi/common/ui/userinfo/UserInfoHelper;->getUserInfo()Lcom/didi/common/ui/userinfo/UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mUserInfo:Lcom/didi/common/ui/userinfo/UserInfo;

    .line 103
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mUserInfo:Lcom/didi/common/ui/userinfo/UserInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/didi/common/ui/userinfo/UserInfo;

    invoke-direct {v0}, Lcom/didi/common/ui/userinfo/UserInfo;-><init>()V

    iput-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mUserInfo:Lcom/didi/common/ui/userinfo/UserInfo;

    .line 104
    :cond_0
    invoke-static {}, Lcom/didi/common/config/DidiFileConfig;->getPhotoOutputFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mAvatarOriginFile:Ljava/io/File;

    .line 105
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 109
    const v0, 0x7f0300ab

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mRootView:Landroid/view/View;

    .line 110
    invoke-direct {p0}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->setTitlebar()V

    .line 111
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mRootView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->setupViews(Landroid/view/View;)V

    .line 112
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mRootView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 123
    invoke-static {p0}, Lcom/didi/common/ui/userinfo/UserInfoHelper;->removeListener(Lcom/didi/common/ui/userinfo/UserInfoHelper$UserInfoListener;)V

    .line 124
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onDestroy()V

    .line 125
    return-void
.end method

.method public onGetInfo()V
    .locals 3

    .prologue
    .line 766
    invoke-virtual {p0}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 775
    :goto_0
    return-void

    .line 769
    :cond_0
    invoke-static {}, Lcom/didi/common/ui/userinfo/UserInfoHelper;->getUserInfo()Lcom/didi/common/ui/userinfo/UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mUserInfo:Lcom/didi/common/ui/userinfo/UserInfo;

    .line 771
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mUserInfo:Lcom/didi/common/ui/userinfo/UserInfo;

    if-nez v0, :cond_1

    new-instance v0, Lcom/didi/common/ui/userinfo/UserInfo;

    invoke-direct {v0}, Lcom/didi/common/ui/userinfo/UserInfo;-><init>()V

    iput-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mUserInfo:Lcom/didi/common/ui/userinfo/UserInfo;

    .line 773
    :cond_1
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mUserInfo:Lcom/didi/common/ui/userinfo/UserInfo;

    invoke-virtual {v0}, Lcom/didi/common/ui/userinfo/UserInfo;->getAuthState()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->judgeCertificationTextColor(Ljava/lang/String;)V

    .line 774
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mCertificationItem:Lcom/didi/common/ui/userinfo/UserInfoItemView;

    const v1, 0x7f0b023f

    iget-object v2, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mUserInfo:Lcom/didi/common/ui/userinfo/UserInfo;

    invoke-virtual {v2}, Lcom/didi/common/ui/userinfo/UserInfo;->getAuth_desc()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->clipStringContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/ui/userinfo/UserInfoItemView;->fillInfo(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 252
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onPause()V

    .line 253
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->titleBar:Lcom/didi/frame/titlebar/TitleBar;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->titleBar:Lcom/didi/frame/titlebar/TitleBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/didi/frame/titlebar/TitleBar;->setmIsUserInfoViewShow(Z)V

    .line 256
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 506
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onResume()V

    .line 507
    iget-boolean v0, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->needUpdateUserInfo:Z

    if-eqz v0, :cond_1

    .line 509
    invoke-static {}, Lcom/didi/common/ui/userinfo/UserInfoHelper;->getUserInfo()Lcom/didi/common/ui/userinfo/UserInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mUserInfo:Lcom/didi/common/ui/userinfo/UserInfo;

    .line 511
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mUserInfo:Lcom/didi/common/ui/userinfo/UserInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/didi/common/ui/userinfo/UserInfo;

    invoke-direct {v0}, Lcom/didi/common/ui/userinfo/UserInfo;-><init>()V

    iput-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mUserInfo:Lcom/didi/common/ui/userinfo/UserInfo;

    .line 513
    :cond_0
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mUserInfo:Lcom/didi/common/ui/userinfo/UserInfo;

    invoke-virtual {v0}, Lcom/didi/common/ui/userinfo/UserInfo;->getAuthState()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->judgeCertificationTextColor(Ljava/lang/String;)V

    .line 514
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mCertificationItem:Lcom/didi/common/ui/userinfo/UserInfoItemView;

    const v1, 0x7f0b023f

    iget-object v2, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mUserInfo:Lcom/didi/common/ui/userinfo/UserInfo;

    invoke-virtual {v2}, Lcom/didi/common/ui/userinfo/UserInfo;->getAuth_desc()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->clipStringContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/ui/userinfo/UserInfoItemView;->fillInfo(ILjava/lang/String;)V

    .line 516
    :cond_1
    return-void
.end method

.method public onUserInfoChanged()V
    .locals 0

    .prologue
    .line 780
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 245
    invoke-super {p0, p1, p2}, Lcom/didi/common/ui/fragment/SlideFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 246
    invoke-static {p1}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 247
    return-void
.end method

.method public updateJobInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "corp"
    .parameter "employ"

    .prologue
    .line 703
    iget-object v1, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mSecondBlockContainer:Lcom/didi/common/ui/component/VerticalViewContainer;

    const v2, 0x7f0b0265

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/didi/common/ui/component/VerticalViewContainer;->getChildByTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/common/ui/userinfo/UserInfoItemView;

    .line 704
    .local v0, jobInfoItem:Lcom/didi/common/ui/userinfo/UserInfoItemView;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->clipStringContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/userinfo/UserInfoItemView;->updateContent(Ljava/lang/String;)Z

    .line 705
    new-instance v1, Lcom/didi/common/ui/userinfo/UserInfoFragment$13;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/didi/common/ui/userinfo/UserInfoFragment$13;-><init>(Lcom/didi/common/ui/userinfo/UserInfoFragment;Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/ui/userinfo/UserInfoItemView;)V

    const/4 v2, 0x2

    new-array v2, v2, [Lorg/apache/http/NameValuePair;

    const/4 v3, 0x0

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "corp"

    invoke-direct {v4, v5, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "employ"

    invoke-direct {v4, v5, p2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->updateInfoToServer(Lcom/didi/common/ui/userinfo/UserInfoFragment$UpdateFinishCallBack;[Lorg/apache/http/NameValuePair;)V

    .line 718
    return-void
.end method

.method public updateTrade(Lcom/didi/common/ui/userinfo/UserInfo$Trade;)V
    .locals 7
    .parameter "trade"

    .prologue
    .line 683
    iget-object v1, p0, Lcom/didi/common/ui/userinfo/UserInfoFragment;->mSecondBlockContainer:Lcom/didi/common/ui/component/VerticalViewContainer;

    const v2, 0x7f0b0203

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/didi/common/ui/component/VerticalViewContainer;->getChildByTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/common/ui/userinfo/UserInfoItemView;

    .line 684
    .local v0, businessFieldItem:Lcom/didi/common/ui/userinfo/UserInfoItemView;
    iget-object v1, p1, Lcom/didi/common/ui/userinfo/UserInfo$Trade;->tradeName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->clipStringContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/didi/common/ui/userinfo/UserInfoItemView;->updateContent(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 699
    :goto_0
    return-void

    .line 687
    :cond_0
    new-instance v1, Lcom/didi/common/ui/userinfo/UserInfoFragment$12;

    invoke-direct {v1, p0, p1, v0}, Lcom/didi/common/ui/userinfo/UserInfoFragment$12;-><init>(Lcom/didi/common/ui/userinfo/UserInfoFragment;Lcom/didi/common/ui/userinfo/UserInfo$Trade;Lcom/didi/common/ui/userinfo/UserInfoItemView;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/apache/http/NameValuePair;

    const/4 v3, 0x0

    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "trade"

    iget v6, p1, Lcom/didi/common/ui/userinfo/UserInfo$Trade;->id:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v4, v2, v3

    invoke-direct {p0, v1, v2}, Lcom/didi/common/ui/userinfo/UserInfoFragment;->updateInfoToServer(Lcom/didi/common/ui/userinfo/UserInfoFragment$UpdateFinishCallBack;[Lorg/apache/http/NameValuePair;)V

    goto :goto_0
.end method
