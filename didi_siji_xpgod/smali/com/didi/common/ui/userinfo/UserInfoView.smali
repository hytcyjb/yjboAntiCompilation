.class public Lcom/didi/common/ui/userinfo/UserInfoView;
.super Landroid/widget/RelativeLayout;
.source "UserInfoView.java"


# instance fields
.field private arrow:Landroid/widget/ImageView;

.field private callback:Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;

.field private info:Lcom/didi/common/ui/userinfo/UserInfo;

.field private levelicon:Landroid/widget/ImageView;

.field private levelname:Landroid/widget/TextView;

.field private mobileNumber:Landroid/widget/TextView;

.field private photo:Lcom/didi/frame/driverinfo/DriverCirclePhoto;

.field private screenName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 139
    new-instance v0, Lcom/didi/common/ui/userinfo/UserInfoView$1;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/userinfo/UserInfoView$1;-><init>(Lcom/didi/common/ui/userinfo/UserInfoView;)V

    iput-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoView;->callback:Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;

    .line 41
    invoke-direct {p0}, Lcom/didi/common/ui/userinfo/UserInfoView;->init()V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 139
    new-instance v0, Lcom/didi/common/ui/userinfo/UserInfoView$1;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/userinfo/UserInfoView$1;-><init>(Lcom/didi/common/ui/userinfo/UserInfoView;)V

    iput-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoView;->callback:Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;

    .line 51
    invoke-direct {p0}, Lcom/didi/common/ui/userinfo/UserInfoView;->init()V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 139
    new-instance v0, Lcom/didi/common/ui/userinfo/UserInfoView$1;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/userinfo/UserInfoView$1;-><init>(Lcom/didi/common/ui/userinfo/UserInfoView;)V

    iput-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoView;->callback:Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;

    .line 46
    invoke-direct {p0}, Lcom/didi/common/ui/userinfo/UserInfoView;->init()V

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/didi/common/ui/userinfo/UserInfoView;)Lcom/didi/frame/driverinfo/DriverCirclePhoto;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoView;->photo:Lcom/didi/frame/driverinfo/DriverCirclePhoto;

    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/didi/common/ui/userinfo/UserInfoView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03010b

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 56
    .local v0, view:Landroid/view/View;
    const v1, 0x7f080605

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/didi/frame/driverinfo/DriverCirclePhoto;

    iput-object v1, p0, Lcom/didi/common/ui/userinfo/UserInfoView;->photo:Lcom/didi/frame/driverinfo/DriverCirclePhoto;

    .line 57
    const v1, 0x7f080608

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/didi/common/ui/userinfo/UserInfoView;->screenName:Landroid/widget/TextView;

    .line 58
    const v1, 0x7f08060b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/didi/common/ui/userinfo/UserInfoView;->mobileNumber:Landroid/widget/TextView;

    .line 59
    const v1, 0x7f08060a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/didi/common/ui/userinfo/UserInfoView;->levelname:Landroid/widget/TextView;

    .line 60
    const v1, 0x7f080609

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/didi/common/ui/userinfo/UserInfoView;->levelicon:Landroid/widget/ImageView;

    .line 61
    const v1, 0x7f080606

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/didi/common/ui/userinfo/UserInfoView;->arrow:Landroid/widget/ImageView;

    .line 62
    return-void
.end method

.method private setLevelIcon(I)V
    .locals 2
    .parameter "level"

    .prologue
    .line 126
    packed-switch p1, :pswitch_data_0

    .line 137
    :goto_0
    return-void

    .line 128
    :pswitch_0
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoView;->levelicon:Landroid/widget/ImageView;

    const v1, 0x7f02030e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 131
    :pswitch_1
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoView;->levelicon:Landroid/widget/ImageView;

    const v1, 0x7f02030d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 134
    :pswitch_2
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoView;->levelicon:Landroid/widget/ImageView;

    const v1, 0x7f02030c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 126
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getLevelName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 122
    invoke-static {}, Lcom/didi/common/ui/userinfo/UserInfoHelper;->getUserLevelName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLevelUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 111
    iget-object v1, p0, Lcom/didi/common/ui/userinfo/UserInfoView;->info:Lcom/didi/common/ui/userinfo/UserInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/didi/common/ui/userinfo/UserInfoView;->info:Lcom/didi/common/ui/userinfo/UserInfo;

    invoke-virtual {v1}, Lcom/didi/common/ui/userinfo/UserInfo;->getLevel()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/didi/common/ui/userinfo/UserInfoView;->info:Lcom/didi/common/ui/userinfo/UserInfo;

    invoke-virtual {v1}, Lcom/didi/common/ui/userinfo/UserInfo;->getLevelUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    :cond_0
    const/4 v0, 0x0

    .line 118
    :goto_0
    return-object v0

    .line 113
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/didi/common/ui/userinfo/UserInfoView;->info:Lcom/didi/common/ui/userinfo/UserInfo;

    invoke-virtual {v2}, Lcom/didi/common/ui/userinfo/UserInfo;->getLevelUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/common/config/Preferences;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&phone="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/common/config/Preferences;->getPhone()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&lat="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/soso/location/LocationController;->getLatString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&lng="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/soso/location/LocationController;->getLngString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&maptype="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "soso"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&appversion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/didi/common/util/Utils;->getCurrentVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&datatype=1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&channel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/didi/common/util/MarketChannelHelper;->getChannelID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&systemName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/didi/common/util/Utils;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&systemVersion="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, url:Ljava/lang/String;
    goto/16 :goto_0
