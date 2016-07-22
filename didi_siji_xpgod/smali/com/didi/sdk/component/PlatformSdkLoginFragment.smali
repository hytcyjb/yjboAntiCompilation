.class public Lcom/didi/sdk/component/PlatformSdkLoginFragment;
.super Lcom/didi/common/ui/fragment/SlideFragment;
.source "PlatformSdkLoginFragment.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/sdk/component/PlatformSdkLoginFragment$TimeCount;
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
.field private codeFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field codeOnClickListener:Landroid/view/View$OnClickListener;

.field private codeWatcher:Landroid/text/TextWatcher;

.field private confirmListener:Landroid/view/View$OnClickListener;

.field private dialogHelper:Lcom/didi/common/helper/DialogHelper;

.field private isBack:Z

.field private isCodeClick:Z

.field private isGetCode:Z

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

.field private mCheck:Lx/TextView;

.field private mCode:Landroid/widget/EditText;

.field private mCodeLayout:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mPhone:Landroid/widget/EditText;

.field private mPhoneLayout:Landroid/view/View;

.field private mPref:Lcom/didi/common/config/Preferences;

.field private mSdkReq:I

.field private mSmsListener:Lcom/didi/common/util/SMSUtil$SmsListener;

.field private mStart:Lx/TextView;

.field private mTimeCount:Lcom/didi/sdk/component/PlatformSdkLoginFragment$TimeCount;

.field private myTimer:Ljava/util/Timer;

.field private oldPhone:Ljava/lang/String;

.field private phoneFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private phoneWatcher:Landroid/text/TextWatcher;

.field private sendListener:Landroid/view/View$OnClickListener;

.field private showInputMethod:Z

.field private smsCode:Lcom/didi/common/model/CommonSMSCode;

.field smsUtil:Lcom/didi/common/util/SMSUtil;

.field private tipLink:Lx/TextView;

.field private tipLinkListener:Landroid/view/View$OnClickListener;

.field private tokenLogin:Lcom/didi/common/model/CommonToken;

.field private tvNotReceived:Lx/TextView;

