.class public Lcom/didi/common/ui/fragment/CommonLoginFragment;
.super Lcom/didi/common/ui/fragment/SlideFragment;
.source "CommonLoginFragment.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/didi/common/ui/fragment/CommonLoginFragment$TimeCount;
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

.field private mSmsListener:Lcom/didi/common/util/SMSUtil$SmsListener;

.field private mStart:Lx/TextView;

.field private mTimeCount:Lcom/didi/common/ui/fragment/CommonLoginFragment$TimeCount;

.field private myTimer:Ljava/util/Timer;

.field private oldPhone:Ljava/lang/String;

.field private phoneFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private phoneWatcher:Landroid/text/TextWatcher;

.field private readSms:Z

.field private sendListener:Landroid/view/View$OnClickListener;

.field private showInputMethod:Z

.field private smsCode:Lcom/didi/common/model/CommonSMSCode;

.field private smsListener:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

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
    .line 671
    const/16 v0, 0x1e

    sput v0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->countDown:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 99
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/SlideFragment;-><init>()V

    .line 127
    iput-boolean v1, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->isTakeCode:Z

    .line 130
    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->tokenLogin:Lcom/didi/common/model/CommonToken;

    .line 131
    iput-boolean v1, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->showInputMethod:Z

    .line 132
    iput-boolean v1, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->isSendSms:Z

    .line 137
    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->smsUtil:Lcom/didi/common/util/SMSUtil;

    .line 139
    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->dialogHelper:Lcom/didi/common/helper/DialogHelper;

    .line 140
    iput v1, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->loop:I

    .line 142
    new-instance v0, Lcom/didi/common/ui/fragment/CommonLoginFragment$1;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/fragment/CommonLoginFragment$1;-><init>(Lcom/didi/common/ui/fragment/CommonLoginFragment;)V

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->mHandler:Landroid/os/Handler;

    .line 190
    new-instance v0, Lcom/didi/common/ui/fragment/CommonLoginFragment$2;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/fragment/CommonLoginFragment$2;-><init>(Lcom/didi/common/ui/fragment/CommonLoginFragment;)V

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->listener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

    .line 306
    new-instance v0, Lcom/didi/common/ui/fragment/CommonLoginFragment$3;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/fragment/CommonLoginFragment$3;-><init>(Lcom/didi/common/ui/fragment/CommonLoginFragment;)V

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->codeOnClickListener:Landroid/view/View$OnClickListener;

    .line 451
    new-instance v0, Lcom/didi/common/ui/fragment/CommonLoginFragment$5;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/fragment/CommonLoginFragment$5;-><init>(Lcom/didi/common/ui/fragment/CommonLoginFragment;)V

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->codeWatcher:Landroid/text/TextWatcher;

    .line 482
    new-instance v0, Lcom/didi/common/ui/fragment/CommonLoginFragment$6;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/fragment/CommonLoginFragment$6;-><init>(Lcom/didi/common/ui/fragment/CommonLoginFragment;)V

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->phoneFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 496
    new-instance v0, Lcom/didi/common/ui/fragment/CommonLoginFragment$7;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/fragment/CommonLoginFragment$7;-><init>(Lcom/didi/common/ui/fragment/CommonLoginFragment;)V

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->codeFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 510
    new-instance v0, Lcom/didi/common/ui/fragment/CommonLoginFragment$8;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/fragment/CommonLoginFragment$8;-><init>(Lcom/didi/common/ui/fragment/CommonLoginFragment;)V

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->phoneWatcher:Landroid/text/TextWatcher;

    .line 557
    new-instance v0, Lcom/didi/common/ui/fragment/CommonLoginFragment$9;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/fragment/CommonLoginFragment$9;-><init>(Lcom/didi/common/ui/fragment/CommonLoginFragment;)V

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->backListener:Landroid/view/View$OnClickListener;

    .line 568
    new-instance v0, Lcom/didi/common/ui/fragment/CommonLoginFragment$10;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/fragment/CommonLoginFragment$10;-><init>(Lcom/didi/common/ui/fragment/CommonLoginFragment;)V

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->sendListener:Landroid/view/View$OnClickListener;

    .line 646
    new-instance v0, Lcom/didi/common/ui/fragment/CommonLoginFragment$12;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/fragment/CommonLoginFragment$12;-><init>(Lcom/didi/common/ui/fragment/CommonLoginFragment;)V

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->voiceListener:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    .line 661
    new-instance v0, Lcom/didi/common/ui/fragment/CommonLoginFragment$13;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/fragment/CommonLoginFragment$13;-><init>(Lcom/didi/common/ui/fragment/CommonLoginFragment;)V

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->confirmListener:Landroid/view/View$OnClickListener;

    .line 672
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->myTimer:Ljava/util/Timer;

    .line 784
    new-instance v0, Lcom/didi/common/ui/fragment/CommonLoginFragment$16;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/fragment/CommonLoginFragment$16;-><init>(Lcom/didi/common/ui/fragment/CommonLoginFragment;)V

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->loginListener:Lcom/didi/common/net/ResponseListener;

    .line 1056
    new-instance v0, Lcom/didi/common/ui/fragment/CommonLoginFragment$21;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/fragment/CommonLoginFragment$21;-><init>(Lcom/didi/common/ui/fragment/CommonLoginFragment;)V

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->mSmsListener:Lcom/didi/common/util/SMSUtil$SmsListener;

    .line 1084
    new-instance v0, Lcom/didi/common/ui/fragment/CommonLoginFragment$22;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/fragment/CommonLoginFragment$22;-><init>(Lcom/didi/common/ui/fragment/CommonLoginFragment;)V

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->tipLinkListener:Landroid/view/View$OnClickListener;

    .line 1116
    iput-boolean v1, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->readSms:Z

    .line 1132
    new-instance v0, Lcom/didi/common/ui/fragment/CommonLoginFragment$23;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/fragment/CommonLoginFragment$23;-><init>(Lcom/didi/common/ui/fragment/CommonLoginFragment;)V

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->smsListener:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    return-void
.end method

