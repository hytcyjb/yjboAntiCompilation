.class public Lcom/didi/beatles/business/login/BtsLoginActivity;
.super Lcom/didi/beatles/ui/activity/base/BtsBaseAc;
.source "BtsLoginActivity.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/beatles/business/login/BtsLoginActivity$TimeCount;
    }
.end annotation


# static fields
.field private static final AUTO_LOGIN:I = 0x7da

.field private static final AUTO_LOGIN_RESULT:I = 0x7db

.field private static final AUTO_LOGIN_TIP:I = 0x7dc

.field public static final FROM_CONFIRM_FRAGMENT:I = 0x1

.field public static final FROM_SYNC_FRAGMENT:I = 0x0

.field public static final FROM_TAG:Ljava/lang/String; = "from"

.field private static final LOGIN:I = 0x7d6

.field private static final TAKE_CODE:I = 0x7de

.field private static final VOICE_VERIFICATION_ERRNO:I = 0x3ea

.field private static countDown:I


# instance fields
.field private backListener:Landroid/view/View$OnClickListener;

.field private codeFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field codeOnClickListener:Landroid/view/View$OnClickListener;

.field private codeWatcher:Landroid/text/TextWatcher;

.field private confirmListener:Landroid/view/View$OnClickListener;

.field private dialogHelper:Lcom/didi/common/helper/DialogHelper;

.field private isBack:Z

.field private isCodeClick:Z

.field private isGetAddressFinish:Z

.field private isGetCode:Z

.field private isGetRoleInfoFinish:Z

.field private isSendSms:Z

.field private isTakeCode:Z

.field private listener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

.field loginListener:Lcom/didi/common/net/ResponseListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/common/model/CommonToken;",
            ">;"
        }
    .end annotation
.end field

.field loop:I

.field private mBtsUserInfoListener:Lcom/didi/beatles/business/login/BtsLoadRoleInfoHelper$BtsRoleInfoListener;

.field private mCheck:Landroid/widget/TextView;

.field private mCode:Landroid/widget/EditText;

.field private mCodeLayout:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mPhone:Landroid/widget/EditText;

.field private mPhoneLayout:Landroid/view/View;

.field private mPref:Lcom/didi/common/config/Preferences;

.field private mSmsListener:Lcom/didi/common/util/SMSUtil$SmsListener;

.field private mStart:Landroid/widget/TextView;

.field private mTimeCount:Lcom/didi/beatles/business/login/BtsLoginActivity$TimeCount;

.field private mTitleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

.field private myTimer:Ljava/util/Timer;

.field private oldPhone:Ljava/lang/String;

.field private phoneFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private phoneWatcher:Landroid/text/TextWatcher;

.field private sendListener:Landroid/view/View$OnClickListener;

.field private showInputMethod:Z

.field private smsCode:Lcom/didi/common/model/CommonSMSCode;

.field smsUtil:Lcom/didi/common/util/SMSUtil;

.field private tipLink:Landroid/widget/TextView;

.field private tipLinkListener:Landroid/view/View$OnClickListener;

.field private tokenLogin:Lcom/didi/common/model/CommonToken;

.field private tvNotReceived:Landroid/widget/TextView;