.field private voiceListener:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 683
    const/16 v0, 0x1e

    sput v0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->countDown:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/SlideFragment;-><init>()V

    .line 112
    iput-boolean v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->isTakeCode:Z

    .line 115
    iput-object v1, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->tokenLogin:Lcom/didi/common/model/CommonToken;

    .line 116
    iput-boolean v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->showInputMethod:Z

    .line 117
    iput-boolean v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->isSendSms:Z

    .line 123
    iput-object v1, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->smsUtil:Lcom/didi/common/util/SMSUtil;

    .line 125
    iput-object v1, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->dialogHelper:Lcom/didi/common/helper/DialogHelper;

    .line 126
    iput v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->loop:I

    .line 128
    new-instance v0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$1;

    invoke-direct {v0, p0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment$1;-><init>(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)V

    iput-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mHandler:Landroid/os/Handler;

    .line 176
    new-instance v0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$2;

    invoke-direct {v0, p0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment$2;-><init>(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)V

    iput-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->listener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

    .line 287
    new-instance v0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$3;

    invoke-direct {v0, p0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment$3;-><init>(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)V

    iput-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->codeOnClickListener:Landroid/view/View$OnClickListener;

    .line 432
    new-instance v0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$5;

    invoke-direct {v0, p0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment$5;-><init>(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)V

    iput-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->codeWatcher:Landroid/text/TextWatcher;

    .line 463
    new-instance v0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$6;

    invoke-direct {v0, p0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment$6;-><init>(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)V

    iput-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->phoneFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 477
    new-instance v0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$7;

    invoke-direct {v0, p0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment$7;-><init>(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)V

    iput-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->codeFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 491
    new-instance v0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$8;

    invoke-direct {v0, p0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment$8;-><init>(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)V

    iput-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->phoneWatcher:Landroid/text/TextWatcher;

    .line 538
    new-instance v0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$9;

    invoke-direct {v0, p0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment$9;-><init>(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)V

    iput-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->sendListener:Landroid/view/View$OnClickListener;

    .line 658
    new-instance v0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$11;

    invoke-direct {v0, p0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment$11;-><init>(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)V

    iput-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->voiceListener:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    .line 673
    new-instance v0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$12;

    invoke-direct {v0, p0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment$12;-><init>(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)V

    iput-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->confirmListener:Landroid/view/View$OnClickListener;

    .line 684
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->myTimer:Ljava/util/Timer;

    .line 796
    new-instance v0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$15;

    invoke-direct {v0, p0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment$15;-><init>(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)V

    iput-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->loginListener:Lcom/didi/common/net/ResponseListener;

    .line 1002
    new-instance v0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$20;

    invoke-direct {v0, p0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment$20;-><init>(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)V

    iput-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mSmsListener:Lcom/didi/common/util/SMSUtil$SmsListener;

    .line 1030
    new-instance v0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$21;

    invoke-direct {v0, p0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment$21;-><init>(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)V

    iput-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->tipLinkListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$002(Lcom/didi/sdk/component/PlatformSdkLoginFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->isTakeCode:Z

    return p1
.end method

.method static synthetic access$100(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)Lcom/didi/common/helper/DialogHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->dialogHelper:Lcom/didi/common/helper/DialogHelper;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mPhone:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$102(Lcom/didi/sdk/component/PlatformSdkLoginFragment;Lcom/didi/common/helper/DialogHelper;)Lcom/didi/common/helper/DialogHelper;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->dialogHelper:Lcom/didi/common/helper/DialogHelper;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->getServerCode()V

    return-void
.end method

.method static synthetic access$1200(Lcom/didi/sdk/component/PlatformSdkLoginFragment;Lcom/didi/common/model/BaseObject;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->isVoiceVerify(Lcom/didi/common/model/BaseObject;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)Lcom/didi/common/model/CommonSMSCode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->smsCode:Lcom/didi/common/model/CommonSMSCode;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/didi/sdk/component/PlatformSdkLoginFragment;Lcom/didi/common/model/CommonSMSCode;)Lcom/didi/common/model/CommonSMSCode;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->smsCode:Lcom/didi/common/model/CommonSMSCode;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/didi/sdk/component/PlatformSdkLoginFragment;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->getColorResources(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)Lx/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mStart:Lx/TextView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mPhoneLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mCodeLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)Lx/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mCheck:Lx/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)Lcom/didi/common/model/CommonToken;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->tokenLogin:Lcom/didi/common/model/CommonToken;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->oldPhone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/didi/sdk/component/PlatformSdkLoginFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->oldPhone:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)Lcom/didi/sdk/component/PlatformSdkLoginFragment$TimeCount;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mTimeCount:Lcom/didi/sdk/component/PlatformSdkLoginFragment$TimeCount;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/didi/sdk/component/PlatformSdkLoginFragment;Lcom/didi/sdk/component/PlatformSdkLoginFragment$TimeCount;)Lcom/didi/sdk/component/PlatformSdkLoginFragment$TimeCount;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-object p1, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mTimeCount:Lcom/didi/sdk/component/PlatformSdkLoginFragment$TimeCount;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)Lcom/didi/common/util/SMSUtil$SmsListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mSmsListener:Lcom/didi/common/util/SMSUtil$SmsListener;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->verification()V

    return-void
.end method

.method static synthetic access$2400(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->login()V

    return-void
.end method

.method static synthetic access$2500()I
    .locals 1

    .prologue
    .line 84
    sget v0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->countDown:I

    return v0
.end method

.method static synthetic access$2510()I
    .locals 2

    .prologue
    .line 84
    sget v0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->countDown:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->countDown:I

    return v0
.end method

.method static synthetic access$2600(Lcom/didi/sdk/component/PlatformSdkLoginFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 84
    invoke-direct/range {p0 .. p5}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->commonLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/didi/sdk/component/PlatformSdkLoginFragment;Lcom/didi/common/model/CommonPassPortToken;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->showDialog(Lcom/didi/common/model/CommonPassPortToken;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/didi/sdk/component/PlatformSdkLoginFragment;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->showErrorMsg(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mSdkReq:I

    return v0
.end method

.method static synthetic access$300(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)Ljava/util/Timer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->myTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->commitPreferenceImmdiately()V

    return-void
.end method

.method static synthetic access$3100(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->getGuideFlag()V

    return-void
.end method

.method static synthetic access$3200(Lcom/didi/sdk/component/PlatformSdkLoginFragment;Lcom/didi/common/model/CommonToken;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->onLogin(Lcom/didi/common/model/CommonToken;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->isBack:Z

    return v0
.end method

.method static synthetic access$3400(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->updateAddr()V

    return-void
.end method

.method static synthetic access$3500(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)Lx/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->tvNotReceived:Lx/TextView;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/didi/sdk/component/PlatformSdkLoginFragment;Lcom/didi/common/model/AddressList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->onGetAddressList(Lcom/didi/common/model/AddressList;)V

    return-void
.end method

.method static synthetic access$402(Lcom/didi/sdk/component/PlatformSdkLoginFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->isSendSms:Z

    return p1
.end method

.method static synthetic access$500(Lcom/didi/sdk/component/PlatformSdkLoginFragment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->passportLogin(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->showInputMethod:Z

    return v0
.end method

.method static synthetic access$602(Lcom/didi/sdk/component/PlatformSdkLoginFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->showInputMethod:Z

    return p1
.end method

.method static synthetic access$700(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mCode:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$800(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->isGetCode:Z

    return v0
.end method

.method static synthetic access$802(Lcom/didi/sdk/component/PlatformSdkLoginFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->isGetCode:Z

    return p1
.end method

.method static synthetic access$900(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->isCodeClick:Z

    return v0
.end method

.method static synthetic access$902(Lcom/didi/sdk/component/PlatformSdkLoginFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 84
    iput-boolean p1, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->isCodeClick:Z

    return p1
.end method

.method private assistLogin()V
    .locals 0

    .prologue
    .line 355
    invoke-direct {p0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->autoLogin()V

    .line 356
    return-void
.end method

.method private autoLogin()V
    .locals 6

    .prologue
    .line 359
    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mPhone:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mPhone:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/Utils;->isNum(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 360
    :cond_0
    const v0, 0x7f0b0479

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showLongInfo(I)V

    .line 373
    :goto_0
    return-void

    .line 363
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--sdk------------------smscode  autoLogin():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->smsCode:Lcom/didi/common/model/CommonSMSCode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->smsCode:Lcom/didi/common/model/CommonSMSCode;

    if-eqz v0, :cond_2

    .line 365
    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mCode:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->smsCode:Lcom/didi/common/model/CommonSMSCode;

    iget-object v1, v1, Lcom/didi/common/model/CommonSMSCode;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 366
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 367
    invoke-virtual {p0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b0250

    invoke-virtual {p0, v1}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/didi/common/helper/DialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 368
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->myTimer:Ljava/util/Timer;

    .line 369
    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->myTimer:Ljava/util/Timer;

    invoke-direct {p0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->myTask()Ljava/util/TimerTask;

    move-result-object v1

    const-wide/16 v2, 0x12c

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    goto :goto_0

    .line 371
    :cond_2
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    goto :goto_0
.end method

.method private backToPrePage()V
    .locals 2

    .prologue
    .line 941
    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mTimeCount:Lcom/didi/sdk/component/PlatformSdkLoginFragment$TimeCount;

    if-eqz v0, :cond_0

    .line 942
    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mTimeCount:Lcom/didi/sdk/component/PlatformSdkLoginFragment$TimeCount;

    invoke-virtual {v0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment$TimeCount;->cancel()V

    .line 943
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mTimeCount:Lcom/didi/sdk/component/PlatformSdkLoginFragment$TimeCount;

    .line 946
    :cond_0
    invoke-virtual {p0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 947
    invoke-virtual {p0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mCode:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/didi/common/util/Utils;->hideInputMethod(Landroid/content/Context;Landroid/view/View;)V

    .line 948
    invoke-virtual {p0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 951
    :cond_1
    return-void
.end method

.method private commitPreferenceImmdiately()V
    .locals 2

    .prologue
    .line 838
    invoke-static {}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->getInstance()Lcom/didi/common/config/preference/PreferenceEditorProxy;

    move-result-object v0

    new-instance v1, Lcom/didi/sdk/component/PlatformSdkLoginFragment$16;

    invoke-direct {v1, p0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment$16;-><init>(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)V

    invoke-virtual {v0, v1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commitImmediately(Lcom/didi/common/config/preference/PreferenceEditorProxy$PerferenceListener;)V

    .line 845
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
    .line 793
    .local p5, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/common/model/CommonToken;>;"
    invoke-static {p1, p2, p4, p3, p5}, Lcom/didi/common/net/CommonRequest;->commonLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    .line 794
    return-void
.end method

.method private getColorResources(I)I
    .locals 1
    .parameter "rid"

    .prologue
    .line 426
    invoke-virtual {p0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 427
    invoke-static {p1}, Lcom/didi/common/helper/ResourcesHelper;->getColor(I)I

    move-result v0

    .line 429
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getGuideFlag()V
    .locals 1

    .prologue
    .line 848
    new-instance v0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$17;

    invoke-direct {v0, p0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment$17;-><init>(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)V

    invoke-static {v0}, Lcom/didi/car/net/CarRequest;->getGuideFlag(Lcom/didi/common/net/ResponseListener;)V

    .line 873
    return-void
.end method

.method private getServerCode()V
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mPhone:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/didi/sdk/component/PlatformSdkLoginFragment$4;

    invoke-direct {v1, p0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment$4;-><init>(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)V

    invoke-static {v0, v1}, Lcom/didi/common/net/CommonRequest;->getServiceCodeChannel(Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    .line 351
    return-void
.end method

.method private initData()V
    .locals 3

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {p0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mCode:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/didi/common/util/Utils;->showInputMethod(Landroid/content/Context;Landroid/view/View;)V

    .line 267
    :cond_0
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {p0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->dialogHelper:Lcom/didi/common/helper/DialogHelper;

    .line 268
    invoke-virtual {p0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "function_code"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mSdkReq:I

    .line 270
    iget v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mSdkReq:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 272
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->reset()V

    .line 274
    :cond_1
    return-void
.end method

.method private initViews(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/4 v4, 0x0

    .line 233
    const v2, 0x7f080116

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 234
    .local v0, loginLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/didi/common/ui/component/UiHelper;->shieldTouchEvent(Landroid/view/View;)V

    .line 235
    new-instance v2, Lcom/didi/common/util/SMSUtil;

    invoke-direct {v2}, Lcom/didi/common/util/SMSUtil;-><init>()V

    iput-object v2, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->smsUtil:Lcom/didi/common/util/SMSUtil;

    .line 236
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mPref:Lcom/didi/common/config/Preferences;

    .line 237
    const v2, 0x7f08011a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mPhone:Landroid/widget/EditText;

    .line 238
    const v2, 0x7f080119

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mPhoneLayout:Landroid/view/View;

    .line 239
    const v2, 0x7f08011c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mCodeLayout:Landroid/view/View;

    .line 240
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/common/config/Preferences;->getPhone()Ljava/lang/String;

    move-result-object v1

    .line 241
    .local v1, phone:Ljava/lang/String;
    iget-object v2, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mPhone:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 242
    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 243
    iget-object v2, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mPhoneLayout:Landroid/view/View;

    const v3, 0x7f0200f7

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 247
    :goto_0
    const v2, 0x7f08011d

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mCode:Landroid/widget/EditText;

    .line 248
    const v2, 0x7f08011b

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lx/TextView;

    iput-object v2, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mCheck:Lx/TextView;

    .line 250
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

    .line 251
    iget-object v2, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mCheck:Lx/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lx/TextView;->setEnabled(Z)V

    .line 255
    :goto_1
    const v2, 0x7f08011e

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lx/TextView;

    iput-object v2, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->tvNotReceived:Lx/TextView;

    .line 256
    iget-object v2, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->tvNotReceived:Lx/TextView;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Lx/TextView;->setGravity(I)V

    .line 257
    iget-object v2, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->tvNotReceived:Lx/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lx/TextView;->setVisibility(I)V

    .line 258
    const v2, 0x7f08009d

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lx/TextView;

    iput-object v2, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mStart:Lx/TextView;

    .line 259
    iget-object v2, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mStart:Lx/TextView;

    invoke-virtual {v2, v4}, Lx/TextView;->setEnabled(Z)V

    .line 260
    const v2, 0x7f080120

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lx/TextView;

    iput-object v2, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->tipLink:Lx/TextView;

    .line 261
    return-void

    .line 245
    :cond_0
    iget-object v2, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mPhoneLayout:Landroid/view/View;

    const v3, 0x7f0200f6

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 253
    :cond_1
    iget-object v2, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mCheck:Lx/TextView;

    invoke-virtual {v2, v4}, Lx/TextView;->setEnabled(Z)V

    goto :goto_1
.end method

.method private isVoiceVerify(Lcom/didi/common/model/BaseObject;)Z
    .locals 2
    .parameter "obj"

    .prologue
    .line 596
    iget v0, p1, Lcom/didi/common/model/BaseObject;->errno:I

    const/16 v1, 0x3ea

    if-ne v0, v1, :cond_1

    .line 597
    iget-object v0, p1, Lcom/didi/common/model/BaseObject;->errmsg:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 598
    const v0, 0x7f0b02f7

    invoke-static {v0}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/didi/common/model/BaseObject;->errmsg:Ljava/lang/String;

    .line 600
    :cond_0
    iget-object v0, p1, Lcom/didi/common/model/BaseObject;->errmsg:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->voiceDialog(Ljava/lang/String;)V

    .line 601
    const/4 v0, 0x1

    .line 603
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private login()V
    .locals 2

    .prologue
    .line 1046
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v0

    const v1, 0x7f05000b

    invoke-virtual {v0, v1}, Lcom/didi/common/base/DidiApp;->playSound(I)V

    .line 1047
    const-string v0, "l_login_confirm_sdk"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1048
    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mPhone:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mPhone:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/Utils;->isNum(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1049
    :cond_0
    const v0, 0x7f0b0479

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showLongInfo(I)V

    .line 1050
    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mStart:Lx/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lx/TextView;->setEnabled(Z)V

    .line 1054
    :goto_0
    return-void

    .line 1053
    :cond_1
    const/16 v0, 0x7d6

    invoke-direct {p0, v0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->passportLogin(I)V

    goto :goto_0
.end method

.method private myTask()Ljava/util/TimerTask;
    .locals 1

    .prologue
    .line 687
    new-instance v0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$13;

    invoke-direct {v0, p0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment$13;-><init>(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)V

    return-object v0
.end method

.method private onGetAddressList(Lcom/didi/common/model/AddressList;)V
    .locals 5
    .parameter "addresslist"

    .prologue
    .line 979
    const v3, 0x7f0b03eb

    invoke-static {v3}, Lcom/didi/common/helper/ToastHelper;->showShortCompleted(I)V

    .line 980
    invoke-static {p1}, Lcom/didi/common/net/HttpHelper;->validate(Lcom/didi/common/model/BaseObject;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 981
    invoke-virtual {p1}, Lcom/didi/common/model/AddressList;->getList()Ljava/util/ArrayList;

    move-result-object v1

    .line 982
    .local v1, arrylist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/common/model/Address;>;"
    invoke-static {v1}, Lcom/didi/common/util/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 983
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/common/model/Address;

    .line 984
    .local v0, address:Lcom/didi/common/model/Address;
    invoke-virtual {v0}, Lcom/didi/common/model/Address;->isHome()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 985
    iget-object v3, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mPref:Lcom/didi/common/config/Preferences;

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/didi/common/config/Preferences;->setHomeAddr(Ljava/lang/String;)V

    .line 986
    iget-object v3, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mPref:Lcom/didi/common/config/Preferences;

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/didi/common/config/Preferences;->setHomeName(Ljava/lang/String;)V

    .line 987
    iget-object v3, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mPref:Lcom/didi/common/config/Preferences;

    iget-object v4, v0, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/didi/common/config/Preferences;->setHomeLongitude(Ljava/lang/String;)V

    .line 988
    iget-object v3, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mPref:Lcom/didi/common/config/Preferences;

    iget-object v4, v0, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/didi/common/config/Preferences;->setHomeLatitude(Ljava/lang/String;)V

    goto :goto_0

    .line 989
    :cond_1
    invoke-virtual {v0}, Lcom/didi/common/model/Address;->isCompany()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 990
    iget-object v3, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mPref:Lcom/didi/common/config/Preferences;

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/didi/common/config/Preferences;->setCompanyAddr(Ljava/lang/String;)V

    .line 991
    iget-object v3, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mPref:Lcom/didi/common/config/Preferences;

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/didi/common/config/Preferences;->setCompanyName(Ljava/lang/String;)V

    .line 992
    iget-object v3, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mPref:Lcom/didi/common/config/Preferences;

    iget-object v4, v0, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/didi/common/config/Preferences;->setCompanyLongitude(Ljava/lang/String;)V

    .line 993
    iget-object v3, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mPref:Lcom/didi/common/config/Preferences;

    iget-object v4, v0, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/didi/common/config/Preferences;->setCompanyLatitude(Ljava/lang/String;)V

    goto :goto_0

    .line 997
    .end local v0           #address:Lcom/didi/common/model/Address;
    .end local v1           #arrylist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/common/model/Address;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_2
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 998
    invoke-direct {p0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->backToPrePage()V

    .line 999
    return-void
.end method

.method private onLogin(Lcom/didi/common/model/CommonToken;)V
    .locals 5
    .parameter "token"

    .prologue
    .line 876
    const-string v1, "onLogin\uff1a token"

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 877
    invoke-static {}, Lcom/didi/common/ui/userinfo/UserInfoHelper;->loadUserInfo()V

    .line 878
    iget-object v1, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mPhone:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 879
    .local v0, newPhone:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/common/config/Preferences;->getPhone()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/didi/common/listener/ListenerHub;->notifyLogin(ILjava/lang/String;Ljava/lang/String;)V

    .line 880
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--sdk--------smscode onLogin newPhone:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isback:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->isBack:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 881
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/didi/common/config/Preferences;->setPhone(Ljava/lang/String;)V

    .line 883
    invoke-static {}, Lcom/didi/frame/MainActivity;->isInvalid()Z

    move-result v1

    if-nez v1, :cond_0

    .line 885
    invoke-static {}, Lcom/didi/common/helper/VoucherHelper;->getVoucherRedPointSupportFromServer()V

    .line 886
    invoke-static {}, Lcom/didi/frame/recovery/RecoveryHelper;->getInstance()Lcom/didi/frame/recovery/RecoveryHelper;

    move-result-object v1

    const-wide/16 v2, 0xfa0

    invoke-virtual {v1, v2, v3}, Lcom/didi/frame/recovery/RecoveryHelper;->startRecoveryDelayed(J)V

    .line 888
    :cond_0
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/didi/common/net/CommonRequest;->doQueryHasNewMsg(Lcom/didi/common/net/ResponseListener;)V

    .line 889
    invoke-static {}, Lcom/didi/taxi/net/TaxiRequest;->uploadCid()V

    .line 890
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/didi/sdk/component/PlatformSdkLoginFragment$18;

    invoke-direct {v2, p0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment$18;-><init>(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 900
    return-void
.end method

.method private passportLogin(I)V
    .locals 8
    .parameter "type"

    .prologue
    const/16 v7, 0x7d6

    .line 707
    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mPhone:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 708
    .local v3, number:Ljava/lang/String;
    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mCode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 709
    .local v6, code:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--sdk---------smscode passprt:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 710
    if-ne p1, v7, :cond_2

    .line 711
    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mStart:Lx/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lx/TextView;->setEnabled(Z)V

    .line 717
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--sdk---------smscode passprt2:"

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

    .line 718
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/soso/location/LocationController;->getLatString()Ljava/lang/String;

    move-result-object v5

    .line 719
    .local v5, lat:Ljava/lang/String;
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/soso/location/LocationController;->getLngString()Ljava/lang/String;

    move-result-object v4

    .line 721
    .local v4, lng:Ljava/lang/String;
    new-instance v0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$14;

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/didi/sdk/component/PlatformSdkLoginFragment$14;-><init>(Lcom/didi/sdk/component/PlatformSdkLoginFragment;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v3, v6, v0}, Lcom/didi/common/net/PassPortRequest;->passportLogin(ILjava/lang/String;Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    .line 773
    if-ne p1, v7, :cond_1

    .line 774
    invoke-virtual {p0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b057c

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v7, 0x0

    invoke-static {v0, v1, v2, v7}, Lcom/didi/common/helper/DialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 775
    :cond_1
    return-void

    .line 713
    .end local v4           #lng:Ljava/lang/String;
    .end local v5           #lat:Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->smsCode:Lcom/didi/common/model/CommonSMSCode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->smsCode:Lcom/didi/common/model/CommonSMSCode;

    iget-object v0, v0, Lcom/didi/common/model/CommonSMSCode;->code:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    .line 714
    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->smsCode:Lcom/didi/common/model/CommonSMSCode;

    iget-object v6, v0, Lcom/didi/common/model/CommonSMSCode;->code:Ljava/lang/String;

    goto :goto_0
.end method

.method private setListeners()V
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->tvNotReceived:Lx/TextView;

    iget-object v1, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->codeOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lx/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mPhone:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->phoneWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 279
    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mCode:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->codeWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 280
    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mPhone:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->phoneFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 281
    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mCode:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->codeFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 282
    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mCheck:Lx/TextView;

    iget-object v1, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->sendListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lx/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 283
    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mStart:Lx/TextView;

    iget-object v1, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->confirmListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lx/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->tipLink:Lx/TextView;

    iget-object v1, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->tipLinkListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lx/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    return-void
.end method

.method private showDialog(Lcom/didi/common/model/CommonPassPortToken;)V
    .locals 3
    .parameter "t"

    .prologue
    const/4 v2, 0x0

    .line 778
    invoke-virtual {p0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 789
    :goto_0
    return-void

    .line 781
    :cond_0
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {p0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->dialogHelper:Lcom/didi/common/helper/DialogHelper;

    .line 782
    invoke-virtual {p1}, Lcom/didi/common/model/CommonPassPortToken;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 783
    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->dialogHelper:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b03e9

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    :goto_1
    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->dialogHelper:Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->listener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 788
    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->dialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    goto :goto_0

    .line 785
    :cond_1
    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->dialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {p1}, Lcom/didi/common/model/CommonPassPortToken;->getErrorMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private showErrorMsg(Ljava/lang/String;)V
    .locals 2
    .parameter "mess"

    .prologue
    .line 831
    const v1, 0x7f0b03e9

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 832
    .local v0, msg:Ljava/lang/String;
    invoke-static {p1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 833
    move-object v0, p1

    .line 834
    :cond_0
    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showLongError(Ljava/lang/String;)V

    .line 835
    return-void
.end method

.method private updateAddr()V
    .locals 1

    .prologue
    .line 955
    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mPref:Lcom/didi/common/config/Preferences;

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->getHomeAddr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mPref:Lcom/didi/common/config/Preferences;

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->getCompanyAddr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 956
    :cond_0
    new-instance v0, Lcom/didi/sdk/component/PlatformSdkLoginFragment$19;

    invoke-direct {v0, p0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment$19;-><init>(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)V

    invoke-static {v0}, Lcom/didi/common/net/CommonRequest;->getAddrLists(Lcom/didi/common/net/ResponseListener;)V

    .line 976
    :cond_1
    return-void
.end method

.method private verification()V
    .locals 3

    .prologue
    .line 608
    const-string v1, "l_voice_verify_sdk"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 609
    iget-object v1, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->mPhone:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 610
    .local v0, phone:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/common/util/Utils;->checkPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 611
    const v1, 0x7f0b047c

    invoke-static {v1}, Lcom/didi/common/helper/ToastHelper;->showShortError(I)V

    .line 646
    :goto_0
    return-void

    .line 615
    :cond_0
    const/4 v1, 0x1

    new-instance v2, Lcom/didi/sdk/component/PlatformSdkLoginFragment$10;

    invoke-direct {v2, p0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment$10;-><init>(Lcom/didi/sdk/component/PlatformSdkLoginFragment;)V

    invoke-static {v0, v1, v2}, Lcom/didi/common/net/PassPortRequest;->getCode(Ljava/lang/String;ILcom/didi/common/net/ResponseListener;)V

    goto :goto_0
.end method

.method private voiceDialog(Ljava/lang/String;)V
    .locals 2
    .parameter "content"

    .prologue
    .line 650
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {p0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    .line 651
    .local v0, dialogHelper1:Lcom/didi/common/helper/DialogHelper;
    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->TWO:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 652
    const v1, 0x7f0b0277

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(I)V

    .line 653
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    iget-object v1, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->voiceListener:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 655
    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 656
    return-void
.end method


# virtual methods
.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 421
    invoke-direct {p0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->backToPrePage()V

    .line 422
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 219
    invoke-super {p0, p1}, Lcom/didi/common/ui/fragment/SlideFragment;->onCreate(Landroid/os/Bundle;)V

    .line 220
    const-string v0, "l_page_sdk"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 221
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 225
    const v1, 0x7f0300c5

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 226
    .local v0, view:Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->initViews(Landroid/view/View;)V

    .line 227
    invoke-direct {p0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->setListeners()V

    .line 228
    invoke-direct {p0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->initData()V

    .line 229
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 411
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onDestroy()V

    .line 412
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->isSendSms:Z

    .line 413
    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->smsUtil:Lcom/didi/common/util/SMSUtil;

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->smsUtil:Lcom/didi/common/util/SMSUtil;

    invoke-virtual {v0}, Lcom/didi/common/util/SMSUtil;->unregisterSmsObserver()V

    .line 416
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--sdk--------smscode onDestroy----issendsms:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->isSendSms:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isGetCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->isGetCode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 417
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 394
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onPause()V

    .line 395
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->isBack:Z

    .line 396
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--sdk--------smscode resume----issendsms:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->isSendSms:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isGetCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->isGetCode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isTakeCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->isTakeCode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 379
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->isBack:Z

    .line 380
    iget-boolean v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->isSendSms:Z

    if-eqz v0, :cond_1

    .line 381
    iput-boolean v2, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->isSendSms:Z

    .line 382
    iput-boolean v2, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->isTakeCode:Z

    .line 383
    invoke-direct {p0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->autoLogin()V

    .line 389
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onResume()V

    .line 390
    return-void

    .line 384
    :cond_1
    iget-boolean v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->isGetCode:Z

    if-eqz v0, :cond_2

    .line 385
    invoke-direct {p0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->updateAddr()V

    goto :goto_0

    .line 386
    :cond_2
    iget-boolean v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->isTakeCode:Z

    if-eqz v0, :cond_0

    .line 387
    invoke-direct {p0}, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->assistLogin()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 400
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onStop()V

    .line 401
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->isSendSms:Z

    .line 402
    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->dialogHelper:Lcom/didi/common/helper/DialogHelper;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/didi/sdk/component/PlatformSdkLoginFragment;->dialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->dismiss()V

    .line 405
    :cond_0
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 407
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 1058
    invoke-super {p0, p1, p2}, Lcom/didi/common/ui/fragment/SlideFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 1059
    invoke-static {p1}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 1060
    return-void
.end method
