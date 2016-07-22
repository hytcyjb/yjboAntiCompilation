.class public Lcom/didi/frame/CommonContainerActivity;
.super Lcom/didi/common/base/BaseActivity;
.source "CommonContainerActivity.java"


# static fields
.field public static final FRAGMENT_TYPE_MODIFY_JOB:I = 0x4

.field public static final FRAGMENT_TYPE_MODIFY_NICKNAME:I = 0x1

.field public static final FRAGMENT_TYPE_MODIFY_SIGN:I = 0x2

.field public static final FRAGMENT_TYPE_SELECT_TRADE:I = 0x3

.field public static final KEY_FRAGMENT_TYPE:Ljava/lang/String; = "which_fragment"


# instance fields
.field private mDisplayFragment:Landroid/support/v4/app/Fragment;

.field private mFragmentType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/didi/common/base/BaseActivity;-><init>()V

    return-void
.end method

.method private showFragment(Landroid/support/v4/app/Fragment;)V
    .locals 2
    .parameter "fragment"

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/didi/frame/CommonContainerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 74
    invoke-virtual {p0}, Lcom/didi/frame/CommonContainerActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f080033

    invoke-virtual {v0, v1, p1}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 75
    return-void
.end method

.method public static toContainerActivity(Landroid/app/Activity;ILandroid/os/Bundle;)V
    .locals 3
    .parameter "context"
    .parameter "fragmentType"
    .parameter "extras"

    .prologue
    .line 78
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/didi/frame/CommonContainerActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 79
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "which_fragment"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 80
    if-eqz p2, :cond_0

    .line 81
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 83
    :cond_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 84
    const v1, 0x7f04001b

    const v2, 0x7f04001c

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 85
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 67
    invoke-super {p0}, Lcom/didi/common/base/BaseActivity;->finish()V

    .line 68
    const v0, 0x7f040019

    const v1, 0x7f04001a

    invoke-virtual {p0, v0, v1}, Lcom/didi/frame/CommonContainerActivity;->overridePendingTransition(II)V

    .line 69
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, -0x1

    .line 34
    invoke-super {p0, p1}, Lcom/didi/common/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/didi/frame/CommonContainerActivity;->setContentView(I)V

    .line 37
    invoke-virtual {p0}, Lcom/didi/frame/CommonContainerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "which_fragment"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/didi/frame/CommonContainerActivity;->mFragmentType:I

    .line 39
    iget v0, p0, Lcom/didi/frame/CommonContainerActivity;->mFragmentType:I

    if-ne v0, v2, :cond_1

    .line 40
    invoke-virtual {p0}, Lcom/didi/frame/CommonContainerActivity;->finish()V

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    if-nez p1, :cond_0

    .line 44
    iget v0, p0, Lcom/didi/frame/CommonContainerActivity;->mFragmentType:I

    packed-switch v0, :pswitch_data_0

    .line 60
    :goto_1
    iget-object v0, p0, Lcom/didi/frame/CommonContainerActivity;->mDisplayFragment:Landroid/support/v4/app/Fragment;

    invoke-direct {p0, v0}, Lcom/didi/frame/CommonContainerActivity;->showFragment(Landroid/support/v4/app/Fragment;)V

    goto :goto_0

    .line 46
    :pswitch_0
    new-instance v0, Lcom/didi/common/ui/userinfo/ModifyNickNameFragment;

    invoke-direct {v0}, Lcom/didi/common/ui/userinfo/ModifyNickNameFragment;-><init>()V

    iput-object v0, p0, Lcom/didi/frame/CommonContainerActivity;->mDisplayFragment:Landroid/support/v4/app/Fragment;

    goto :goto_1

    .line 49
    :pswitch_1
    new-instance v0, Lcom/didi/common/ui/userinfo/ModifyUserDesFragment;

    invoke-direct {v0}, Lcom/didi/common/ui/userinfo/ModifyUserDesFragment;-><init>()V

    iput-object v0, p0, Lcom/didi/frame/CommonContainerActivity;->mDisplayFragment:Landroid/support/v4/app/Fragment;

    goto :goto_1

    .line 52
    :pswitch_2
    new-instance v0, Lcom/didi/common/ui/userinfo/SelectTradeFragment;

    invoke-direct {v0}, Lcom/didi/common/ui/userinfo/SelectTradeFragment;-><init>()V

    iput-object v0, p0, Lcom/didi/frame/CommonContainerActivity;->mDisplayFragment:Landroid/support/v4/app/Fragment;

    goto :goto_1

    .line 55
    :pswitch_3
    new-instance v0, Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment;

    invoke-direct {v0}, Lcom/didi/common/ui/userinfo/ModifyJobInfoFragment;-><init>()V

    iput-object v0, p0, Lcom/didi/frame/CommonContainerActivity;->mDisplayFragment:Landroid/support/v4/app/Fragment;

    goto :goto_1

    .line 44
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