.end method

.method public initView(Lcom/didi/common/ui/userinfo/UserInfo;)V
    .locals 4
    .parameter "in"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 65
    iput-object p1, p0, Lcom/didi/common/ui/userinfo/UserInfoView;->info:Lcom/didi/common/ui/userinfo/UserInfo;

    .line 66
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoView;->info:Lcom/didi/common/ui/userinfo/UserInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoView;->info:Lcom/didi/common/ui/userinfo/UserInfo;

    invoke-virtual {v0}, Lcom/didi/common/ui/userinfo/UserInfo;->getErrorCode()I

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoView;->photo:Lcom/didi/frame/driverinfo/DriverCirclePhoto;

    const v1, 0x7f02025e

    invoke-virtual {v0, v1}, Lcom/didi/frame/driverinfo/DriverCirclePhoto;->setImageResource(I)V

    .line 68
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoView;->screenName:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 69
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoView;->levelname:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 70
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoView;->levelicon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 71
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoView;->mobileNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 72
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoView;->mobileNumber:Landroid/widget/TextView;

    const v1, 0x7f0b02f2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 73
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoView;->arrow:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 108
    :goto_0
    return-void

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoView;->info:Lcom/didi/common/ui/userinfo/UserInfo;

    invoke-virtual {v0}, Lcom/didi/common/ui/userinfo/UserInfo;->getAvatar()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/userinfo/UserInfoView;->callback:Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;

    invoke-static {v0, v1}, Lcom/didi/common/helper/ImageFetcher;->fetch(Ljava/lang/String;Lcom/didi/common/helper/ImageFetcher$ImageloadCallback;)V

    .line 76
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoView;->info:Lcom/didi/common/ui/userinfo/UserInfo;

    invoke-virtual {v0}, Lcom/didi/common/ui/userinfo/UserInfo;->getUserNickname()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 77
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoView;->screenName:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    :goto_1
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoView;->mobileNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 87
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoView;->mobileNumber:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/didi/common/ui/userinfo/UserInfoView;->info:Lcom/didi/common/ui/userinfo/UserInfo;

    invoke-virtual {v1}, Lcom/didi/common/ui/userinfo/UserInfo;->getPhone()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoView;->info:Lcom/didi/common/ui/userinfo/UserInfo;

    invoke-virtual {v0}, Lcom/didi/common/ui/userinfo/UserInfo;->getLevel()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    .line 89
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoView;->levelname:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoView;->levelicon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 103
    :goto_2
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoView;->screenName:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 104
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoView;->levelname:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    :cond_2
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoView;->arrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 79
    :cond_3
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoView;->info:Lcom/didi/common/ui/userinfo/UserInfo;

    invoke-virtual {v0}, Lcom/didi/common/ui/userinfo/UserInfo;->getNickname()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 80
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoView;->screenName:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoView;->screenName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/didi/common/ui/userinfo/UserInfoView;->info:Lcom/didi/common/ui/userinfo/UserInfo;

    invoke-virtual {v1}, Lcom/didi/common/ui/userinfo/UserInfo;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 83
    :cond_4
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoView;->screenName:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 92
    :cond_5
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoView;->info:Lcom/didi/common/ui/userinfo/UserInfo;

    invoke-virtual {v0}, Lcom/didi/common/ui/userinfo/UserInfo;->getLevel()I

    move-result v0

    if-nez v0, :cond_6

    .line 93
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoView;->levelicon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 98
    :goto_3
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoView;->levelname:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoView;->levelname:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/didi/common/ui/userinfo/UserInfoView;->info:Lcom/didi/common/ui/userinfo/UserInfo;

    invoke-virtual {v1}, Lcom/didi/common/ui/userinfo/UserInfo;->getLevelName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 95
    :cond_6
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoView;->levelicon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lcom/didi/common/ui/userinfo/UserInfoView;->info:Lcom/didi/common/ui/userinfo/UserInfo;

    invoke-virtual {v0}, Lcom/didi/common/ui/userinfo/UserInfo;->getLevel()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/didi/common/ui/userinfo/UserInfoView;->setLevelIcon(I)V

    goto :goto_3
.end method