.method static synthetic access$002(Lcom/didi/common/ui/fragment/CommonLoginFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->isTakeCode:Z

    return p1
.end method

.method static synthetic access$100(Lcom/didi/common/ui/fragment/CommonLoginFragment;)Lcom/didi/common/helper/DialogHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->dialogHelper:Lcom/didi/common/helper/DialogHelper;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/didi/common/ui/fragment/CommonLoginFragment;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->mPhone:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$102(Lcom/didi/common/ui/fragment/CommonLoginFragment;Lcom/didi/common/helper/DialogHelper;)Lcom/didi/common/helper/DialogHelper;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->dialogHelper:Lcom/didi/common/helper/DialogHelper;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/didi/common/ui/fragment/CommonLoginFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->getServerCode()V

    return-void
.end method

.method static synthetic access$1200(Lcom/didi/common/ui/fragment/CommonLoginFragment;Lcom/didi/common/model/BaseObject;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->isVoiceVerify(Lcom/didi/common/model/BaseObject;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/didi/common/ui/fragment/CommonLoginFragment;)Lcom/didi/common/model/CommonSMSCode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->smsCode:Lcom/didi/common/model/CommonSMSCode;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/didi/common/ui/fragment/CommonLoginFragment;Lcom/didi/common/model/CommonSMSCode;)Lcom/didi/common/model/CommonSMSCode;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->smsCode:Lcom/didi/common/model/CommonSMSCode;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/didi/common/ui/fragment/CommonLoginFragment;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/didi/common/ui/fragment/CommonLoginFragment;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->getColorResources(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/didi/common/ui/fragment/CommonLoginFragment;)Lx/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->mStart:Lx/TextView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/didi/common/ui/fragment/CommonLoginFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->mPhoneLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/didi/common/ui/fragment/CommonLoginFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->mCodeLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/didi/common/ui/fragment/CommonLoginFragment;)Lx/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->mCheck:Lx/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/didi/common/ui/fragment/CommonLoginFragment;)Lcom/didi/common/model/CommonToken;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->tokenLogin:Lcom/didi/common/model/CommonToken;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/didi/common/ui/fragment/CommonLoginFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->oldPhone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/didi/common/ui/fragment/CommonLoginFragment;)Lcom/didi/common/ui/fragment/CommonLoginFragment$TimeCount;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->mTimeCount:Lcom/didi/common/ui/fragment/CommonLoginFragment$TimeCount;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/didi/common/ui/fragment/CommonLoginFragment;Lcom/didi/common/ui/fragment/CommonLoginFragment$TimeCount;)Lcom/didi/common/ui/fragment/CommonLoginFragment$TimeCount;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->mTimeCount:Lcom/didi/common/ui/fragment/CommonLoginFragment$TimeCount;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/didi/common/ui/fragment/CommonLoginFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->backToPrePage()V

    return-void
.end method