.field private voiceListener:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 707
    const/16 v0, 0x1e

    sput v0, Lcom/didi/beatles/business/login/BtsLoginActivity;->countDown:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 83
    invoke-direct {p0}, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;-><init>()V

    .line 113
    iput-boolean v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->isTakeCode:Z

    .line 116
    iput-object v1, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->tokenLogin:Lcom/didi/common/model/CommonToken;

    .line 117
    iput-boolean v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->showInputMethod:Z

    .line 118
    iput-boolean v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->isSendSms:Z

    .line 123
    iput-object v1, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->smsUtil:Lcom/didi/common/util/SMSUtil;

    .line 125
    iput-object v1, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->dialogHelper:Lcom/didi/common/helper/DialogHelper;

    .line 126
    iput v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->loop:I

    .line 128
    iput-boolean v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->isGetAddressFinish:Z

    .line 129
    iput-boolean v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->isGetRoleInfoFinish:Z

    .line 162
    new-instance v0, Lcom/didi/beatles/business/login/BtsLoginActivity$1;

    invoke-direct {v0, p0}, Lcom/didi/beatles/business/login/BtsLoginActivity$1;-><init>(Lcom/didi/beatles/business/login/BtsLoginActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->mHandler:Landroid/os/Handler;

    .line 203
    new-instance v0, Lcom/didi/beatles/business/login/BtsLoginActivity$2;

    invoke-direct {v0, p0}, Lcom/didi/beatles/business/login/BtsLoginActivity$2;-><init>(Lcom/didi/beatles/business/login/BtsLoginActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->listener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

    .line 302
    new-instance v0, Lcom/didi/beatles/business/login/BtsLoginActivity$3;

    invoke-direct {v0, p0}, Lcom/didi/beatles/business/login/BtsLoginActivity$3;-><init>(Lcom/didi/beatles/business/login/BtsLoginActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->codeOnClickListener:Landroid/view/View$OnClickListener;

    .line 444
    new-instance v0, Lcom/didi/beatles/business/login/BtsLoginActivity$5;

    invoke-direct {v0, p0}, Lcom/didi/beatles/business/login/BtsLoginActivity$5;-><init>(Lcom/didi/beatles/business/login/BtsLoginActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->codeWatcher:Landroid/text/TextWatcher;

    .line 475
    new-instance v0, Lcom/didi/beatles/business/login/BtsLoginActivity$6;

    invoke-direct {v0, p0}, Lcom/didi/beatles/business/login/BtsLoginActivity$6;-><init>(Lcom/didi/beatles/business/login/BtsLoginActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->phoneFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 489
    new-instance v0, Lcom/didi/beatles/business/login/BtsLoginActivity$7;

    invoke-direct {v0, p0}, Lcom/didi/beatles/business/login/BtsLoginActivity$7;-><init>(Lcom/didi/beatles/business/login/BtsLoginActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->codeFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 503
    new-instance v0, Lcom/didi/beatles/business/login/BtsLoginActivity$8;

    invoke-direct {v0, p0}, Lcom/didi/beatles/business/login/BtsLoginActivity$8;-><init>(Lcom/didi/beatles/business/login/BtsLoginActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->phoneWatcher:Landroid/text/TextWatcher;

    .line 550
    new-instance v0, Lcom/didi/beatles/business/login/BtsLoginActivity$9;

    invoke-direct {v0, p0}, Lcom/didi/beatles/business/login/BtsLoginActivity$9;-><init>(Lcom/didi/beatles/business/login/BtsLoginActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->backListener:Landroid/view/View$OnClickListener;

    .line 561
    new-instance v0, Lcom/didi/beatles/business/login/BtsLoginActivity$10;

    invoke-direct {v0, p0}, Lcom/didi/beatles/business/login/BtsLoginActivity$10;-><init>(Lcom/didi/beatles/business/login/BtsLoginActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->sendListener:Landroid/view/View$OnClickListener;

    .line 681
    new-instance v0, Lcom/didi/beatles/business/login/BtsLoginActivity$12;

    invoke-direct {v0, p0}, Lcom/didi/beatles/business/login/BtsLoginActivity$12;-><init>(Lcom/didi/beatles/business/login/BtsLoginActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->voiceListener:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    .line 696
    new-instance v0, Lcom/didi/beatles/business/login/BtsLoginActivity$13;

    invoke-direct {v0, p0}, Lcom/didi/beatles/business/login/BtsLoginActivity$13;-><init>(Lcom/didi/beatles/business/login/BtsLoginActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->confirmListener:Landroid/view/View$OnClickListener;

    .line 708
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->myTimer:Ljava/util/Timer;

    .line 819
    new-instance v0, Lcom/didi/beatles/business/login/BtsLoginActivity$16;

    invoke-direct {v0, p0}, Lcom/didi/beatles/business/login/BtsLoginActivity$16;-><init>(Lcom/didi/beatles/business/login/BtsLoginActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->loginListener:Lcom/didi/common/net/ResponseListener;

    .line 896
    new-instance v0, Lcom/didi/beatles/business/login/BtsLoginActivity$19;

    invoke-direct {v0, p0}, Lcom/didi/beatles/business/login/BtsLoginActivity$19;-><init>(Lcom/didi/beatles/business/login/BtsLoginActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->mBtsUserInfoListener:Lcom/didi/beatles/business/login/BtsLoadRoleInfoHelper$BtsRoleInfoListener;

    .line 1063
    new-instance v0, Lcom/didi/beatles/business/login/BtsLoginActivity$22;

    invoke-direct {v0, p0}, Lcom/didi/beatles/business/login/BtsLoginActivity$22;-><init>(Lcom/didi/beatles/business/login/BtsLoginActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->mSmsListener:Lcom/didi/common/util/SMSUtil$SmsListener;

    .line 1092
    new-instance v0, Lcom/didi/beatles/business/login/BtsLoginActivity$23;

    invoke-direct {v0, p0}, Lcom/didi/beatles/business/login/BtsLoginActivity$23;-><init>(Lcom/didi/beatles/business/login/BtsLoginActivity;)V

    iput-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->tipLinkListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$002(Lcom/didi/beatles/business/login/BtsLoginActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->isTakeCode:Z

    return p1
.end method

.method static synthetic access$100(Lcom/didi/beatles/business/login/BtsLoginActivity;)Lcom/didi/common/helper/DialogHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->dialogHelper:Lcom/didi/common/helper/DialogHelper;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/didi/beatles/business/login/BtsLoginActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/didi/beatles/business/login/BtsLoginActivity;->getServerCode()V

    return-void
.end method

.method static synthetic access$102(Lcom/didi/beatles/business/login/BtsLoginActivity;Lcom/didi/common/helper/DialogHelper;)Lcom/didi/common/helper/DialogHelper;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->dialogHelper:Lcom/didi/common/helper/DialogHelper;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/didi/beatles/business/login/BtsLoginActivity;Lcom/didi/common/model/BaseObject;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/didi/beatles/business/login/BtsLoginActivity;->isVoiceVerify(Lcom/didi/common/model/BaseObject;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/didi/beatles/business/login/BtsLoginActivity;)Lcom/didi/common/model/CommonSMSCode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->smsCode:Lcom/didi/common/model/CommonSMSCode;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/didi/beatles/business/login/BtsLoginActivity;Lcom/didi/common/model/CommonSMSCode;)Lcom/didi/common/model/CommonSMSCode;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->smsCode:Lcom/didi/common/model/CommonSMSCode;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/didi/beatles/business/login/BtsLoginActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/didi/beatles/business/login/BtsLoginActivity;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/didi/beatles/business/login/BtsLoginActivity;->getColorResources(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/didi/beatles/business/login/BtsLoginActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->mStart:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/didi/beatles/business/login/BtsLoginActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->mPhoneLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/didi/beatles/business/login/BtsLoginActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->mCodeLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/didi/beatles/business/login/BtsLoginActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->mCheck:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/didi/beatles/business/login/BtsLoginActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->oldPhone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/didi/beatles/business/login/BtsLoginActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->oldPhone:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/didi/beatles/business/login/BtsLoginActivity;)Lcom/didi/common/model/CommonToken;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->tokenLogin:Lcom/didi/common/model/CommonToken;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/didi/beatles/business/login/BtsLoginActivity;)Lcom/didi/beatles/business/login/BtsLoginActivity$TimeCount;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->mTimeCount:Lcom/didi/beatles/business/login/BtsLoginActivity$TimeCount;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/didi/beatles/business/login/BtsLoginActivity;Lcom/didi/beatles/business/login/BtsLoginActivity$TimeCount;)Lcom/didi/beatles/business/login/BtsLoginActivity$TimeCount;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->mTimeCount:Lcom/didi/beatles/business/login/BtsLoginActivity$TimeCount;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/didi/beatles/business/login/BtsLoginActivity;)Lcom/didi/common/util/SMSUtil$SmsListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->mSmsListener:Lcom/didi/common/util/SMSUtil$SmsListener;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/didi/beatles/business/login/BtsLoginActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/didi/beatles/business/login/BtsLoginActivity;->verification()V

    return-void
.end method

.method static synthetic access$2300(Lcom/didi/beatles/business/login/BtsLoginActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/didi/beatles/business/login/BtsLoginActivity;->login()V

    return-void
.end method

.method static synthetic access$2400()I
    .locals 1

    .prologue
    .line 83
    sget v0, Lcom/didi/beatles/business/login/BtsLoginActivity;->countDown:I

    return v0
.end method

.method static synthetic access$2410()I
    .locals 2

    .prologue
    .line 83
    sget v0, Lcom/didi/beatles/business/login/BtsLoginActivity;->countDown:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lcom/didi/beatles/business/login/BtsLoginActivity;->countDown:I

    return v0
.end method

.method static synthetic access$2500(Lcom/didi/beatles/business/login/BtsLoginActivity;)Ljava/util/Timer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->myTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/didi/beatles/business/login/BtsLoginActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 83
    invoke-direct/range {p0 .. p5}, Lcom/didi/beatles/business/login/BtsLoginActivity;->commonLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/didi/beatles/business/login/BtsLoginActivity;Lcom/didi/common/model/CommonPassPortToken;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/didi/beatles/business/login/BtsLoginActivity;->showDialog(Lcom/didi/common/model/CommonPassPortToken;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/didi/beatles/business/login/BtsLoginActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/didi/beatles/business/login/BtsLoginActivity;->showErrorMsg(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/didi/beatles/business/login/BtsLoginActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/didi/beatles/business/login/BtsLoginActivity;->commitPreferenceImmdiately()V

    return-void
.end method

.method static synthetic access$3000(Lcom/didi/beatles/business/login/BtsLoginActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/didi/beatles/business/login/BtsLoginActivity;->getGuideFlag()V

    return-void
.end method

.method static synthetic access$302(Lcom/didi/beatles/business/login/BtsLoginActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->isSendSms:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/didi/beatles/business/login/BtsLoginActivity;Lcom/didi/common/model/CommonToken;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/didi/beatles/business/login/BtsLoginActivity;->onLogin(Lcom/didi/common/model/CommonToken;)V

    return-void
.end method

.method static synthetic access$3202(Lcom/didi/beatles/business/login/BtsLoginActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->isGetRoleInfoFinish:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/didi/beatles/business/login/BtsLoginActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/didi/beatles/business/login/BtsLoginActivity;->backToPrePage()V

    return-void
.end method

.method static synthetic access$3400(Lcom/didi/beatles/business/login/BtsLoginActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->isBack:Z

    return v0
.end method

.method static synthetic access$3500(Lcom/didi/beatles/business/login/BtsLoginActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/didi/beatles/business/login/BtsLoginActivity;->updateAddr()V

    return-void
.end method

.method static synthetic access$3600(Lcom/didi/beatles/business/login/BtsLoginActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->tvNotReceived:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/didi/beatles/business/login/BtsLoginActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->isGetAddressFinish:Z

    return p1
.end method

.method static synthetic access$3800(Lcom/didi/beatles/business/login/BtsLoginActivity;Lcom/didi/common/model/AddressList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/didi/beatles/business/login/BtsLoginActivity;->onGetAddressList(Lcom/didi/common/model/AddressList;)V

    return-void
.end method

.method static synthetic access$400(Lcom/didi/beatles/business/login/BtsLoginActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/didi/beatles/business/login/BtsLoginActivity;->passportLogin(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/didi/beatles/business/login/BtsLoginActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->showInputMethod:Z

    return v0
.end method

.method static synthetic access$502(Lcom/didi/beatles/business/login/BtsLoginActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->showInputMethod:Z

    return p1
.end method

.method static synthetic access$600(Lcom/didi/beatles/business/login/BtsLoginActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->mCode:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$700(Lcom/didi/beatles/business/login/BtsLoginActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->isGetCode:Z

    return v0
.end method

.method static synthetic access$702(Lcom/didi/beatles/business/login/BtsLoginActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->isGetCode:Z

    return p1
.end method

.method static synthetic access$800(Lcom/didi/beatles/business/login/BtsLoginActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->isCodeClick:Z

    return v0
.end method

.method static synthetic access$802(Lcom/didi/beatles/business/login/BtsLoginActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->isCodeClick:Z

    return p1
.end method

.method static synthetic access$900(Lcom/didi/beatles/business/login/BtsLoginActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->mPhone:Landroid/widget/EditText;

    return-object v0
.end method

.method private assistLogin()V
    .locals 0

    .prologue
    .line 370
    invoke-direct {p0}, Lcom/didi/beatles/business/login/BtsLoginActivity;->autoLogin()V

    .line 371
    return-void
.end method

.method private autoLogin()V
    .locals 6

    .prologue
    .line 374
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->mPhone:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->mPhone:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/Utils;->isNum(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 375
    :cond_0
    const v0, 0x7f0b0479

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showLongInfo(I)V

    .line 388
    :goto_0
    return-void

    .line 378
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--------------------smscode  autoLogin():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->smsCode:Lcom/didi/common/model/CommonSMSCode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 379
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->smsCode:Lcom/didi/common/model/CommonSMSCode;

    if-eqz v0, :cond_2

    .line 380
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->mCode:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->smsCode:Lcom/didi/common/model/CommonSMSCode;

    iget-object v1, v1, Lcom/didi/common/model/CommonSMSCode;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 381
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 382
    const v0, 0x7f0b0250

    invoke-virtual {p0, v0}, Lcom/didi/beatles/business/login/BtsLoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 383
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->myTimer:Ljava/util/Timer;

    .line 384
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->myTimer:Ljava/util/Timer;

    invoke-direct {p0}, Lcom/didi/beatles/business/login/BtsLoginActivity;->myTask()Ljava/util/TimerTask;

    move-result-object v1

    const-wide/16 v2, 0x12c

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    goto :goto_0

    .line 386
    :cond_2
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    goto :goto_0
.end method

.method private backToPrePage()V
    .locals 1

    .prologue
    .line 975
    iget-boolean v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->isGetAddressFinish:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->isGetRoleInfoFinish:Z

    if-eqz v0, :cond_0

    .line 976
    const v0, 0x7f0b03eb

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showShortCompleted(I)V

    .line 978
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 989
    invoke-virtual {p0}, Lcom/didi/beatles/business/login/BtsLoginActivity;->finish()V

    .line 992
    :cond_0
    return-void
.end method

.method private commitPreferenceImmdiately()V
    .locals 2

    .prologue
    .line 859
    invoke-static {}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->getInstance()Lcom/didi/common/config/preference/PreferenceEditorProxy;

    move-result-object v0

    new-instance v1, Lcom/didi/beatles/business/login/BtsLoginActivity$17;

    invoke-direct {v1, p0}, Lcom/didi/beatles/business/login/BtsLoginActivity$17;-><init>(Lcom/didi/beatles/business/login/BtsLoginActivity;)V

    invoke-virtual {v0, v1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commitImmediately(Lcom/didi/common/config/preference/PreferenceEditorProxy$PerferenceListener;)V

    .line 866
    return-void
.end method

.method private commonLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V
    .locals 0
    .parameter "phone"
    .parameter "ticket"
    .parameter "lng"
    .parameter "lat"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/didi/common/net/ResponseListener",
            "<",
            "Lcom/didi/common/model/CommonToken;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 816
    .local p5, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/common/model/CommonToken;>;"
    invoke-static {p1, p2, p4, p3, p5}, Lcom/didi/common/net/CommonRequest;->commonLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    .line 817
    return-void
.end method

.method private getColorResources(I)I
    .locals 1
    .parameter "rid"

    .prologue
    .line 438
    invoke-virtual {p0}, Lcom/didi/beatles/business/login/BtsLoginActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 439
    invoke-static {p1}, Lcom/didi/common/helper/ResourcesHelper;->getColor(I)I

    move-result v0

    .line 441
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getGuideFlag()V
    .locals 1

    .prologue
    .line 869
    new-instance v0, Lcom/didi/beatles/business/login/BtsLoginActivity$18;

    invoke-direct {v0, p0}, Lcom/didi/beatles/business/login/BtsLoginActivity$18;-><init>(Lcom/didi/beatles/business/login/BtsLoginActivity;)V

    invoke-static {v0}, Lcom/didi/car/net/CarRequest;->getGuideFlag(Lcom/didi/common/net/ResponseListener;)V

    .line 894
    return-void
.end method

.method private getServerCode()V
    .locals 2

    .prologue
    .line 333
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->mPhone:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/didi/beatles/business/login/BtsLoginActivity$4;

    invoke-direct {v1, p0}, Lcom/didi/beatles/business/login/BtsLoginActivity$4;-><init>(Lcom/didi/beatles/business/login/BtsLoginActivity;)V

    invoke-static {v0, v1}, Lcom/didi/common/net/CommonRequest;->getServiceCodeChannel(Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    .line 366
    return-void
.end method

.method private initData()V
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->mCode:Landroid/widget/EditText;

    invoke-static {p0, v0}, Lcom/didi/common/util/Utils;->showInputMethod(Landroid/content/Context;Landroid/view/View;)V

    .line 278
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-direct {v0, p0}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->dialogHelper:Lcom/didi/common/helper/DialogHelper;

    .line 280
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->reset()V

    .line 281
    return-void
.end method

.method private initViews()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 245
    const v2, 0x7f080116

    invoke-virtual {p0, v2}, Lcom/didi/beatles/business/login/BtsLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 246
    .local v0, loginLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/didi/common/ui/component/UiHelper;->shieldTouchEvent(Landroid/view/View;)V

    .line 247
    new-instance v2, Lcom/didi/common/util/SMSUtil;

    invoke-direct {v2}, Lcom/didi/common/util/SMSUtil;-><init>()V

    iput-object v2, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->smsUtil:Lcom/didi/common/util/SMSUtil;

    .line 248
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->mPref:Lcom/didi/common/config/Preferences;

    .line 249
    const v2, 0x7f08011a

    invoke-virtual {p0, v2}, Lcom/didi/beatles/business/login/BtsLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->mPhone:Landroid/widget/EditText;

    .line 250
    const v2, 0x7f080119

    invoke-virtual {p0, v2}, Lcom/didi/beatles/business/login/BtsLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->mPhoneLayout:Landroid/view/View;

    .line 251
    const v2, 0x7f08011c

    invoke-virtual {p0, v2}, Lcom/didi/beatles/business/login/BtsLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->mCodeLayout:Landroid/view/View;

    .line 252
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/common/config/Preferences;->getPhone()Ljava/lang/String;

    move-result-object v1

    .line 253
    .local v1, phone:Ljava/lang/String;
    iget-object v2, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->mPhone:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 254
    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 255
    iget-object v2, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->mPhoneLayout:Landroid/view/View;

    const v3, 0x7f0200f7

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 259
    :goto_0
    const v2, 0x7f08011d

    invoke-virtual {p0, v2}, Lcom/didi/beatles/business/login/BtsLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->mCode:Landroid/widget/EditText;

    .line 260
    const v2, 0x7f08011b

    invoke-virtual {p0, v2}, Lcom/didi/beatles/business/login/BtsLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->mCheck:Landroid/widget/TextView;

    .line 262
    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Lcom/didi/common/util/Utils;->isNum(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_1

    .line 263
    iget-object v2, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->mCheck:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 267
    :goto_1
    const v2, 0x7f08011e

    invoke-virtual {p0, v2}, Lcom/didi/beatles/business/login/BtsLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->tvNotReceived:Landroid/widget/TextView;

    .line 268
    iget-object v2, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->tvNotReceived:Landroid/widget/TextView;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 269
    iget-object v2, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->tvNotReceived:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 270
    const v2, 0x7f08009d

    invoke-virtual {p0, v2}, Lcom/didi/beatles/business/login/BtsLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->mStart:Landroid/widget/TextView;

    .line 271
    iget-object v2, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->mStart:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 272
    const v2, 0x7f080120

    invoke-virtual {p0, v2}, Lcom/didi/beatles/business/login/BtsLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->tipLink:Landroid/widget/TextView;

    .line 273
    return-void

    .line 257
    :cond_0
    iget-object v2, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->mPhoneLayout:Landroid/view/View;

    const v3, 0x7f0200f6

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 265
    :cond_1
    iget-object v2, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->mCheck:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_1
.end method

.method private isVoiceVerify(Lcom/didi/common/model/BaseObject;)Z
    .locals 2
    .parameter "obj"

    .prologue
    .line 619
    iget v0, p1, Lcom/didi/common/model/BaseObject;->errno:I

    const/16 v1, 0x3ea

    if-ne v0, v1, :cond_1

    .line 620
    iget-object v0, p1, Lcom/didi/common/model/BaseObject;->errmsg:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 621
    const v0, 0x7f0b02f7

    invoke-static {v0}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/didi/common/model/BaseObject;->errmsg:Ljava/lang/String;

    .line 623
    :cond_0
    iget-object v0, p1, Lcom/didi/common/model/BaseObject;->errmsg:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/didi/beatles/business/login/BtsLoginActivity;->voiceDialog(Ljava/lang/String;)V

    .line 624
    const/4 v0, 0x1

    .line 626
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private login()V
    .locals 2

    .prologue
    .line 1108
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v0

    const v1, 0x7f05000b

    invoke-virtual {v0, v1}, Lcom/didi/common/base/DidiApp;->playSound(I)V

    .line 1109
    const-string v0, "l_login_confirm"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1110
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->mPhone:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->mPhone:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/Utils;->isNum(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1111
    :cond_0
    const v0, 0x7f0b0479

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showLongInfo(I)V

    .line 1112
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->mStart:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1116
    :goto_0
    return-void

    .line 1115
    :cond_1
    const/16 v0, 0x7d6

    invoke-direct {p0, v0}, Lcom/didi/beatles/business/login/BtsLoginActivity;->passportLogin(I)V

    goto :goto_0
.end method

.method private myTask()Ljava/util/TimerTask;
    .locals 1

    .prologue
    .line 711
    new-instance v0, Lcom/didi/beatles/business/login/BtsLoginActivity$14;

    invoke-direct {v0, p0}, Lcom/didi/beatles/business/login/BtsLoginActivity$14;-><init>(Lcom/didi/beatles/business/login/BtsLoginActivity;)V

    return-object v0
.end method

.method private onGetAddressList(Lcom/didi/common/model/AddressList;)V
    .locals 9
    .parameter "addresslist"

    .prologue
    .line 1022
    invoke-static {p1}, Lcom/didi/common/net/HttpHelper;->validate(Lcom/didi/common/model/BaseObject;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1023
    invoke-virtual {p1}, Lcom/didi/common/model/AddressList;->getList()Ljava/util/ArrayList;

    move-result-object v1

    .line 1024
    .local v1, arrylist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/common/model/Address;>;"
    invoke-static {v1}, Lcom/didi/common/util/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1025
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/common/model/Address;

    .line 1026
    .local v0, address:Lcom/didi/common/model/Address;
    invoke-virtual {v0}, Lcom/didi/common/model/Address;->isHome()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1027
    iget-object v7, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->mPref:Lcom/didi/common/config/Preferences;

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/didi/common/config/Preferences;->setHomeAddr(Ljava/lang/String;)V

    .line 1028
    iget-object v7, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->mPref:Lcom/didi/common/config/Preferences;

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/didi/common/config/Preferences;->setHomeName(Ljava/lang/String;)V

    .line 1029
    iget-object v7, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->mPref:Lcom/didi/common/config/Preferences;

    iget-object v8, v0, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/didi/common/config/Preferences;->setHomeLongitude(Ljava/lang/String;)V

    .line 1030
    iget-object v7, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->mPref:Lcom/didi/common/config/Preferences;

    iget-object v8, v0, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/didi/common/config/Preferences;->setHomeLatitude(Ljava/lang/String;)V

    goto :goto_0

    .line 1031
    :cond_1
    invoke-virtual {v0}, Lcom/didi/common/model/Address;->isCompany()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1032
    iget-object v7, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->mPref:Lcom/didi/common/config/Preferences;

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/didi/common/config/Preferences;->setCompanyAddr(Ljava/lang/String;)V

    .line 1033
    iget-object v7, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->mPref:Lcom/didi/common/config/Preferences;

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/didi/common/config/Preferences;->setCompanyName(Ljava/lang/String;)V

    .line 1034
    iget-object v7, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->mPref:Lcom/didi/common/config/Preferences;

    iget-object v8, v0, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/didi/common/config/Preferences;->setCompanyLongitude(Ljava/lang/String;)V

    .line 1035
    iget-object v7, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->mPref:Lcom/didi/common/config/Preferences;

    iget-object v8, v0, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/didi/common/config/Preferences;->setCompanyLatitude(Ljava/lang/String;)V

    goto :goto_0

    .line 1039
    .end local v0           #address:Lcom/didi/common/model/Address;
    .end local v1           #arrylist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/common/model/Address;>;"
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_2
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 1040
    invoke-direct {p0}, Lcom/didi/beatles/business/login/BtsLoginActivity;->backToPrePage()V

    .line 1045
    invoke-virtual {p0}, Lcom/didi/beatles/business/login/BtsLoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 1046
    .local v2, bundle:Landroid/os/Bundle;
    if-eqz v2, :cond_3

    .line 1047
    const-string v7, "data_model"

    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v6

    check-cast v6, Lcom/didi/common/ui/webview/WebViewModel;

    .line 1048
    .local v6, mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;
    if-eqz v6, :cond_3

    .line 1051
    :try_start_0
    new-instance v5, Landroid/content/Intent;

    iget-object v7, v6, Lcom/didi/common/ui/webview/WebViewModel;->redirectClassName:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    invoke-direct {v5, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1052
    .local v5, intent:Landroid/content/Intent;
    const-string v7, "data_model"

    invoke-virtual {v5, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1053
    invoke-virtual {p0, v5}, Lcom/didi/beatles/business/login/BtsLoginActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1060
    .end local v5           #intent:Landroid/content/Intent;
    .end local v6           #mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;
    :cond_3
    :goto_1
    return-void

    .line 1054
    .restart local v6       #mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;
    :catch_0
    move-exception v3

    .line 1055
    .local v3, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v3}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method private onLogin(Lcom/didi/common/model/CommonToken;)V
    .locals 5
    .parameter "token"

    .prologue
    const/4 v2, 0x0

    .line 908
    const-string v1, "onLogin\uff1a token"

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 909
    iput-boolean v2, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->isGetAddressFinish:Z

    .line 910
    iput-boolean v2, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->isGetRoleInfoFinish:Z

    .line 912
    invoke-static {}, Lcom/didi/common/ui/userinfo/UserInfoHelper;->loadUserInfo()V

    .line 913
    iget-object v1, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->mBtsUserInfoListener:Lcom/didi/beatles/business/login/BtsLoadRoleInfoHelper$BtsRoleInfoListener;

    invoke-static {v1}, Lcom/didi/beatles/business/login/BtsLoadRoleInfoHelper;->loadRoleInfo(Lcom/didi/beatles/business/login/BtsLoadRoleInfoHelper$BtsRoleInfoListener;)V

    .line 914
    iget-object v1, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->mPhone:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 915
    .local v0, newPhone:Ljava/lang/String;
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/didi/common/config/Preferences;->getPhone()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lcom/didi/common/listener/ListenerHub;->notifyLogin(ILjava/lang/String;Ljava/lang/String;)V

    .line 916
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "----------smscode onLogin newPhone:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isback:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->isBack:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 917
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/didi/common/config/Preferences;->setPhone(Ljava/lang/String;)V

    .line 918
    invoke-static {v0}, Lcom/didi/common/util/Utils;->startTraceService(Ljava/lang/String;)V

    .line 920
    invoke-static {}, Lcom/didi/common/helper/VoucherHelper;->getVoucherRedPointSupportFromServer()V

    .line 921
    invoke-static {}, Lcom/didi/frame/recovery/RecoveryHelper;->getInstance()Lcom/didi/frame/recovery/RecoveryHelper;

    move-result-object v1

    const-wide/16 v2, 0xfa0

    invoke-virtual {v1, v2, v3}, Lcom/didi/frame/recovery/RecoveryHelper;->startRecoveryDelayed(J)V

    .line 922
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/didi/common/net/CommonRequest;->doQueryHasNewMsg(Lcom/didi/common/net/ResponseListener;)V

    .line 923
    invoke-static {}, Lcom/didi/taxi/net/TaxiRequest;->uploadCid()V

    .line 924
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/didi/beatles/business/login/BtsLoginActivity$20;

    invoke-direct {v2, p0}, Lcom/didi/beatles/business/login/BtsLoginActivity$20;-><init>(Lcom/didi/beatles/business/login/BtsLoginActivity;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 934
    return-void
.end method

.method private passportLogin(I)V
    .locals 9
    .parameter "type"

    .prologue
    const/16 v8, 0x7d6

    const/4 v7, 0x0

    .line 730
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->mPhone:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 731
    .local v3, number:Ljava/lang/String;
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->mCode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 732
    .local v6, code:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-----------smscode passprt:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 733
    if-ne p1, v8, :cond_2

    .line 734
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->mStart:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 740
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-----------smscode passprt2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 741
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/soso/location/LocationController;->getLatString()Ljava/lang/String;

    move-result-object v5

    .line 742
    .local v5, lat:Ljava/lang/String;
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/soso/location/LocationController;->getLngString()Ljava/lang/String;

    move-result-object v4

    .line 744
    .local v4, lng:Ljava/lang/String;
    new-instance v0, Lcom/didi/beatles/business/login/BtsLoginActivity$15;

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/didi/beatles/business/login/BtsLoginActivity$15;-><init>(Lcom/didi/beatles/business/login/BtsLoginActivity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v3, v6, v0}, Lcom/didi/common/net/PassPortRequest;->passportLogin(ILjava/lang/String;Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    .line 796
    if-ne p1, v8, :cond_1

    .line 797
    const v0, 0x7f0b057c

    invoke-static {v0}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v7, v1}, Lcom/didi/common/helper/DialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 798
    :cond_1
    return-void

    .line 736
    .end local v4           #lng:Ljava/lang/String;
    .end local v5           #lat:Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->smsCode:Lcom/didi/common/model/CommonSMSCode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->smsCode:Lcom/didi/common/model/CommonSMSCode;

    iget-object v0, v0, Lcom/didi/common/model/CommonSMSCode;->code:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    .line 737
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->smsCode:Lcom/didi/common/model/CommonSMSCode;

    iget-object v6, v0, Lcom/didi/common/model/CommonSMSCode;->code:Ljava/lang/String;

    goto :goto_0
.end method

.method private setListeners()V
    .locals 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->tvNotReceived:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->codeOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->mPhone:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->phoneWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 286
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->mCode:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->codeWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 287
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->mPhone:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->phoneFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 288
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->mCode:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->codeFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 289
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->mCheck:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->sendListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->mStart:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->confirmListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->tipLink:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->tipLinkListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    return-void
.end method

.method private setTitlebar()V
    .locals 3

    .prologue
    .line 295
    const v0, 0x7f0800ae

    invoke-virtual {p0, v0}, Lcom/didi/beatles/business/login/BtsLoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/didi/beatles/ui/component/BtsTitleBar;

    iput-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->mTitleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    .line 297
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->mTitleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    const v1, 0x7f020170

    iget-object v2, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->backListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/didi/beatles/ui/component/BtsTitleBar;->setLeftDrawable(ILandroid/view/View$OnClickListener;)V

    .line 298
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->mTitleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    const v1, 0x7f0b03ee

    invoke-virtual {v0, v1}, Lcom/didi/beatles/ui/component/BtsTitleBar;->setTitle(I)V

    .line 299
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->mTitleBar:Lcom/didi/beatles/ui/component/BtsTitleBar;

    invoke-virtual {v0}, Lcom/didi/beatles/ui/component/BtsTitleBar;->hideRight()V

    .line 300
    return-void
.end method

.method private showDialog(Lcom/didi/common/model/CommonPassPortToken;)V
    .locals 3
    .parameter "t"

    .prologue
    const/4 v2, 0x0

    .line 801
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/didi/beatles/business/login/BtsLoginActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 812
    :cond_0
    :goto_0
    return-void

    .line 804
    :cond_1
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-direct {v0, p0}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->dialogHelper:Lcom/didi/common/helper/DialogHelper;

    .line 805
    invoke-virtual {p1}, Lcom/didi/common/model/CommonPassPortToken;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 806
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->dialogHelper:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b03e9

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    :goto_1
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->dialogHelper:Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->listener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 811
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->dialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    goto :goto_0

    .line 808
    :cond_2
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->dialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {p1}, Lcom/didi/common/model/CommonPassPortToken;->getErrorMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private showErrorMsg(Ljava/lang/String;)V
    .locals 2
    .parameter "mess"

    .prologue
    .line 852
    const v1, 0x7f0b03e9

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 853
    .local v0, msg:Ljava/lang/String;
    invoke-static {p1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 854
    move-object v0, p1

    .line 855
    :cond_0
    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showLongError(Ljava/lang/String;)V

    .line 856
    return-void
.end method

.method public static startActivity(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 132
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/didi/beatles/business/login/BtsLoginActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 134
    .local v1, intent:Landroid/content/Intent;
    const/16 v2, 0x64

    :try_start_0
    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_0
    return-void

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static startActivity(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 141
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/didi/beatles/business/login/BtsLoginActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 142
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 144
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private updateAddr()V
    .locals 1

    .prologue
    .line 996
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->mPref:Lcom/didi/common/config/Preferences;

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->getHomeAddr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->mPref:Lcom/didi/common/config/Preferences;

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->getCompanyAddr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 997
    :cond_0
    new-instance v0, Lcom/didi/beatles/business/login/BtsLoginActivity$21;

    invoke-direct {v0, p0}, Lcom/didi/beatles/business/login/BtsLoginActivity$21;-><init>(Lcom/didi/beatles/business/login/BtsLoginActivity;)V

    invoke-static {v0}, Lcom/didi/common/net/CommonRequest;->getAddrLists(Lcom/didi/common/net/ResponseListener;)V

    .line 1018
    :cond_1
    return-void
.end method

.method private verification()V
    .locals 3

    .prologue
    .line 631
    const-string v1, "l_voice_verify"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 632
    iget-object v1, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->mPhone:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 633
    .local v0, phone:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/common/util/Utils;->checkPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 634
    const v1, 0x7f0b047c

    invoke-static {v1}, Lcom/didi/common/helper/ToastHelper;->showShortError(I)V

    .line 669
    :goto_0
    return-void

    .line 638
    :cond_0
    const/4 v1, 0x1

    new-instance v2, Lcom/didi/beatles/business/login/BtsLoginActivity$11;

    invoke-direct {v2, p0}, Lcom/didi/beatles/business/login/BtsLoginActivity$11;-><init>(Lcom/didi/beatles/business/login/BtsLoginActivity;)V

    invoke-static {v0, v1, v2}, Lcom/didi/common/net/PassPortRequest;->getCode(Ljava/lang/String;ILcom/didi/common/net/ResponseListener;)V

    goto :goto_0
.end method

.method private voiceDialog(Ljava/lang/String;)V
    .locals 2
    .parameter "content"

    .prologue
    .line 673
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-direct {v0, p0}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    .line 674
    .local v0, dialogHelper1:Lcom/didi/common/helper/DialogHelper;
    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->TWO:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 675
    const v1, 0x7f0b0277

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(I)V

    .line 676
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    iget-object v1, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->voiceListener:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 678
    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 679
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 434
    invoke-virtual {p0}, Lcom/didi/beatles/business/login/BtsLoginActivity;->finish()V

    .line 435
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 152
    invoke-super {p0, p1}, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->onCreate(Landroid/os/Bundle;)V

    .line 154
    const v0, 0x7f030023

    invoke-virtual {p0, v0}, Lcom/didi/beatles/business/login/BtsLoginActivity;->setContentView(I)V

    .line 156
    invoke-direct {p0}, Lcom/didi/beatles/business/login/BtsLoginActivity;->setTitlebar()V

    .line 157
    invoke-direct {p0}, Lcom/didi/beatles/business/login/BtsLoginActivity;->initViews()V

    .line 158
    invoke-direct {p0}, Lcom/didi/beatles/business/login/BtsLoginActivity;->setListeners()V

    .line 159
    invoke-direct {p0}, Lcom/didi/beatles/business/login/BtsLoginActivity;->initData()V

    .line 160
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 426
    invoke-super {p0}, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->onDestroy()V

    .line 427
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->isSendSms:Z

    .line 428
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->smsUtil:Lcom/didi/common/util/SMSUtil;

    invoke-virtual {v0}, Lcom/didi/common/util/SMSUtil;->unregisterSmsObserver()V

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----------smscode onDestroy----issendsms:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->isSendSms:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isGetCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->isGetCode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 430
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 409
    invoke-super {p0}, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->onPause()V

    .line 410
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->isBack:Z

    .line 411
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----------smscode resume----issendsms:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->isSendSms:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isGetCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->isGetCode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isTakeCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->isTakeCode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 394
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->isBack:Z

    .line 395
    iget-boolean v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->isSendSms:Z

    if-eqz v0, :cond_1

    .line 396
    iput-boolean v2, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->isSendSms:Z

    .line 397
    iput-boolean v2, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->isTakeCode:Z

    .line 398
    invoke-direct {p0}, Lcom/didi/beatles/business/login/BtsLoginActivity;->autoLogin()V

    .line 404
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->onResume()V

    .line 405
    return-void

    .line 399
    :cond_1
    iget-boolean v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->isGetCode:Z

    if-eqz v0, :cond_2

    .line 400
    invoke-direct {p0}, Lcom/didi/beatles/business/login/BtsLoginActivity;->updateAddr()V

    goto :goto_0

    .line 401
    :cond_2
    iget-boolean v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->isTakeCode:Z

    if-eqz v0, :cond_0

    .line 402
    invoke-direct {p0}, Lcom/didi/beatles/business/login/BtsLoginActivity;->assistLogin()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 415
    invoke-super {p0}, Lcom/didi/beatles/ui/activity/base/BtsBaseAc;->onStop()V

    .line 416
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->isSendSms:Z

    .line 417
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->dialogHelper:Lcom/didi/common/helper/DialogHelper;

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/didi/beatles/business/login/BtsLoginActivity;->dialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->dismiss()V

    .line 420
    :cond_0
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 422
    return-void
.end method