.method static synthetic access$2300(Lcom/didi/common/ui/fragment/CommonLoginFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->showSMSDialog()V

    return-void
.end method

.method static synthetic access$2400(Lcom/didi/common/ui/fragment/CommonLoginFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->getSms()V

    return-void
.end method

.method static synthetic access$2500(Lcom/didi/common/ui/fragment/CommonLoginFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->verification()V

    return-void
.end method

.method static synthetic access$2600(Lcom/didi/common/ui/fragment/CommonLoginFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->login()V

    return-void
.end method

.method static synthetic access$2700()I
    .locals 1

    .prologue
    .line 99
    sget v0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->countDown:I

    return v0
.end method

.method static synthetic access$2710()I
    .locals 2

    .prologue
    .line 99
    sget v0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->countDown:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lcom/didi/common/ui/fragment/CommonLoginFragment;->countDown:I

    return v0
.end method

.method static synthetic access$2800(Lcom/didi/common/ui/fragment/CommonLoginFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 99
    invoke-direct/range {p0 .. p5}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->commonLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/didi/common/ui/fragment/CommonLoginFragment;Lcom/didi/common/model/CommonPassPortToken;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->showDialog(Lcom/didi/common/model/CommonPassPortToken;)V

    return-void
.end method

.method static synthetic access$300(Lcom/didi/common/ui/fragment/CommonLoginFragment;)Ljava/util/Timer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->myTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/didi/common/ui/fragment/CommonLoginFragment;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->showErrorMsg(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/didi/common/ui/fragment/CommonLoginFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->commitPreferenceImmdiately()V

    return-void
.end method

.method static synthetic access$3200(Lcom/didi/common/ui/fragment/CommonLoginFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->getGuideFlag()V

    return-void
.end method

.method static synthetic access$3300(Lcom/didi/common/ui/fragment/CommonLoginFragment;Lcom/didi/common/model/CommonToken;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->onLogin(Lcom/didi/common/model/CommonToken;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/didi/common/ui/fragment/CommonLoginFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->isBack:Z

    return v0
.end method

.method static synthetic access$3500(Lcom/didi/common/ui/fragment/CommonLoginFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->updateAddr()V

    return-void
.end method

.method static synthetic access$3600(Lcom/didi/common/ui/fragment/CommonLoginFragment;)Lx/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->tvNotReceived:Lx/TextView;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/didi/common/ui/fragment/CommonLoginFragment;Lcom/didi/common/model/AddressList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->onGetAddressList(Lcom/didi/common/model/AddressList;)V

    return-void
.end method

.method static synthetic access$3802(Lcom/didi/common/ui/fragment/CommonLoginFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->readSms:Z

    return p1
.end method

.method static synthetic access$402(Lcom/didi/common/ui/fragment/CommonLoginFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->isSendSms:Z

    return p1
.end method

.method static synthetic access$500(Lcom/didi/common/ui/fragment/CommonLoginFragment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->passportLogin(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/didi/common/ui/fragment/CommonLoginFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->showInputMethod:Z

    return v0
.end method

.method static synthetic access$602(Lcom/didi/common/ui/fragment/CommonLoginFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->showInputMethod:Z

    return p1
.end method

.method static synthetic access$700(Lcom/didi/common/ui/fragment/CommonLoginFragment;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->mCode:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$800(Lcom/didi/common/ui/fragment/CommonLoginFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->isGetCode:Z

    return v0
.end method

.method static synthetic access$802(Lcom/didi/common/ui/fragment/CommonLoginFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->isGetCode:Z

    return p1
.end method

.method static synthetic access$900(Lcom/didi/common/ui/fragment/CommonLoginFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->isCodeClick:Z

    return v0
.end method

.method static synthetic access$902(Lcom/didi/common/ui/fragment/CommonLoginFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->isCodeClick:Z

    return p1
.end method

.method private assistLogin()V
    .locals 0

    .prologue
    .line 374
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->autoLogin()V

    .line 375
    return-void
.end method

.method private autoLogin()V
    .locals 6

    .prologue
    .line 378
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->mPhone:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->mPhone:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/Utils;->isNum(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 379
    :cond_0
    const v0, 0x7f0b0479

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showLongInfo(I)V

    .line 392
    :goto_0
    return-void

    .line 382
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--------------------smscode  autoLogin():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->smsCode:Lcom/didi/common/model/CommonSMSCode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 383
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->smsCode:Lcom/didi/common/model/CommonSMSCode;

    if-eqz v0, :cond_2

    .line 384
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->mCode:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->smsCode:Lcom/didi/common/model/CommonSMSCode;

    iget-object v1, v1, Lcom/didi/common/model/CommonSMSCode;->code:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 385
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 386
    invoke-virtual {p0}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b0250

    invoke-virtual {p0, v1}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/didi/common/helper/DialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 387
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->myTimer:Ljava/util/Timer;

    .line 388
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->myTimer:Ljava/util/Timer;

    invoke-direct {p0}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->myTask()Ljava/util/TimerTask;

    move-result-object v1

    const-wide/16 v2, 0x12c

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    goto :goto_0

    .line 390
    :cond_2
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    goto :goto_0
.end method

.method private backToPrePage()V
    .locals 4

    .prologue
    .line 933
    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->mTimeCount:Lcom/didi/common/ui/fragment/CommonLoginFragment$TimeCount;

    if-eqz v2, :cond_0

    .line 934
    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->mTimeCount:Lcom/didi/common/ui/fragment/CommonLoginFragment$TimeCount;

    invoke-virtual {v2}, Lcom/didi/common/ui/fragment/CommonLoginFragment$TimeCount;->cancel()V

    .line 935
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->mTimeCount:Lcom/didi/common/ui/fragment/CommonLoginFragment$TimeCount;

    .line 938
    :cond_0
    invoke-virtual {p0}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 939
    .local v0, bun:Landroid/os/Bundle;
    if-eqz v0, :cond_2

    .line 940
    const-string v2, "from"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2

    .line 941
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v2

    const-string v3, "item"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/didi/frame/FragmentMgr;->showTaxiRealtimeFragmentFromAddr(I)V

    .line 966
    :cond_1
    :goto_0
    return-void

    .line 947
    :cond_2
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 948
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/didi/frame/FragmentMgr;->peekFragment(I)Lcom/didi/common/ui/fragment/SlideFragment;

    move-result-object v1

    .line 949
    .local v1, peek:Lcom/didi/common/ui/fragment/SlideFragment;
    if-eqz v1, :cond_1

    .line 951
    instance-of v2, v1, Lcom/didi/taxi/ui/fragment/TaxiBookingFragment;

    if-nez v2, :cond_3

    instance-of v2, v1, Lcom/didi/car/ui/fragment/CarBookingFragment;

    if-eqz v2, :cond_5

    .line 952
    :cond_3
    const/4 v2, 0x0

    sput-boolean v2, Lcom/didi/common/util/Constant;->isBookingSendable:Z

    .line 953
    invoke-static {}, Lcom/didi/frame/business/redirector/RedirectEngine;->booking()V

    .line 963
    .end local v1           #peek:Lcom/didi/common/ui/fragment/SlideFragment;
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 964
    invoke-virtual {p0}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->mCode:Landroid/widget/EditText;

    invoke-static {v2, v3}, Lcom/didi/common/util/Utils;->hideInputMethod(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0

    .line 956
    .restart local v1       #peek:Lcom/didi/common/ui/fragment/SlideFragment;
    :cond_5
    instance-of v2, v1, Lcom/didi/common/ui/fragment/SetupFragment;

    if-nez v2, :cond_6

    instance-of v2, v1, Lcom/didi/common/ui/fragment/SplashFragment;

    if-eqz v2, :cond_7

    .line 957
    :cond_6
    invoke-static {}, Lcom/didi/frame/business/redirector/RedirectEngine;->home()V

    goto :goto_1

    .line 959
    :cond_7
    invoke-static {}, Lcom/didi/frame/FragmentMgr;->getInstance()Lcom/didi/frame/FragmentMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/frame/FragmentMgr;->backToPreFragment()V

    goto :goto_1
.end method

.method private commitPreferenceImmdiately()V
    .locals 2

    .prologue
    .line 832
    invoke-static {}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->getInstance()Lcom/didi/common/config/preference/PreferenceEditorProxy;

    move-result-object v0

    new-instance v1, Lcom/didi/common/ui/fragment/CommonLoginFragment$17;

    invoke-direct {v1, p0}, Lcom/didi/common/ui/fragment/CommonLoginFragment$17;-><init>(Lcom/didi/common/ui/fragment/CommonLoginFragment;)V

    invoke-virtual {v0, v1}, Lcom/didi/common/config/preference/PreferenceEditorProxy;->commitImmediately(Lcom/didi/common/config/preference/PreferenceEditorProxy$PerferenceListener;)V

    .line 839
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
    .line 781
    .local p5, listener:Lcom/didi/common/net/ResponseListener;,"Lcom/didi/common/net/ResponseListener<Lcom/didi/common/model/CommonToken;>;"
    invoke-static {p1, p2, p4, p3, p5}, Lcom/didi/common/net/CommonRequest;->commonLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    .line 782
    return-void
.end method

.method private getColorResources(I)I
    .locals 1
    .parameter "rid"

    .prologue
    .line 445
    invoke-virtual {p0}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_0

    .line 446
    invoke-static {p1}, Lcom/didi/common/helper/ResourcesHelper;->getColor(I)I

    move-result v0

    .line 448
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getGuideFlag()V
    .locals 1

    .prologue
    .line 842
    new-instance v0, Lcom/didi/common/ui/fragment/CommonLoginFragment$18;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/fragment/CommonLoginFragment$18;-><init>(Lcom/didi/common/ui/fragment/CommonLoginFragment;)V

    invoke-static {v0}, Lcom/didi/car/net/CarRequest;->getGuideFlag(Lcom/didi/common/net/ResponseListener;)V

    .line 867
    return-void
.end method

.method private getServerCode()V
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->mPhone:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/didi/common/ui/fragment/CommonLoginFragment$4;

    invoke-direct {v1, p0}, Lcom/didi/common/ui/fragment/CommonLoginFragment$4;-><init>(Lcom/didi/common/ui/fragment/CommonLoginFragment;)V

    invoke-static {v0, v1}, Lcom/didi/common/net/CommonRequest;->getServiceCodeChannel(Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    .line 370
    return-void
.end method

.method private getSms()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1148
    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->mPhone:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1149
    .local v0, numberString:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/common/util/Utils;->checkPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1150
    const v1, 0x7f0b047c

    invoke-static {v1}, Lcom/didi/common/helper/ToastHelper;->showShortError(I)V

    .line 1195
    :goto_0
    return-void

    .line 1152
    :cond_0
    const-string v1, "android.permission.READ_SMS"

    invoke-static {v1}, Lcom/didi/common/util/Utils;->checkUserPermission(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->readSms:Z

    if-eqz v1, :cond_1

    .line 1153
    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->smsUtil:Lcom/didi/common/util/SMSUtil;

    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->mSmsListener:Lcom/didi/common/util/SMSUtil$SmsListener;

    invoke-virtual {v1, v2}, Lcom/didi/common/util/SMSUtil;->registerSmsObserver(Lcom/didi/common/util/SMSUtil$SmsListener;)V

    .line 1155
    :cond_1
    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->oldPhone:Ljava/lang/String;

    .line 1157
    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->mCode:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 1158
    const-string v1, "l_verify"

    new-array v2, v3, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1160
    new-instance v1, Lcom/didi/common/ui/fragment/CommonLoginFragment$24;

    invoke-direct {v1, p0}, Lcom/didi/common/ui/fragment/CommonLoginFragment$24;-><init>(Lcom/didi/common/ui/fragment/CommonLoginFragment;)V

    invoke-static {v0, v3, v1}, Lcom/didi/common/net/PassPortRequest;->getCode(Ljava/lang/String;ILcom/didi/common/net/ResponseListener;)V

    goto :goto_0
.end method

.method private initData()V
    .locals 2

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {p0}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->mCode:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/didi/common/util/Utils;->showInputMethod(Landroid/content/Context;Landroid/view/View;)V

    .line 282
    :cond_0
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {p0}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->dialogHelper:Lcom/didi/common/helper/DialogHelper;

    .line 284
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->reset()V

    .line 285
    return-void
.end method

.method private initViews(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/4 v4, 0x0

    .line 248
    const v2, 0x7f080116

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 249
    .local v0, loginLayout:Landroid/view/View;
    invoke-static {v0}, Lcom/didi/common/ui/component/UiHelper;->shieldTouchEvent(Landroid/view/View;)V

    .line 250
    new-instance v2, Lcom/didi/common/util/SMSUtil;

    invoke-direct {v2}, Lcom/didi/common/util/SMSUtil;-><init>()V

    iput-object v2, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->smsUtil:Lcom/didi/common/util/SMSUtil;

    .line 251
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->mPref:Lcom/didi/common/config/Preferences;

    .line 252
    const v2, 0x7f08011a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->mPhone:Landroid/widget/EditText;

    .line 253
    const v2, 0x7f080119

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->mPhoneLayout:Landroid/view/View;

    .line 254
    const v2, 0x7f08011c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->mCodeLayout:Landroid/view/View;

    .line 255
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/common/config/Preferences;->getPhone()Ljava/lang/String;

    move-result-object v1

    .line 256
    .local v1, phone:Ljava/lang/String;
    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->mPhone:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 257
    invoke-static {v1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 258
    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->mPhoneLayout:Landroid/view/View;

    const v3, 0x7f0200f7

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 262
    :goto_0
    const v2, 0x7f08011d

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->mCode:Landroid/widget/EditText;

    .line 263
    const v2, 0x7f08011b

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lx/TextView;

    iput-object v2, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->mCheck:Lx/TextView;

    .line 265
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

    .line 266
    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->mCheck:Lx/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lx/TextView;->setEnabled(Z)V

    .line 270
    :goto_1
    const v2, 0x7f08011e

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lx/TextView;

    iput-object v2, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->tvNotReceived:Lx/TextView;

    .line 271
    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->tvNotReceived:Lx/TextView;

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Lx/TextView;->setGravity(I)V

    .line 272
    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->tvNotReceived:Lx/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lx/TextView;->setVisibility(I)V

    .line 273
    const v2, 0x7f08009d

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lx/TextView;

    iput-object v2, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->mStart:Lx/TextView;

    .line 274
    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->mStart:Lx/TextView;

    invoke-virtual {v2, v4}, Lx/TextView;->setEnabled(Z)V

    .line 275
    const v2, 0x7f080120

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lx/TextView;

    iput-object v2, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->tipLink:Lx/TextView;

    .line 276
    return-void

    .line 260
    :cond_0
    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->mPhoneLayout:Landroid/view/View;

    const v3, 0x7f0200f6

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 268
    :cond_1
    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->mCheck:Lx/TextView;

    invoke-virtual {v2, v4}, Lx/TextView;->setEnabled(Z)V

    goto :goto_1
.end method

.method private isVoiceVerify(Lcom/didi/common/model/BaseObject;)Z
    .locals 2
    .parameter "obj"

    .prologue
    .line 584
    iget v0, p1, Lcom/didi/common/model/BaseObject;->errno:I

    const/16 v1, 0x3ea

    if-ne v0, v1, :cond_1

    .line 585
    iget-object v0, p1, Lcom/didi/common/model/BaseObject;->errmsg:Ljava/lang/String;

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 586
    const v0, 0x7f0b02f7

    invoke-static {v0}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/didi/common/model/BaseObject;->errmsg:Ljava/lang/String;

    .line 588
    :cond_0
    iget-object v0, p1, Lcom/didi/common/model/BaseObject;->errmsg:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->voiceDialog(Ljava/lang/String;)V

    .line 589
    const/4 v0, 0x1

    .line 591
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private login()V
    .locals 2

    .prologue
    .line 1100
    invoke-static {}, Lcom/didi/common/base/DidiApp;->getInstance()Lcom/didi/common/base/DidiApp;

    move-result-object v0

    const v1, 0x7f05000b

    invoke-virtual {v0, v1}, Lcom/didi/common/base/DidiApp;->playSound(I)V

    .line 1101
    const-string v0, "l_login_confirm"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1102
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->mPhone:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->mPhone:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/Utils;->isNum(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1103
    :cond_0
    const v0, 0x7f0b0479

    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showLongInfo(I)V

    .line 1104
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->mStart:Lx/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lx/TextView;->setEnabled(Z)V

    .line 1108
    :goto_0
    return-void

    .line 1107
    :cond_1
    const/16 v0, 0x7d6

    invoke-direct {p0, v0}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->passportLogin(I)V

    goto :goto_0
.end method

.method private myTask()Ljava/util/TimerTask;
    .locals 1

    .prologue
    .line 675
    new-instance v0, Lcom/didi/common/ui/fragment/CommonLoginFragment$14;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/fragment/CommonLoginFragment$14;-><init>(Lcom/didi/common/ui/fragment/CommonLoginFragment;)V

    return-object v0
.end method

.method private onGetAddressList(Lcom/didi/common/model/AddressList;)V
    .locals 12
    .parameter "addresslist"

    .prologue
    const/4 v11, 0x0

    .line 994
    const v9, 0x7f0b03eb

    invoke-static {v9}, Lcom/didi/common/helper/ToastHelper;->showShortCompleted(I)V

    .line 995
    invoke-static {p1}, Lcom/didi/common/net/HttpHelper;->validate(Lcom/didi/common/model/BaseObject;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 996
    invoke-virtual {p1}, Lcom/didi/common/model/AddressList;->getList()Ljava/util/ArrayList;

    move-result-object v1

    .line 997
    .local v1, arrylist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/common/model/Address;>;"
    invoke-static {v1}, Lcom/didi/common/util/CollectionUtil;->isEmpty(Ljava/util/Collection;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 998
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/didi/common/model/Address;

    .line 999
    .local v0, address:Lcom/didi/common/model/Address;
    invoke-virtual {v0}, Lcom/didi/common/model/Address;->isHome()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1000
    iget-object v9, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->mPref:Lcom/didi/common/config/Preferences;

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/didi/common/config/Preferences;->setHomeAddr(Ljava/lang/String;)V

    .line 1001
    iget-object v9, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->mPref:Lcom/didi/common/config/Preferences;

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/didi/common/config/Preferences;->setHomeName(Ljava/lang/String;)V

    .line 1002
    iget-object v9, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->mPref:Lcom/didi/common/config/Preferences;

    iget-object v10, v0, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/didi/common/config/Preferences;->setHomeLongitude(Ljava/lang/String;)V

    .line 1003
    iget-object v9, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->mPref:Lcom/didi/common/config/Preferences;

    iget-object v10, v0, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/didi/common/config/Preferences;->setHomeLatitude(Ljava/lang/String;)V

    goto :goto_0

    .line 1004
    :cond_1
    invoke-virtual {v0}, Lcom/didi/common/model/Address;->isCompany()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1005
    iget-object v9, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->mPref:Lcom/didi/common/config/Preferences;

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/didi/common/config/Preferences;->setCompanyAddr(Ljava/lang/String;)V

    .line 1006
    iget-object v9, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->mPref:Lcom/didi/common/config/Preferences;

    invoke-virtual {v0}, Lcom/didi/common/model/Address;->getDisplayName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/didi/common/config/Preferences;->setCompanyName(Ljava/lang/String;)V

    .line 1007
    iget-object v9, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->mPref:Lcom/didi/common/config/Preferences;

    iget-object v10, v0, Lcom/didi/common/model/Address;->lng:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/didi/common/config/Preferences;->setCompanyLongitude(Ljava/lang/String;)V

    .line 1008
    iget-object v9, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->mPref:Lcom/didi/common/config/Preferences;

    iget-object v10, v0, Lcom/didi/common/model/Address;->lat:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/didi/common/config/Preferences;->setCompanyLatitude(Ljava/lang/String;)V

    goto :goto_0

    .line 1012
    .end local v0           #address:Lcom/didi/common/model/Address;
    .end local v1           #arrylist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/didi/common/model/Address;>;"
    .end local v5           #i$:Ljava/util/Iterator;
    :cond_2
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 1014
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->backToPrePage()V

    .line 1019
    invoke-virtual {p0}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 1020
    .local v2, bundle:Landroid/os/Bundle;
    if-eqz v2, :cond_3

    .line 1021
    const-string v9, "isFromO2O"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1022
    new-instance v8, Lcom/didi/common/ui/webview/WebViewModel;

    invoke-direct {v8}, Lcom/didi/common/ui/webview/WebViewModel;-><init>()V

    .line 1023
    .local v8, webViewModel:Lcom/didi/common/ui/webview/WebViewModel;
    const-string v9, "found"

    iput-object v9, v8, Lcom/didi/common/ui/webview/WebViewModel;->source:Ljava/lang/String;

    .line 1024
    const-string v9, "O2Ourl"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/didi/common/ui/webview/WebViewModel;->url:Ljava/lang/String;

    .line 1025
    const/16 v9, 0x64

    invoke-static {v11, v9}, Lcom/didi/game/common/utils/O2OUtils;->getBizParams(II)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/didi/common/ui/webview/WebViewModel;->customparams:Ljava/lang/String;

    .line 1026
    new-instance v6, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    const-class v10, Lcom/didi/game/activity/FoundWebActivity;

    invoke-direct {v6, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1027
    .local v6, intent:Landroid/content/Intent;
    const-string v9, "data_model"

    invoke-virtual {v6, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1028
    invoke-virtual {p0, v6}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->startActivity(Landroid/content/Intent;)V

    .line 1053
    .end local v6           #intent:Landroid/content/Intent;
    .end local v8           #webViewModel:Lcom/didi/common/ui/webview/WebViewModel;
    :cond_3
    :goto_1
    return-void

    .line 1030
    :cond_4
    const-string v9, "isFromGame"

    invoke-virtual {v2, v9, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1031
    const-string v9, "game"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v4

    check-cast v4, Lcom/didi/game/model/H5game;

    .line 1032
    .local v4, game:Lcom/didi/game/model/H5game;
    invoke-virtual {v4}, Lcom/didi/game/model/H5game;->getPluginName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 1033
    invoke-virtual {p0}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-static {v9, v4}, Lcom/didi/game/activity/GameEngineRuntimeActivity;->startActivity(Landroid/content/Context;Lcom/didi/game/model/H5game;)V

    .line 1037
    :goto_2
    invoke-virtual {v2}, Landroid/os/Bundle;->clear()V

    goto :goto_1

    .line 1035
    :cond_5
    invoke-virtual {p0}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-static {v9, v4}, Lcom/didi/game/activity/GameActivity;->startActivity(Landroid/content/Context;Lcom/didi/game/model/H5game;)V

    goto :goto_2

    .line 1039
    .end local v4           #game:Lcom/didi/game/model/H5game;
    :cond_6
    const-string v9, "data_model"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v7

    check-cast v7, Lcom/didi/common/ui/webview/WebViewModel;

    .line 1040
    .local v7, mWebViewModel:Lcom/didi/common/ui/webview/WebViewModel;
    if-eqz v7, :cond_7

    .line 1043
    :try_start_0
    new-instance v6, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    iget-object v10, v7, Lcom/didi/common/ui/webview/WebViewModel;->redirectClassName:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    invoke-direct {v6, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1044
    .restart local v6       #intent:Landroid/content/Intent;
    const-string v9, "data_model"

    invoke-virtual {v6, v9, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1045
    invoke-virtual {p0, v6}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1050
    .end local v6           #intent:Landroid/content/Intent;
    :cond_7
    :goto_3
    invoke-virtual {v2}, Landroid/os/Bundle;->clear()V

    goto :goto_1

    .line 1046
    :catch_0
    move-exception v3

    .line 1047
    .local v3, e:Ljava/lang/ClassNotFoundException;
    invoke-virtual {v3}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_3
.end method

.method private onLogin(Lcom/didi/common/model/CommonToken;)V
    .locals 5
    .parameter "token"

    .prologue
    .line 870
    const-string v1, "onLogin\uff1a token"

    invoke-static {v1}, Lcom/didi/common/util/LogUtil;->d(Ljava/lang/String;)V

    .line 871
    invoke-static {}, Lcom/didi/common/ui/userinfo/UserInfoHelper;->loadUserInfo()V

    .line 872
    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->mPhone:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 873
    .local v0, newPhone:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/didi/common/config/Preferences;->getPhone()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/didi/common/listener/ListenerHub;->notifyLogin(ILjava/lang/String;Ljava/lang/String;)V

    .line 874
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

    iget-boolean v2, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->isBack:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 875
    invoke-static {}, Lcom/didi/common/config/Preferences;->getInstance()Lcom/didi/common/config/Preferences;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/didi/common/config/Preferences;->setPhone(Ljava/lang/String;)V

    .line 876
    invoke-static {v0}, Lcom/didi/common/util/Utils;->startTraceService(Ljava/lang/String;)V

    .line 878
    invoke-static {}, Lcom/didi/common/helper/VoucherHelper;->getVoucherRedPointSupportFromServer()V

    .line 879
    invoke-static {}, Lcom/didi/frame/recovery/RecoveryHelper;->getInstance()Lcom/didi/frame/recovery/RecoveryHelper;

    move-result-object v1

    const-wide/16 v2, 0xfa0

    invoke-virtual {v1, v2, v3}, Lcom/didi/frame/recovery/RecoveryHelper;->startRecoveryDelayed(J)V

    .line 880
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/didi/common/net/CommonRequest;->doQueryHasNewMsg(Lcom/didi/common/net/ResponseListener;)V

    .line 881
    invoke-static {}, Lcom/didi/taxi/net/TaxiRequest;->uploadCid()V

    .line 882
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/didi/common/ui/fragment/CommonLoginFragment$19;

    invoke-direct {v2, p0}, Lcom/didi/common/ui/fragment/CommonLoginFragment$19;-><init>(Lcom/didi/common/ui/fragment/CommonLoginFragment;)V

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 892
    return-void
.end method

.method private passportLogin(I)V
    .locals 8
    .parameter "type"

    .prologue
    const/16 v7, 0x7d6

    .line 695
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->mPhone:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 696
    .local v3, number:Ljava/lang/String;
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->mCode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 697
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

    .line 698
    if-ne p1, v7, :cond_2

    .line 699
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->mStart:Lx/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lx/TextView;->setEnabled(Z)V

    .line 705
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

    .line 706
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/soso/location/LocationController;->getLatString()Ljava/lang/String;

    move-result-object v5

    .line 707
    .local v5, lat:Ljava/lang/String;
    invoke-static {}, Lcom/didi/soso/location/LocationController;->getInstance()Lcom/didi/soso/location/LocationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/didi/soso/location/LocationController;->getLngString()Ljava/lang/String;

    move-result-object v4

    .line 709
    .local v4, lng:Ljava/lang/String;
    new-instance v0, Lcom/didi/common/ui/fragment/CommonLoginFragment$15;

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/didi/common/ui/fragment/CommonLoginFragment$15;-><init>(Lcom/didi/common/ui/fragment/CommonLoginFragment;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v3, v6, v0}, Lcom/didi/common/net/PassPortRequest;->passportLogin(ILjava/lang/String;Ljava/lang/String;Lcom/didi/common/net/ResponseListener;)V

    .line 761
    if-ne p1, v7, :cond_1

    .line 762
    invoke-virtual {p0}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b057c

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v7, 0x0

    invoke-static {v0, v1, v2, v7}, Lcom/didi/common/helper/DialogHelper;->loadingDialog(Landroid/content/Context;Ljava/lang/String;ZLandroid/content/DialogInterface$OnCancelListener;)V

    .line 763
    :cond_1
    return-void

    .line 701
    .end local v4           #lng:Ljava/lang/String;
    .end local v5           #lat:Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->smsCode:Lcom/didi/common/model/CommonSMSCode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->smsCode:Lcom/didi/common/model/CommonSMSCode;

    iget-object v0, v0, Lcom/didi/common/model/CommonSMSCode;->code:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_0

    .line 702
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->smsCode:Lcom/didi/common/model/CommonSMSCode;

    iget-object v6, v0, Lcom/didi/common/model/CommonSMSCode;->code:Ljava/lang/String;

    goto :goto_0
.end method

.method private setListeners()V
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->tvNotReceived:Lx/TextView;

    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->codeOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lx/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->mPhone:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->phoneWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 290
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->mCode:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->codeWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 291
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->mPhone:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->phoneFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 292
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->mCode:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->codeFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 293
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->mCheck:Lx/TextView;

    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->sendListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lx/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->mStart:Lx/TextView;

    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->confirmListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lx/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->tipLink:Lx/TextView;

    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->tipLinkListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lx/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    return-void
.end method

.method private setTitlebar()V
    .locals 3

    .prologue
    .line 299
    invoke-static {}, Lcom/didi/frame/titlebar/TitleBarHelper;->getTitleBar()Lcom/didi/frame/titlebar/TitleBar;

    move-result-object v0

    .line 300
    .local v0, titleBar:Lcom/didi/frame/titlebar/TitleBar;
    const v1, 0x7f020170

    iget-object v2, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->backListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lcom/didi/frame/titlebar/TitleBar;->setLeftDrawable(ILandroid/view/View$OnClickListener;)V

    .line 301
    const v1, 0x7f0b03ee

    invoke-virtual {v0, v1}, Lcom/didi/frame/titlebar/TitleBar;->setTitle(I)V

    .line 302
    invoke-virtual {v0}, Lcom/didi/frame/titlebar/TitleBar;->hideRight()V

    .line 303
    invoke-static {}, Lcom/didi/frame/titlebar/TitleBarHelper;->showTitleBar()V

    .line 304
    return-void
.end method

.method private showDialog(Lcom/didi/common/model/CommonPassPortToken;)V
    .locals 3
    .parameter "t"

    .prologue
    const/4 v2, 0x0

    .line 766
    invoke-virtual {p0}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 777
    :goto_0
    return-void

    .line 769
    :cond_0
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {p0}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->dialogHelper:Lcom/didi/common/helper/DialogHelper;

    .line 770
    invoke-virtual {p1}, Lcom/didi/common/model/CommonPassPortToken;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 771
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->dialogHelper:Lcom/didi/common/helper/DialogHelper;

    const v1, 0x7f0b03e9

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    :goto_1
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->dialogHelper:Lcom/didi/common/helper/DialogHelper;

    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->listener:Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 776
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->dialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    goto :goto_0

    .line 773
    :cond_1
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->dialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {p1}, Lcom/didi/common/model/CommonPassPortToken;->getErrorMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private showErrorMsg(Ljava/lang/String;)V
    .locals 2
    .parameter "mess"

    .prologue
    .line 825
    const v1, 0x7f0b03e9

    invoke-static {v1}, Lcom/didi/common/helper/ResourcesHelper;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 826
    .local v0, msg:Ljava/lang/String;
    invoke-static {p1}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 827
    move-object v0, p1

    .line 828
    :cond_0
    invoke-static {v0}, Lcom/didi/common/helper/ToastHelper;->showLongError(Ljava/lang/String;)V

    .line 829
    return-void
.end method

.method private showSMSDialog()V
    .locals 3

    .prologue
    .line 1119
    invoke-virtual {p0}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1130
    :goto_0
    return-void

    .line 1122
    :cond_0
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {p0}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    .line 1123
    .local v0, dh:Lcom/didi/common/helper/DialogHelper;
    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$IconType;->INFO:Lcom/didi/common/ui/component/CommonDialog$IconType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setIconType(Lcom/didi/common/ui/component/CommonDialog$IconType;)V

    .line 1124
    const/4 v1, 0x0

    const-string v2, "\u9700\u8981\u77ed\u4fe1\u9a8c\u8bc1\u7801\u8fdb\u884c\u767b\u5f55\uff0c\u662f\u5426\u5141\u8bb8\u8bfb\u53d6\u60a8\u7684\u77ed\u4fe1\u6570\u636e\uff1f"

    invoke-virtual {v0, v1, v2}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->TWO:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 1126
    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->smsListener:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 1127
    const-string v1, "\u62d2\u7edd"

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setCancelBtnText(Ljava/lang/String;)V

    .line 1128
    const-string v1, "\u5141\u8bb8"

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(Ljava/lang/String;)V

    .line 1129
    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    goto :goto_0
.end method

.method private updateAddr()V
    .locals 1

    .prologue
    .line 970
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->mPref:Lcom/didi/common/config/Preferences;

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->getHomeAddr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->mPref:Lcom/didi/common/config/Preferences;

    invoke-virtual {v0}, Lcom/didi/common/config/Preferences;->getCompanyAddr()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 971
    :cond_0
    new-instance v0, Lcom/didi/common/ui/fragment/CommonLoginFragment$20;

    invoke-direct {v0, p0}, Lcom/didi/common/ui/fragment/CommonLoginFragment$20;-><init>(Lcom/didi/common/ui/fragment/CommonLoginFragment;)V

    invoke-static {v0}, Lcom/didi/common/net/CommonRequest;->getAddrLists(Lcom/didi/common/net/ResponseListener;)V

    .line 991
    :cond_1
    return-void
.end method

.method private verification()V
    .locals 3

    .prologue
    .line 596
    const-string v1, "l_voice_verify"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 597
    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->mPhone:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 598
    .local v0, phone:Ljava/lang/String;
    invoke-static {v0}, Lcom/didi/common/util/Utils;->checkPhoneNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 599
    const v1, 0x7f0b047c

    invoke-static {v1}, Lcom/didi/common/helper/ToastHelper;->showShortError(I)V

    .line 634
    :goto_0
    return-void

    .line 603
    :cond_0
    const/4 v1, 0x1

    new-instance v2, Lcom/didi/common/ui/fragment/CommonLoginFragment$11;

    invoke-direct {v2, p0}, Lcom/didi/common/ui/fragment/CommonLoginFragment$11;-><init>(Lcom/didi/common/ui/fragment/CommonLoginFragment;)V

    invoke-static {v0, v1, v2}, Lcom/didi/common/net/PassPortRequest;->getCode(Ljava/lang/String;ILcom/didi/common/net/ResponseListener;)V

    goto :goto_0
.end method

.method private voiceDialog(Ljava/lang/String;)V
    .locals 2
    .parameter "content"

    .prologue
    .line 638
    new-instance v0, Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {p0}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/didi/common/helper/DialogHelper;-><init>(Landroid/content/Context;)V

    .line 639
    .local v0, dialogHelper1:Lcom/didi/common/helper/DialogHelper;
    sget-object v1, Lcom/didi/common/ui/component/CommonDialog$ButtonType;->TWO:Lcom/didi/common/ui/component/CommonDialog$ButtonType;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setButtonType(Lcom/didi/common/ui/component/CommonDialog$ButtonType;)V

    .line 640
    const v1, 0x7f0b0277

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setSubmitBtnText(I)V

    .line 641
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/didi/common/helper/DialogHelper;->setTitleContent(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    iget-object v1, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->voiceListener:Lcom/didi/common/helper/DialogHelper$DialogHelperListener;

    invoke-virtual {v0, v1}, Lcom/didi/common/helper/DialogHelper;->setListener(Lcom/didi/common/ui/component/CommonDialog$CommonDialogListener;)V

    .line 643
    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->show()V

    .line 644
    return-void
.end method


# virtual methods
.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 440
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->backToPrePage()V

    .line 441
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 233
    invoke-super {p0, p1}, Lcom/didi/common/ui/fragment/SlideFragment;->onCreate(Landroid/os/Bundle;)V

    .line 234
    const-string v0, "l_page"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/didi/common/util/TraceLog;->addLog(Ljava/lang/String;[Ljava/lang/String;)V

    .line 235
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 239
    const v1, 0x7f0300c5

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 240
    .local v0, view:Landroid/view/View;
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->setTitlebar()V

    .line 241
    invoke-direct {p0, v0}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->initViews(Landroid/view/View;)V

    .line 242
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->setListeners()V

    .line 243
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->initData()V

    .line 244
    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 430
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onDestroy()V

    .line 431
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->isSendSms:Z

    .line 432
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->smsUtil:Lcom/didi/common/util/SMSUtil;

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->smsUtil:Lcom/didi/common/util/SMSUtil;

    invoke-virtual {v0}, Lcom/didi/common/util/SMSUtil;->unregisterSmsObserver()V

    .line 435
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----------smscode onDestroy----issendsms:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->isSendSms:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isGetCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->isGetCode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 436
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 413
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onPause()V

    .line 414
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->isBack:Z

    .line 415
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----------smscode resume----issendsms:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->isSendSms:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isGetCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->isGetCode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isTakeCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->isTakeCode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/didi/common/util/TraceDebugLog;->debugLog(Ljava/lang/String;)V

    .line 398
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->isBack:Z

    .line 399
    iget-boolean v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->isSendSms:Z

    if-eqz v0, :cond_1

    .line 400
    iput-boolean v2, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->isSendSms:Z

    .line 401
    iput-boolean v2, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->isTakeCode:Z

    .line 402
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->autoLogin()V

    .line 408
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onResume()V

    .line 409
    return-void

    .line 403
    :cond_1
    iget-boolean v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->isGetCode:Z

    if-eqz v0, :cond_2

    .line 404
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->updateAddr()V

    goto :goto_0

    .line 405
    :cond_2
    iget-boolean v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->isTakeCode:Z

    if-eqz v0, :cond_0

    .line 406
    invoke-direct {p0}, Lcom/didi/common/ui/fragment/CommonLoginFragment;->assistLogin()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 419
    invoke-super {p0}, Lcom/didi/common/ui/fragment/SlideFragment;->onStop()V

    .line 420
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->isSendSms:Z

    .line 421
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->dialogHelper:Lcom/didi/common/helper/DialogHelper;

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/didi/common/ui/fragment/CommonLoginFragment;->dialogHelper:Lcom/didi/common/helper/DialogHelper;

    invoke-virtual {v0}, Lcom/didi/common/helper/DialogHelper;->dismiss()V

    .line 424
    :cond_0
    invoke-static {}, Lcom/didi/common/helper/DialogHelper;->removeLoadingDialog()V

    .line 426
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 1112
    invoke-super {p0, p1, p2}, Lcom/didi/common/ui/fragment/SlideFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 1113
    invoke-static {p1}, Lcom/didi/common/util/WindowUtil;->resizeRecursively(Landroid/view/View;)Z

    .line 1114
    return-void
.end method
